<patch-1.0 appVersion="1.0.12">
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_1" x="84" y="42">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB9"/>
         <combo attributeName="mode" selection="pullup"/>
      </attribs>
   </obj>
   <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_1" x="210" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="bouton1" x="364" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_4" x="84" y="126">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB6"/>
         <combo attributeName="mode" selection="pullup"/>
      </attribs>
   </obj>
   <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_5" x="210" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="bouton2" x="364" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_3" x="84" y="210">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB7"/>
         <combo attributeName="mode" selection="pullup"/>
      </attribs>
   </obj>
   <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_4" x="210" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="bouton3" x="364" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_2" x="84" y="308">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB8"/>
         <combo attributeName="mode" selection="pullup"/>
      </attribs>
   </obj>
   <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_3" x="210" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="bouton4" x="364" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_1" x="84" y="406">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PC3 (ADC1_IN13)"/>
      </attribs>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_1" x="238" y="406">
      <params>
         <frac32.u.map name="amp" value="7.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/round" uuid="d0382003e049112e1746390d691d052ae1294db" name="round_1" x="378" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/to i" uuid="305966430ee86b5c3b8e18cde0c721657c558a87" name="to_1" x="476" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="outlet_1" x="574" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_2" x="84" y="476">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PB0 (ADC1_IN8)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_2" x="364" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_3" x="84" y="546">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PB1 (ADC1_IN9)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_3" x="364" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_4" x="84" y="616">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PC0 (ADC1_IN10)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_4" x="364" y="616">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_5" x="84" y="686">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PC1 (ADC1_IN11)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_5" x="364" y="686">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_6" x="84" y="756">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PC2 (ADC1_IN12)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_6" x="364" y="756">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_7" x="84" y="826">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA6 (ADC1_IN6)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_7" x="364" y="826">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_8" x="84" y="896">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA1 (ADC1_IN1)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_8" x="364" y="896">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_9" x="84" y="966">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA0 (ADC1_IN0)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_9" x="364" y="966">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_10" x="84" y="1036">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA7 (ADC1_IN7)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_10" x="364" y="1036">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_11" x="84" y="1120">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PC4 (ADC1_IN14)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_11" x="364" y="1120">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_12" x="84" y="1190">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA5 (ADC1_IN5)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_12" x="364" y="1190">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_13" x="84" y="1260">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA4 (ADC1_IN4)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_13" x="364" y="1260">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_14" x="84" y="1330">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA3 (ADC1_IN3)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_14" x="364" y="1330">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_15" x="84" y="1400">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA2 (ADC1_IN2)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_15" x="364" y="1400">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="digital_1" outlet="out"/>
         <dest obj="inv_1" inlet="i"/>
      </net>
      <net>
         <source obj="digital_2" outlet="out"/>
         <dest obj="inv_3" inlet="i"/>
      </net>
      <net>
         <source obj="digital_3" outlet="out"/>
         <dest obj="inv_4" inlet="i"/>
      </net>
      <net>
         <source obj="digital_4" outlet="out"/>
         <dest obj="inv_5" inlet="i"/>
      </net>
      <net>
         <source obj="inv_1" outlet="o"/>
         <dest obj="bouton1" inlet="outlet"/>
      </net>
      <net>
         <source obj="inv_5" outlet="o"/>
         <dest obj="bouton2" inlet="outlet"/>
      </net>
      <net>
         <source obj="inv_4" outlet="o"/>
         <dest obj="bouton3" inlet="outlet"/>
      </net>
      <net>
         <source obj="inv_3" outlet="o"/>
         <dest obj="bouton4" inlet="outlet"/>
      </net>
      <net>
         <source obj="round_1" outlet="out"/>
         <dest obj="to_1" inlet="i"/>
      </net>
      <net>
         <source obj="to_1" outlet="o"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="*c_1" outlet="out"/>
         <dest obj="round_1" inlet="in"/>
      </net>
      <net>
         <source obj="analog_1" outlet="out"/>
         <dest obj="*c_1" inlet="in"/>
      </net>
      <net>
         <source obj="analog_2" outlet="out"/>
         <dest obj="outlet_2" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_3" outlet="out"/>
         <dest obj="outlet_3" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_4" outlet="out"/>
         <dest obj="outlet_4" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_5" outlet="out"/>
         <dest obj="outlet_5" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_6" outlet="out"/>
         <dest obj="outlet_6" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_7" outlet="out"/>
         <dest obj="outlet_7" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_8" outlet="out"/>
         <dest obj="outlet_8" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_9" outlet="out"/>
         <dest obj="outlet_9" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_10" outlet="out"/>
         <dest obj="outlet_10" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_11" outlet="out"/>
         <dest obj="outlet_11" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_12" outlet="out"/>
         <dest obj="outlet_12" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_13" outlet="out"/>
         <dest obj="outlet_13" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_14" outlet="out"/>
         <dest obj="outlet_14" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_15" outlet="out"/>
         <dest obj="outlet_15" inlet="outlet"/>
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
      <height>1056</height>
   </windowPos>
</patch-1.0>