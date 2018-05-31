<patch-1.0 appVersion="1.0.12">
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="Tape age" x="896" y="224">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="TSG/math/map" uuid="e93b4617-4075-4591-b602-3e1fc252e881" name="map_1" x="980" y="224">
      <params>
         <frac32.u.map name="a" value="64.0"/>
         <frac32.u.map name="b" value="29.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="Low End" x="1078" y="224">
      <params>
         <frac32.u.map name="value" onParent="true" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="TSG/math/map" uuid="e93b4617-4075-4591-b602-3e1fc252e881" name="map_3" x="1162" y="224">
      <params>
         <frac32.u.map name="a" value="44.0"/>
         <frac32.u.map name="b" value="5.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="Saturation" x="630" y="266">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="TSG/math/map" uuid="e93b4617-4075-4591-b602-3e1fc252e881" name="map_2" x="714" y="266">
      <params>
         <frac32.u.map name="a" value="0.0"/>
         <frac32.u.map name="b" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="In L" x="322" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="In R" x="322" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_1" x="700" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/&lt;&lt;" uuid="3c89a8ac22f44350a3366284704535e257aea35f" name="&lt;&lt;_1" x="784" y="434">
      <params/>
      <attribs>
         <spinner attributeName="shift" value="1"/>
      </attribs>
   </obj>
   <obj type="dist/soft" uuid="e680d76a805e4866027cdf654c7efd8b2e54622" name="soft_3" x="882" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="*c_1" x="952" y="434">
      <params>
         <frac32.u.map name="amp" value="20.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_6" x="1078" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="dist/soft" uuid="e680d76a805e4866027cdf654c7efd8b2e54622" name="soft_1" x="1162" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/lp1 m" uuid="18b561d14f9175f5380e6a1d9d55ca41e0e61974" name="lp1_1" x="1260" y="434">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/hp1 m" uuid="db72e08c265817674e56af3855bfca7a58b65e87" name="hp1_1" x="1344" y="434">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="delay/write sdram" uuid="5ae03f8d7b815edcfc40585d8bbac2ed48460fba" name="DlyLeft" x="1456" y="434">
      <params/>
      <attribs>
         <combo attributeName="size" selection="65536 (1.36s)"/>
      </attribs>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="Time" x="210" y="490">
      <params>
         <frac32.u.map name="value" onParent="true" value="34.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="TSG/math/map" uuid="e93b4617-4075-4591-b602-3e1fc252e881" name="map_4" x="280" y="490">
      <params>
         <frac32.u.map name="a" value="1.0"/>
         <frac32.u.map name="b" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_2" x="700" y="532">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/&lt;&lt;" uuid="3c89a8ac22f44350a3366284704535e257aea35f" name="&lt;&lt;_2" x="784" y="532">
      <params/>
      <attribs>
         <spinner attributeName="shift" value="1"/>
      </attribs>
   </obj>
   <obj type="dist/soft" uuid="e680d76a805e4866027cdf654c7efd8b2e54622" name="soft_4" x="882" y="532">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="*c_2" x="952" y="532">
      <params>
         <frac32.u.map name="amp" value="20.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_7" x="1078" y="532">
      <params/>
      <attribs/>
   </obj>
   <obj type="dist/soft" uuid="e680d76a805e4866027cdf654c7efd8b2e54622" name="soft_2" x="1176" y="532">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/lp1 m" uuid="18b561d14f9175f5380e6a1d9d55ca41e0e61974" name="lp1_2" x="1260" y="532">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/hp1 m" uuid="db72e08c265817674e56af3855bfca7a58b65e87" name="hp1_2" x="1344" y="532">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="delay/write sdram" uuid="5ae03f8d7b815edcfc40585d8bbac2ed48460fba" name="DlyRight" x="1456" y="532">
      <params/>
      <attribs>
         <combo attributeName="size" selection="65536 (1.36s)"/>
      </attribs>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="time symmetry" x="378" y="546">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/&gt;&gt;" uuid="d883beaf50b7aae4803ed9941e8f123e87e1e3aa" name="&gt;&gt;_2" x="462" y="546">
      <params/>
      <attribs>
         <spinner attributeName="shift" value="2"/>
      </attribs>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_1" x="588" y="574">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="bb87360199938d53d1183cdc80947ed0a39e3c9a" name="xfade_5" x="686" y="616">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_3" x="798" y="616">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/smooth" uuid="6c5d08c282bb08bff24af85b4891447f99bcbc97" name="smooth_1" x="882" y="616">
      <params>
         <frac32.u.map name="time" value="55.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="TSG/delay/read m interp" uuid="1267df5a-5e05-40dd-bace-29e94169e5bb" name="read_1" x="980" y="616">
      <params/>
      <attribs>
         <objref attributeName="delayname" obj="DlyLeft"/>
         <combo attributeName="interpol" selection="3pt"/>
      </attribs>
   </obj>
   <obj type="TSG/logic/d flipflop" uuid="5ad3686c-ad5b-4dc7-86bc-5254f6b04b94" name="d_2" x="336" y="644">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="clock" x="224" y="658">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_3" x="1232" y="658">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="1414" y="658">
      <params/>
      <attribs/>
   </obj>
   <obj type="timer/timeri" uuid="11c19ad8fb3f9451d29984ba5dc7ebf8c30cdbfd" name="timeri_1" x="476" y="700">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/&gt;&gt;" uuid="d883beaf50b7aae4803ed9941e8f123e87e1e3aa" name="&gt;&gt;_1" x="574" y="700">
      <params/>
      <attribs>
         <spinner attributeName="shift" value="6"/>
      </attribs>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="sync to external clock" x="672" y="700">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="PingPong" x="1148" y="700">
      <params>
         <frac32.u.map name="value" onParent="true" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="Feedback" x="1316" y="700">
      <params>
         <frac32.u.map name="value" onParent="true" value="32.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_1" x="364" y="714">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/-" uuid="3280bb759e9fc189e134300e48dda7e903c9a110" name="-_1" x="798" y="728">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/smooth" uuid="6c5d08c282bb08bff24af85b4891447f99bcbc97" name="smooth_2" x="882" y="728">
      <params>
         <frac32.u.map name="time" value="55.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="TSG/delay/read m interp" uuid="1267df5a-5e05-40dd-bace-29e94169e5bb" name="read_2" x="980" y="728">
      <params/>
      <attribs>
         <objref attributeName="delayname" obj="DlyRight"/>
         <combo attributeName="interpol" selection="3pt"/>
      </attribs>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_4" x="1232" y="742">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_2" x="1414" y="742">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="350" y="770" text="measuring clock length"/>
   <comment type="patch/comment" x="546" y="770" text="convert to time parameter"/>
   <comment type="patch/comment" x="686" y="812" text="flutter"/>
   <obj type="rand/uniform f" uuid="8f20d4eee60d56a57c11111c7028f69d6039b658" name="uniform_1" x="476" y="840">
      <params/>
      <attribs/>
   </obj>
   <obj type="kfilter/lp svf" uuid="784a54ca63c8b47d4d16a810f4a62337f45827e1" name="lp_1" x="574" y="840">
      <params>
         <frac32.s.map name="pitch" value="-54.0"/>
         <frac32.u.map name="reso" value="2.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/gain" uuid="6b4dd3da49f98e54900f6c20031f38f4624fa364" name="gain_1" x="672" y="840">
      <params>
         <frac32.u.map name="amp" value="31.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="flutter" x="770" y="840">
      <params>
         <frac32.u.map name="amp" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="mix" x="1638" y="924">
      <params>
         <frac32.u.map name="value" onParent="true" value="31.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_1" x="1764" y="952">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="Out L" x="1848" y="952">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_2" x="1764" y="1022">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="Out R" x="1848" y="1022">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="1120" y="1064" text="Use this output to drive leds that blink in sync with the delay"/>
   <obj type="math/reciprocal" uuid="439f340c2da8a031b6d48ed82626b4fbaaa05774" name="reciprocal_1" x="1022" y="1092">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/&lt;&lt;" uuid="b03d8d8009c0480be0ccb29ed65933a82fa4a80f" name="&lt;&lt;_3" x="1134" y="1092">
      <params/>
      <attribs>
         <spinner attributeName="shift" value="1"/>
      </attribs>
   </obj>
   <obj type="lfo/saw lin" uuid="79fb6a3a77fc9fe0273c271ddccca019ebee6955" name="saw_1" x="1232" y="1092">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="phase" x="1330" y="1092">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="uniform_1" outlet="wave"/>
         <dest obj="lp_1" inlet="in"/>
      </net>
      <net>
         <source obj="read_1" outlet="out"/>
         <dest obj="xfade_3" inlet="i1"/>
         <dest obj="xfade_4" inlet="i2"/>
         <dest obj="xfade_1" inlet="i2"/>
      </net>
      <net>
         <source obj="read_2" outlet="out"/>
         <dest obj="xfade_3" inlet="i2"/>
         <dest obj="xfade_4" inlet="i1"/>
         <dest obj="xfade_2" inlet="i2"/>
      </net>
      <net>
         <source obj="flutter" outlet="out"/>
         <dest obj="read_1" inlet="mod"/>
         <dest obj="read_2" inlet="mod"/>
      </net>
      <net>
         <source obj="smooth_1" outlet="out"/>
         <dest obj="read_1" inlet="time"/>
      </net>
      <net>
         <source obj="lp_1" outlet="out"/>
         <dest obj="gain_1" inlet="in"/>
      </net>
      <net>
         <source obj="Feedback" outlet="out"/>
         <dest obj="vca_1" inlet="v"/>
         <dest obj="vca_2" inlet="v"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="vca_2" outlet="o"/>
         <dest obj="+_2" inlet="in2"/>
      </net>
      <net>
         <source obj="gain_1" outlet="out"/>
         <dest obj="flutter" inlet="in"/>
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
         <source obj="Tape age" outlet="out"/>
         <dest obj="map_1" inlet="c"/>
      </net>
      <net>
         <source obj="map_1" outlet="o"/>
         <dest obj="lp1_1" inlet="freq"/>
         <dest obj="lp1_2" inlet="freq"/>
      </net>
      <net>
         <source obj="Time" outlet="out"/>
         <dest obj="map_4" inlet="c"/>
      </net>
      <net>
         <source obj="Saturation" outlet="out"/>
         <dest obj="map_2" inlet="c"/>
      </net>
      <net>
         <source obj="Low End" outlet="out"/>
         <dest obj="map_3" inlet="c"/>
      </net>
      <net>
         <source obj="hp1_1" outlet="out"/>
         <dest obj="DlyLeft" inlet="in"/>
      </net>
      <net>
         <source obj="hp1_2" outlet="out"/>
         <dest obj="DlyRight" inlet="in"/>
      </net>
      <net>
         <source obj="map_3" outlet="o"/>
         <dest obj="hp1_1" inlet="freq"/>
         <dest obj="hp1_2" inlet="freq"/>
      </net>
      <net>
         <source obj="map_4" outlet="o"/>
         <dest obj="*_1" inlet="b"/>
         <dest obj="xfade_5" inlet="i1"/>
      </net>
      <net>
         <source obj="xfade_3" outlet="o"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="xfade_4" outlet="o"/>
         <dest obj="vca_2" inlet="a"/>
      </net>
      <net>
         <source obj="PingPong" outlet="out"/>
         <dest obj="xfade_3" inlet="c"/>
         <dest obj="xfade_4" inlet="c"/>
      </net>
      <net>
         <source obj="sync to external clock" outlet="o"/>
         <dest obj="xfade_5" inlet="c"/>
      </net>
      <net>
         <source obj="d_2" outlet="o"/>
         <dest obj="inv_1" inlet="i"/>
         <dest obj="timeri_1" inlet="start"/>
      </net>
      <net>
         <source obj="inv_1" outlet="o"/>
         <dest obj="timeri_1" inlet="stop"/>
         <dest obj="d_2" inlet="data"/>
      </net>
      <net>
         <source obj="timeri_1" outlet="t"/>
         <dest obj="&gt;&gt;_1" inlet="a"/>
      </net>
      <net>
         <source obj="&gt;&gt;_1" outlet="result"/>
         <dest obj="xfade_5" inlet="i2"/>
      </net>
      <net>
         <source obj="xfade_5" outlet="o"/>
         <dest obj="+_3" inlet="in1"/>
         <dest obj="-_1" inlet="in1"/>
         <dest obj="reciprocal_1" inlet="in"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="&lt;&lt;_1" inlet="a"/>
         <dest obj="xfade_6" inlet="i1"/>
      </net>
      <net>
         <source obj="map_2" outlet="o"/>
         <dest obj="xfade_6" inlet="c"/>
         <dest obj="xfade_7" inlet="c"/>
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
         <source obj="mix" outlet="out"/>
         <dest obj="xfade_1" inlet="c"/>
         <dest obj="xfade_2" inlet="c"/>
      </net>
      <net>
         <source obj="clock" outlet="inlet"/>
         <dest obj="d_2" inlet="clock"/>
      </net>
      <net>
         <source obj="xfade_1" outlet="o"/>
         <dest obj="Out L" inlet="outlet"/>
      </net>
      <net>
         <source obj="xfade_2" outlet="o"/>
         <dest obj="Out R" inlet="outlet"/>
      </net>
      <net>
         <source obj="+_2" outlet="out"/>
         <dest obj="&lt;&lt;_2" inlet="a"/>
         <dest obj="xfade_7" inlet="i1"/>
      </net>
      <net>
         <source obj="soft_3" outlet="out"/>
         <dest obj="*c_1" inlet="in"/>
      </net>
      <net>
         <source obj="soft_4" outlet="out"/>
         <dest obj="*c_2" inlet="in"/>
      </net>
      <net>
         <source obj="xfade_6" outlet="o"/>
         <dest obj="soft_1" inlet="in"/>
      </net>
      <net>
         <source obj="xfade_7" outlet="o"/>
         <dest obj="soft_2" inlet="in"/>
      </net>
      <net>
         <source obj="*c_1" outlet="out"/>
         <dest obj="xfade_6" inlet="i2"/>
      </net>
      <net>
         <source obj="*c_2" outlet="out"/>
         <dest obj="xfade_7" inlet="i2"/>
      </net>
      <net>
         <source obj="&lt;&lt;_1" outlet="result"/>
         <dest obj="soft_3" inlet="in"/>
      </net>
      <net>
         <source obj="&lt;&lt;_2" outlet="result"/>
         <dest obj="soft_4" inlet="in"/>
      </net>
      <net>
         <source obj="+_3" outlet="out"/>
         <dest obj="smooth_1" inlet="in"/>
      </net>
      <net>
         <source obj="time symmetry" outlet="out"/>
         <dest obj="&gt;&gt;_2" inlet="a"/>
      </net>
      <net>
         <source obj="-_1" outlet="out"/>
         <dest obj="smooth_2" inlet="in"/>
      </net>
      <net>
         <source obj="&gt;&gt;_2" outlet="result"/>
         <dest obj="*_1" inlet="a"/>
      </net>
      <net>
         <source obj="smooth_2" outlet="out"/>
         <dest obj="read_2" inlet="time"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="+_3" inlet="in2"/>
         <dest obj="-_1" inlet="in2"/>
      </net>
      <net>
         <source obj="In L" outlet="inlet"/>
         <dest obj="+_1" inlet="in1"/>
         <dest obj="xfade_1" inlet="i1"/>
      </net>
      <net>
         <source obj="In R" outlet="inlet"/>
         <dest obj="+_2" inlet="in1"/>
         <dest obj="xfade_2" inlet="i1"/>
      </net>
      <net>
         <source obj="saw_1" outlet="wave"/>
         <dest obj="phase" inlet="outlet"/>
      </net>
      <net>
         <source obj="reciprocal_1" outlet="out"/>
         <dest obj="&lt;&lt;_3" inlet="a"/>
      </net>
      <net>
         <source obj="&lt;&lt;_3" outlet="result"/>
         <dest obj="saw_1" inlet="freq"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>0</x>
      <y>23</y>
      <width>1440</width>
      <height>791</height>
   </windowPos>
</patch-1.0>