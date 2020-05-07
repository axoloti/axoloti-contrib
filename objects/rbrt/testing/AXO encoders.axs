<patch-1.0 appVersion="1.0.12">
   <patchobj type="patch/object" uuid="8879f19b-f25f-4559-bdb2-f0a870d21624" name="master" x="182" y="98">
      <params/>
      <attribs>
         <combo attributeName="s0" selection="PC2"/>
         <combo attributeName="s1" selection="PC3"/>
         <combo attributeName="s2" selection="PC4"/>
         <spinner attributeName="thin" value="0"/>
      </attribs>
      <object id="patch/object" uuid="8879f19b-f25f-4559-bdb2-f0a870d21624">
         <inlets/>
         <outlets/>
         <displays/>
         <params/>
         <attribs>
            <combo name="s0">
               <MenuEntries>
                  <string>PA0</string>
                  <string>PA1</string>
                  <string>PA2</string>
                  <string>PA3</string>
                  <string>PA4</string>
                  <string>PA5</string>
                  <string>PA6</string>
                  <string>PA7</string>
                  <string>PB0</string>
                  <string>PB1</string>
                  <string>PB6</string>
                  <string>PB7</string>
                  <string>PB8</string>
                  <string>PB9</string>
                  <string>PC0</string>
                  <string>PC1</string>
                  <string>PC2</string>
                  <string>PC3</string>
                  <string>PC4</string>
                  <string>PC5</string>
               </MenuEntries>
               <CEntries>
                  <string>GPIOA,0</string>
                  <string>GPIOA,1</string>
                  <string>GPIOA,2</string>
                  <string>GPIOA,3</string>
                  <string>GPIOA,4</string>
                  <string>GPIOA,5</string>
                  <string>GPIOA,6</string>
                  <string>GPIOA,7</string>
                  <string>GPIOB,0</string>
                  <string>GPIOB,1</string>
                  <string>GPIOB,6</string>
                  <string>GPIOB,7</string>
                  <string>GPIOB,8</string>
                  <string>GPIOB,9</string>
                  <string>GPIOC,0</string>
                  <string>GPIOC,1</string>
                  <string>GPIOC,2</string>
                  <string>GPIOC,3</string>
                  <string>GPIOC,4</string>
                  <string>GPIOC,5</string>
               </CEntries>
            </combo>
            <combo name="s1">
               <MenuEntries>
                  <string>PA0</string>
                  <string>PA1</string>
                  <string>PA2</string>
                  <string>PA3</string>
                  <string>PA4</string>
                  <string>PA5</string>
                  <string>PA6</string>
                  <string>PA7</string>
                  <string>PB0</string>
                  <string>PB1</string>
                  <string>PB6</string>
                  <string>PB7</string>
                  <string>PB8</string>
                  <string>PB9</string>
                  <string>PC0</string>
                  <string>PC1</string>
                  <string>PC2</string>
                  <string>PC3</string>
                  <string>PC4</string>
                  <string>PC5</string>
               </MenuEntries>
               <CEntries>
                  <string>GPIOA,0</string>
                  <string>GPIOA,1</string>
                  <string>GPIOA,2</string>
                  <string>GPIOA,3</string>
                  <string>GPIOA,4</string>
                  <string>GPIOA,5</string>
                  <string>GPIOA,6</string>
                  <string>GPIOA,7</string>
                  <string>GPIOB,0</string>
                  <string>GPIOB,1</string>
                  <string>GPIOB,6</string>
                  <string>GPIOB,7</string>
                  <string>GPIOB,8</string>
                  <string>GPIOB,9</string>
                  <string>GPIOC,0</string>
                  <string>GPIOC,1</string>
                  <string>GPIOC,2</string>
                  <string>GPIOC,3</string>
                  <string>GPIOC,4</string>
                  <string>GPIOC,5</string>
               </CEntries>
            </combo>
            <combo name="s2">
               <MenuEntries>
                  <string>PA0</string>
                  <string>PA1</string>
                  <string>PA2</string>
                  <string>PA3</string>
                  <string>PA4</string>
                  <string>PA5</string>
                  <string>PA6</string>
                  <string>PA7</string>
                  <string>PB0</string>
                  <string>PB1</string>
                  <string>PB6</string>
                  <string>PB7</string>
                  <string>PB8</string>
                  <string>PB9</string>
                  <string>PC0</string>
                  <string>PC1</string>
                  <string>PC2</string>
                  <string>PC3</string>
                  <string>PC4</string>
                  <string>PC5</string>
               </MenuEntries>
               <CEntries>
                  <string>GPIOA,0</string>
                  <string>GPIOA,1</string>
                  <string>GPIOA,2</string>
                  <string>GPIOA,3</string>
                  <string>GPIOA,4</string>
                  <string>GPIOA,5</string>
                  <string>GPIOA,6</string>
                  <string>GPIOA,7</string>
                  <string>GPIOB,0</string>
                  <string>GPIOB,1</string>
                  <string>GPIOB,6</string>
                  <string>GPIOB,7</string>
                  <string>GPIOB,8</string>
                  <string>GPIOB,9</string>
                  <string>GPIOC,0</string>
                  <string>GPIOC,1</string>
                  <string>GPIOC,2</string>
                  <string>GPIOC,3</string>
                  <string>GPIOC,4</string>
                  <string>GPIOC,5</string>
               </CEntries>
            </combo>
            <spinner name="thin" MinValue="0" MaxValue="127" DefaultValue="30"/>
         </attribs>
         <includes/>
         <code.declaration><![CDATA[uint8_t COUNT;
uint8_t thin;
bool THIN;]]></code.declaration>
         <code.init><![CDATA[palSetPadMode(attr_s0,PAL_MODE_OUTPUT_PUSHPULL);
palSetPadMode(attr_s1,PAL_MODE_OUTPUT_PUSHPULL);
palSetPadMode(attr_s2,PAL_MODE_OUTPUT_PUSHPULL);

THIN = attr_thin;]]></code.init>
         <code.krate><![CDATA[if (thin > attr_thin){
thin = 0;
COUNT ++;
COUNT = COUNT % 8;
palWritePad(attr_s0,((COUNT& 0x01) > 0));
palWritePad(attr_s1,(((COUNT>>1)& 0x01) > 0));
palWritePad(attr_s2,(((COUNT>>2)& 0x01) > 0));

}
thin ++;]]></code.krate>
      </object>
   </patchobj>
   <patchobj type="patch/object" uuid="8879f19b-f25f-4559-bdb2-f0a870d21624" name="master_" x="308" y="112">
      <params/>
      <attribs>
         <combo attributeName="z" selection="PC1 (ADC1_IN11)"/>
         <objref attributeName="4051" obj="master"/>
      </attribs>
      <object id="patch/object" uuid="8879f19b-f25f-4559-bdb2-f0a870d21624">
         <inlets/>
         <outlets>
            <frac32 name="y0"/>
            <frac32 name="y1"/>
            <frac32 name="y2"/>
            <frac32 name="y3"/>
            <frac32 name="y4"/>
            <frac32 name="y5"/>
            <frac32 name="y6"/>
            <frac32 name="y7"/>
         </outlets>
         <displays/>
         <params/>
         <attribs>
            <combo name="z">
               <MenuEntries>
                  <string>PA0 (ADC1_IN0)</string>
                  <string>PA1 (ADC1_IN1)</string>
                  <string>PA2 (ADC1_IN2)</string>
                  <string>PA3 (ADC1_IN3)</string>
                  <string>PA4 (ADC1_IN4)</string>
                  <string>PA5 (ADC1_IN5)</string>
                  <string>PA6 (ADC1_IN6)</string>
                  <string>PA7 (ADC1_IN7)</string>
                  <string>PB0 (ADC1_IN8)</string>
                  <string>PB1 (ADC1_IN9)</string>
                  <string>PC0 (ADC1_IN10)</string>
                  <string>PC1 (ADC1_IN11)</string>
                  <string>PC2 (ADC1_IN12)</string>
                  <string>PC3 (ADC1_IN13)</string>
                  <string>PC4 (ADC1_IN14)</string>
               </MenuEntries>
               <CEntries>
                  <string>0</string>
                  <string>1</string>
                  <string>2</string>
                  <string>3</string>
                  <string>4</string>
                  <string>5</string>
                  <string>6</string>
                  <string>7</string>
                  <string>8</string>
                  <string>9</string>
                  <string>10</string>
                  <string>11</string>
                  <string>12</string>
                  <string>13</string>
                  <string>14</string>
               </CEntries>
            </combo>
            <objref name="4051"/>
         </attribs>
         <includes/>
         <code.declaration><![CDATA[int32_t z[8];]]></code.declaration>
         <code.krate><![CDATA[if (!attr_4051.THIN) z [(attr_4051.COUNT +7)%8] = adcvalues[attr_z]<<15;
else z [attr_4051.COUNT] = adcvalues[attr_z]<<15;
outlet_y0 = z[0];
outlet_y1 = z[1];
outlet_y2 = z[2];
outlet_y3 = z[3];
outlet_y4 = z[4];
outlet_y5 = z[5];
outlet_y6 = z[6];
outlet_y7 = z[7];]]></code.krate>
      </object>
   </patchobj>
   <obj type="drj/math/&lt; const i" uuid="b798cf9d5a1b4a65236aeb4da17a59539d64bc2f" name="&lt;_1" x="574" y="112">
      <params/>
      <attribs>
         <spinner attributeName="value" value="60"/>
      </attribs>
   </obj>
   <patchobj type="patch/object" uuid="f05ec59c-0683-4b04-9ce6-1d74e28edc13" name="Rotary_1" x="742" y="140">
      <params/>
      <attribs/>
      <object id="patch/object" uuid="f05ec59c-0683-4b04-9ce6-1d74e28edc13">
         <sDescription>Reads a rotary encoder
