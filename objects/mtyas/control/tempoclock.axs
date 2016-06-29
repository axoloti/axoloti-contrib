<patch-1.0 appVersion="1.0.10">
   <obj type="midi/in/clock" uuid="f1aa3a79d6de9bd6d38dc64c9d4bb5c9de4f4198" name="clock_1" x="42" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="phi/clock/ppq2resolution" uuid="a6b6e4b746767d6b652ct03a1b683bcz5b4f7d38" name="ppq2resolution_1" x="336" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="drj/seq/clk_mul" uuid="1413af5343f97123abeeb627811120af4b3a4793" name="clk_mul_1" x="588" y="266">
      <params>
         <int32 name="clockmul" value="4"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="trigger" x="1078" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="e1c92bc92f4d191bfadf0efeae4503b458a4e440" name="mux_2" x="910" y="378">
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
         <frac32.s.map name="pitch" onParent="true" value="0.0"/>
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
         <source obj="unipolar2bipolar_1" outlet="o"/>
         <dest obj="square_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="*c_1" outlet="out"/>
         <dest obj="to_1" inlet="i"/>
      </net>
      <net>
         <source obj="to_1" outlet="o"/>
         <dest obj="i_1" inlet="in"/>
         <dest obj="ppq2resolution_1" inlet="quant"/>
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
         <source obj="clock_on_off" outlet="inlet"/>
         <dest obj="toggle_1" inlet="trig"/>
      </net>
      <net>
         <source obj="ppq2resolution_1" outlet="o1"/>
         <dest obj="clk_mul_1" inlet="clk"/>
      </net>
      <net>
         <source obj="clk_mul_1" outlet="clk"/>
         <dest obj="mux_2" inlet="i1"/>
      </net>
      <net>
         <source obj="clock_1" outlet="pos4ppq"/>
         <dest obj="ppq2resolution_1" inlet="24ppq"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-8</x>
      <y>-8</y>
      <width>1936</width>
      <height>1096</height>
   </windowPos>
</patch-1.0>