<patch-1.0 appVersion="1.0.8">
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="on" x="14" y="42">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="samplehold freq" x="14" y="126">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/&gt;&gt;" uuid="d883beaf50b7aae4803ed9941e8f123e87e1e3aa" name="&gt;&gt;_1" x="98" y="126">
      <params/>
      <attribs>
         <spinner attributeName="shift" value="2"/>
      </attribs>
   </obj>
   <obj type="osc/phasor lin" uuid="ee34c4d34eba2cbd849b9e5631e60ce1651faf4c" name="phasor" x="196" y="126">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="phi/ctrl/i radio 3 v" uuid="81c4cf13a2d0e267b327a4663a711c2496f5f9b6" name="filter mode" x="532" y="168">
      <params>
         <int32.vradio name="value" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="a" x="126" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="dist/samplehold" uuid="b0a30d3d257d377dc36267f25514de345255cbd7" name="samplehold_1" x="210" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/multimode svf m" uuid="71d5f8b2131b691d591a9a9ee28771309f8938d" name="multimode" x="336" y="280">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="0.0"/>
         <frac32.u.map name="reso" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 3" uuid="8e20982407718ae2b4e3cd55c79b04e53bb23457" name="mux_2" x="574" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="539c246f4c360ac476e128cfbfa84348fb7f7e73" name="mux_1" x="672" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="out" x="756" y="280">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="phasor" outlet="phasor"/>
         <dest obj="samplehold_1" inlet="trig"/>
      </net>
      <net>
         <source obj="a" outlet="inlet"/>
         <dest obj="samplehold_1" inlet="in"/>
         <dest obj="mux_1" inlet="i1"/>
      </net>
      <net>
         <source obj="samplehold freq" outlet="out"/>
         <dest obj="&gt;&gt;_1" inlet="a"/>
      </net>
      <net>
         <source obj="&gt;&gt;_1" outlet="result"/>
         <dest obj="phasor" inlet="freq"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="out" inlet="outlet"/>
      </net>
      <net>
         <source obj="samplehold_1" outlet="out"/>
         <dest obj="multimode" inlet="in"/>
      </net>
      <net>
         <source obj="on" outlet="o"/>
         <dest obj="mux_1" inlet="s"/>
      </net>
      <net>
         <source obj="mux_2" outlet="o"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="multimode" outlet="hp"/>
         <dest obj="mux_2" inlet="i0"/>
      </net>
      <net>
         <source obj="multimode" outlet="bp"/>
         <dest obj="mux_2" inlet="i1"/>
      </net>
      <net>
         <source obj="multimode" outlet="lp"/>
         <dest obj="mux_2" inlet="i2"/>
      </net>
      <net>
         <source obj="filter mode" outlet="out"/>
         <dest obj="mux_2" inlet="s"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>254</x>
      <y>139</y>
      <width>1008</width>
      <height>604</height>
   </windowPos>
</patch-1.0>