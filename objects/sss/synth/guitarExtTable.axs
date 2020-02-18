<patch-1.0 appVersion="1.0.11">
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="preset" x="252" y="504">
      <params/>
      <attribs/>
   </obj>
   <obj type="midi/in/keyb mod" uuid="abcd509d15e7d13d5381203fd2b4d0ac6fe57bb3" name="keyb_1" x="98" y="616">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/latch" uuid="2a50e4657301542464c6a97931847b5e8e0e6d2b" name="latch_1" x="196" y="616">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/env/ADSRcrv2" uuid="a8db6ba6-8f82-4340-8b13-d497823857b5" name="ADSRcrv2_1" x="392" y="616">
      <params>
         <frac32.u.map name="slope" onParent="true" value="3.5"/>
         <frac32.s.map name="time" onParent="true" value="-1.0"/>
         <frac32.u.map name="S" onParent="true" value="40.5"/>
         <frac32.s.map name="R" onParent="true" value="61.0"/>
         <frac32.s.map name="crvA" onParent="true" value="-24.0"/>
         <frac32.s.map name="crvD" onParent="true" value="-32.0"/>
         <frac32.s.map name="crvR" onParent="true" value="1.0"/>
         <frac32.s.map name="Scrv" onParent="true" value="40.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_1" x="504" y="616">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_2" x="560" y="616">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/math/bipAmp" uuid="054d3d1f-4bbf-4622-b310-c2f4d89cb965" name="bipAmp_4" x="616" y="616">
      <params>
         <frac32.s.map name="amp" onParent="true" value="9.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/math/bipAmp" uuid="054d3d1f-4bbf-4622-b310-c2f4d89cb965" name="bipAmp_5" x="714" y="616">
      <params>
         <frac32.s.map name="amp" onParent="true" value="-6.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/math/bipAmp" uuid="054d3d1f-4bbf-4622-b310-c2f4d89cb965" name="bipAmp_6" x="812" y="616">
      <params>
         <frac32.s.map name="amp" onParent="true" value="1.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/osc/guitarDualOscV" uuid="f747fb2d-0a5c-4e95-835f-9a52b9f4085c" name="guitarDualOscV_1" x="910" y="616">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-27.0"/>
         <int32 name="harm2nd" onParent="true" value="1"/>
         <int32 name="rateM" onParent="true" value="1"/>
         <int32 name="rateD" onParent="true" value="3"/>
         <frac32.u.map name="pwm" onParent="true" value="14.0"/>
         <frac32.u.map name="mod" onParent="true" value="46.5"/>
         <frac32.u.map name="start" onParent="true" value="41.0"/>
         <int32 name="preset1" onParent="true" value="105"/>
         <int32 name="preset2" onParent="true" value="111"/>
         <bool32.tgl name="link" onParent="true" value="1"/>
      </params>
      <attribs>
         <objref attributeName="table" obj="../waveformLoader_1"/>
      </attribs>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1036" y="616">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="guitarDualOscV_1" outlet="wave"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="gate"/>
         <dest obj="ADSRcrv2_1" inlet="gate"/>
         <dest obj="latch_1" inlet="trig"/>
         <dest obj="guitarDualOscV_1" inlet="sync"/>
      </net>
      <net>
         <source obj="ADSRcrv2_1" outlet="out"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="bipAmp_4" outlet="out"/>
         <dest obj="guitarDualOscV_1" inlet="pwm"/>
      </net>
      <net>
         <source obj="bipAmp_5" outlet="out"/>
         <dest obj="guitarDualOscV_1" inlet="mod"/>
      </net>
      <net>
         <source obj="bipAmp_6" outlet="out"/>
         <dest obj="guitarDualOscV_1" inlet="start"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="velocity"/>
         <dest obj="*_1" inlet="a"/>
         <dest obj="*_2" inlet="b"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="guitarDualOscV_1" inlet="volEnv"/>
      </net>
      <net>
         <source obj="ADSRcrv2_1" outlet="attack"/>
         <dest obj="*_2" inlet="a"/>
      </net>
      <net>
         <source obj="*_2" outlet="result"/>
         <dest obj="bipAmp_4" inlet="in"/>
         <dest obj="bipAmp_5" inlet="in"/>
         <dest obj="bipAmp_6" inlet="in"/>
      </net>
      <net>
         <source obj="preset" outlet="inlet"/>
         <dest obj="latch_1" inlet="i"/>
      </net>
      <net>
         <source obj="latch_1" outlet="o"/>
         <dest obj="guitarDualOscV_1" inlet="preset1"/>
         <dest obj="guitarDualOscV_1" inlet="preset2"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="guitarDualOscV_1" inlet="pitch"/>
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
      <License>GPL</License>
      <Saturate>false</Saturate>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-8</x>
      <y>-8</y>
      <width>1296</width>
      <height>1000</height>
   </windowPos>
</patch-1.0>