<patch-1.0 appVersion="1.0.11">
   <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_1" x="392" y="98">
      <params/>
      <attribs>
         <spinner attributeName="value" value="1"/>
      </attribs>
   </obj>
   <obj type="midi/in/keyb mod" uuid="abcd509d15e7d13d5381203fd2b4d0ac6fe57bb3" name="keyb_1" x="196" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/env/ADloopR" uuid="b14a56b0-c76b-4952-a288-f7420eed3f1f" name="ADloopR_1" x="294" y="154">
      <params>
         <frac32.s.map name="a" onParent="true" value="-64.0"/>
         <frac32.s.map name="d" onParent="true" value="13.0"/>
         <frac32.u.map name="s1" onParent="true" value="23.5"/>
         <frac32.s.map name="ds1" onParent="true" value="20.0"/>
         <frac32.u.map name="s2" onParent="true" value="15.5"/>
         <frac32.s.map name="ds2" onParent="true" value="-22.0"/>
         <frac32.s.map name="r" onParent="true" value="29.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_1" x="392" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/osc/bassOsc" uuid="d34a8c96-e9a6-4254-bc8c-73143cf21b7d" name="bassOsc_1" x="448" y="154">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-24.0"/>
         <frac32.u.map name="slope" onParent="true" value="42.5"/>
         <frac32.s.map name="Slope" onParent="true" value="22.0"/>
         <frac32.s.map name="mult" onParent="true" value="21.0"/>
         <frac32.s.map name="Mult" onParent="true" value="13.0"/>
         <bool32.tgl name="AM" value="0"/>
         <frac32.s.map name="FM" value="0.0"/>
         <frac32.s.map name="Swidth" value="1.0"/>
         <bool32.tgl name="sync" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/gain/smVCA" uuid="9711df1e-0d6a-4d25-82cd-440c52a7d4c9" name="smVCA_1" x="574" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="672" y="154">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="bassOsc_1" outlet="out"/>
         <dest obj="smVCA_1" inlet="a"/>
      </net>
      <net>
         <source obj="ADloopR_1" outlet="env"/>
         <dest obj="*_1" inlet="a"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="bassOsc_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="gate"/>
         <dest obj="ADloopR_1" inlet="gate"/>
      </net>
      <net>
         <source obj="smVCA_1" outlet="o"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="i_1" outlet="out"/>
         <dest obj="bassOsc_1" inlet="active"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="velocity"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="smVCA_1" inlet="v"/>
         <dest obj="bassOsc_1" inlet="slope"/>
         <dest obj="bassOsc_1" inlet="mult"/>
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
      <Author></Author>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-8</x>
      <y>-8</y>
      <width>1696</width>
      <height>1026</height>
   </windowPos>
</patch-1.0>