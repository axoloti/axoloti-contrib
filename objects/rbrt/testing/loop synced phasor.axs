<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="count" x="70" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/change" uuid="96e39ae624c3f3c952cec4a95e1986ee0104f718" name="change_1" x="266" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="slength" x="70" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/math/div ifi" uuid="91be7fc5-3361-43e8-9341-ce85db672a72" name="div_4" x="266" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/change" uuid="96e39ae624c3f3c952cec4a95e1986ee0104f718" name="change_2" x="420" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/flipflop" uuid="f9b15363f5ee203152e062c08a8846f0074b0ea5" name="flipflop_1" x="546" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_1" x="658" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="speed" x="70" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/abs" uuid="4ae01ff03753539d9028888689654235fa199936" name="abs_1" x="154" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="smps" x="770" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="reset" x="770" y="280">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="abs_1" outlet="out"/>
         <dest obj="div_4" inlet="b"/>
      </net>
      <net>
         <source obj="div_4" outlet="int"/>
         <dest obj="change_2" inlet="in"/>
         <dest obj="smps" inlet="outlet"/>
      </net>
      <net>
         <source obj="change_2" outlet="trig"/>
         <dest obj="flipflop_1" inlet="set"/>
      </net>
      <net>
         <source obj="flipflop_1" outlet="o"/>
         <dest obj="and_1" inlet="i2"/>
      </net>
      <net>
         <source obj="and_1" outlet="o"/>
         <dest obj="flipflop_1" inlet="reset"/>
         <dest obj="reset" inlet="outlet"/>
      </net>
      <net>
         <source obj="change_1" outlet="trig"/>
         <dest obj="and_1" inlet="i1"/>
      </net>
      <net>
         <source obj="count" outlet="inlet"/>
         <dest obj="change_1" inlet="in"/>
      </net>
      <net>
         <source obj="slength" outlet="inlet"/>
         <dest obj="div_4" inlet="a"/>
      </net>
      <net>
         <source obj="speed" outlet="inlet"/>
         <dest obj="abs_1" inlet="in"/>
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