trig - trigger input on rising edge
dir - dir&gt;0=clockwise, dir&lt;0=anti-clockwise
Requires two digital Axoloti GPIO inputs set to &quot;pullup&quot;</sDescription>
         <author>Gavin</author>
         <license>BSD</license>
         <helpPatch>logic.axh</helpPatch>
         <inlets>
            <bool32.rising name="clk" description="increment trigger"/>
            <bool32.rising name="dt" description="decrement trigger"/>
         </inlets>
         <outlets>
            <bool32.pulse name="inc"/>
            <bool32.pulse name="dec"/>
         </outlets>
         <displays/>
         <params/>
         <attribs/>
         <includes/>
         <code.declaration><![CDATA[int encoderPos;
int encoderLast;
int inval;
bool prev;]]></code.declaration>
         <code.init><![CDATA[encoderPos = 0;
prev = 1;]]></code.init>
         <code.krate><![CDATA[outlet_inc = 0;
outlet_dec = 0;


if (inlet_clk && !prev) {
	if (!inlet_dt) outlet_inc = 1;
	else outlet_dec = 1;
	
} 
prev = inlet_clk;]]></code.krate>
      </object>
   </patchobj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="inc1" x="882" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="drj/math/&lt; const i" uuid="b798cf9d5a1b4a65236aeb4da17a59539d64bc2f" name="&lt;_2" x="574" y="182">
      <params/>
      <attribs>
         <spinner attributeName="value" value="60"/>
      </attribs>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="dec1" x="882" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/math/smooth attr" uuid="18525e73-ef5c-4d2b-b0c7-654ef73218d0" name="smooth_3" x="574" y="252">
      <params/>
      <attribs>
         <spinner attributeName="time" value="0"/>
      </attribs>
   </obj>
   <obj type="drj/math/&lt; const i" uuid="b798cf9d5a1b4a65236aeb4da17a59539d64bc2f" name="&lt;_3" x="714" y="252">
      <params/>
      <attribs>
         <spinner attributeName="value" value="1"/>
      </attribs>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="but1" x="882" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="drj/math/&lt; const i" uuid="b798cf9d5a1b4a65236aeb4da17a59539d64bc2f" name="&lt;_4" x="574" y="336">
      <params/>
      <attribs>
         <spinner attributeName="value" value="60"/>
      </attribs>
   </obj>
   <patchobj type="patch/object" uuid="f05ec59c-0683-4b04-9ce6-1d74e28edc13" name="Rotary_2" x="714" y="350">
      <params/>
      <attribs/>
      <object id="patch/object" uuid="f05ec59c-0683-4b04-9ce6-1d74e28edc13">
         <sDescription>Reads a rotary encoder
