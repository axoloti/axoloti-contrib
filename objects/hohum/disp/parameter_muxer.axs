<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="inlet_1" x="56" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="inlet_2" x="154" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="inlet_3" x="252" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="inlet_4" x="350" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="inlet_5" x="448" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="inlet_6" x="56" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="inlet_7" x="154" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="inlet_8" x="252" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="inlet_9" x="350" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="inlet_10" x="448" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="index" x="56" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="value" x="126" y="98">
      <params/>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="e9f44f0e-b370-4eba-9737-61cd3a5ddb81" name="mux_1" x="154" y="210">
      <params/>
      <attribs/>
      <object id="patch/object" uuid="e9f44f0e-b370-4eba-9737-61cd3a5ddb81">
         <sDescription>input multiplexer. Output is i1 when s &lt; 1, i[i] when....</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>mux.axh</helpPatch>
         <inlets>
            <charptr32 name="i0" description="input 0"/>
            <charptr32 name="i1" description="input 1"/>
            <charptr32 name="i2" description="input 2"/>
            <charptr32 name="i3" description="input 3"/>
            <charptr32 name="i4" description="input 4"/>
            <charptr32 name="i5" description="input 5"/>
            <charptr32 name="i6" description="input 6"/>
            <charptr32 name="i7"/>
            <charptr32 name="i8"/>
            <charptr32 name="i9"/>
            <int32.positive name="s"/>
         </inlets>
         <outlets>
            <charptr32 name="o" description="output"/>
         </outlets>
         <displays/>
         <params/>
         <attribs/>
         <includes/>
         <code.krate><![CDATA[switch(inlet_s>0?inlet_s:0){
      case 0: outlet_o= (char *)inlet_i0;break;
      case 1: outlet_o= (char *)inlet_i1;break;
      case 2: outlet_o= (char *)inlet_i2;break;
      case 3: outlet_o= (char *)inlet_i3;break;
      case 4: outlet_o= (char *)inlet_i4;break;
      case 5: outlet_o= (char *)inlet_i5;break;
      case 6: outlet_o= (char *)inlet_i6;break;
      case 7: outlet_o= (char *)inlet_i7;break;
      case 8: outlet_o= (char *)inlet_i8;break;
      case 9: outlet_o= (char *)inlet_i9;break;
      default: outlet_o= (char *)inlet_i0;break;
}]]></code.krate>
      </object>
   </patchobj>
   <obj type="hohum/disp/parameter_to_text" uuid="a4fd3723-d239-4416-8849-240aeb7afe4c" name="parameter_to_text_1" x="294" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet string" uuid="515c49b96c1c486e74e0f5f1e5e7314007c8a2e" name="outlet_1" x="560" y="210">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="index" outlet="inlet"/>
         <dest obj="mux_1" inlet="s"/>
      </net>
      <net>
         <source obj="inlet_1" outlet="inlet"/>
         <dest obj="mux_1" inlet="i0"/>
      </net>
      <net>
         <source obj="inlet_2" outlet="inlet"/>
         <dest obj="mux_1" inlet="i1"/>
      </net>
      <net>
         <source obj="inlet_3" outlet="inlet"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="inlet_4" outlet="inlet"/>
         <dest obj="mux_1" inlet="i3"/>
      </net>
      <net>
         <source obj="inlet_5" outlet="inlet"/>
         <dest obj="mux_1" inlet="i4"/>
      </net>
      <net>
         <source obj="inlet_6" outlet="inlet"/>
         <dest obj="mux_1" inlet="i5"/>
      </net>
      <net>
         <source obj="inlet_7" outlet="inlet"/>
         <dest obj="mux_1" inlet="i6"/>
      </net>
      <net>
         <source obj="inlet_8" outlet="inlet"/>
         <dest obj="mux_1" inlet="i7"/>
      </net>
      <net>
         <source obj="inlet_9" outlet="inlet"/>
         <dest obj="mux_1" inlet="i8"/>
      </net>
      <net>
         <source obj="inlet_10" outlet="inlet"/>
         <dest obj="mux_1" inlet="i9"/>
      </net>
      <net>
         <source obj="value" outlet="inlet"/>
         <dest obj="parameter_to_text_1" inlet="value"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="parameter_to_text_1" inlet="text"/>
      </net>
      <net>
         <source obj="parameter_to_text_1" outlet="output"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>849</x>
      <y>548</y>
      <width>962</width>
      <height>620</height>
   </windowPos>
</patch-1.0>