<patch-1.0 appVersion="1.0.11">
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="rec state" x="0" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_3" x="182" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/flipflop toggle" uuid="195e489e5fc3d275944b0de56c7a91c8641ea22a" name="flipflop_1" x="616" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="play " x="742" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="play toggle" x="0" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_1" x="182" y="154">
      <params/>
      <attribs>
         <spinner attributeName="value" value="1"/>
      </attribs>
   </obj>
   <obj type="logic/change" uuid="96e39ae624c3f3c952cec4a95e1986ee0104f718" name="change_1" x="294" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="phi/logic/or 4" uuid="5dc5a7c1fb7809522171638f755fead71cbe14ea" name="or_3" x="406" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="stop" x="0" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="sync" x="0" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/flipflop" uuid="f9b15363f5ee203152e062c08a8846f0074b0ea5" name="flipflop_2" x="112" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/looper/loop_sync" uuid="2d468173-048a-4b63-97d3-db9666f2bcf4" name="loop_sync_1" x="224" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/or 2" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="or_2" x="364" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="start" x="0" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="master" x="0" y="406">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="rec state" outlet="inlet"/>
         <dest obj="inv_3" inlet="i"/>
         <dest obj="or_3" inlet="i2"/>
      </net>
      <net>
         <source obj="flipflop_1" outlet="o"/>
         <dest obj="play " inlet="outlet"/>
      </net>
      <net>
         <source obj="inv_3" outlet="o"/>
         <dest obj="flipflop_1" inlet="set"/>
      </net>
      <net>
         <source obj="i_1" outlet="out"/>
         <dest obj="change_1" inlet="in"/>
      </net>
      <net>
         <source obj="change_1" outlet="trig"/>
         <dest obj="or_3" inlet="i1"/>
      </net>
      <net>
         <source obj="play toggle" outlet="inlet"/>
         <dest obj="or_2" inlet="i2"/>
      </net>
      <net>
         <source obj="loop_sync_1" outlet="trig"/>
         <dest obj="flipflop_2" inlet="reset"/>
         <dest obj="or_2" inlet="i1"/>
      </net>
      <net>
         <source obj="flipflop_2" outlet="o"/>
         <dest obj="loop_sync_1" inlet="wait"/>
      </net>
      <net>
         <source obj="sync" outlet="inlet"/>
         <dest obj="flipflop_2" inlet="set"/>
      </net>
      <net>
         <source obj="master" outlet="inlet"/>
         <dest obj="loop_sync_1" inlet="pos"/>
      </net>
      <net>
         <source obj="start" outlet="inlet"/>
         <dest obj="loop_sync_1" inlet="start"/>
      </net>
      <net>
         <source obj="or_2" outlet="o"/>
         <dest obj="flipflop_1" inlet="trig"/>
      </net>
      <net>
         <source obj="or_3" outlet="o"/>
         <dest obj="flipflop_1" inlet="reset"/>
      </net>
      <net>
         <source obj="stop" outlet="inlet"/>
         <dest obj="or_3" inlet="i3"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>549</x>
      <y>140</y>
      <width>1049</width>
      <height>606</height>
   </windowPos>
</patch-1.0>