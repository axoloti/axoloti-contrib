<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="scope" x="28" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="tiar/disp/scope" uuid="0991142e-58fa-47e6-9f89-32da05f9fe41" name="scope_1" x="140" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/out/digital" uuid="320eed040f6c55bb24c56416596ac2e67d0c82bc" name="digital_4" x="294" y="14">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PC5"/>
         <combo attributeName="mode" selection="Push pull"/>
      </attribs>
   </obj>
   <obj type="tiar/HW/OLED128x64" uuid="5bde8c3d-fe37-40b3-848e-edb192767bc8" name="OLED128x64_1" x="406" y="14">
      <params/>
      <attribs>
         <objref attributeName="scope" obj="scope_1"/>
         <combo attributeName="type" selection="SH1106"/>
         <combo attributeName="I2CADDR" selection="0x3C"/>
      </attribs>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_1" x="560" y="14">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PC0 (ADC1_IN10)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="1" x="784" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="inlet_2" x="28" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_2" x="560" y="84">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PC1 (ADC1_IN11)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="2" x="784" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="inlet_3" x="28" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="inlet_4" x="28" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_3" x="560" y="154">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PC2 (ADC1_IN12)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="3" x="784" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="inlet_5" x="28" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="mode" x="28" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_4" x="560" y="224">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PC3 (ADC1_IN13)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="4" x="784" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="led" x="28" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="grosnumero" x="504" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_1" x="28" y="336">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB0"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="gav/rot_enc/Rot Enc Value" uuid="e8c5fdb5-0ca2-4c94-97a6-d1f9c27bd5ef" name="Rot_1" x="126" y="336">
      <params>
         <int32 name="value" value="0"/>
         <int32 name="min" onParent="true" value="0"/>
         <int32 name="max" onParent="true" value="0"/>
         <int32 name="preset" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="grosbouton" x="504" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_2" x="28" y="420">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB1"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_3" x="28" y="504">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PC4"/>
         <combo attributeName="mode" selection="pullup"/>
      </attribs>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_5" x="28" y="588">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA0 (ADC1_IN0)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="5" x="252" y="588">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_6" x="28" y="658">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA1 (ADC1_IN1)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="6" x="252" y="658">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_7" x="28" y="728">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA2 (ADC1_IN2)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="7" x="252" y="728">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_8" x="28" y="798">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA3 (ADC1_IN3)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="8" x="252" y="798">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_9" x="28" y="868">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA6 (ADC1_IN6)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="9" x="252" y="868">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_10" x="28" y="938">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA7 (ADC1_IN7)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="10" x="252" y="938">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_11" x="28" y="1008">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA4 (ADC1_IN4)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="11" x="252" y="1008">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_5" x="28" y="1078">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB6"/>
         <combo attributeName="mode" selection="pullup"/>
      </attribs>
   </obj>
   <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_1" x="126" y="1078">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="bouton1" x="238" y="1078">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_6" x="28" y="1162">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB7"/>
         <combo attributeName="mode" selection="pullup"/>
      </attribs>
   </obj>
   <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_2" x="126" y="1162">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="bouton2" x="238" y="1162">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="analog_12" x="28" y="1246">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA5 (ADC1_IN5)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="12" x="252" y="1246">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="digital_1" outlet="out"/>
         <dest obj="Rot_1" inlet="trig"/>
      </net>
      <net>
         <source obj="digital_2" outlet="out"/>
         <dest obj="Rot_1" inlet="dir"/>
      </net>
      <net>
         <source obj="digital_3" outlet="out"/>
         <dest obj="Rot_1" inlet="mom"/>
      </net>
      <net>
         <source obj="Rot_1" outlet="o"/>
         <dest obj="grosnumero" inlet="outlet"/>
      </net>
      <net>
         <source obj="Rot_1" outlet="b"/>
         <dest obj="grosbouton" inlet="outlet"/>
      </net>
      <net>
         <source obj="mode" outlet="inlet"/>
         <dest obj="OLED128x64_1" inlet="mode"/>
      </net>
      <net>
         <source obj="scope" outlet="inlet"/>
         <dest obj="scope_1" inlet="in"/>
      </net>
      <net>
         <source obj="inlet_2" outlet="inlet"/>
         <dest obj="OLED128x64_1" inlet="line1"/>
      </net>
      <net>
         <source obj="inlet_3" outlet="inlet"/>
         <dest obj="OLED128x64_1" inlet="line2"/>
      </net>
      <net>
         <source obj="inlet_4" outlet="inlet"/>
         <dest obj="OLED128x64_1" inlet="line3"/>
      </net>
      <net>
         <source obj="inlet_5" outlet="inlet"/>
         <dest obj="OLED128x64_1" inlet="line4"/>
      </net>
      <net>
         <source obj="led" outlet="inlet"/>
         <dest obj="digital_4" inlet="in"/>
      </net>
      <net>
         <source obj="analog_1" outlet="out"/>
         <dest obj="1" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_2" outlet="out"/>
         <dest obj="2" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_3" outlet="out"/>
         <dest obj="3" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_4" outlet="out"/>
         <dest obj="4" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_5" outlet="out"/>
         <dest obj="5" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_6" outlet="out"/>
         <dest obj="6" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_7" outlet="out"/>
         <dest obj="7" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_8" outlet="out"/>
         <dest obj="8" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_9" outlet="out"/>
         <dest obj="9" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_10" outlet="out"/>
         <dest obj="10" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_11" outlet="out"/>
         <dest obj="11" inlet="outlet"/>
      </net>
      <net>
         <source obj="analog_12" outlet="out"/>
         <dest obj="12" inlet="outlet"/>
      </net>
      <net>
         <source obj="digital_5" outlet="out"/>
         <dest obj="inv_1" inlet="i"/>
      </net>
      <net>
         <source obj="digital_6" outlet="out"/>
         <dest obj="inv_2" inlet="i"/>
      </net>
      <net>
         <source obj="inv_2" outlet="o"/>
         <dest obj="bouton2" inlet="outlet"/>
      </net>
      <net>
         <source obj="inv_1" outlet="o"/>
         <dest obj="bouton1" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>0</x>
      <y>0</y>
      <width>1413</width>
      <height>1361</height>
   </windowPos>
</patch-1.0>