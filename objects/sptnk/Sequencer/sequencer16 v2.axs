<patch-1.0>
   <obj type="ctrl/toggle" sha="f5742cc9eee76fae90a4e570c34596dd327b6c28" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="Manual mode" x="476" y="0">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 16 h" sha="b27c95e316eef50efd132664e9d89de4cf21d19c" uuid="75b78d9270bc08741651a7b7acae0fb789172fca" name="Manual step select" x="476" y="56">
      <params>
         <int32.hradio name="value" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="238" y="98" text="Feed the counter forward or backwars"/>
   <obj type="patch/inlet b" sha="17c8e188371661163bfa55cea9974eecb785fb06" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Clock In" x="0" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="demux/demux 2" sha="c50b27790ecf5ebd86af6c4ede6a6b2c9d6ea154" uuid="28788637ca4264670042a31303a9d6e100646ff0" name="demux_1" x="238" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/counter2" sha="520bfefaef89b5ba4deb2a4d79b4236f0b321489" uuid="d9536f238ab92e53ac93d5927c3b43ceef998dc1" name="counter2_1" x="336" y="112">
      <params>
         <int32 name="maximum" value="16"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" sha="28ceb9074fe632debd6b911fe5db57bd34f85878" uuid="16f90f81694766b0bc8187bfcba5a021e5701d81" name="Select Between Sequencer mode and manual mode" x="476" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" sha="17c8e188371661163bfa55cea9974eecb785fb06" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Reset" x="0" y="154">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="476" y="182" text="Manual step select as an alternative for the main counter"/>
   <obj type="patch/inlet b" sha="17c8e188371661163bfa55cea9974eecb785fb06" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Backwards" x="0" y="196">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="238" y="224" text="Allow reset only when synced to clock"/>
   <obj type="const/i" sha="15b9dce9232a04e8881936a6ea800e66ae8e0da9" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_1" x="490" y="224">
      <params/>
      <attribs>
         <spinner attributeName="value" value="7"/>
      </attribs>
   </obj>
   <obj type="logic/and 2" sha="fcf3c7b64624a2ee10ab0923e03af3f1e8e2a648" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_1" x="238" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/or 2" sha="6941575503e8a946c74e5388ec4e6a97468ae3c5" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="or_1" x="308" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="CV In" x="0" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/&gt;" sha="6ce6ff4d125547d10653d4bac2820364d8297d6f" uuid="a459588d6498caeb4daf3a07f9d5e9b4a657262f" name="&gt;_2" x="224" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="sel/sel b 16 pulse" sha="45e8caabeb8ef96796bb2633cb2d164cc41509f2" uuid="b52a026dd735305ac8ddf499e366883006aa2acf" name="Trig seq" x="238" y="420">
      <params>
         <bin16 name="b16" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" sha="9c18b5ec0ea721bb98852ab326891478ca87a360" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Current Step" x="574" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" sha="c0c4ce40c7dec73dfbb009fd86c9b89c068b137a" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="CV out" x="574" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="sel/sel b 16 old" sha="4b7c529b7fbaef1fe5021f1407986c598614ff70" uuid="92a0fdadbd955817214e2fc7345f6ceb7bb4ea36" name="Gate seq" x="238" y="490">
      <params>
         <bin16 name="b16" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" sha="d53edf73b9c33108cbb6e5487759ac27b809cfcc" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="Trigger out" x="574" y="504">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 16 h" sha="b27c95e316eef50efd132664e9d89de4cf21d19c" uuid="75b78d9270bc08741651a7b7acae0fb789172fca" name="Autoreset" x="238" y="546">
      <params>
         <int32.hradio name="value" onParent="true" value="15"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" sha="d53edf73b9c33108cbb6e5487759ac27b809cfcc" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="Gate out" x="574" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" sha="d53edf73b9c33108cbb6e5487759ac27b809cfcc" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="Restart" x="574" y="630">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="238" y="658" text="Multiplexing stuff"/>
   <obj type="math/&gt;" sha="6ce6ff4d125547d10653d4bac2820364d8297d6f" uuid="a459588d6498caeb4daf3a07f9d5e9b4a657262f" name="&gt;_1" x="238" y="672">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/or 2" sha="6941575503e8a946c74e5388ec4e6a97468ae3c5" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="or_2" x="574" y="672">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" sha="73ba55fbf61b80b78dd5cb4f0c4bd5cbbdd54ea0" uuid="3bcb8a666381ed18b8962eda50b1aa679136f618" name="mux_3" x="238" y="728">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="i_1" outlet="out"/>
         <dest obj="&gt;_1" inlet="in2"/>
      </net>
      <net>
         <source obj="&gt;_1" outlet="out"/>
         <dest obj="mux_3" inlet="s"/>
      </net>
      <net>
         <source obj="Select Between Sequencer mode and manual mode" outlet="o"/>
         <dest obj="&gt;_1" inlet="in1"/>
         <dest obj="Trig seq" inlet="in"/>
         <dest obj="Gate seq" inlet="in"/>
         <dest obj="Current Step" inlet="outlet"/>
      </net>
      <net>
         <source obj="Manual mode" outlet="o"/>
         <dest obj="Select Between Sequencer mode and manual mode" inlet="s"/>
      </net>
      <net>
         <source obj="Trig seq" outlet="o"/>
         <dest obj="Trigger out" inlet="outlet"/>
      </net>
      <net>
         <source obj="mux_3" outlet="o"/>
         <dest obj="CV out" inlet="outlet"/>
      </net>
      <net>
         <source obj="Gate seq" outlet="o"/>
         <dest obj="Gate out" inlet="outlet"/>
      </net>
      <net>
         <source obj="Clock In" outlet="inlet"/>
         <dest obj="and_1" inlet="i1"/>
         <dest obj="demux_1" inlet="i"/>
      </net>
      <net>
         <source obj="Reset" outlet="inlet"/>
         <dest obj="and_1" inlet="i2"/>
      </net>
      <net>
         <source obj="Manual step select" outlet="out"/>
         <dest obj="Select Between Sequencer mode and manual mode" inlet="i2"/>
      </net>
      <net>
         <source obj="and_1" outlet="o"/>
         <dest obj="or_1" inlet="i1"/>
      </net>
      <net>
         <source obj="demux_1" outlet="o0"/>
         <dest obj="counter2_1" inlet="inc"/>
      </net>
      <net>
         <source obj="demux_1" outlet="o1"/>
         <dest obj="counter2_1" inlet="dec"/>
      </net>
      <net>
         <source obj="or_1" outlet="o"/>
         <dest obj="counter2_1" inlet="r"/>
      </net>
      <net>
         <source obj="counter2_1" outlet="o"/>
         <dest obj="Select Between Sequencer mode and manual mode" inlet="i1"/>
         <dest obj="&gt;_2" inlet="in1"/>
      </net>
      <net>
         <source obj="counter2_1" outlet="c"/>
         <dest obj="or_2" inlet="i1"/>
      </net>
      <net>
         <source obj="or_2" outlet="o"/>
         <dest obj="Restart" inlet="outlet"/>
      </net>
      <net>
         <source obj="&gt;_2" outlet="out"/>
         <dest obj="or_1" inlet="i2"/>
      </net>
      <net>
         <source obj="Autoreset" outlet="out"/>
         <dest obj="&gt;_2" inlet="in2"/>
      </net>
      <net>
         <source obj="Backwards" outlet="inlet"/>
         <dest obj="demux_1" inlet="s"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author>Sputnki</Author>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>0</x>
      <y>-4</y>
      <width>1366</width>
      <height>772</height>
   </windowPos>
</patch-1.0>