trig - trigger input on rising edge
dir - dir&gt;0=clockwise, dir&lt;0=anti-clockwise
Requires two digital Axoloti GPIO inputs set to &quot;pullup&quot;</sDescription>
         <author>Gavin</author>
         <license>BSD</license>
         <helpPatch>logic.axh</helpPatch>
         <inlets>
            <bool32.rising name="clk" description="increment trigger"/>
            <bool32.rising name="dt" description="decrement trigger"/>
         </inlets>
         <outlets>
            <bool32.pulse name="inc"/>
            <bool32.pulse name="dec"/>
         </outlets>
         <displays/>
         <params/>
         <attribs/>
         <includes/>
         <code.declaration><![CDATA[int encoderPos;
int encoderLast;
int inval;
bool prev;]]></code.declaration>
         <code.init><![CDATA[encoderPos = 0;
prev = 1;]]></code.init>
         <code.krate><![CDATA[outlet_inc = 0;
outlet_dec = 0;


if (inlet_clk && !prev) {
	if (!inlet_dt) outlet_inc = 1;
	else outlet_dec = 1;
	
} 
prev = inlet_clk;]]></code.krate>
      </object>
   </patchobj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="inc2" x="896" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="drj/math/&lt; const i" uuid="b798cf9d5a1b4a65236aeb4da17a59539d64bc2f" name="&lt;_5" x="574" y="406">
      <params/>
      <attribs>
         <spinner attributeName="value" value="60"/>
      </attribs>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="dec2" x="896" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="but2" x="896" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/math/smooth attr" uuid="18525e73-ef5c-4d2b-b0c7-654ef73218d0" name="smooth_4" x="574" y="476">
      <params/>
      <attribs>
         <spinner attributeName="time" value="0"/>
      </attribs>
   </obj>
   <obj type="drj/math/&lt; const i" uuid="b798cf9d5a1b4a65236aeb4da17a59539d64bc2f" name="&lt;_6" x="714" y="476">
      <params/>
      <attribs>
         <spinner attributeName="value" value="1"/>
      </attribs>
   </obj>
   <nets>
      <net>
         <source obj="master_" outlet="y0"/>
         <dest obj="&lt;_1" inlet="in"/>
      </net>
      <net>
         <source obj="master_" outlet="y1"/>
         <dest obj="&lt;_2" inlet="in"/>
      </net>
      <net>
         <source obj="master_" outlet="y2"/>
         <dest obj="smooth_3" inlet="in"/>
      </net>
      <net>
         <source obj="smooth_3" outlet="out"/>
         <dest obj="&lt;_3" inlet="in"/>
      </net>
      <net>
         <source obj="&lt;_1" outlet="out"/>
         <dest obj="Rotary_1" inlet="clk"/>
      </net>
      <net>
         <source obj="&lt;_2" outlet="out"/>
         <dest obj="Rotary_1" inlet="dt"/>
      </net>
      <net>
         <source obj="smooth_4" outlet="out"/>
         <dest obj="&lt;_6" inlet="in"/>
      </net>
      <net>
         <source obj="&lt;_4" outlet="out"/>
         <dest obj="Rotary_2" inlet="clk"/>
      </net>
      <net>
         <source obj="&lt;_5" outlet="out"/>
         <dest obj="Rotary_2" inlet="dt"/>
      </net>
      <net>
         <source obj="master_" outlet="y3"/>
         <dest obj="&lt;_4" inlet="in"/>
      </net>
      <net>
         <source obj="master_" outlet="y4"/>
         <dest obj="&lt;_5" inlet="in"/>
      </net>
      <net>
         <source obj="master_" outlet="y5"/>
         <dest obj="smooth_4" inlet="in"/>
      </net>
      <net>
         <source obj="Rotary_1" outlet="inc"/>
         <dest obj="inc1" inlet="outlet"/>
      </net>
      <net>
         <source obj="Rotary_1" outlet="dec"/>
         <dest obj="dec1" inlet="outlet"/>
      </net>
      <net>
         <source obj="&lt;_3" outlet="out"/>
         <dest obj="but1" inlet="outlet"/>
      </net>
      <net>
         <source obj="Rotary_2" outlet="inc"/>
         <dest obj="inc2" inlet="outlet"/>
      </net>
      <net>
         <source obj="Rotary_2" outlet="dec"/>
         <dest obj="dec2" inlet="outlet"/>
      </net>
      <net>
         <source obj="&lt;_6" outlet="out"/>
         <dest obj="but2" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>0</x>
      <y>0</y>
      <width>1213</width>
      <height>711</height>
   </windowPos>
</patch-1.0>