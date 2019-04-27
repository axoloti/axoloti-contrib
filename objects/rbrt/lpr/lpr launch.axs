<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="slot gate" x="126" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="slot start" x="126" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="wait" x="126" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="master phase" x="126" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/seq/timepoint" uuid="d6216495-05eb-4ea8-aed3-b39555b53dba" name="timepoint_1" x="490" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="e1c92bc92f4d191bfadf0efeae4503b458a4e440" name="mux_1" x="616" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_1" x="756" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="master start" x="126" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/-" uuid="3280bb759e9fc189e134300e48dda7e903c9a110" name="-_1" x="294" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/math/wrp" uuid="d99b5b88-66bd-453a-9af2-b2738107c76e" name="wrp_1" x="378" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/flipflop" uuid="f9b15363f5ee203152e062c08a8846f0074b0ea5" name="flipflop_1" x="1036" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="gate" x="1134" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/control/t2p inv" uuid="6a8a7c63-345c-4cd5-a1e8-12b25eb4f47e" name="t2p_2" x="882" y="336">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="wait" outlet="inlet"/>
         <dest obj="mux_1" inlet="s"/>
      </net>
      <net>
         <source obj="and_1" outlet="o"/>
         <dest obj="flipflop_1" inlet="set"/>
      </net>
      <net>
         <source obj="-_1" outlet="out"/>
         <dest obj="wrp_1" inlet="a"/>
      </net>
      <net>
         <source obj="wrp_1" outlet="b"/>
         <dest obj="timepoint_1" inlet="pos"/>
      </net>
      <net>
         <source obj="t2p_2" outlet="pulse"/>
         <dest obj="flipflop_1" inlet="reset"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="and_1" inlet="i1"/>
      </net>
      <net>
         <source obj="timepoint_1" outlet="trig"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="slot gate" outlet="inlet"/>
         <dest obj="mux_1" inlet="i1"/>
         <dest obj="and_1" inlet="i2"/>
         <dest obj="t2p_2" inlet="trig"/>
      </net>
      <net>
         <source obj="slot start" outlet="inlet"/>
         <dest obj="-_1" inlet="in1"/>
      </net>
      <net>
         <source obj="master start" outlet="inlet"/>
         <dest obj="-_1" inlet="in2"/>
      </net>
      <net>
         <source obj="master phase" outlet="inlet"/>
         <dest obj="timepoint_1" inlet="phase"/>
      </net>
      <net>
         <source obj="flipflop_1" outlet="o"/>
         <dest obj="gate" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>93</x>
      <y>101</y>
      <width>1414</width>
      <height>708</height>
   </windowPos>
</patch-1.0>