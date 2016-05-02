<patch-1.0 appVersion="1.0.9">
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="midi In/Out" x="28" y="28">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="Run" x="112" y="28">
      <params>
         <bool32.tgl name="b" onParent="true" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="midi/out/clock" uuid="12b916e835bb6fc9fa4f2c858d1d1a72d5cf6d08" name="clock" x="196" y="28">
      <params>
         <frac32.u.map name="bpm" onParent="true" value="12.0"/>
      </params>
      <attribs>
         <combo attributeName="device" selection="din"/>
      </attribs>
   </obj>
   <obj type="midi/in/clock" uuid="f1aa3a79d6de9bd6d38dc64c9d4bb5c9de4f4198" name="clock_2" x="336" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="e1c92bc92f4d191bfadf0efeae4503b458a4e440" name="mux_3" x="434" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="active" x="518" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="16f90f81694766b0bc8187bfcba5a021e5701d81" name="mux_1" x="434" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="4ppq" x="518" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="16f90f81694766b0bc8187bfcba5a021e5701d81" name="mux_2" x="434" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="24ppq" x="518" y="168">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="midi In/Out" outlet="o"/>
         <dest obj="mux_2" inlet="s"/>
         <dest obj="mux_1" inlet="s"/>
         <dest obj="mux_3" inlet="s"/>
      </net>
      <net>
         <source obj="clock_2" outlet="pos4ppq"/>
         <dest obj="mux_1" inlet="i1"/>
      </net>
      <net>
         <source obj="clock_2" outlet="pos24ppq"/>
         <dest obj="mux_2" inlet="i1"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="4ppq" inlet="outlet"/>
      </net>
      <net>
         <source obj="mux_2" outlet="o"/>
         <dest obj="24ppq" inlet="outlet"/>
      </net>
      <net>
         <source obj="clock_2" outlet="active"/>
         <dest obj="mux_3" inlet="i1"/>
      </net>
      <net>
         <source obj="mux_3" outlet="o"/>
         <dest obj="active" inlet="outlet"/>
      </net>
      <net>
         <source obj="Run" outlet="o"/>
         <dest obj="clock" inlet="run"/>
         <dest obj="clock" inlet="rst"/>
      </net>
      <net>
         <source obj="clock" outlet="active"/>
         <dest obj="mux_3" inlet="i2"/>
      </net>
      <net>
         <source obj="clock" outlet="pos4ppq"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="clock" outlet="pos24ppq"/>
         <dest obj="mux_2" inlet="i2"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>0</NPresets>
      <NPresetEntries>0</NPresetEntries>
      <NModulationSources>0</NModulationSources>
      <NModulationTargetsPerSource>0</NModulationTargetsPerSource>
      <Saturate>false</Saturate>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>0</x>
      <y>0</y>
      <width>730</width>
      <height>517</height>
   </windowPos>
</patch-1.0>