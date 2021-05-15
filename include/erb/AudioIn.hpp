/*****************************************************************************

      AudioIn.hpp
      Copyright (c) 2020 Raphael DINGE

*Tab=3***********************************************************************/



#pragma once



/*\\\ INCLUDE FILES \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\*/



namespace erb
{



/*\\\ PUBLIC \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\*/

/*
==============================================================================
Name : ctor
==============================================================================
*/

AudioIn::AudioIn (const Buffer & buffer)
:  _data (buffer)
{
}



/*
==============================================================================
Name : operator Buffer
==============================================================================
*/

AudioIn::operator Buffer () const
{
   return _data;
}



/*
==============================================================================
Name : size
==============================================================================
*/

std::size_t AudioIn::size () const
{
   return _data.size ();
}



/*
==============================================================================
Name : operator []
==============================================================================
*/

const float &  AudioIn::operator [] (std::size_t index)
{
   return _data [index];
}



/*\\\ PROTECTED \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\*/



/*\\\ PRIVATE \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\*/



}  // namespace erb



/*\\\ EOF \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\*/
