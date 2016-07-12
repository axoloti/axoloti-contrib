<patch-1.0 appVersion="1.0.9">
   <comment type="patch/comment" x="42" y="14" text="-------- Stereo/ping-pong syncable delay --------"/>
   <comment type="patch/comment" x="686" y="14" text="TIme control is bipolar in synced modes"/>
   <obj type="drj/math/&gt; const i" uuid="a498caeb4da17a59588d64bcf9d5e9b4a652362f" name="bipolar select" x="728" y="42">
      <params/>
      <attribs>
         <spinner attributeName="value" value="1"/>
      </attribs>
   </obj>
   <obj type="math/-c" uuid="bc70bed87e5405985ade03f4806b9450609a9093" name="offset l" x="1008" y="70">
      <params>
         <frac32.u.map name="c" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="3bcb8a666381ed18b8962eda50b1aa679136f618" name="bip/uni l" x="1078" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="time_l" x="938" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="pre_filter" x="140" y="112">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="lp" x="252" y="112">
      <params>
         <frac32.u.map name="value" onParent="true" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="hp" x="336" y="112">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="hp_enable" x="420" y="112">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="ping" x="532" y="112">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="feedback" x="616" y="112">
      <params>
         <frac32.u.map name="value" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="time" x="728" y="112">
      <params>
         <frac32.u.map name="value" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="drj/ctrl/fadeout_xor" uuid="aa7e7d7f29093c95ce4aed72244d118ad4d46692" name="time_diff" x="812" y="112">
      <params>
         <frac32.s.map name="lr" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dry wet" x="1176" y="112">
      <params>
         <frac32.u.map name="value" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="time_r" x="938" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/-c" uuid="bc70bed87e5405985ade03f4806b9450609a9093" name="offset r" x="1008" y="168">
      <params>
         <frac32.u.map name="c" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="3bcb8a666381ed18b8962eda50b1aa679136f618" name="bip/uni r" x="1078" y="168">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="140" y="210" text="Pre delay filter"/>
   <comment type="patch/comment" x="252" y="210" text="Feedback LP and HP filters"/>
   <comment type="patch/comment" x="420" y="210" text="Enable hi pass"/>
   <comment type="patch/comment" x="532" y="210" text="Stereo/Ping"/>
   <comment type="patch/comment" x="616" y="210" text="Feedback gain"/>
   <comment type="patch/comment" x="728" y="210" text="Delay time"/>
   <comment type="patch/comment" x="1176" y="210" text="Dry/wet mix"/>
   <comment type="patch/comment" x="784" y="224" text="L/R time diff, shortens l xor r"/>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="in_l" x="42" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="filter_mix_l" x="168" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/lp1 m" uuid="18b561d14f9175f5380e6a1d9d55ca41e0e61974" name="lp_l" x="252" y="266">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/hp1 m" uuid="db72e08c265817674e56af3855bfca7a58b65e87" name="hp_l" x="336" y="266">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="539c246f4c360ac476e128cfbfa84348fb7f7e73" name="hp select l" x="420" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_fb_l" x="532" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="c16a625a661f40e4b359db604dcd00b3befcdbe3" name="vca_l" x="616" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="del_mix_l" x="686" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="delay/write sdram" uuid="5ae03f8d7b815edcfc40585d8bbac2ed48460fba" name="write_l" x="770" y="266">
      <params/>
      <attribs>
         <combo attributeName="size" selection="65536 (1.36s)"/>
      </attribs>
   </obj>
   <obj type="drj/delay/read_sync" uuid="9abca43569373145e559ad309eaf65a47b14cb54" name="left" x="910" y="266">
      <params>
         <int32 name="clockdiv" onParent="true" value="12"/>
         <frac32.u.map name="time" value="0.0"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="write_l"/>
         <combo attributeName="clocksource" selection="Internal"/>
         <combo attributeName="device" selection="omni"/>
      </attribs>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_l" x="1092" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="out_l" x="1190" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="demux/demux 2" uuid="f48c5f63c31c60c077648e2a0886e592e4fa9434" name="pre select l" x="140" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="in_r" x="42" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="filter_mix_r" x="168" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/lp1 m" uuid="18b561d14f9175f5380e6a1d9d55ca41e0e61974" name="lp_r" x="252" y="490">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/hp1 m" uuid="db72e08c265817674e56af3855bfca7a58b65e87" name="hp_r" x="336" y="490">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="539c246f4c360ac476e128cfbfa84348fb7f7e73" name="hp select r" x="420" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_fb_r" x="532" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="c16a625a661f40e4b359db604dcd00b3befcdbe3" name="vca_r" x="616" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="del_mix_r" x="686" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="delay/write sdram" uuid="5ae03f8d7b815edcfc40585d8bbac2ed48460fba" name="write_r" x="770" y="490">
      <params/>
      <attribs>
         <combo attributeName="size" selection="65536 (1.36s)"/>
      </attribs>
   </obj>
   <obj type="drj/delay/read_sync" uuid="9abca43569373145e559ad309eaf65a47b14cb54" name="rigth" x="910" y="490">
      <params>
         <int32 name="clockdiv" onParent="true" value="12"/>
         <frac32.u.map name="time" value="0.0"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="write_r"/>
         <combo attributeName="clocksource" selection="Internal"/>
         <combo attributeName="device" selection="omni"/>
      </attribs>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_r" x="1092" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="out_r" x="1190" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="demux/demux 2" uuid="f48c5f63c31c60c077648e2a0886e592e4fa9434" name="pre select r" x="140" y="560">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="504" y="616" text="Clock source selection"/>
   <comment type="patch/comment" x="742" y="616" text="Clock divider selection"/>
   <comment type="patch/comment" x="280" y="630" text="External clock input"/>
   <comment type="patch/comment" x="504" y="630" text="0,1,2,3,4 =&gt; int, int, 24ppq, midi, midi-omni"/>
   <comment type="patch/comment" x="742" y="630" text="0,1..N =&gt; default (12), N"/>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="24ppq" x="280" y="644">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="clk_select" x="504" y="644">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="clk_div" x="742" y="644">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="lp" outlet="out"/>
         <dest obj="lp_r" inlet="freq"/>
         <dest obj="lp_l" inlet="freq"/>
      </net>
      <net>
         <source obj="hp" outlet="out"/>
         <dest obj="hp_r" inlet="freq"/>
         <dest obj="hp_l" inlet="freq"/>
      </net>
      <net>
         <source obj="in_r" outlet="inlet"/>
         <dest obj="xfade_r" inlet="i1"/>
         <dest obj="pre select r" inlet="i"/>
      </net>
      <net>
         <source obj="feedback" outlet="out"/>
         <dest obj="vca_l" inlet="b"/>
         <dest obj="vca_r" inlet="b"/>
      </net>
      <net>
         <source obj="dry wet" outlet="out"/>
         <dest obj="xfade_l" inlet="c"/>
         <dest obj="xfade_r" inlet="c"/>
      </net>
      <net>
         <source obj="ping" outlet="out"/>
         <dest obj="xfade_fb_r" inlet="c"/>
         <dest obj="xfade_fb_l" inlet="c"/>
      </net>
      <net>
         <source obj="left" outlet="out"/>
         <dest obj="xfade_l" inlet="i2"/>
         <dest obj="filter_mix_l" inlet="in1"/>
      </net>
      <net>
         <source obj="xfade_l" outlet="o"/>
         <dest obj="out_l" inlet="outlet"/>
      </net>
      <net>
         <source obj="rigth" outlet="out"/>
         <dest obj="xfade_r" inlet="i2"/>
         <dest obj="filter_mix_r" inlet="in1"/>
      </net>
      <net>
         <source obj="xfade_r" outlet="o"/>
         <dest obj="out_r" inlet="outlet"/>
      </net>
      <net>
         <source obj="time" outlet="out"/>
         <dest obj="time_l" inlet="a"/>
         <dest obj="time_r" inlet="a"/>
      </net>
      <net>
         <source obj="xfade_fb_r" outlet="o"/>
         <dest obj="vca_r" inlet="a"/>
      </net>
      <net>
         <source obj="xfade_fb_l" outlet="o"/>
         <dest obj="vca_l" inlet="a"/>
      </net>
      <net>
         <source obj="vca_r" outlet="result"/>
         <dest obj="del_mix_r" inlet="in1"/>
      </net>
      <net>
         <source obj="del_mix_r" outlet="out"/>
         <dest obj="write_r" inlet="in"/>
      </net>
      <net>
         <source obj="del_mix_l" outlet="out"/>
         <dest obj="write_l" inlet="in"/>
      </net>
      <net>
         <source obj="vca_l" outlet="result"/>
         <dest obj="del_mix_l" inlet="in1"/>
      </net>
      <net>
         <source obj="lp_r" outlet="out"/>
         <dest obj="hp_r" inlet="in"/>
         <dest obj="hp select r" inlet="i1"/>
      </net>
      <net>
         <source obj="lp_l" outlet="out"/>
         <dest obj="hp_l" inlet="in"/>
         <dest obj="hp select l" inlet="i1"/>
      </net>
      <net>
         <source obj="hp select r" outlet="o"/>
         <dest obj="xfade_fb_r" inlet="i1"/>
         <dest obj="xfade_fb_l" inlet="i2"/>
      </net>
      <net>
         <source obj="hp_enable" outlet="o"/>
         <dest obj="hp select r" inlet="s"/>
         <dest obj="hp select l" inlet="s"/>
      </net>
      <net>
         <source obj="hp_l" outlet="out"/>
         <dest obj="hp select l" inlet="i2"/>
      </net>
      <net>
         <source obj="hp_r" outlet="out"/>
         <dest obj="hp select r" inlet="i2"/>
      </net>
      <net>
         <source obj="in_l" outlet="inlet"/>
         <dest obj="xfade_l" inlet="i1"/>
         <dest obj="pre select l" inlet="i"/>
      </net>
      <net>
         <source obj="filter_mix_l" outlet="out"/>
         <dest obj="lp_l" inlet="in"/>
      </net>
      <net>
         <source obj="pre select l" outlet="o0"/>
         <dest obj="del_mix_l" inlet="in2"/>
      </net>
      <net>
         <source obj="pre select l" outlet="o1"/>
         <dest obj="filter_mix_l" inlet="in2"/>
      </net>
      <net>
         <source obj="pre_filter" outlet="o"/>
         <dest obj="pre select l" inlet="s"/>
         <dest obj="pre select r" inlet="s"/>
      </net>
      <net>
         <source obj="pre select r" outlet="o1"/>
         <dest obj="filter_mix_r" inlet="in2"/>
      </net>
      <net>
         <source obj="pre select r" outlet="o0"/>
         <dest obj="del_mix_r" inlet="in2"/>
      </net>
      <net>
         <source obj="filter_mix_r" outlet="out"/>
         <dest obj="lp_r" inlet="in"/>
      </net>
      <net>
         <source obj="hp select l" outlet="o"/>
         <dest obj="xfade_fb_l" inlet="i1"/>
         <dest obj="xfade_fb_r" inlet="i2"/>
      </net>
      <net>
         <source obj="time_l" outlet="result"/>
         <dest obj="bip/uni l" inlet="i1"/>
         <dest obj="offset l" inlet="in"/>
      </net>
      <net>
         <source obj="time_r" outlet="result"/>
         <dest obj="bip/uni r" inlet="i1"/>
         <dest obj="offset r" inlet="in"/>
      </net>
      <net>
         <source obj="time_diff" outlet="lgain"/>
         <dest obj="time_l" inlet="b"/>
      </net>
      <net>
         <source obj="time_diff" outlet="rgain"/>
         <dest obj="time_r" inlet="b"/>
      </net>
      <net>
         <source obj="clk_select" outlet="inlet"/>
         <dest obj="left" inlet="clkoverride"/>
         <dest obj="rigth" inlet="clkoverride"/>
         <dest obj="bipolar select" inlet="in"/>
      </net>
      <net>
         <source obj="clk_div" outlet="inlet"/>
         <dest obj="left" inlet="divoverride"/>
         <dest obj="rigth" inlet="divoverride"/>
      </net>
      <net>
         <source obj="24ppq" outlet="inlet"/>
         <dest obj="left" inlet="24ppq"/>
         <dest obj="rigth" inlet="24ppq"/>
      </net>
      <net>
         <source obj="offset r" outlet="out"/>
         <dest obj="bip/uni r" inlet="i2"/>
      </net>
      <net>
         <source obj="bipolar select" outlet="out"/>
         <dest obj="bip/uni l" inlet="s"/>
         <dest obj="bip/uni r" inlet="s"/>
      </net>
      <net>
         <source obj="offset l" outlet="out"/>
         <dest obj="bip/uni l" inlet="i2"/>
      </net>
      <net>
         <source obj="bip/uni l" outlet="o"/>
         <dest obj="left" inlet="time"/>
      </net>
      <net>
         <source obj="bip/uni r" outlet="o"/>
         <dest obj="rigth" inlet="time"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author>Are Leistad</Author>
      <License>BSD</License>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>1</x>
      <y>2</y>
      <width>1437</width>
      <height>870</height>
   </windowPos>
</patch-1.0>