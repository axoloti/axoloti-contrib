<patch-1.0 appVersion="1.0.9">
   <obj type="lfo/sine" uuid="75f7330c26a13953215dccc3b7b9008545c9daa9" name="sine_1" x="14" y="28">
      <params>
         <frac32.s.map name="pitch" value="-20.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/&gt;&gt;" uuid="d883beaf50b7aae4803ed9941e8f123e87e1e3aa" name="&gt;&gt;_4" x="126" y="28">
      <params/>
      <attribs>
         <spinner attributeName="shift" value="3"/>
      </attribs>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_1" x="224" y="28">
      <params>
         <frac32.u.map name="amp" value="3.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="lfo/saw" uuid="ef2a162678b533c5e46c4e3c0decba17b1862d85" name="speed" x="336" y="28">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="1.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/window" uuid="276ef1bfd2978430dd94074347265b17092b6311" name="window_1" x="448" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_2" x="546" y="28">
      <params/>
      <attribs>
         <spinner attributeName="value" value="32"/>
      </attribs>
   </obj>
   <obj type="math/-" uuid="3280bb759e9fc189e134300e48dda7e903c9a110" name="-_4" x="644" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="depth" x="448" y="126">
      <params>
         <frac32.u.map name="amp" onParent="true" value="18.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="offset" x="560" y="126">
      <params>
         <frac32.s.map name="value" onParent="true" value="15.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/&gt;&gt;" uuid="d883beaf50b7aae4803ed9941e8f123e87e1e3aa" name="&gt;&gt;_1" x="644" y="126">
      <params/>
      <attribs>
         <spinner attributeName="shift" value="1"/>
      </attribs>
   </obj>
   <obj type="math/inv" uuid="565521d3699b36d8095aa1c79b9ad0046fb133ce" name="inv_1" x="742" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_3" x="812" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_2" x="896" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/wrap" uuid="bb34ebfe0112f3238b3f928bf7ddea465d410bcb" name="wrap_1" x="140" y="238">
      <params/>
      <attribs>
         <spinner attributeName="bits" value="1"/>
      </attribs>
   </obj>
   <obj type="math/window" uuid="276ef1bfd2978430dd94074347265b17092b6311" name="window_2" x="224" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_1" x="322" y="238">
      <params/>
      <attribs>
         <spinner attributeName="value" value="32"/>
      </attribs>
   </obj>
   <obj type="math/-" uuid="3280bb759e9fc189e134300e48dda7e903c9a110" name="-_2" x="420" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/&lt;&lt;" uuid="b03d8d8009c0480be0ccb29ed65933a82fa4a80f" name="&lt;&lt;_3" x="504" y="238">
      <params/>
      <attribs>
         <spinner attributeName="shift" value="1"/>
      </attribs>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="wobble" x="602" y="238">
      <params>
         <frac32.u.map name="amp" onParent="true" value="31.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="inlet_1" x="14" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_1" x="112" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="jho/filter/allpass mod hq" uuid="c6bec25f5bf44267a6bd5537d6a2cfae" name="allpass_1" x="196" y="308">
      <params/>
      <attribs>
         <spinner attributeName="delay" value="4"/>
      </attribs>
   </obj>
   <obj type="jho/filter/allpass mod hq" uuid="c6bec25f5bf44267a6bd5537d6a2cfae" name="allpass_2" x="350" y="308">
      <params/>
      <attribs>
         <spinner attributeName="delay" value="5"/>
      </attribs>
   </obj>
   <obj type="filter/hp1" uuid="abea7276611b289bed35b80345a6bc4efd4d9a4e" name="xover1" x="518" y="392">
      <params>
         <frac32.s.map name="freq" onParent="true" value="38.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="630" y="392">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_1" x="700" y="392">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_2" x="112" y="518">
      <params/>
      <attribs/>
   </obj>
   <obj type="jho/filter/allpass mod hq" uuid="c6bec25f5bf44267a6bd5537d6a2cfae" name="allpass_5" x="196" y="518">
      <params/>
      <attribs>
         <spinner attributeName="delay" value="19"/>
      </attribs>
   </obj>
   <obj type="jho/filter/allpass mod hq" uuid="c6bec25f5bf44267a6bd5537d6a2cfae" name="allpass_6" x="350" y="518">
      <params/>
      <attribs>
         <spinner attributeName="delay" value="22"/>
      </attribs>
   </obj>
   <obj type="filter/hp1" uuid="abea7276611b289bed35b80345a6bc4efd4d9a4e" name="xover2" x="518" y="518">
      <params>
         <frac32.s.map name="freq" onParent="true" value="4.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="blend" x="798" y="518">
      <params>
         <frac32.u.map name="value" onParent="true" value="19.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_2" x="630" y="630">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_4" x="700" y="630">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_2" x="798" y="630">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" sha="a104f377191a424d537741cdfd7d5348bc16590c" name="on" x="28" y="728">
      <params>
         <bool32.tgl name="b" onParent="true" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="539c246f4c360ac476e128cfbfa84348fb7f7e73" name="mux_1" x="112" y="728">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="196" y="728">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="speed" outlet="wave"/>
         <dest obj="wrap_1" inlet="a"/>
         <dest obj="window_1" inlet="phase"/>
      </net>
      <net>
         <source obj="window_1" outlet="win"/>
         <dest obj="-_4" inlet="in1"/>
      </net>
      <net>
         <source obj="-_2" outlet="out"/>
         <dest obj="&lt;&lt;_3" inlet="a"/>
      </net>
      <net>
         <source obj="&lt;&lt;_3" outlet="result"/>
         <dest obj="wobble" inlet="in"/>
      </net>
      <net>
         <source obj="wobble" outlet="out"/>
         <dest obj="vca_1" inlet="v"/>
         <dest obj="vca_2" inlet="v"/>
      </net>
      <net>
         <source obj="i_1" outlet="out"/>
         <dest obj="-_2" inlet="in1"/>
      </net>
      <net>
         <source obj="+_2" outlet="out"/>
         <dest obj="interp_2" inlet="i"/>
      </net>
      <net>
         <source obj="allpass_1" outlet="out"/>
         <dest obj="allpass_2" inlet="in"/>
      </net>
      <net>
         <source obj="interp_1" outlet="o"/>
         <dest obj="allpass_1" inlet="mod"/>
         <dest obj="allpass_2" inlet="mod"/>
      </net>
      <net>
         <source obj="inlet_1" outlet="inlet"/>
         <dest obj="allpass_1" inlet="in"/>
         <dest obj="mux_1" inlet="i1"/>
         <dest obj="allpass_5" inlet="in"/>
      </net>
      <net>
         <source obj="on" outlet="o"/>
         <dest obj="mux_1" inlet="s"/>
      </net>
      <net>
         <source obj="xover1" outlet="out"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="allpass_2" outlet="out"/>
         <dest obj="+_1" inlet="in1"/>
         <dest obj="xover1" inlet="in"/>
      </net>
      <net>
         <source obj="wrap_1" outlet="b"/>
         <dest obj="window_2" inlet="phase"/>
      </net>
      <net>
         <source obj="window_2" outlet="win"/>
         <dest obj="-_2" inlet="in2"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="i_2" outlet="out"/>
         <dest obj="-_4" inlet="in2"/>
      </net>
      <net>
         <source obj="-_4" outlet="out"/>
         <dest obj="depth" inlet="in"/>
      </net>
      <net>
         <source obj="inv_1" outlet="out"/>
         <dest obj="+_3" inlet="in1"/>
      </net>
      <net>
         <source obj="offset" outlet="out"/>
         <dest obj="&gt;&gt;_1" inlet="a"/>
      </net>
      <net>
         <source obj="depth" outlet="out"/>
         <dest obj="inv_1" inlet="in"/>
         <dest obj="+_2" inlet="in1"/>
      </net>
      <net>
         <source obj="+_3" outlet="out"/>
         <dest obj="interp_1" inlet="i"/>
      </net>
      <net>
         <source obj="&gt;&gt;_1" outlet="result"/>
         <dest obj="+_3" inlet="in2"/>
         <dest obj="+_2" inlet="in2"/>
      </net>
      <net>
         <source obj="allpass_5" outlet="out"/>
         <dest obj="allpass_6" inlet="in"/>
      </net>
      <net>
         <source obj="interp_2" outlet="o"/>
         <dest obj="allpass_5" inlet="mod"/>
         <dest obj="allpass_6" inlet="mod"/>
      </net>
      <net>
         <source obj="xover2" outlet="out"/>
         <dest obj="vca_2" inlet="a"/>
      </net>
      <net>
         <source obj="allpass_6" outlet="out"/>
         <dest obj="+_4" inlet="in1"/>
         <dest obj="xover2" inlet="in"/>
      </net>
      <net>
         <source obj="vca_2" outlet="o"/>
         <dest obj="+_4" inlet="in2"/>
      </net>
      <net>
         <source obj="blend" outlet="out"/>
         <dest obj="xfade_2" inlet="c"/>
      </net>
      <net>
         <source obj="xfade_2" outlet="o"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="sine_1" outlet="wave"/>
         <dest obj="&gt;&gt;_4" inlet="a"/>
      </net>
      <net>
         <source obj="&gt;&gt;_4" outlet="result"/>
         <dest obj="*c_1" inlet="in"/>
      </net>
      <net>
         <source obj="*c_1" outlet="out"/>
         <dest obj="speed" inlet="pitch"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="xfade_2" inlet="i1"/>
      </net>
      <net>
         <source obj="+_4" outlet="out"/>
         <dest obj="xfade_2" inlet="i2"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>58</x>
      <y>-4</y>
      <width>1226</width>
      <height>1032</height>
   </windowPos>
</patch-1.0>