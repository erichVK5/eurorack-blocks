/*****************************************************************************

      BoardKivu12.cpp
      Copyright (c) 2020 Raphael DINGE

*Tab=3***********************************************************************/



/*\\\ INCLUDE FILES \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\*/

#include "erb/kivu12/BoardKivu12.h"



namespace erb
{



/*\\\ PUBLIC \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\*/

/*
==============================================================================
Name : ctor
==============================================================================
*/

BoardKivu12::BoardKivu12 ()
{
   init_adc_channels ();
   init_audio ();
}



/*\\\ INTERNAL \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\*/



/*\\\ PROTECTED \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\*/

/*
==============================================================================
Name : do_notify_audio_buffer_start
==============================================================================
*/

void  BoardKivu12::do_notify_audio_buffer_start ()
{
}



/*
==============================================================================
Name : do_notify_audio_buffer_end
==============================================================================
*/

void  BoardKivu12::do_notify_audio_buffer_end ()
{
   // convert all control outputs to platform outputs 
}



/*\\\ PRIVATE \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\*/

/*
==============================================================================
Name : init_adc_channels
==============================================================================
*/

void  BoardKivu12::init_adc_channels ()
{
   _adcs_u16 = BoardDaisySeed::init_adc_channels <NBR_ADC_CHANNELS> ({
      // 8 CVs
      {AdcPin1}, {AdcPin2}, {AdcPin3}, {AdcPin4},
      {AdcPin5}, {AdcPin6}, {AdcPin7}, {AdcPin8},
      // 12 Pots
      {AdcPin9, 8, Pin19, Pin20, Pin21},
      {AdcPin10, 8, Pin19, Pin20, Pin21} // 4 last ones ignored
   });
}



/*
==============================================================================
Name : init_audio
==============================================================================
*/

void  BoardKivu12::init_audio ()
{
   for (size_t i = 0 ; i < NBR_AUDIO_INPUTS ; ++i)
   {
   }
}



}  // namespace erb



/*\\\ EOF \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\*/
