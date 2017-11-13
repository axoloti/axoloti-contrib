<patch-1.0 appVersion="1.0.12">
   <patchobj type="patch/object" uuid="d0e91b71-5f2f-42f0-9456-50a737750fd7" name="keyb_1" x="42" y="98">
      <params/>
      <attribs/>
      <object id="patch/object" uuid="d0e91b71-5f2f-42f0-9456-50a737750fd7">
         <sDescription>Monophonic MIDI keyboard note input, gate, velocity and release velocity</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>midi_in.axh</helpPatch>
         <inlets/>
         <outlets>
            <frac32.bipolar name="note" description="midi note number (-64..63)"/>
            <bool32 name="gate" description="key pressed, no retrigger legato"/>
            <bool32 name="gate2" description="key pressed, retrigger on legato"/>
            <frac32.positive name="velocity" description="note-on velocity"/>
            <frac32.positive name="releaseVelocity" description="note-off velocity"/>
            <int32 name="polyindex"/>
         </outlets>
         <displays/>
         <params/>
         <attribs/>
         <includes/>
         <code.declaration><![CDATA[int8_t _note;
int32_t _gate;
int32_t _gate2;
uint8_t _velo;
uint8_t _rvelo;]]></code.declaration>
         <code.init><![CDATA[_gate = 0;
_note = 0;]]></code.init>
         <code.krate><![CDATA[outlet_note= _note<<21;
outlet_gate= _gate;
outlet_gate2= _gate2;
_gate2 = _gate;
outlet_velocity= _velo<<20;
outlet_releaseVelocity= _rvelo<<20;
outlet_polyindex=(parent->polyIndex);]]></code.krate>
         <code.midihandler><![CDATA[if ((status == MIDI_NOTE_ON + attr_midichannel) && (data2)) {
  _velo = data2;
  _note = data1-64;
  _gate = 1<<27;
  _gate2 = 0;
} else if (((status == MIDI_NOTE_ON + attr_midichannel) && (!data2))||
          (status == MIDI_NOTE_OFF + attr_midichannel)) {
  if (_note == data1-64) {
    _rvelo = data2;
    _gate = 0;
  }
} else if ((status == attr_midichannel + MIDI_CONTROL_CHANGE)&&(data1 == MIDI_C_ALL_NOTES_OFF)) {
  _gate = 0;
}]]></code.midihandler>
      </object>
   </patchobj>
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="adsr_1" x="140" y="98">
      <params>
         <frac32.s.map name="a" onParent="true" value="0.0"/>
         <frac32.s.map name="d" onParent="true" value="0.0"/>
         <frac32.u.map name="s" onParent="true" value="0.0"/>
         <frac32.s.map name="r" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="adsr_2" x="238" y="98">
      <params>
         <frac32.s.map name="a" onParent="true" value="0.0"/>
         <frac32.s.map name="d" onParent="true" value="0.0"/>
         <frac32.u.map name="s" onParent="true" value="0.0"/>
         <frac32.s.map name="r" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="a82f702a-246e-47cb-8d38-4c82408fdf7d" name="sine_1" x="336" y="98">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-37.0"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="a82f702a-246e-47cb-8d38-4c82408fdf7d">
         <sDescription>sine wave oscillator</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>osc.axh</helpPatch>
         <inlets>
            <frac32.bipolar name="pitch" description="pitch"/>
         </inlets>
         <outlets>
            <frac32buffer.bipolar name="wave" description="sine wave"/>
            <frac32 name="p"/>
         </outlets>
         <displays/>
         <params>
            <frac32.s.map.pitch name="pitch" noLabel="true"/>
         </params>
         <attribs/>
         <includes/>
         <code.declaration><![CDATA[uint32_t Phase;]]></code.declaration>
         <code.init><![CDATA[Phase = 0;]]></code.init>
         <code.krate><![CDATA[int32_t freq;
   MTOFEXTENDED(param_pitch + inlet_pitch,freq);
   outlet_p=param_pitch + inlet_pitch;]]></code.krate>
         <code.srate><![CDATA[Phase += freq;
int32_t r;
int32_t p2 = Phase;
SINE2TINTERP(p2,r)
outlet_wave= (r>>4);]]></code.srate>
      </object>
   </patchobj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_2" x="434" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="sel/sel i 16" uuid="630930cb677ad1f222ad83b8f84d26a7aa92cafc" name="sel_1" x="518" y="98">
      <params>
         <int32.small name="i0" onParent="true" value="0"/>
         <int32.small name="i1" onParent="true" value="0"/>
         <int32.small name="i2" onParent="true" value="0"/>
         <int32.small name="i3" onParent="true" value="0"/>
         <int32.small name="i4" onParent="true" value="0"/>
         <int32.small name="i5" onParent="true" value="0"/>
         <int32.small name="i6" onParent="true" value="0"/>
         <int32.small name="i7" onParent="true" value="0"/>
         <int32.small name="i8" value="0"/>
         <int32.small name="i9" value="0"/>
         <int32.small name="i10" value="0"/>
         <int32.small name="i11" value="0"/>
         <int32.small name="i12" value="0"/>
         <int32.small name="i13" value="0"/>
         <int32.small name="i14" value="0"/>
         <int32.small name="i15" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/osc/blepped" uuid="9ede670f-312b-445c-a051-56ebae6f4d50" name="blepped_3" x="728" y="98">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="0.0"/>
         <frac32.s.map name="self" onParent="true" value="2.0"/>
         <frac32.s.map name="mod" onParent="true" value="18.0"/>
         <bool32.tgl name="sync" onParent="true" value="0"/>
         <int32 name="wave" onParent="true" value="33"/>
         <int32 name="index2wave" onParent="true" value="0"/>
         <int32 name="note2wave" onParent="true" value="0"/>
      </params>
      <attribs>
         <objref attributeName="table" obj="../waveformLoader_1"/>
         <combo attributeName="size" selection="8192"/>
      </attribs>
   </obj>
   <patchobj type="patch/object" uuid="0878b9f1-2eb6-4c1f-bd7e-818a9b9e1162" name="volume" x="994" y="98">
      <params>
         <frac32.u.map name="amp" onParent="true" value="0.0"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="0878b9f1-2eb6-4c1f-bd7e-818a9b9e1162">
         <sDescription>Multiply (attenuate) with a constant value</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>math.axh</helpPatch>
         <inlets>
            <frac32buffer name="in" description="input"/>
         </inlets>
         <outlets>
            <frac32buffer name="out" description="output"/>
         </outlets>
         <displays/>
         <params>
            <frac32.u.map.gain name="amp" noLabel="true"/>
         </params>
         <attribs/>
         <includes/>
         <code.srate><![CDATA[outlet_out= __SSAT(___SMMUL(param_amp,inlet_in),26);]]></code.srate>
      </object>
   </patchobj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1092" y="98">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="sine_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="gate2"/>
         <dest obj="adsr_1" inlet="gate"/>
         <dest obj="adsr_2" inlet="gate"/>
      </net>
      <net>
         <source obj="adsr_1" outlet="env"/>
         <dest obj="blepped_3" inlet="env"/>
      </net>
      <net>
         <source obj="vca_2" outlet="o"/>
         <dest obj="blepped_3" inlet="mod"/>
      </net>
      <net>
         <source obj="sine_1" outlet="p"/>
         <dest obj="blepped_3" inlet="pitch"/>
      </net>
      <net>
         <source obj="sine_1" outlet="wave"/>
         <dest obj="vca_2" inlet="a"/>
      </net>
      <net>
         <source obj="adsr_2" outlet="env"/>
         <dest obj="vca_2" inlet="v"/>
      </net>
      <net>
         <source obj="volume" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="polyindex"/>
         <dest obj="sel_1" inlet="in"/>
      </net>
      <net>
         <source obj="sel_1" outlet="o"/>
         <dest obj="blepped_3" inlet="mode"/>
      </net>
      <net>
         <source obj="blepped_3" outlet="wave"/>
         <dest obj="volume" inlet="in"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>polyphonic</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <HasMidiChannelSelector>true</HasMidiChannelSelector>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-8</x>
      <y>-8</y>
      <width>1296</width>
      <height>1000</height>
   </windowPos>
</patch-1.0>