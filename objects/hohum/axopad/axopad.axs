<patch-1.0 appVersion="1.0.12">
   <obj type="deadsy/ttp229/ttp229_bool" uuid="883e95c3-6af0-4108-b7ab-0a6834dc8ac2" name="ttp229_bool_1" x="42" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/i2c/config" uuid="b095a33e56de5fcd23740a7d983bc0bafb315d81" name="config_1" x="210" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="1" x="210" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="2" x="294" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="3" x="378" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="4" x="462" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="5" x="546" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="6" x="630" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="7" x="714" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="8" x="798" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="Ax" x="210" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="Ay" x="294" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="Az" x="378" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="Bx" x="462" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="By" x="546" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="Bz" x="630" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="Ap" x="714" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="Bp" x="798" y="126">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="ttp229_bool_1" outlet="o4"/>
         <dest obj="1" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o9"/>
         <dest obj="3" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o15"/>
         <dest obj="4" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o6"/>
         <dest obj="5" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o3"/>
         <dest obj="6" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o5"/>
         <dest obj="7" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o13"/>
         <dest obj="8" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o0"/>
         <dest obj="Ap" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o2"/>
         <dest obj="2" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o1"/>
         <dest obj="Bp" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o14"/>
         <dest obj="Ax" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o10"/>
         <dest obj="Ay" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o11"/>
         <dest obj="Az" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o12"/>
         <dest obj="Bx" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o8"/>
         <dest obj="By" inlet="outlet"/>
      </net>
      <net>
         <source obj="ttp229_bool_1" outlet="o7"/>
         <dest obj="Bz" inlet="outlet"/>
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
      <x>720</x>
      <y>23</y>
      <width>720</width>
      <height>877</height>
   </windowPos>
</patch-1.0>