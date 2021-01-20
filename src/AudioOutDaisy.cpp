/*****************************************************************************

      AudioOutDaisy.cpp
      Copyright (c) 2020 Raphael DINGE

*Tab=3***********************************************************************/



/*\\\ INCLUDE FILES \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\*/

#include "erb/AudioOutDaisy.h"

#include "erb/Module.h"

#include "per/gpio.h"



namespace erb
{



/*\\\ PUBLIC \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\*/

/*
==============================================================================
Name : ctor
==============================================================================
*/

AudioOutDaisy::AudioOutDaisy (Module & module, AudioOutDaisyPin pin)
:  _module (module)
,  _channel (pin.pin)
{
   module.add (*this);
}



/*
==============================================================================
Name : operator =
==============================================================================
*/

AudioOutDaisy &   AudioOutDaisy::operator = (const Buffer & buffer)
{
   _buffer = buffer;

   return *this;
}



/*
==============================================================================
Name : size
==============================================================================
*/

size_t   AudioOutDaisy::size () const
{
   return _buffer.size ();
}



/*
==============================================================================
Name : operator []
==============================================================================
*/

float &  AudioOutDaisy::operator [] (size_t index)
{
   return _buffer [index];
}



/*
==============================================================================
Name : fill
==============================================================================
*/

void  AudioOutDaisy::fill (float val)
{
   _buffer.fill (val);
}



/*\\\ INTERNAL \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\*/

/*
==============================================================================
Name : impl_notify_audio_buffer_start
==============================================================================
*/

void  AudioOutDaisy::impl_notify_audio_buffer_start ()
{
   // nothing
}



/*
==============================================================================
Name : impl_notify_audio_buffer_end
==============================================================================
*/

void  AudioOutDaisy::impl_notify_audio_buffer_end ()
{
   auto & buffer = _module.impl_onboard_codec_buffer_output ();

   buffer [_channel] = _buffer;
}



/*\\\ PROTECTED \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\*/



/*\\\ PRIVATE \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\*/



}  // namespace erb



/*\\\ EOF \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\*/
