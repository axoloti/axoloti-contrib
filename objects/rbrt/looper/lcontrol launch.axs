<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="toggle" x="42" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="launch" x="42" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="phi/logic/or 4" uuid="5dc5a7c1fb7809522171638f755fead71cbe14ea" name="or_3" x="434" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/flipflop" uuid="f9b15363f5ee203152e062c08a8846f0074b0ea5" name="flipflop_2" x="532" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_1" x="630" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/or 2" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="or_2" x="728" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/flipflop toggle" uuid="195e489e5fc3d275944b0de56c7a91c8641ea22a" name="flipflop_1" x="812" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="stop" x="42" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_1" x="182" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="rec" x="42" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="phi/logic/or 4" uuid="5dc5a7c1fb7809522171638f755fead71cbe14ea" name="or_1" x="294" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/patching/loadbang" uuid="45d1f29d-ac62-4e5b-86f8-2201d2f6c689" name="loadbang_1" x="154" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="phase" x="42" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="play" x="966" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/seq/timepoint" uuid="4aa7200d-f2bb-41f9-82cb-e7a6447d091c" name="timepoint_1" x="168" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="start" x="42" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/control/t2p" uuid="e076e6e6-f59e-429e-b4ca-c0f3e55f074a" name="t2p_1" x="770" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="reset" x="966" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_3" x="294" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="stop_now" x="42" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_2" x="210" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="state" x="980" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="lfo/square" uuid="de6909eb64db13af5b43f979a4c130024b3a4793" name="square_1" x="658" y="378">
      <params>
         <frac32.s.map name="pitch" value="-13.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="e1c92bc92f4d191bfadf0efeae4503b458a4e440" name="mux_1" x="798" y="378">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="rec" outlet="inlet"/>
         <dest obj="inv_1" inlet="i"/>
         <dest obj="or_1" inlet="i1"/>
      </net>
      <net>
         <source obj="loadbang_1" outlet="pulse"/>
         <dest obj="or_1" inlet="i2"/>
      </net>
      <net>
         <source obj="inv_1" outlet="o"/>
         <dest obj="flipflop_1" inlet="set"/>
      </net>
      <net>
         <source obj="or_1" outlet="o"/>
         <dest obj="flipflop_1" inlet="reset"/>
      </net>
      <net>
         <source obj="flipflop_1" outlet="o"/>
         <dest obj="t2p_1" inlet="trig"/>
         <dest obj="play" inlet="outlet"/>
         <dest obj="and_2" inlet="i1"/>
         <dest obj="mux_1" inlet="i1"/>
      </net>
      <net>
         <source obj="toggle" outlet="inlet"/>
         <dest obj="or_2" inlet="i1"/>
         <dest obj="or_3" inlet="i1"/>
      </net>
      <net>
         <source obj="t2p_1" outlet="pulse"/>
         <dest obj="reset" inlet="outlet"/>
      </net>
      <net>
         <source obj="launch" outlet="inlet"/>
         <dest obj="flipflop_2" inlet="set"/>
         <dest obj="and_3" inlet="i1"/>
      </net>
      <net>
         <source obj="flipflop_2" outlet="o"/>
         <dest obj="and_1" inlet="i1"/>
         <dest obj="mux_1" inlet="s"/>
         <dest obj="square_1" inlet="reset"/>
      </net>
      <net>
         <source obj="start" outlet="inlet"/>
         <dest obj="timepoint_1" inlet="pos"/>
      </net>
      <net>
         <source obj="and_1" outlet="o"/>
         <dest obj="or_2" inlet="i2"/>
         <dest obj="or_3" inlet="i2"/>
      </net>
      <net>
         <source obj="or_2" outlet="o"/>
         <dest obj="flipflop_1" inlet="trig"/>
      </net>
      <net>
         <source obj="or_3" outlet="o"/>
         <dest obj="flipflop_2" inlet="reset"/>
      </net>
      <net>
         <source obj="stop" outlet="inlet"/>
         <dest obj="or_1" inlet="i3"/>
      </net>
      <net>
         <source obj="timepoint_1" outlet="trig"/>
         <dest obj="and_1" inlet="i2"/>
      </net>
      <net>
         <source obj="phase" outlet="inlet"/>
         <dest obj="timepoint_1" inlet="phase"/>
      </net>
      <net>
         <source obj="stop_now" outlet="inlet"/>
         <dest obj="and_2" inlet="i2"/>
      </net>
      <net>
         <source obj="and_2" outlet="o"/>
         <dest obj="and_3" inlet="i2"/>
      </net>
      <net>
         <source obj="and_3" outlet="o"/>
         <dest obj="or_3" inlet="i3"/>
         <dest obj="or_1" inlet="i4"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="state" inlet="outlet"/>
      </net>
      <net>
         <source obj="square_1" outlet="wave"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>278</x>
      <y>3</y>
      <width>1176</width>
      <height>775</height>
   </windowPos>
</patch-1.0>