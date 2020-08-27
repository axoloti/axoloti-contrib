<patch-1.0 appVersion="1.0.12">
   <obj type="deadsy/ttp229/ttp229_bool" uuid="883e95c3-6af0-4108-b7ab-0a6834dc8ac2" name="ttp229_bool_1" x="42" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/i2c/config" uuid="b095a33e56de5fcd23740a7d983bc0bafb315d81" name="config_1" x="210" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="C" x="210" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="C#" x="294" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="D" x="378" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="D#" x="462" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="E" x="546" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="F" x="630" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="F#" x="714" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="G" x="798" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="G#" x="210" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="A" x="294" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="A#" x="378" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="B" x="462" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="Up" x="546" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="Down" x="630" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="Apad" x="714" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="Bpad" x="798" y="126">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="ttp229_bool_1" outlet="o4"/>
         <dest obj="C#" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o9"/>
         <dest obj="F" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o15"/>
         <dest obj="A#" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o6"/>
         <dest obj="D#" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o3"/>
         <dest obj="Bpad" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o5"/>
         <dest obj="C" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o13"/>
         <dest obj="G#" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o0"/>
         <dest obj="Apad" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o2"/>
         <dest obj="Down" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o1"/>
         <dest obj="Up" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o14"/>
         <dest obj="B" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o10"/>
         <dest obj="F#" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o11"/>
         <dest obj="G" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o12"/>
         <dest obj="A" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o8"/>
         <dest obj="E" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o7"/>
         <dest obj="D" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author>Hohum</Author>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>440</x>
      <y>23</y>
      <width>1000</width>
      <height>877</height>
   </windowPos>
</patch-1.0>