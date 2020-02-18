<patch-1.0 appVersion="1.0.9">
   <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_10" x="350" y="42">
      <params/>
      <attribs>
         <spinner attributeName="value" value="63"/>
      </attribs>
   </obj>
   <obj type="math/==" uuid="deaf0d36642c57876c4101e86f8a0b6a06021ab2" name="==_2" x="448" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/flipflop toggle" uuid="195e489e5fc3d275944b0de56c7a91c8641ea22a" name="flipflop_2" x="532" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/control/timer" uuid="d4a352fc-5acf-466d-b462-079a1b5a2b41" name="timer_3" x="658" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/i" uuid="5e35fd0c62d81e70017289250cf28edd26e19e4a" name="i_1" x="448" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/i" uuid="5e35fd0c62d81e70017289250cf28edd26e19e4a" name="i_9" x="686" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/kscope 128 p" uuid="664f9317a38a6910ae9bc020e00ca2dd2ee692fa" name="kscope_5" x="896" y="126">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="504" y="140" text="this prooves it&apos;s actually working"/>
   <comment type="patch/comment" x="56" y="210" text="turn toggle on and off to set tempo"/>
   <obj type="rbrt/control/timer" uuid="d4a352fc-5acf-466d-b462-079a1b5a2b41" name="timer_4" x="308" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="toggle_1" x="70" y="238">
      <params>
         <bool32.tgl name="b" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="lfo/saw lin" uuid="79fb6a3a77fc9fe0273c271ddccca019ebee6955" name="saw_5" x="658" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/control/gate_hold_i" uuid="8a2bb3cd-0d44-4e9d-a279-098809d7eefb" name="gate_hold_i_1" x="280" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/control/k2f" uuid="46f94bfc-0747-4651-9944-a499a21e4caf" name="k2f_1" x="476" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_1" x="154" y="294">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="476" y="336" text="convert k-rate ticks to HZ"/>
   <obj type="rbrt/osc/phasor" uuid="8015d52c-de35-43b7-af2c-e01f5e6d9128" name="phasor_1" x="658" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/scope 128 b" uuid="2b69f51a714fc276503ef10c349d6d253d1ae5e2" name="scope_2" x="896" y="336">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="70" y="364" text="reset phase on new tempo"/>
   <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_1" x="294" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="toggle_2" x="70" y="392">
      <params>
         <bool32.tgl name="b" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="disp/i" uuid="5e35fd0c62d81e70017289250cf28edd26e19e4a" name="i_12" x="1624" y="1638">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="toggle_1" outlet="o"/>
         <dest obj="timer_4" inlet="toggle"/>
         <dest obj="inv_1" inlet="i"/>
      </net>
      <net>
         <source obj="saw_5" outlet="wave"/>
         <dest obj="kscope_5" inlet="in"/>
         <dest obj="==_2" inlet="in1"/>
      </net>
      <net>
         <source obj="timer_4" outlet="t"/>
         <dest obj="i_1" inlet="in"/>
         <dest obj="gate_hold_i_1" inlet="in"/>
      </net>
      <net>
         <source obj="timer_3" outlet="t"/>
         <dest obj="i_9" inlet="in"/>
      </net>
      <net>
         <source obj="i_10" outlet="out"/>
         <dest obj="==_2" inlet="in2"/>
      </net>
      <net>
         <source obj="==_2" outlet="out"/>
         <dest obj="flipflop_2" inlet="trig"/>
      </net>
      <net>
         <source obj="flipflop_2" outlet="o"/>
         <dest obj="timer_3" inlet="toggle"/>
      </net>
      <net>
         <source obj="k2f_1" outlet="freq"/>
         <dest obj="saw_5" inlet="freq"/>
         <dest obj="phasor_1" inlet="freq"/>
      </net>
      <net>
         <source obj="inv_1" outlet="o"/>
         <dest obj="saw_5" inlet="reset"/>
         <dest obj="and_1" inlet="i2"/>
         <dest obj="gate_hold_i_1" inlet="gate"/>
      </net>
      <net>
         <source obj="toggle_2" outlet="o"/>
         <dest obj="and_1" inlet="i1"/>
      </net>
      <net>
         <source obj="and_1" outlet="o"/>
         <dest obj="phasor_1" inlet="reset"/>
      </net>
      <net>
         <source obj="gate_hold_i_1" outlet="out"/>
         <dest obj="k2f_1" inlet="kticks"/>
      </net>
      <net>
         <source obj="phasor_1" outlet="wave"/>
         <dest obj="scope_2" inlet="in"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-8</x>
      <y>-8</y>
      <width>1616</width>
      <height>876</height>
   </windowPos>
</patch-1.0>