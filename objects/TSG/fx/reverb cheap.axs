<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="InL" x="196" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_3" x="280" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/&gt;&gt;" uuid="5d748ad90476b3ecc3970cde6622af97cf3cf4ac" name="&gt;&gt;_1" x="364" y="70">
      <params/>
      <attribs>
         <spinner attributeName="shift" value="2"/>
      </attribs>
   </obj>
   <obj type="delay/write sdram" uuid="5ae03f8d7b815edcfc40585d8bbac2ed48460fba" name="PrDly" x="476" y="70">
      <params/>
      <attribs>
         <combo attributeName="size" selection="16384 (341ms)"/>
      </attribs>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="InR" x="196" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="PreDelay" x="0" y="182">
      <params>
         <frac32.u.map name="value" onParent="true" value="17.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="delay/read" uuid="9323a43569373145e559ad309eaf65a47b14cb54" name="read_3" x="84" y="182">
      <params>
         <frac32.u.map name="time" value="0.0"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="PrDly"/>
      </attribs>
   </obj>
   <obj type="filter/allpass" uuid="59cc8e3d8044e145e1eb908baa5a7d3ed2ec5f72" name="allpass_1" x="238" y="182">
      <params>
         <frac32.s.map name="g" value="32.0"/>
      </params>
      <attribs>
         <spinner attributeName="delay" value="99"/>
      </attribs>
   </obj>
   <obj type="filter/allpass" uuid="59cc8e3d8044e145e1eb908baa5a7d3ed2ec5f72" name="allpass_2" x="350" y="182">
      <params>
         <frac32.s.map name="g" value="32.0"/>
      </params>
      <attribs>
         <spinner attributeName="delay" value="67"/>
      </attribs>
   </obj>
   <obj type="TSG/delay/read m interp" uuid="1267df5a-5e05-40dd-bace-29e94169e5bb" name="read_1" x="504" y="196">
      <params/>
      <attribs>
         <objref attributeName="delayname" obj="delayB"/>
         <combo attributeName="interpol" selection="2pt"/>
      </attribs>
   </obj>
   <obj type="TSG/delay/read m interp" uuid="1267df5a-5e05-40dd-bace-29e94169e5bb" name="read_2" x="770" y="196">
      <params/>
      <attribs>
         <objref attributeName="delayname" obj="delayA"/>
         <combo attributeName="interpol" selection="2pt"/>
      </attribs>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="decay" x="616" y="322">
      <params>
         <frac32.u.map name="value" onParent="true" value="36.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="700" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_1" x="784" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="dist/soft" uuid="e680d76a805e4866027cdf654c7efd8b2e54622" name="soft_1" x="854" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_2" x="952" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_2" x="1036" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="dist/soft" uuid="e680d76a805e4866027cdf654c7efd8b2e54622" name="soft_2" x="1106" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="LowDamp" x="70" y="336">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/&gt;&gt;" uuid="d883beaf50b7aae4803ed9941e8f123e87e1e3aa" name="&gt;&gt;_2" x="154" y="336">
      <params/>
      <attribs>
         <spinner attributeName="shift" value="1"/>
      </attribs>
   </obj>
   <obj type="filter/lp1 m" uuid="18b561d14f9175f5380e6a1d9d55ca41e0e61974" name="lp1_1" x="714" y="392">
      <params>
         <frac32.u.map name="freq" value="20.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/hp1 m" uuid="db72e08c265817674e56af3855bfca7a58b65e87" name="hp1_1" x="798" y="392">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/lp1 m" uuid="18b561d14f9175f5380e6a1d9d55ca41e0e61974" name="lp1_2" x="966" y="392">
      <params>
         <frac32.u.map name="freq" value="20.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/hp1 m" uuid="db72e08c265817674e56af3855bfca7a58b65e87" name="hp1_2" x="1050" y="392">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="HighDamp" x="70" y="420">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/inv" uuid="565521d3699b36d8095aa1c79b9ad0046fb133ce" name="inv_1" x="154" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+c" uuid="13eec32bd8ad57dd0bb18a02566cc0a117d320e3" name="+c_1" x="224" y="420">
      <params>
         <frac32.u.map name="c" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="TSG/filter/allpass m" uuid="c913eed1-73f0-4f1a-8c9f-3399a4a9019a" name="allpass_3" x="882" y="504">
      <params/>
      <attribs>
         <combo attributeName="buffsize" selection="8192 (170ms)"/>
         <combo attributeName="interpol" selection="2pt"/>
         <combo attributeName="location" selection="ExtRAM"/>
      </attribs>
   </obj>
   <obj type="TSG/filter/allpass m" uuid="c913eed1-73f0-4f1a-8c9f-3399a4a9019a" name="allpass_7" x="1134" y="504">
      <params/>
      <attribs>
         <combo attributeName="buffsize" selection="8192 (170ms)"/>
         <combo attributeName="interpol" selection="2pt"/>
         <combo attributeName="location" selection="ExtRAM"/>
      </attribs>
   </obj>
   <obj type="TSG/math/map" uuid="e93b4617-4075-4591-b602-3e1fc252e881" name="map_3" x="154" y="518">
      <params>
         <frac32.u.map name="a" value="1.0"/>
         <frac32.u.map name="b" value="15.0"/>
      </params>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="27089c4f-b896-42e2-bac1-654ac92471c4" name="mod_" x="266" y="518">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-16.0"/>
         <frac32.u.map name="gain" onParent="true" value="7.5"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="27089c4f-b896-42e2-bac1-654ac92471c4">
         <sDescription>octa-sine wave LFO, linear interpolated table, pitch &amp; gain input</sDescription>
         <author>Johannes Elliesen</author>
         <license>BSD</license>
         <helpPatch>lfo.axh</helpPatch>
         <inlets>
            <frac32.bipolar name="pitch" description="pitch"/>
            <frac32.bipolar name="gain"/>
         </inlets>
         <outlets>
            <frac32.bipolar name="o1"/>
            <frac32.bipolar name="o2"/>
            <frac32.bipolar name="o3"/>
            <frac32.bipolar name="o4"/>
            <frac32.bipolar name="o5"/>
            <frac32.bipolar name="o6"/>
            <frac32.bipolar name="o7"/>
            <frac32.bipolar name="o8"/>
         </outlets>
         <displays/>
         <params>
            <frac32.s.map.lfopitch name="pitch" noLabel="true"/>
            <frac32.u.map.gain name="gain"/>
         </params>
         <attribs/>
         <includes/>
         <code.declaration><![CDATA[uint32_t Phase;]]></code.declaration>
         <code.init><![CDATA[Phase = 0;]]></code.init>
         <code.krate><![CDATA[int32_t freq;
int32_t gain = __SSAT((inlet_gain) + (param_gain>>4), 28);
MTOFEXTENDED(param_pitch + inlet_pitch,freq);
Phase += freq>>2;
int32_t r;
SINE2TINTERP(Phase,r)
outlet_o1= ___SMMUL((r>>3),gain<<4);
SINE2TINTERP(Phase + (1<<29),r)
outlet_o2= ___SMMUL((r>>3),gain<<4);
SINE2TINTERP(Phase + (2<<29),r)
outlet_o3= ___SMMUL((r>>3),gain<<4);
SINE2TINTERP(Phase + (3<<29),r)
outlet_o4= ___SMMUL((r>>3),gain<<4);
outlet_o5 = -outlet_o1;
outlet_o6 = -outlet_o2;
outlet_o7 = -outlet_o3;
outlet_o8 = -outlet_o4;]]></code.krate>
      </object>
   </patchobj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_1" x="784" y="518">
      <params>
         <frac32.u.map name="amp" value="54.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_5" x="1036" y="518">
      <params>
         <frac32.u.map name="amp" value="49.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="size" x="70" y="644">
      <params>
         <frac32.u.map name="value" onParent="true" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="TSG/math/map" uuid="e93b4617-4075-4591-b602-3e1fc252e881" name="map_2" x="154" y="644">
      <params>
         <frac32.u.map name="a" value="0.0"/>
         <frac32.u.map name="b" value="26.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="TSG/filter/allpass m" uuid="c913eed1-73f0-4f1a-8c9f-3399a4a9019a" name="allpass_4" x="1036" y="644">
      <params/>
      <attribs>
         <combo attributeName="buffsize" selection="8192 (170ms)"/>
         <combo attributeName="interpol" selection="2pt"/>
         <combo attributeName="location" selection="ExtRAM"/>
      </attribs>
   </obj>
   <obj type="TSG/filter/allpass m" uuid="c913eed1-73f0-4f1a-8c9f-3399a4a9019a" name="allpass_8" x="1288" y="644">
      <params/>
      <attribs>
         <combo attributeName="buffsize" selection="8192 (170ms)"/>
         <combo attributeName="interpol" selection="2pt"/>
         <combo attributeName="location" selection="ExtRAM"/>
      </attribs>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_2" x="938" y="658">
      <params>
         <frac32.u.map name="amp" value="39.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_6" x="1190" y="658">
      <params>
         <frac32.u.map name="amp" value="44.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="diffusion" x="602" y="686">
      <params>
         <frac32.u.map name="value" onParent="true" value="63.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="mix" x="1554" y="728">
      <params>
         <frac32.u.map name="value" onParent="true" value="24.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_1" x="1666" y="756">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="l" x="1764" y="756">
      <params/>
      <attribs/>
   </obj>
   <obj type="TSG/math/map" uuid="e93b4617-4075-4591-b602-3e1fc252e881" name="map_1" x="154" y="770">
      <params>
         <frac32.u.map name="a" value="0.0"/>
         <frac32.u.map name="b" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="delay/write sdram" uuid="5ae03f8d7b815edcfc40585d8bbac2ed48460fba" name="delayA" x="1176" y="784">
      <params/>
      <attribs>
         <combo attributeName="size" selection="4096 (85.33ms)"/>
      </attribs>
   </obj>
   <obj type="delay/write sdram" uuid="5ae03f8d7b815edcfc40585d8bbac2ed48460fba" name="delayB" x="1428" y="784">
      <params/>
      <attribs>
         <combo attributeName="size" selection="4096 (85.33ms)"/>
      </attribs>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_2" x="1666" y="826">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="r" x="1764" y="826">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="allpass_1" outlet="out"/>
         <dest obj="allpass_2" inlet="in"/>
      </net>
      <net>
         <source obj="diffusion" outlet="out"/>
         <dest obj="allpass_7" inlet="gain"/>
         <dest obj="allpass_8" inlet="gain"/>
         <dest obj="allpass_4" inlet="gain"/>
         <dest obj="allpass_3" inlet="gain"/>
      </net>
      <net>
         <source obj="allpass_3" outlet="out"/>
         <dest obj="allpass_4" inlet="in"/>
      </net>
      <net>
         <source obj="allpass_7" outlet="out"/>
         <dest obj="allpass_8" inlet="in"/>
      </net>
      <net>
         <source obj="xfade_1" outlet="o"/>
         <dest obj="l" inlet="outlet"/>
      </net>
      <net>
         <source obj="mix" outlet="out"/>
         <dest obj="xfade_1" inlet="c"/>
         <dest obj="xfade_2" inlet="c"/>
      </net>
      <net>
         <source obj="allpass_4" outlet="out"/>
         <dest obj="xfade_1" inlet="i2"/>
         <dest obj="delayA" inlet="in"/>
      </net>
      <net>
         <source obj="allpass_8" outlet="out"/>
         <dest obj="delayB" inlet="in"/>
         <dest obj="xfade_2" inlet="i2"/>
      </net>
      <net>
         <source obj="allpass_2" outlet="out"/>
         <dest obj="+_1" inlet="in2"/>
         <dest obj="+_2" inlet="in2"/>
      </net>
      <net>
         <source obj="+_2" outlet="out"/>
         <dest obj="soft_2" inlet="in"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="soft_1" inlet="in"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="vca_2" outlet="o"/>
         <dest obj="+_2" inlet="in1"/>
      </net>
      <net>
         <source obj="decay" outlet="out"/>
         <dest obj="vca_1" inlet="v"/>
         <dest obj="vca_2" inlet="v"/>
      </net>
      <net>
         <source obj="soft_1" outlet="out"/>
         <dest obj="lp1_1" inlet="in"/>
      </net>
      <net>
         <source obj="soft_2" outlet="out"/>
         <dest obj="lp1_2" inlet="in"/>
      </net>
      <net>
         <source obj="read_1" outlet="out"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="read_2" outlet="out"/>
         <dest obj="vca_2" inlet="a"/>
      </net>
      <net>
         <source obj="size" outlet="out"/>
         <dest obj="map_3" inlet="c"/>
         <dest obj="map_2" inlet="c"/>
         <dest obj="map_1" inlet="c"/>
      </net>
      <net>
         <source obj="map_2" outlet="o"/>
         <dest obj="read_2" inlet="time"/>
      </net>
      <net>
         <source obj="lp1_1" outlet="out"/>
         <dest obj="hp1_1" inlet="in"/>
      </net>
      <net>
         <source obj="lp1_2" outlet="out"/>
         <dest obj="hp1_2" inlet="in"/>
      </net>
      <net>
         <source obj="HighDamp" outlet="out"/>
         <dest obj="inv_1" inlet="in"/>
      </net>
      <net>
         <source obj="inv_1" outlet="out"/>
         <dest obj="+c_1" inlet="in"/>
      </net>
      <net>
         <source obj="+c_1" outlet="out"/>
         <dest obj="lp1_1" inlet="freq"/>
         <dest obj="lp1_2" inlet="freq"/>
      </net>
      <net>
         <source obj="LowDamp" outlet="out"/>
         <dest obj="&gt;&gt;_2" inlet="a"/>
      </net>
      <net>
         <source obj="+_3" outlet="out"/>
         <dest obj="&gt;&gt;_1" inlet="a"/>
      </net>
      <net>
         <source obj="&gt;&gt;_2" outlet="result"/>
         <dest obj="hp1_2" inlet="freq"/>
         <dest obj="hp1_1" inlet="freq"/>
      </net>
      <net>
         <source obj="hp1_1" outlet="out"/>
         <dest obj="allpass_3" inlet="in"/>
      </net>
      <net>
         <source obj="hp1_2" outlet="out"/>
         <dest obj="allpass_7" inlet="in"/>
      </net>
      <net>
         <source obj="InL" outlet="inlet"/>
         <dest obj="xfade_1" inlet="i1"/>
         <dest obj="+_3" inlet="in1"/>
      </net>
      <net>
         <source obj="InR" outlet="inlet"/>
         <dest obj="+_3" inlet="in2"/>
         <dest obj="xfade_2" inlet="i1"/>
      </net>
      <net>
         <source obj="&gt;&gt;_1" outlet="result"/>
         <dest obj="PrDly" inlet="in"/>
      </net>
      <net>
         <source obj="read_3" outlet="out"/>
         <dest obj="allpass_1" inlet="in"/>
      </net>
      <net>
         <source obj="PreDelay" outlet="out"/>
         <dest obj="read_3" inlet="time"/>
      </net>
      <net>
         <source obj="map_3" outlet="o"/>
         <dest obj="read_1" inlet="time"/>
      </net>
      <net>
         <source obj="map_1" outlet="o"/>
         <dest obj="*c_1" inlet="in"/>
         <dest obj="*c_2" inlet="in"/>
         <dest obj="*c_5" inlet="in"/>
         <dest obj="*c_6" inlet="in"/>
      </net>
      <net>
         <source obj="mod_" outlet="o1"/>
         <dest obj="allpass_3" inlet="timemod"/>
      </net>
      <net>
         <source obj="mod_" outlet="o2"/>
         <dest obj="allpass_4" inlet="timemod"/>
      </net>
      <net>
         <source obj="mod_" outlet="o5"/>
         <dest obj="allpass_7" inlet="timemod"/>
      </net>
      <net>
         <source obj="mod_" outlet="o6"/>
         <dest obj="allpass_8" inlet="timemod"/>
      </net>
      <net>
         <source obj="*c_1" outlet="out"/>
         <dest obj="allpass_3" inlet="time"/>
      </net>
      <net>
         <source obj="*c_2" outlet="out"/>
         <dest obj="allpass_4" inlet="time"/>
      </net>
      <net>
         <source obj="*c_6" outlet="out"/>
         <dest obj="allpass_8" inlet="time"/>
      </net>
      <net>
         <source obj="*c_5" outlet="out"/>
         <dest obj="allpass_7" inlet="time"/>
      </net>
      <net>
         <source obj="xfade_2" outlet="o"/>
         <dest obj="r" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>167</x>
      <y>23</y>
      <width>1273</width>
      <height>828</height>
   </windowPos>
</patch-1.0>