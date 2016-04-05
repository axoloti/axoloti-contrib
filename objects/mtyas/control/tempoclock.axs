<patch-1.0 appVersion="1.0.8">
   <obj type="midi/in/clock" uuid="f1aa3a79d6de9bd6d38dc64c9d4bb5c9de4f4198" name="clock_1" x="70" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/change" uuid="96e39ae624c3f3c952cec4a95e1986ee0104f718" name="change_1" x="168" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/counter" uuid="7a141ba82230e54e5f5cd12da5dbe5a74ba854a5" name="counter_1" x="168" y="84">
      <params>
         <int32 name="maximum" value="3"/>
      </params>
      <attribs/>
   </obj>
   <obj type="logic/counter" uuid="7a141ba82230e54e5f5cd12da5dbe5a74ba854a5" name="counter_2" x="168" y="168">
      <params>
         <int32 name="maximum" value="32"/>
      </params>
      <attribs/>
   </obj>
   <obj type="disp/ibar 32" uuid="8ec034ef194146b746e2c4c1ec30350f4157d51a" name="ibar_1" x="266" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="sel/sel b 32 8t" uuid="989f1cf7caf5b472065772cf2898bdab76ceae1e" name="sel_1" x="266" y="252">
      <params>
         <bin32 name="p1" value="1431655765"/>
         <bin32 name="p2" value="1227133513"/>
         <bin32 name="p3" value="286331153"/>
         <bin32 name="p4" value="1090785345"/>
         <bin32 name="p5" value="16843009"/>
         <bin32 name="p6" value="4196353"/>
         <bin32 name="p7" value="65537"/>
         <bin32 name="p8" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 8" uuid="39db4571d158ce2c2bc895f16048aee73f12d315" name="mux_1" x="714" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="e1c92bc92f4d191bfadf0efeae4503b458a4e440" name="mux_2" x="910" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="trigger" x="1134" y="504">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_1" x="504" y="518">
      <params>
         <frac32.u.map name="amp" value="9.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="tempo" x="84" y="532">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/to i" uuid="305966430ee86b5c3b8e18cde0c721657c558a87" name="to_1" x="658" y="532">
      <params/>
      <attribs/>
   </obj>
   <obj type="lfo/square" uuid="de6909eb64db13af5b43f979a4c130024b3a4793" name="square_1" x="364" y="602">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="disp/i" uuid="5e35fd0c62d81e70017289250cf28edd26e19e4a" name="i_1" x="728" y="630">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/unipolar2bipolar" uuid="efc8ee28c508740c5edf7995eaaa07a6d6818e5e" name="unipolar2bipolar_1" x="196" y="644">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="clock_on_off" x="504" y="756">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/toggle" uuid="f42f0d3aab552c17bc78b9e65f85dc24f977503d" name="toggle_1" x="700" y="756">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="change_1" outlet="trig"/>
         <dest obj="counter_1" inlet="trig"/>
      </net>
      <net>
         <source obj="counter_1" outlet="c"/>
         <dest obj="counter_2" inlet="trig"/>
      </net>
      <net>
         <source obj="counter_2" outlet="o"/>
         <dest obj="ibar_1" inlet="in"/>
         <dest obj="sel_1" inlet="in"/>
      </net>
      <net>
         <source obj="unipolar2bipolar_1" outlet="o"/>
         <dest obj="square_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="*c_1" outlet="out"/>
         <dest obj="to_1" inlet="i"/>
      </net>
      <net>
         <source obj="to_1" outlet="o"/>
         <dest obj="mux_1" inlet="s"/>
         <dest obj="i_1" inlet="in"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="mux_2" inlet="i1"/>
      </net>
      <net>
         <source obj="square_1" outlet="wave"/>
         <dest obj="mux_2" inlet="i2"/>
      </net>
      <net>
         <source obj="toggle_1" outlet="o"/>
         <dest obj="mux_2" inlet="s"/>
      </net>
      <net>
         <source obj="mux_2" outlet="o"/>
         <dest obj="trigger" inlet="outlet"/>
      </net>
      <net>
         <source obj="tempo" outlet="inlet"/>
         <dest obj="*c_1" inlet="in"/>
         <dest obj="unipolar2bipolar_1" inlet="i"/>
      </net>
      <net>
         <source obj="clock_1" outlet="pos24ppq"/>
         <dest obj="change_1" inlet="in"/>
      </net>
      <net>
         <source obj="sel_1" outlet="o1"/>
         <dest obj="mux_1" inlet="i0"/>
      </net>
      <net>
         <source obj="sel_1" outlet="o2"/>
         <dest obj="mux_1" inlet="i1"/>
      </net>
      <net>
         <source obj="sel_1" outlet="o3"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="sel_1" outlet="o4"/>
         <dest obj="mux_1" inlet="i3"/>
      </net>
      <net>
         <source obj="sel_1" outlet="o5"/>
         <dest obj="mux_1" inlet="i4"/>
      </net>
      <net>
         <source obj="sel_1" outlet="o6"/>
         <dest obj="mux_1" inlet="i5"/>
      </net>
      <net>
         <source obj="sel_1" outlet="o7"/>
         <dest obj="mux_1" inlet="i6"/>
      </net>
      <net>
         <source obj="sel_1" outlet="o8"/>
         <dest obj="mux_1" inlet="i7"/>
      </net>
      <net>
         <source obj="clock_on_off" outlet="inlet"/>
         <dest obj="toggle_1" inlet="trig"/>
         <dest obj="counter_2" inlet="r"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>102</x>
      <y>65</y>
      <width>1936</width>
      <height>1096</height>
   </windowPos>
</patch-1.0>