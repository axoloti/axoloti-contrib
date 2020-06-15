<patch-1.0 appVersion="1.0.12">
   <comment type="patch/comment" x="70" y="14" text="Hohum Axoctrl core"/>
   <comment type="patch/comment" x="70" y="28" text="Core object that exposes all ins and outs of the axoctrl board"/>
   <comment type="patch/comment" x="70" y="42" text="Use this directly if you want to build a fully custom patch without any of the other functionality."/>
   <comment type="patch/comment" x="98" y="84" text="Leds"/>
   <comment type="patch/comment" x="336" y="84" text="Buttons"/>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="#1 LED" x="56" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/out/digital" uuid="320eed040f6c55bb24c56416596ac2e67d0c82bc" name="#1 LED_PC1" x="140" y="112">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PC1"/>
         <combo attributeName="mode" selection="Push pull"/>
      </attribs>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="#4 BUT_PB6" x="308" y="112">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB6"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="#4 BUT" x="392" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="#5 BUT_PB7" x="476" y="112">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB7"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="#5 BUT" x="560" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="#6 BUT_PC0" x="644" y="112">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PC0"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="#6 BUT" x="728" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="#7 BUT_PA3" x="812" y="112">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PA3"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="#7 BUT" x="896" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="#2 LED" x="56" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/out/digital" uuid="320eed040f6c55bb24c56416596ac2e67d0c82bc" name="#2 LED_PC5" x="140" y="182">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PC5"/>
         <combo attributeName="mode" selection="Push pull"/>
      </attribs>
   </obj>
   <comment type="patch/comment" x="336" y="224" text="Pots"/>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="#3 LED" x="70" y="252">
      <params/>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="4a4926e5-ce51-428f-abfc-e6c172dd0be5" name="#3 LED_PB0" x="140" y="252">
      <params/>
      <attribs/>
      <object id="patch/object" uuid="4a4926e5-ce51-428f-abfc-e6c172dd0be5">
         <sDescription>PWM output using hardware timer 3 (97.65 Hz)</sDescription>
         <author>Smashed Transistors</author>
         <license>BSD</license>
         <helpPatch>pwm.axh</helpPatch>
         <inlets>
            <frac32.positive name="pb0" description="pwm ratio"/>
         </inlets>
         <outlets/>
         <displays/>
         <params/>
         <attribs/>
         <includes/>
         <depends>
            <depend>PWMD3</depend>
         </depends>
         <code.init><![CDATA[static const PWMConfig pwmcfg = {400000, /* 400kHz PWM clock frequency.  */
	4096, /* PWM period is 4096 cycles.    */
	NULL, 
	{{PWM_OUTPUT_ACTIVE_HIGH, NULL}, 
	{PWM_OUTPUT_ACTIVE_HIGH, NULL},
	{PWM_OUTPUT_ACTIVE_HIGH, NULL}, 
	{PWM_OUTPUT_ACTIVE_HIGH, NULL}},
	/* HW dependent part.*/
	0};

pwmStart(&PWMD3, &pwmcfg);
  palSetPadMode(GPIOB, 0, PAL_MODE_ALTERNATE(2));]]></code.init>
         <code.dispose><![CDATA[pwmStop(&PWMD3);]]></code.dispose>
         <code.krate><![CDATA[pwmEnableChannel(&PWMD3, 2, (pwmcnt_t)(inlet_pb0>=0?inlet_pb0>>15:0));]]></code.krate>
      </object>
   </patchobj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="#8 PAR_PC2" x="308" y="252">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PC2 (ADC1_IN12)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="#8 PAR" x="434" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="#9 PAR_PB1" x="518" y="252">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PB1 (ADC1_IN9)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="#9 PAR" x="644" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="#10 PAR_PC3" x="728" y="252">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PC3 (ADC1_IN13)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="#10 PAR" x="854" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="#11 PAR_PA1" x="308" y="336">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA1 (ADC1_IN1)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="#11 PAR" x="434" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="#12 PAR_PA6" x="518" y="336">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA6 (ADC1_IN6)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="#12 PAR" x="644" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="#13 PAR_PA7" x="728" y="336">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA7 (ADC1_IN7)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="#13 PAR" x="854" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="#14 PAR_PC4" x="308" y="420">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PC4 (ADC1_IN14)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="#14 PAR" x="434" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="#15 PAR_PA2" x="518" y="420">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA2 (ADC1_IN2)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="#15 PAR" x="644" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="#16 PAR_PA0" x="728" y="420">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA0 (ADC1_IN0)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="#16 PAR" x="854" y="420">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="84" y="504" text="Mod out"/>
   <comment type="patch/comment" x="336" y="504" text="Mod in"/>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="#17 MOD" x="70" y="532">
      <params/>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="d3b4ab83-5f13-4640-b575-dcd572323aa7" name="#17 MOD_PA5" x="140" y="532">
      <params/>
      <attribs/>
      <object id="patch/object" uuid="d3b4ab83-5f13-4640-b575-dcd572323aa7">
         <sDescription>low-speed 12 bit digital to analog conversion, not suitable for audio signals, but for control voltages...</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <inlets>
            <frac32 name="PA5" description="voltage ratio (64u = 3.3V)"/>
         </inlets>
         <outlets/>
         <displays/>
         <params/>
         <attribs/>
         <includes/>
         <code.init><![CDATA[palSetPadMode(GPIOA, 5, PAL_MODE_INPUT_ANALOG);
RCC->APB1ENR |= 0x20000000;
DAC->CR |= 0x00030003;]]></code.init>
         <code.dispose><![CDATA[DAC->CR = 0x0;
RCC->APB1ENR &= ~0x20000000;]]></code.dispose>
         <code.krate><![CDATA[DAC->DHR12R2 = inlet_PA5>>15;]]></code.krate>
      </object>
   </patchobj>
   <obj type="gpio/in/analog" uuid="1c0c845ed2d7e06ae5f377ba13d9d09f4747ac87" name="#18 MOD_PA4" x="308" y="532">
      <params/>
      <attribs>
         <combo attributeName="channel" selection="PA4 (ADC1_IN4)"/>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="#18 MOD" x="434" y="532">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="#1 LED" outlet="inlet"/>
         <dest obj="#1 LED_PC1" inlet="in"/>
      </net>
      <net>
         <source obj="#2 LED" outlet="inlet"/>
         <dest obj="#2 LED_PC5" inlet="in"/>
      </net>
      <net>
         <source obj="#3 LED" outlet="inlet"/>
         <dest obj="#3 LED_PB0" inlet="pb0"/>
      </net>
      <net>
         <source obj="#4 BUT_PB6" outlet="out"/>
         <dest obj="#4 BUT" inlet="outlet"/>
      </net>
      <net>
         <source obj="#5 BUT_PB7" outlet="out"/>
         <dest obj="#5 BUT" inlet="outlet"/>
      </net>
      <net>
         <source obj="#6 BUT_PC0" outlet="out"/>
         <dest obj="#6 BUT" inlet="outlet"/>
      </net>
      <net>
         <source obj="#7 BUT_PA3" outlet="out"/>
         <dest obj="#7 BUT" inlet="outlet"/>
      </net>
      <net>
         <source obj="#10 PAR_PC3" outlet="out"/>
         <dest obj="#10 PAR" inlet="outlet"/>
      </net>
      <net>
         <source obj="#11 PAR_PA1" outlet="out"/>
         <dest obj="#11 PAR" inlet="outlet"/>
      </net>
      <net>
         <source obj="#12 PAR_PA6" outlet="out"/>
         <dest obj="#12 PAR" inlet="outlet"/>
      </net>
      <net>
         <source obj="#13 PAR_PA7" outlet="out"/>
         <dest obj="#13 PAR" inlet="outlet"/>
      </net>
      <net>
         <source obj="#8 PAR_PC2" outlet="out"/>
         <dest obj="#8 PAR" inlet="outlet"/>
      </net>
      <net>
         <source obj="#9 PAR_PB1" outlet="out"/>
         <dest obj="#9 PAR" inlet="outlet"/>
      </net>
      <net>
         <source obj="#14 PAR_PC4" outlet="out"/>
         <dest obj="#14 PAR" inlet="outlet"/>
      </net>
      <net>
         <source obj="#15 PAR_PA2" outlet="out"/>
         <dest obj="#15 PAR" inlet="outlet"/>
      </net>
      <net>
         <source obj="#16 PAR_PA0" outlet="out"/>
         <dest obj="#16 PAR" inlet="outlet"/>
      </net>
      <net>
         <source obj="#18 MOD_PA4" outlet="out"/>
         <dest obj="#18 MOD" inlet="outlet"/>
      </net>
      <net>
         <source obj="#17 MOD" outlet="inlet"/>
         <dest obj="#17 MOD_PA5" inlet="PA5"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author>hohum_lab (berendkleinhaneveld)</Author>
      <License>undefined</License>
      <Saturate>true</Saturate>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>339</x>
      <y>0</y>
      <width>1101</width>
      <height>900</height>
   </windowPos>
</patch-1.0>