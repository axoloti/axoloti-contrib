<patch-1.0 appVersion="1.0.9">
   <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_1" x="56" y="0">
      <params/>
      <attribs>
         <spinner attributeName="value" value="0"/>
      </attribs>
   </obj>
   <obj type="disp/hex" uuid="87617898f70d90033f8add921438bf0d11721fdd" name="hex_1" x="420" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="hug/gpio/dtmf_code" uuid="f3e63695-e1df-4e1c-a5c0-cba350af8400" name="dtmf_code_1" x="224" y="56">
      <params/>
      <attribs>
         <text attributeName="code">
            <sText><![CDATA[val1 = 1;
val2 = 1;
val3 = 4;
]]></sText>
         </text>
      </attribs>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="bit 1" x="56" y="70">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PB1 (ADC1_IN9)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="note" x="504" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="bit 2" x="56" y="126">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PB0 (ADC1_IN8)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="trig" x="504" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="code" x="504" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="bit 3" x="56" y="182">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA7 (ADC1_IN7)"/>
      </attribs>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="bool_1" x="420" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="bit 4" x="56" y="238">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA6 (ADC1_IN6)"/>
      </attribs>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="trigger" x="56" y="308">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA5 (ADC1_IN5)"/>
      </attribs>
   </obj>
   <obj type="math/&gt;c" uuid="99f2934d97d62b715a829979ef6c8abef35dcdb2" name="&gt;c_1" x="224" y="308">
      <params>
         <frac32.u.map name="c" value="33.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="disp/chart p" uuid="58f42040a894006a5f73ed8cb8d0bd45481b28cd" name="chart_1" x="280" y="308">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="dtmf_code_1" outlet="out"/>
         <dest obj="note" inlet="outlet"/>
         <dest obj="hex_1" inlet="in"/>
      </net>
      <net>
         <source obj="bit 1" outlet="out"/>
         <dest obj="dtmf_code_1" inlet="i1"/>
      </net>
      <net>
         <source obj="bit 2" outlet="out"/>
         <dest obj="dtmf_code_1" inlet="i2"/>
      </net>
      <net>
         <source obj="bit 3" outlet="out"/>
         <dest obj="dtmf_code_1" inlet="i3"/>
      </net>
      <net>
         <source obj="bit 4" outlet="out"/>
         <dest obj="dtmf_code_1" inlet="i4"/>
      </net>
      <net>
         <source obj="trigger" outlet="out"/>
         <dest obj="chart_1" inlet="in"/>
         <dest obj="&gt;c_1" inlet="in"/>
      </net>
      <net>
         <source obj="dtmf_code_1" outlet="code"/>
         <dest obj="code" inlet="outlet"/>
         <dest obj="bool_1" inlet="in"/>
      </net>
      <net>
         <source obj="dtmf_code_1" outlet="tone"/>
         <dest obj="trig" inlet="outlet"/>
      </net>
      <net>
         <source obj="i_1" outlet="out"/>
         <dest obj="dtmf_code_1" inlet="shift"/>
      </net>
      <net>
         <source obj="&gt;c_1" outlet="out"/>
         <dest obj="dtmf_code_1" inlet="trig"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>584</x>
      <y>52</y>
      <width>649</width>
      <height>597</height>
   </windowPos>
</patch-1.0>