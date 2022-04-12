##############################################################################
#
#     centroid.py
#     Copyright (c) 2020 Raphael DINGE
#
#Tab=3########################################################################



import math
import os
import platform
import subprocess
from . import s_expression


PATH_THIS = os.path.abspath (os.path.dirname (__file__))
PATH_ROOT = os.path.abspath (os.path.dirname (os.path.dirname (os.path.dirname (os.path.dirname (PATH_THIS)))))
PATH_BOARDS = os.path.join (PATH_ROOT, 'boards')


class Centroid:

   def generate (self, path, root):
      for module in root.modules:
         self.generate_module (path, module)


   #--------------------------------------------------------------------------

   def generate_module (self, path, module):

      left, bottom = self.find_left_bottom (module)

      parts = self.generate_board (module, left, bottom)
      parts.extend (self.generate_controls (module, left, bottom))

      line_format = '{designator};{x};{y};{layer};{rotation}\n'

      header = {
         'designator': 'Designator',
         'x': 'X',
         'y': 'Y',
         'layer': 'Layer',
         'rotation': 'Rotation',
      }

      centroid = line_format.format (**header)

      for part in parts:
         centroid += line_format.format (**part)

      path_centroid = os.path.join (path, '%s.centroid.csv' % module.name)

      with open (path_centroid, 'w', encoding='utf-8') as file:
         file.write (centroid)


   #--------------------------------------------------------------------------

   def find_left_bottom (self, module):

      def gr_min (cur, new):
         if cur is None:
            return new
         else:
            return min (cur, new)

      def gr_max (cur, new):
         if cur is None:
            return new
         else:
            return max (cur, new)

      left = None
      bottom = None

      root_node = self.load (module.board.pcb.path)
      gr_line_nodes = root_node.filter_kind ('gr_line')

      for gr_line_node in gr_line_nodes:
         layer_node = gr_line_node.first_kind ('layer')
         layer_node_value = layer_node.entities [1].value
         if layer_node_value == 'Edge.Cuts':
            start_node = gr_line_node.first_kind ('start')
            x = start_node.entities [1].value
            y = start_node.entities [2].value
            left = gr_min (left, x)
            bottom = gr_max (bottom, y)

            end_node = gr_line_node.first_kind ('end')
            x = end_node.entities [1].value
            y = end_node.entities [2].value
            left = gr_min (left, x)
            bottom = gr_max (bottom, y)

      return (left, bottom)


   #--------------------------------------------------------------------------

   def generate_board (self, module, left, bottom):

      references = self.collect_board_references (module)

      parts = []

      root_node = self.load (module.board.pcb.path)
      module_nodes = root_node.filter_kind ('module')
      for module_node in module_nodes:
         fp_text_nodes = module_node.filter_kind ('fp_text')
         reference = None
         for fp_text_node in fp_text_nodes:
            if fp_text_node.entities [1].value == 'reference':
               reference = fp_text_node.entities [2].value

         if reference in references:
            at_node = module_node.first_kind ('at')
            x = at_node.entities [1].value - left
            y = bottom - at_node.entities [2].value
            rotation = 0
            if len (at_node.entities) >= 4:
               rotation = at_node.entities [3].value

            layer_node = module_node.first_kind ('layer')
            layer_node_value = layer_node.entities [1].value
            if layer_node_value == 'F.Cu':
               layer = 'top'
            elif layer_node_value == 'B.Cu':
               layer = 'bottom'
            else:
               assert False

            part = {
               'designator': reference,
               'x': x,
               'y': y,
               'layer': layer,
               'rotation': rotation,
            }
            parts.append (part)

      return parts


   #--------------------------------------------------------------------------
   # Collect references that are marker Place: Yes

   def collect_board_references (self, module):

      export_node = self.load (module.board.net.path)
      references = set ()

      # in export:components
      # check for comp:fields:field:name:Place is Yes

      components_node = export_node.first_kind ('components')
      comp_nodes = components_node.filter_kind ('comp')
      for comp_node in comp_nodes:
         reference = comp_node.property ('ref')
         fields_node = comp_node.first_kind ('fields')
         if fields_node != None:
            field_nodes = fields_node.filter_kind ('field')
            place = None
            for field_node in field_nodes:
               if field_node.property ('name') == 'Place':
                  place = field_node.entities [2].value
            if place != None and place == 'Yes':
               references.add (reference)

      return references


   #--------------------------------------------------------------------------

   def generate_controls (self, module, left, bottom):
      parts = []
      for control in module.controls:
         if self.is_smt (control.parts [0]):
            rotation = 0
            if control.rotation:
               rotation = control.rotation.degree
            part = {
               'designator': control.reference,
               'x': control.position.x.mm - left,
               'y': bottom - control.position.y.mm,
               'layer': 'top',   # always top for now
               'rotation': rotation,
            }
            parts.append (part)

      return parts


   #--------------------------------------------------------------------------

   def is_smt (self, part):
      if part.startswith ('es.'):
         return True
      elif part.startswith ('led.smt.'):
         return True
      else:
         return False


   #--------------------------------------------------------------------------

   def load (self, path):
      with open (path, 'r', encoding='utf-8') as file:
         content = file.read ()
      parser = s_expression.Parser ()
      return parser.parse (content, 'kicad_pcb')
