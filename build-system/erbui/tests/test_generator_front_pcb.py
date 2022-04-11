#!/usr/bin/env python
#
#     test_generator_front_pcb.py
#     Copyright (c) 2020 Raphael DINGE
#
#Tab=3########################################################################



import os
import unittest
import traceback

from .. import ast
from . import mock

from ..generators.front_pcb.kicad_pcb import KicadPcb
from ..generators.front_pcb.s_expression import Writer


PATH_THIS = os.path.abspath (os.path.dirname (__file__))
PATH_ARTIFACTS = os.path.abspath (os.path.join (PATH_THIS, 'artifacts'))
PATH_ERBUI = os.path.abspath (os.path.dirname (PATH_THIS))
PATH_FRONT_PCB = os.path.join (PATH_ERBUI, 'generators', 'front_pcb')


class TestGeneratorFrontPcb (unittest.TestCase):

   def setUp(self):
      if not os.path.exists (PATH_ARTIFACTS):
         os.makedirs (PATH_ARTIFACTS)

   def test_001 (self):
      gen = KicadPcb ()
      component = gen.load_component (
         os.path.join (PATH_FRONT_PCB, 'alpha.9mm', 'alpha.9mm.kicad_pcb')
      )

      writer = Writer ()
      writer.write (component, os.path.join (PATH_ARTIFACTS, 'alpha.9mm.load.kicad_pcb'))

   def test_002 (self):
      gen = KicadPcb ()
      component = gen.load_component (
         os.path.join (PATH_FRONT_PCB, 'thonk.pj398sm', 'thonk.pj398sm.kicad_pcb')
      )

      position = ast.Position (
         ast.DistanceLiteral (mock.literal ('10mm'), 'mm'),
         ast.DistanceLiteral (mock.literal ('20mm'), 'mm'),
      )
      component = gen.move (component, position)

      writer = Writer ()
      writer.write (component, os.path.join (PATH_ARTIFACTS, 'thonk.pj398sm.move.kicad_pcb'))

   def test_002b (self):
      gen = KicadPcb ()
      component = gen.load_component (
         os.path.join (PATH_FRONT_PCB, 'alpha.9mm', 'alpha.9mm.kicad_pcb')
      )

      position = ast.Position (
         ast.DistanceLiteral (mock.literal ('10mm'), 'mm'),
         ast.DistanceLiteral (mock.literal ('20mm'), 'mm'),
      )
      component = gen.move (component, position)

      writer = Writer ()
      writer.write (component, os.path.join (PATH_ARTIFACTS, 'alpha.9mm.move.kicad_pcb'))

   def test_003 (self):
      module = ast.Module (mock.identifier ('test_generator_front_pcb_003'), None)
      module.add (ast.Width (ast.DistanceLiteral (mock.literal ('10hp'), 'hp')))
      module.add (ast.Board (mock.identifier ("kivu12")))
      module.add (ast.Route (mock.keyword ("wire")))

      control = ast.Control (
         mock.identifier ('test'),
         mock.keyword ('Trim')
      )
      control.reference = 'RV1'
      position = ast.Position (
         ast.DistanceLiteral (mock.literal ('5hp'), 'hp'),
         ast.DistanceLiteral (mock.literal ('32mm'), 'mm'),
      )
      control.add (position)
      style = ast.Style ([mock.keyword ('songhuei')])
      control.add (style)
      control.parts.append ('songhuei.9mm.tall')
      pin = ast.Pin (mock.identifier ('P1'))
      control.add (pin)
      module.add (control)

      control = ast.Control (
         mock.identifier ('test'),
         mock.keyword ('Pot')
      )
      control.reference = 'RV2'
      position = ast.Position (
         ast.DistanceLiteral (mock.literal ('5hp'), 'hp'),
         ast.DistanceLiteral (mock.literal ('64mm'), 'mm'),
      )
      control.add (position)
      style = ast.Style ([mock.keyword ('6ps')])
      control.add (style)
      control.parts.append ('alpha.9mm.dshaft')
      control.parts.append ('rogan.6ps.dshaft')
      pin = ast.Pin (mock.identifier ('P2'))
      control.add (pin)
      module.add (control)

      control = ast.Control (
         mock.identifier ('test'),
         mock.keyword ('CvIn')
      )
      control.reference = 'J1'
      position = ast.Position (
         ast.DistanceLiteral (mock.literal ('5hp'), 'hp'),
         ast.DistanceLiteral (mock.literal ('96mm'), 'mm'),
      )
      control.add (position)
      style = ast.Style ([mock.keyword ('hex')])
      control.add (style)
      control.parts.append ('thonk.pj398sm')
      control.parts.append ('thonk.pj398sm.nut.hex')
      pin = ast.Pin (mock.identifier ('CI1'))
      control.add (pin)
      module.add (control)

      module.board.load_builtin ()

      gen = KicadPcb ()
      gen.generate_module (PATH_ARTIFACTS, module)



if __name__ == '__main__':
   unittest.main ()
