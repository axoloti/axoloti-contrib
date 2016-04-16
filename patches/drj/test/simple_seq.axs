<patch-1.0 appVersion="1.0.9">
   <obj type="lfo/square" uuid="de6909eb64db13af5b43f979a4c130024b3a4793" name="square_1" x="56" y="70">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="e1c92bc92f4d191bfadf0efeae4503b458a4e440" name="mux_1" x="210" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/counter" uuid="7a141ba82230e54e5f5cd12da5dbe5a74ba854a5" name="counter_1" x="322" y="70">
      <params>
         <int32 name="maximum" value="4"/>
      </params>
      <attribs/>
   </obj>
   <obj type="drj/seq/stepseq_16_pitch" uuid="ae81899a71ef03fd356af0c14bff9cff972947ac" name="stepseq_16_pitch_1" x="434" y="70">
      <params>
         <frac32.s.map name="v0" value="1.0"/>
         <frac32.s.map name="v1" value="2.0"/>
         <frac32.s.map name="v2" value="3.0"/>
         <frac32.s.map name="v3" value="4.0"/>
         <frac32.s.map name="v4" value="0.0"/>
         <frac32.s.map name="v5" value="0.0"/>
         <frac32.s.map name="v6" value="0.0"/>
         <frac32.s.map name="v7" value="0.0"/>
         <frac32.s.map name="v8" value="0.0"/>
         <frac32.s.map name="v9" value="0.0"/>
         <frac32.s.map name="v10" value="0.0"/>
         <frac32.s.map name="v11" value="0.0"/>
         <frac32.s.map name="v12" value="0.0"/>
         <frac32.s.map name="v13" value="0.0"/>
         <frac32.s.map name="v14" value="0.0"/>
         <frac32.s.map name="v15" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="drj/seq/stepseq_16_u" uuid="ae8548ea71ef03abc56ff0c14bff9cff972947ac" name="stepseq_16_u_1" x="630" y="70">
      <params>
         <frac32.u.map name="v0" value="5.0"/>
         <frac32.u.map name="v1" value="41.5"/>
         <frac32.u.map name="v2" value="29.0"/>
         <frac32.u.map name="v3" value="64.0"/>
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
   <obj type="mux/mux 2" uuid="e1c92bc92f4d191bfadf0efeae4503b458a4e440" name="mux_2" x="210" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="velo" x="812" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="run" x="210" y="266">
      <params>
         <bool32.tgl name="b" onParent="true" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/button" uuid="ef3d13774349df85aa9bfecf30dbc91ab8488b3f" name="reset" x="210" y="350">
      <params>
         <bool32.mom name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="counter_1" outlet="o"/>
         <dest obj="stepseq_16_pitch_1" inlet="step"/>
         <dest obj="stepseq_16_u_1" inlet="step"/>
      </net>
      <net>
         <source obj="square_1" outlet="wave"/>
         <dest obj="mux_1" inlet="i1"/>
         <dest obj="mux_2" inlet="i1"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="counter_1" inlet="trig"/>
      </net>
      <net>
         <source obj="mux_2" outlet="o"/>
         <dest obj="gate" inlet="outlet"/>
      </net>
      <net>
         <source obj="stepseq_16_pitch_1" outlet="out"/>
         <dest obj="pitch" inlet="outlet"/>
      </net>
      <net>
         <source obj="run" outlet="o"/>
         <dest obj="mux_2" inlet="s"/>
         <dest obj="mux_1" inlet="s"/>
      </net>
      <net>
         <source obj="reset" outlet="o"/>
         <dest obj="counter_1" inlet="r"/>
      </net>
      <net>
         <source obj="stepseq_16_u_1" outlet="out"/>
         <dest obj="velo" inlet="outlet"/>
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
      <x>772</x>
      <y>114</y>
      <width>964</width>
      <height>921</height>
   </windowPos>
</patch-1.0>