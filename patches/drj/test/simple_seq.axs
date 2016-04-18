<patch-1.0 appVersion="1.0.9">
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="run" x="42" y="70">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="seq/seq_clk" uuid="de6909eb611b13af5b43f97484c130024b3a4793" name="seq_clk_1" x="182" y="70">
      <params>
         <frac32.s.map name="freq" onParent="true" value="-21.399999618530273"/>
         <frac32.u.map name="gatelength" onParent="true" value="32.0"/>
         <int32 name="seqlength" onParent="true" value="4"/>
      </params>
      <attribs/>
   </obj>
   <obj type="drj/seq/stepseq_16_pitch" uuid="ae81899a71ef03fd356af0c14bff9cff972947ac" name="stepseq_16_pitch_1" x="434" y="70">
      <params>
         <frac32.s.map name="p0" value="0.0"/>
         <frac32.s.map name="p1" value="7.0"/>
         <frac32.s.map name="p2" value="4.0"/>
         <frac32.s.map name="p3" value="2.0"/>
         <frac32.s.map name="p4" value="0.0"/>
         <frac32.s.map name="p5" value="0.0"/>
         <frac32.s.map name="p6" value="0.0"/>
         <frac32.s.map name="p7" value="0.0"/>
         <frac32.s.map name="p8" value="0.0"/>
         <frac32.s.map name="p9" value="0.0"/>
         <frac32.s.map name="p10" value="0.0"/>
         <frac32.s.map name="p11" value="0.0"/>
         <frac32.s.map name="p12" value="0.0"/>
         <frac32.s.map name="p13" value="0.0"/>
         <frac32.s.map name="p14" value="0.0"/>
         <frac32.s.map name="p15" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="drj/seq/stepseq_16_u" uuid="ae8548ea71ef03abc56ff0c14bff9cff972947ac" name="stepseq_16_u_1" x="630" y="70">
      <params>
         <frac32.u.map name="v0" value="64.0"/>
         <frac32.u.map name="v1" value="40.0"/>
         <frac32.u.map name="v2" value="55.0"/>
         <frac32.u.map name="v3" value="55.5"/>
         <frac32.u.map name="v4" value="0.0"/>
         <frac32.u.map name="v5" value="0.0"/>
         <frac32.u.map name="v6" value="0.0"/>
         <frac32.u.map name="v7" value="0.0"/>
         <frac32.u.map name="v8" value="0.0"/>
         <frac32.u.map name="v9" value="0.0"/>
         <frac32.u.map name="v10" value="0.0"/>
         <frac32.u.map name="v11" value="0.0"/>
         <frac32.u.map name="v12" value="0.0"/>
         <frac32.u.map name="v13" value="0.0"/>
         <frac32.u.map name="v14" value="0.0"/>
         <frac32.u.map name="v15" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="pitch" x="812" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="gate" x="812" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="reverse" x="42" y="140">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="velo" x="812" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/button" uuid="ef3d13774349df85aa9bfecf30dbc91ab8488b3f" name="reset:_sync" x="42" y="210">
      <params>
         <bool32.mom name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/button" uuid="ef3d13774349df85aa9bfecf30dbc91ab8488b3f" name="reset:_immediate" x="42" y="280">
      <params>
         <bool32.mom name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="stepseq_16_pitch_1" outlet="out"/>
         <dest obj="pitch" inlet="outlet"/>
      </net>
      <net>
         <source obj="stepseq_16_u_1" outlet="out"/>
         <dest obj="velo" inlet="outlet"/>
      </net>
      <net>
         <source obj="run" outlet="o"/>
         <dest obj="seq_clk_1" inlet="run"/>
      </net>
      <net>
         <source obj="reverse" outlet="o"/>
         <dest obj="seq_clk_1" inlet="reverse"/>
      </net>
      <net>
         <source obj="seq_clk_1" outlet="step"/>
         <dest obj="stepseq_16_pitch_1" inlet="step"/>
         <dest obj="stepseq_16_u_1" inlet="step"/>
      </net>
      <net>
         <source obj="reset:_sync" outlet="o"/>
         <dest obj="seq_clk_1" inlet="rstsync"/>
      </net>
      <net>
         <source obj="reset:_immediate" outlet="o"/>
         <dest obj="seq_clk_1" inlet="rstimm"/>
      </net>
      <net>
         <source obj="seq_clk_1" outlet="gate"/>
         <dest obj="gate" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author>Are Leistad</Author>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>967</x>
      <y>111</y>
      <width>964</width>
      <height>921</height>
   </windowPos>
</patch-1.0>