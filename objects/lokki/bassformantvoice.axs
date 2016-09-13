<patch-1.0 appVersion="1.0.11">
   <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_3" x="1386" y="0">
      <params/>
      <attribs>
         <spinner attributeName="value" value="64"/>
      </attribs>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="filter range" x="1162" y="14">
      <params>
         <frac32.u.map name="amp" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="inversesweep" x="1274" y="14">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/-" uuid="3280bb759e9fc189e134300e48dda7e903c9a110" name="-_1" x="1484" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="cutoff min" x="1736" y="14">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="midi/in/keyb zone lru" uuid="36a44968a4f8b980273e94dca846b7544a3c45d2" name="keyb_3" x="42" y="42">
      <params/>
      <attribs>
         <spinner attributeName="startNote" value="0"/>
         <spinner attributeName="endNote" value="127"/>
      </attribs>
   </obj>
   <obj type="math/glide" uuid="cfa0324c7cc8ebfd6e03c6b92f41115e3172d0d9" name="glide_3" x="266" y="42">
      <params>
         <frac32.u.map name="time" onParent="true" value="16.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="conv/bipolar2unipolar" uuid="f6f63d71053d572d3c795f83c7ec11dfbbce82dd" name="bipolar2unipolar_1" x="994" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="3bcb8a666381ed18b8962eda50b1aa679136f618" name="mux_1" x="1596" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_7" x="1820" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/flipflop" uuid="f9b15363f5ee203152e062c08a8846f0074b0ea5" name="flipflop_1" x="168" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/div 2" uuid="f14884de1baf3e615e12ee162a96a013eca76789" name="div_3" x="826" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/inv" uuid="565521d3699b36d8095aa1c79b9ad0046fb133ce" name="inv_1" x="1414" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/div 4" uuid="507955275561b256e540f7205386d31545a2828f" name="div_1" x="518" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/unipolar2bipolar" uuid="efc8ee28c508740c5edf7995eaaa07a6d6818e5e" name="unipolar2bipolar_2" x="1274" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/unipolar2bipolar" uuid="efc8ee28c508740c5edf7995eaaa07a6d6818e5e" name="unipolar2bipolar_1" x="1092" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_4" x="1232" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="jt/filter/vcf4pole" uuid="f926d4ad-3053-4a66-be48-6db4447a260a" name="bassvcf" x="1484" y="126">
      <params>
         <frac32.s.map name="pitch" value="12.0"/>
         <frac32.u.map name="reso" onParent="true" value="17.5"/>
      </params>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="1708" y="126" text="formant resonators"/>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="velocity-sens" x="714" y="140">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_1" x="812" y="154">
      <params/>
      <attribs>
         <spinner attributeName="value" value="64"/>
      </attribs>
   </obj>
   <obj type="mix/xfade" uuid="bb87360199938d53d1183cdc80947ed0a39e3c9a" name="xfade_3" x="910" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/square cheap" uuid="58dc60ffca7e6c5029f12ec68787945c669b7a8f" name="square_1" x="1344" y="154">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="Q" x="1624" y="154">
      <params>
         <frac32.u.map name="value" onParent="true" value="43.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/bp svf m" uuid="90abfee2793172fc193ec82288a454727134cb31" name="bp_1" x="1708" y="154">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
         <frac32.u.map name="reso" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="rand/uniform f trig" uuid="223873125a332e3b8a82795a3eef167993adb086" name="uniform_2" x="140" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/d m" uuid="85e82f54dfc28839d300cda777af8907ae2a28d0" name="d_1" x="266" y="182">
      <params>
         <frac32.s.map name="d" value="-19.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_2" x="378" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_4" x="448" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_6" x="518" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_3" x="602" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/supersaw" uuid="ece83feb36cfaee7dc3964b75c485774ea0309cf" name="supersaw" x="1162" y="210">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
         <frac32.u.map name="detune" onParent="true" value="12.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/ahd" uuid="2139369d6de2ba5ddf76e602d1d25df653ca9eed" name="ahd_1" x="1050" y="224">
      <params>
         <frac32.s.map name="a" onParent="true" value="-64.0"/>
         <frac32.s.map name="d" onParent="true" value="-64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/&gt;&gt;" uuid="d883beaf50b7aae4803ed9941e8f123e87e1e3aa" name="&gt;&gt;_1" x="168" y="238">
      <params/>
      <attribs>
         <spinner attributeName="shift" value="5"/>
      </attribs>
   </obj>
   <obj type="mix/mix 1 g" uuid="2065eeca525a4691f1bc08a7dc5468871de651b7" name="mix_4" x="896" y="238">
      <params>
         <frac32.u.map name="gain1" onParent="true" value="12.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 3 g" uuid="efc0bdb8ca0ec2184330951eff5203ff487e35a9" name="mix_1" x="1932" y="238">
      <params>
         <frac32.u.map name="gain1" value="32.0"/>
         <frac32.u.map name="gain2" value="32.0"/>
         <frac32.u.map name="gain3" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 3" uuid="8be16f2156012a4a8974804178cece51555f272b" name="mix_2" x="1386" y="252">
      <params>
         <frac32.u.map name="gain1" value="32.0"/>
         <frac32.u.map name="gain2" value="32.0"/>
         <frac32.u.map name="gain3" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="2044" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="formant out" x="2114" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_1" x="1498" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="noise" x="1274" y="308">
      <params>
         <frac32.u.map name="amp" onParent="true" value="1.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/bp svf m" uuid="90abfee2793172fc193ec82288a454727134cb31" name="bp_2" x="1708" y="308">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
         <frac32.u.map name="reso" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="humanize" x="126" y="322">
      <params>
         <frac32.u.map name="value" onParent="true" value="14.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="midi/in/cc" uuid="6096d217701cbdf251a9ab6ba029af78c5722a56" name="cc_1" x="896" y="336">
      <params/>
      <attribs>
         <spinner attributeName="cc" value="1"/>
         <spinner attributeName="default" value="0"/>
      </attribs>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="formant shift" x="490" y="364">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="mix shift/pitch" x="574" y="364">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="noise/uniform" uuid="a3926ef22ae9ac217cd09933d90101848796eb78" name="uniform_1" x="1162" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_3" x="294" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="bb87360199938d53d1183cdc80947ed0a39e3c9a" name="xfade_5" x="700" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="980" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_2" x="1064" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_5" x="1162" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/bp svf m" uuid="90abfee2793172fc193ec82288a454727134cb31" name="bp_3" x="1708" y="462">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
         <frac32.u.map name="reso" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_2" x="1918" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="bass out" x="2072" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="formant 1" x="308" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="lokki/sel/sel dial b 11" uuid="f9cc9787-fb4a-4ef0-af2d-76059bb5602f" name="sel_1" x="406" y="546">
      <params>
         <frac32.s.map name="v0" value="-2.8249197006225586"/>
         <frac32.s.map name="v1" value="1.5259199142456055"/>
         <frac32.s.map name="v2" value="10.369500160217285"/>
         <frac32.s.map name="v3" value="15.350000381469727"/>
         <frac32.s.map name="v4" value="14.461999893188477"/>
         <frac32.s.map name="v5" value="14.000300407409668"/>
         <frac32.s.map name="v6" value="9.175080299377441"/>
         <frac32.s.map name="v7" value="6.5063700675964355"/>
         <frac32.s.map name="v8" value="2.4619498252868652"/>
         <frac32.s.map name="v9" value="-0.5131797790527344"/>
         <frac32.s.map name="v10" value="9.175080299377441"/>
      </params>
      <attribs/>
   </obj>
   <obj type="lokki/sel/sel dial b 11" uuid="f9cc9787-fb4a-4ef0-af2d-76059bb5602f" name="sel_2" x="546" y="546">
      <params>
         <frac32.s.map name="v0" value="35.887901306152344"/>
         <frac32.s.map name="v1" value="33.019798278808594"/>
         <frac32.s.map name="v2" value="31.72480010986328"/>
         <frac32.s.map name="v3" value="29.0"/>
         <frac32.s.map name="v4" value="24.019500732421875"/>
         <frac32.s.map name="v5" value="22.078500747680664"/>
         <frac32.s.map name="v6" value="17.76959991455078"/>
         <frac32.s.map name="v7" value="14.461999893188477"/>
         <frac32.s.map name="v8" value="18.14189910888672"/>
         <frac32.s.map name="v9" value="17.76959991455078"/>
         <frac32.s.map name="v10" value="26.00029945373535"/>
      </params>
      <attribs/>
   </obj>
   <obj type="lokki/sel/sel dial b 11" uuid="f9cc9787-fb4a-4ef0-af2d-76059bb5602f" name="sel_3" x="686" y="546">
      <params>
         <frac32.s.map name="v0" value="40.297401428222656"/>
         <frac32.s.map name="v1" value="38.000301361083984"/>
         <frac32.s.map name="v2" value="37.28379821777344"/>
         <frac32.s.map name="v3" value="35.07619857788086"/>
         <frac32.s.map name="v4" value="35.07619857788086"/>
         <frac32.s.map name="v5" value="36.019500732421875"/>
         <frac32.s.map name="v6" value="35.48680114746094"/>
         <frac32.s.map name="v7" value="35.887901306152344"/>
         <frac32.s.map name="v8" value="33.6327018737793"/>
         <frac32.s.map name="v9" value="32.86309814453125"/>
         <frac32.s.map name="v10" value="35.21419906616211"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="formant 2" x="826" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="lokki/sel/sel dial b 11" uuid="f9cc9787-fb4a-4ef0-af2d-76059bb5602f" name="sel_4" x="924" y="546">
      <params>
         <frac32.s.map name="v0" value="-2.8249197006225586"/>
         <frac32.s.map name="v1" value="1.5259199142456055"/>
         <frac32.s.map name="v2" value="10.369500160217285"/>
         <frac32.s.map name="v3" value="15.350000381469727"/>
         <frac32.s.map name="v4" value="14.461999893188477"/>
         <frac32.s.map name="v5" value="14.000300407409668"/>
         <frac32.s.map name="v6" value="9.175080299377441"/>
         <frac32.s.map name="v7" value="6.5063700675964355"/>
         <frac32.s.map name="v8" value="2.4619498252868652"/>
         <frac32.s.map name="v9" value="-0.5131797790527344"/>
         <frac32.s.map name="v10" value="9.175080299377441"/>
      </params>
      <attribs/>
   </obj>
   <obj type="lokki/sel/sel dial b 11" uuid="f9cc9787-fb4a-4ef0-af2d-76059bb5602f" name="sel_5" x="1064" y="546">
      <params>
         <frac32.s.map name="v0" value="35.887901306152344"/>
         <frac32.s.map name="v1" value="33.019798278808594"/>
         <frac32.s.map name="v2" value="31.72480010986328"/>
         <frac32.s.map name="v3" value="29.0"/>
         <frac32.s.map name="v4" value="24.019500732421875"/>
         <frac32.s.map name="v5" value="22.078500747680664"/>
         <frac32.s.map name="v6" value="17.76959991455078"/>
         <frac32.s.map name="v7" value="14.461999893188477"/>
         <frac32.s.map name="v8" value="18.14189910888672"/>
         <frac32.s.map name="v9" value="17.76959991455078"/>
         <frac32.s.map name="v10" value="26.00029945373535"/>
      </params>
      <attribs/>
   </obj>
   <obj type="lokki/sel/sel dial b 11" uuid="f9cc9787-fb4a-4ef0-af2d-76059bb5602f" name="sel_6" x="1204" y="546">
      <params>
         <frac32.s.map name="v0" value="40.297401428222656"/>
         <frac32.s.map name="v1" value="38.000301361083984"/>
         <frac32.s.map name="v2" value="37.28379821777344"/>
         <frac32.s.map name="v3" value="35.07619857788086"/>
         <frac32.s.map name="v4" value="35.07619857788086"/>
         <frac32.s.map name="v5" value="36.019500732421875"/>
         <frac32.s.map name="v6" value="35.48680114746094"/>
         <frac32.s.map name="v7" value="35.887901306152344"/>
         <frac32.s.map name="v8" value="33.6327018737793"/>
         <frac32.s.map name="v9" value="32.86309814453125"/>
         <frac32.s.map name="v10" value="35.21419906616211"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/sat" uuid="a64166c1389cd0d5c62a8d3cd5963613be84e9e8" name="sat_1" x="1862" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="lfo/sine" uuid="75f7330c26a13953215dccc3b7b9008545c9daa9" name="humanizer" x="28" y="644">
      <params>
         <frac32.s.map name="pitch" value="-18.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/&gt;&gt;" uuid="d883beaf50b7aae4803ed9941e8f123e87e1e3aa" name="&gt;&gt;_2" x="154" y="644">
      <params/>
      <attribs>
         <spinner attributeName="shift" value="8"/>
      </attribs>
   </obj>
   <obj type="logic/change" uuid="96e39ae624c3f3c952cec4a95e1986ee0104f718" name="change_1" x="28" y="742">
      <params/>
      <attribs/>
   </obj>
   <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_2" x="28" y="784">
      <params/>
      <attribs>
         <spinner attributeName="value" value="1"/>
      </attribs>
   </obj>
   <obj type="rand/uniform f trig" uuid="223873125a332e3b8a82795a3eef167993adb086" name="uniform_3" x="28" y="840">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/div 64" uuid="da82c8ea54e956811f1d7264d921628e3301971e" name="div_2" x="28" y="882">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="28" y="924" text="randomize humanizer for each voice"/>
   <obj type="midi/in/touch" uuid="7e3a4d718388f6d5213accadf5a80121a7c35cc9" name="touch_1" x="378" y="1008">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/smooth" uuid="6c5d08c282bb08bff24af85b4891447f99bcbc97" name="aftertouchsmooth" x="476" y="1008">
      <params>
         <frac32.u.map name="time" onParent="true" value="10.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="bb87360199938d53d1183cdc80947ed0a39e3c9a" name="xfade_1" x="630" y="1008">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="bb87360199938d53d1183cdc80947ed0a39e3c9a" name="xfade_2" x="742" y="1008">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="bb87360199938d53d1183cdc80947ed0a39e3c9a" name="xfade_4" x="882" y="1008">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="Q" outlet="out"/>
         <dest obj="bp_1" inlet="reso"/>
         <dest obj="bp_2" inlet="reso"/>
         <dest obj="bp_3" inlet="reso"/>
      </net>
      <net>
         <source obj="uniform_1" outlet="wave"/>
         <dest obj="noise" inlet="in"/>
      </net>
      <net>
         <source obj="noise" outlet="out"/>
         <dest obj="mix_2" inlet="in2"/>
      </net>
      <net>
         <source obj="mix_2" outlet="out"/>
         <dest obj="bp_1" inlet="in"/>
         <dest obj="bp_2" inlet="in"/>
         <dest obj="bp_3" inlet="in"/>
      </net>
      <net>
         <source obj="supersaw" outlet="wave"/>
         <dest obj="mix_2" inlet="in1"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="bp_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="+_2" outlet="out"/>
         <dest obj="bp_2" inlet="pitch"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="ahd_1" outlet="env"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="velocity-sens" outlet="out"/>
         <dest obj="xfade_3" inlet="c"/>
      </net>
      <net>
         <source obj="i_1" outlet="out"/>
         <dest obj="xfade_3" inlet="i1"/>
      </net>
      <net>
         <source obj="xfade_3" outlet="o"/>
         <dest obj="*_1" inlet="a"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="vca_1" inlet="v"/>
         <dest obj="vca_2" inlet="v"/>
      </net>
      <net>
         <source obj="+_6" outlet="out"/>
         <dest obj="+_3" inlet="in1"/>
      </net>
      <net>
         <source obj="humanizer" outlet="wave"/>
         <dest obj="*_2" inlet="a"/>
         <dest obj="&gt;&gt;_2" inlet="a"/>
      </net>
      <net>
         <source obj="d_1" outlet="env"/>
         <dest obj="*_2" inlet="b"/>
      </net>
      <net>
         <source obj="uniform_2" outlet="rand"/>
         <dest obj="&gt;&gt;_1" inlet="a"/>
      </net>
      <net>
         <source obj="&gt;&gt;_1" outlet="result"/>
         <dest obj="d_1" inlet="d"/>
      </net>
      <net>
         <source obj="*_2" outlet="result"/>
         <dest obj="*_4" inlet="a"/>
      </net>
      <net>
         <source obj="*_4" outlet="result"/>
         <dest obj="+_6" inlet="in2"/>
      </net>
      <net>
         <source obj="humanize" outlet="out"/>
         <dest obj="*_4" inlet="b"/>
         <dest obj="*_3" inlet="a"/>
      </net>
      <net>
         <source obj="&gt;&gt;_2" outlet="result"/>
         <dest obj="*_3" inlet="b"/>
      </net>
      <net>
         <source obj="*_3" outlet="result"/>
         <dest obj="+_3" inlet="in2"/>
      </net>
      <net>
         <source obj="i_2" outlet="out"/>
         <dest obj="change_1" inlet="in"/>
      </net>
      <net>
         <source obj="change_1" outlet="trig"/>
         <dest obj="uniform_3" inlet="trig"/>
      </net>
      <net>
         <source obj="uniform_3" outlet="rand"/>
         <dest obj="div_2" inlet="in"/>
      </net>
      <net>
         <source obj="div_2" outlet="out"/>
         <dest obj="humanizer" inlet="pitch"/>
      </net>
      <net>
         <source obj="flipflop_1" outlet="o"/>
         <dest obj="glide_3" inlet="en"/>
      </net>
      <net>
         <source obj="keyb_3" outlet="note"/>
         <dest obj="glide_3" inlet="in"/>
      </net>
      <net>
         <source obj="keyb_3" outlet="gate"/>
         <dest obj="flipflop_1" inlet="reset"/>
         <dest obj="uniform_2" inlet="trig"/>
         <dest obj="d_1" inlet="trig"/>
         <dest obj="ahd_1" inlet="gate"/>
      </net>
      <net>
         <source obj="keyb_3" outlet="gate2"/>
         <dest obj="flipflop_1" inlet="set"/>
      </net>
      <net>
         <source obj="keyb_3" outlet="velocity"/>
         <dest obj="xfade_3" inlet="i2"/>
      </net>
      <net>
         <source obj="glide_3" outlet="out"/>
         <dest obj="square_1" inlet="pitch"/>
         <dest obj="div_1" inlet="in"/>
         <dest obj="+_4" inlet="in1"/>
         <dest obj="+_6" inlet="in1"/>
      </net>
      <net>
         <source obj="bp_1" outlet="out"/>
         <dest obj="mix_1" inlet="in1"/>
      </net>
      <net>
         <source obj="bp_2" outlet="out"/>
         <dest obj="mix_1" inlet="in2"/>
      </net>
      <net>
         <source obj="bp_3" outlet="out"/>
         <dest obj="mix_1" inlet="in3"/>
      </net>
      <net>
         <source obj="vca_2" outlet="o"/>
         <dest obj="bass out" inlet="outlet"/>
      </net>
      <net>
         <source obj="bassvcf" outlet="out"/>
         <dest obj="sat_1" inlet="in"/>
      </net>
      <net>
         <source obj="square_1" outlet="wave"/>
         <dest obj="bassvcf" inlet="in"/>
      </net>
      <net>
         <source obj="formant 1" outlet="inlet"/>
         <dest obj="sel_1" inlet="s"/>
         <dest obj="sel_2" inlet="s"/>
         <dest obj="sel_3" inlet="s"/>
      </net>
      <net>
         <source obj="formant 2" outlet="inlet"/>
         <dest obj="sel_4" inlet="s"/>
         <dest obj="sel_5" inlet="s"/>
         <dest obj="sel_6" inlet="s"/>
      </net>
      <net>
         <source obj="sel_1" outlet="o"/>
         <dest obj="xfade_1" inlet="i1"/>
      </net>
      <net>
         <source obj="sel_4" outlet="o"/>
         <dest obj="xfade_1" inlet="i2"/>
      </net>
      <net>
         <source obj="sel_2" outlet="o"/>
         <dest obj="xfade_2" inlet="i1"/>
      </net>
      <net>
         <source obj="sel_5" outlet="o"/>
         <dest obj="xfade_2" inlet="i2"/>
      </net>
      <net>
         <source obj="sel_6" outlet="o"/>
         <dest obj="xfade_4" inlet="i2"/>
      </net>
      <net>
         <source obj="sel_3" outlet="o"/>
         <dest obj="xfade_4" inlet="i1"/>
      </net>
      <net>
         <source obj="aftertouchsmooth" outlet="out"/>
         <dest obj="unipolar2bipolar_1" inlet="i"/>
         <dest obj="xfade_1" inlet="c"/>
         <dest obj="xfade_2" inlet="c"/>
         <dest obj="xfade_4" inlet="c"/>
      </net>
      <net>
         <source obj="touch_1" outlet="o"/>
         <dest obj="aftertouchsmooth" inlet="in"/>
      </net>
      <net>
         <source obj="xfade_1" outlet="o"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="xfade_2" outlet="o"/>
         <dest obj="+_2" inlet="in2"/>
      </net>
      <net>
         <source obj="xfade_4" outlet="o"/>
         <dest obj="+_5" inlet="in2"/>
      </net>
      <net>
         <source obj="+_5" outlet="out"/>
         <dest obj="bp_3" inlet="pitch"/>
      </net>
      <net>
         <source obj="div_1" outlet="out"/>
         <dest obj="xfade_5" inlet="i1"/>
      </net>
      <net>
         <source obj="formant shift" outlet="out"/>
         <dest obj="xfade_5" inlet="i2"/>
      </net>
      <net>
         <source obj="xfade_5" outlet="o"/>
         <dest obj="+_1" inlet="in1"/>
         <dest obj="+_2" inlet="in1"/>
         <dest obj="+_5" inlet="in1"/>
      </net>
      <net>
         <source obj="mix shift/pitch" outlet="out"/>
         <dest obj="xfade_5" inlet="c"/>
      </net>
      <net>
         <source obj="+_4" outlet="out"/>
         <dest obj="div_3" inlet="in"/>
      </net>
      <net>
         <source obj="unipolar2bipolar_1" outlet="o"/>
         <dest obj="+_4" inlet="in2"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="+_7" inlet="in1"/>
      </net>
      <net>
         <source obj="inv_1" outlet="out"/>
         <dest obj="-_1" inlet="in1"/>
      </net>
      <net>
         <source obj="inversesweep" outlet="o"/>
         <dest obj="mux_1" inlet="s"/>
      </net>
      <net>
         <source obj="-_1" outlet="out"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="i_3" outlet="out"/>
         <dest obj="-_1" inlet="in2"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="formant out" inlet="outlet"/>
      </net>
      <net>
         <source obj="filter range" outlet="out"/>
         <dest obj="unipolar2bipolar_2" inlet="i"/>
      </net>
      <net>
         <source obj="bipolar2unipolar_1" outlet="o"/>
         <dest obj="filter range" inlet="in"/>
      </net>
      <net>
         <source obj="unipolar2bipolar_2" outlet="o"/>
         <dest obj="mux_1" inlet="i1"/>
         <dest obj="inv_1" inlet="in"/>
      </net>
      <net>
         <source obj="div_3" outlet="out"/>
         <dest obj="bipolar2unipolar_1" inlet="i"/>
      </net>
      <net>
         <source obj="cutoff min" outlet="out"/>
         <dest obj="+_7" inlet="in2"/>
      </net>
      <net>
         <source obj="+_7" outlet="out"/>
         <dest obj="bassvcf" inlet="pitch"/>
      </net>
      <net>
         <source obj="sat_1" outlet="out"/>
         <dest obj="vca_2" inlet="a"/>
      </net>
      <net>
         <source obj="mix_4" outlet="out"/>
         <dest obj="supersaw" inlet="pitch"/>
      </net>
      <net>
         <source obj="+_3" outlet="out"/>
         <dest obj="mix_4" inlet="bus_in"/>
      </net>
      <net>
         <source obj="cc_1" outlet="midiCC"/>
         <dest obj="mix_4" inlet="in1"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
      <MidiChannel>5</MidiChannel>
      <HasMidiChannelSelector>true</HasMidiChannelSelector>
      <NPresets>0</NPresets>
      <NPresetEntries>0</NPresetEntries>
      <NModulationSources>0</NModulationSources>
      <NModulationTargetsPerSource>0</NModulationTargetsPerSource>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>0</x>
      <y>0</y>
      <width>1366</width>
      <height>768</height>
   </windowPos>
</patch-1.0>