<patch-1.0 appVersion="1.0.10">
   <obj type="math/round" uuid="d0382003e049112e1746390d691d052ae1294db" name="round_1" x="434" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="d80966871d5328696da567bba03c3fa83060f08d" name="==_1" x="532" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="inlet_1" x="28" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/smooth" uuid="6c5d08c282bb08bff24af85b4891447f99bcbc97" name="smooth_1" x="168" y="84">
      <params>
         <frac32.u.map name="time" value="17.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/round" uuid="d0382003e049112e1746390d691d052ae1294db" name="round_2" x="434" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="out1" x="966" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/control/demux_sh" uuid="d65f9389-6f3b-4290-b830-4ed2a4db542e" name="demux_sh_1" x="280" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/control/gate_hold" uuid="4c315d47-8c76-4c21-bf06-e3d5001b8c21" name="gate_hold_1" x="490" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="inlet_2" x="28" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/round" uuid="d0382003e049112e1746390d691d052ae1294db" name="round_3" x="448" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="d80966871d5328696da567bba03c3fa83060f08d" name="==_2" x="546" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="out2" x="966" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/round" uuid="d0382003e049112e1746390d691d052ae1294db" name="round_4" x="448" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/control/gate_hold" uuid="4c315d47-8c76-4c21-bf06-e3d5001b8c21" name="gate_hold_2" x="504" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="out3" x="966" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/round" uuid="d0382003e049112e1746390d691d052ae1294db" name="round_5" x="448" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="d80966871d5328696da567bba03c3fa83060f08d" name="==_3" x="546" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/round" uuid="d0382003e049112e1746390d691d052ae1294db" name="round_6" x="448" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="out4" x="966" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/control/gate_hold" uuid="4c315d47-8c76-4c21-bf06-e3d5001b8c21" name="gate_hold_3" x="504" y="518">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/round" uuid="d0382003e049112e1746390d691d052ae1294db" name="round_7" x="434" y="602">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="d80966871d5328696da567bba03c3fa83060f08d" name="==_4" x="532" y="616">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/round" uuid="d0382003e049112e1746390d691d052ae1294db" name="round_8" x="434" y="658">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/control/gate_hold" uuid="4c315d47-8c76-4c21-bf06-e3d5001b8c21" name="gate_hold_4" x="490" y="714">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="smooth_1" outlet="out"/>
         <dest obj="demux_sh_1" inlet="in"/>
         <dest obj="round_1" inlet="in"/>
         <dest obj="round_3" inlet="in"/>
         <dest obj="round_5" inlet="in"/>
         <dest obj="round_7" inlet="in"/>
      </net>
      <net>
         <source obj="gate_hold_1" outlet="out"/>
         <dest obj="round_2" inlet="in"/>
         <dest obj="out1" inlet="outlet"/>
      </net>
      <net>
         <source obj="demux_sh_1" outlet="o0"/>
         <dest obj="gate_hold_1" inlet="in"/>
      </net>
      <net>
         <source obj="round_1" outlet="out"/>
         <dest obj="==_1" inlet="in1"/>
      </net>
      <net>
         <source obj="round_2" outlet="out"/>
         <dest obj="==_1" inlet="in2"/>
      </net>
      <net>
         <source obj="==_1" outlet="out"/>
         <dest obj="gate_hold_1" inlet="gate"/>
      </net>
      <net>
         <source obj="gate_hold_2" outlet="out"/>
         <dest obj="round_4" inlet="in"/>
         <dest obj="out2" inlet="outlet"/>
      </net>
      <net>
         <source obj="round_3" outlet="out"/>
         <dest obj="==_2" inlet="in1"/>
      </net>
      <net>
         <source obj="round_4" outlet="out"/>
         <dest obj="==_2" inlet="in2"/>
      </net>
      <net>
         <source obj="==_2" outlet="out"/>
         <dest obj="gate_hold_2" inlet="gate"/>
      </net>
      <net>
         <source obj="demux_sh_1" outlet="o1"/>
         <dest obj="gate_hold_2" inlet="in"/>
      </net>
      <net>
         <source obj="gate_hold_3" outlet="out"/>
         <dest obj="round_6" inlet="in"/>
         <dest obj="out3" inlet="outlet"/>
      </net>
      <net>
         <source obj="round_5" outlet="out"/>
         <dest obj="==_3" inlet="in1"/>
      </net>
      <net>
         <source obj="round_6" outlet="out"/>
         <dest obj="==_3" inlet="in2"/>
      </net>
      <net>
         <source obj="==_3" outlet="out"/>
         <dest obj="gate_hold_3" inlet="gate"/>
      </net>
      <net>
         <source obj="gate_hold_4" outlet="out"/>
         <dest obj="round_8" inlet="in"/>
         <dest obj="out4" inlet="outlet"/>
      </net>
      <net>
         <source obj="round_7" outlet="out"/>
         <dest obj="==_4" inlet="in1"/>
      </net>
      <net>
         <source obj="round_8" outlet="out"/>
         <dest obj="==_4" inlet="in2"/>
      </net>
      <net>
         <source obj="==_4" outlet="out"/>
         <dest obj="gate_hold_4" inlet="gate"/>
      </net>
      <net>
         <source obj="demux_sh_1" outlet="o3"/>
         <dest obj="gate_hold_4" inlet="in"/>
      </net>
      <net>
         <source obj="demux_sh_1" outlet="o2"/>
         <dest obj="gate_hold_3" inlet="in"/>
      </net>
      <net>
         <source obj="inlet_1" outlet="inlet"/>
         <dest obj="smooth_1" inlet="in"/>
      </net>
      <net>
         <source obj="inlet_2" outlet="inlet"/>
         <dest obj="demux_sh_1" inlet="s"/>
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