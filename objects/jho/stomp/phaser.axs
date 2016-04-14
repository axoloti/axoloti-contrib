<patch-1.0 appVersion="1.0.9">
   <obj type="drj/lfo/tri_p" uuid="ef2a164985b533c6e46ce43c0decba17b1862d85" name="speed" x="126" y="56">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-32.31999969482422"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/&gt;&gt;" uuid="d883beaf50b7aae4803ed9941e8f123e87e1e3aa" name="&gt;&gt;_1" x="238" y="56">
      <params/>
      <attribs>
         <spinner attributeName="shift" value="1"/>
      </attribs>
   </obj>
   <obj type="math/window" uuid="276ef1bfd2978430dd94074347265b17092b6311" name="window_1" x="336" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="waveform" x="434" y="56">
      <params>
         <frac32.u.map name="value" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="bb87360199938d53d1183cdc80947ed0a39e3c9a" name="xfade_1" x="518" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="depth" x="602" y="56">
      <params>
         <frac32.u.map name="amp" onParent="true" value="46.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/-c" uuid="bc70bed87e5405985ade03f4806b9450609a9093" name="offset" x="728" y="56">
      <params>
         <frac32.u.map name="c" onParent="true" value="16.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" sha="2944bdbaeb2a8a42d5a97163275d052f75668a86" name="in" x="126" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_1" x="210" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="jho/filter/allpass mod hq" uuid="c6bec25f5bf44267a6bd5537d6a2cfae" name="allpass_1" x="294" y="168">
      <params/>
      <attribs>
         <spinner attributeName="delay" value="7"/>
      </attribs>
   </obj>
   <obj type="jho/filter/allpass mod hq" uuid="c6bec25f5bf44267a6bd5537d6a2cfae" name="allpass_2" x="448" y="168">
      <params/>
      <attribs>
         <spinner attributeName="delay" value="8"/>
      </attribs>
   </obj>
   <obj type="jho/filter/allpass mod hq" uuid="c6bec25f5bf44267a6bd5537d6a2cfae" name="allpass_3" x="294" y="252">
      <params/>
      <attribs>
         <spinner attributeName="delay" value="9"/>
      </attribs>
   </obj>
   <obj type="jho/filter/allpass mod hq" uuid="c6bec25f5bf44267a6bd5537d6a2cfae" name="allpass_4" x="448" y="252">
      <params/>
      <attribs>
         <spinner attributeName="delay" value="10"/>
      </attribs>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="blend" x="602" y="252">
      <params>
         <frac32.u.map name="value" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_2" x="672" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" sha="a104f377191a424d537741cdfd7d5348bc16590c" name="on" x="742" y="252">
      <params>
         <bool32.tgl name="b" onParent="true" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="539c246f4c360ac476e128cfbfa84348fb7f7e73" name="mux_1" x="812" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" sha="72226293648dde4dd4739bc1b8bc46a6bf660595" name="out" x="882" y="252">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="allpass_1" outlet="out"/>
         <dest obj="allpass_2" inlet="in"/>
      </net>
      <net>
         <source obj="interp_1" outlet="o"/>
         <dest obj="allpass_1" inlet="mod"/>
         <dest obj="allpass_2" inlet="mod"/>
         <dest obj="allpass_3" inlet="mod"/>
         <dest obj="allpass_4" inlet="mod"/>
      </net>
      <net>
         <source obj="speed" outlet="tri"/>
         <dest obj="&gt;&gt;_1" inlet="a"/>
         <dest obj="xfade_1" inlet="i2"/>
      </net>
      <net>
         <source obj="allpass_2" outlet="out"/>
         <dest obj="allpass_3" inlet="in"/>
      </net>
      <net>
         <source obj="allpass_3" outlet="out"/>
         <dest obj="allpass_4" inlet="in"/>
      </net>
      <net>
         <source obj="&gt;&gt;_1" outlet="result"/>
         <dest obj="window_1" inlet="phase"/>
      </net>
      <net>
         <source obj="window_1" outlet="win"/>
         <dest obj="xfade_1" inlet="i1"/>
      </net>
      <net>
         <source obj="waveform" outlet="out"/>
         <dest obj="xfade_1" inlet="c"/>
      </net>
      <net>
         <source obj="in" outlet="inlet"/>
         <dest obj="mux_1" inlet="i1"/>
         <dest obj="xfade_2" inlet="i1"/>
         <dest obj="allpass_1" inlet="in"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="out" inlet="outlet"/>
      </net>
      <net>
         <source obj="on" outlet="o"/>
         <dest obj="mux_1" inlet="s"/>
      </net>
      <net>
         <source obj="allpass_4" outlet="out"/>
         <dest obj="xfade_2" inlet="i2"/>
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
         <source obj="depth" outlet="out"/>
         <dest obj="offset" inlet="in"/>
      </net>
      <net>
         <source obj="xfade_1" outlet="o"/>
         <dest obj="depth" inlet="in"/>
      </net>
      <net>
         <source obj="offset" outlet="out"/>
         <dest obj="interp_1" inlet="i"/>
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