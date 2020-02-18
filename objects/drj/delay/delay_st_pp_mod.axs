<patch-1.0 appVersion="1.0.9">
   <comment type="patch/comment" x="574" y="14" text="-------- Sterao/ping-pong mod delay --------"/>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="in_l" x="98" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="filter_mix_l" x="210" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/lp1 m" uuid="18b561d14f9175f5380e6a1d9d55ca41e0e61974" name="lp_l" x="294" y="56">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/hp1 m" uuid="db72e08c265817674e56af3855bfca7a58b65e87" name="hp_l" x="378" y="56">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="539c246f4c360ac476e128cfbfa84348fb7f7e73" name="hp select l" x="462" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_fb_l" x="574" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="c16a625a661f40e4b359db604dcd00b3befcdbe3" name="vca_l" x="658" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="del_mix_l" x="728" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="delay/write sdram" uuid="5ae03f8d7b815edcfc40585d8bbac2ed48460fba" name="write_l" x="812" y="56">
      <params/>
      <attribs>
         <combo attributeName="size" selection="65536 (1.36s)"/>
      </attribs>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_1" x="980" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="delay/read interp" uuid="e3d8b8823ab551c588659520bf6cc25c630466c7" name="read_l" x="1064" y="56">
      <params>
         <frac32.u.map name="time" value="0.0"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="write_l"/>
      </attribs>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_l" x="1246" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="out_l" x="1372" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="time limiter l" x="952" y="112">
      <params>
         <frac32.u.map name="amp" value="62.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="demux/demux 2" uuid="f48c5f63c31c60c077648e2a0886e592e4fa9434" name="pre select l" x="182" y="126">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="868" y="196" text="Limit to avoid delay time wrap around"/>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="mod amt limiter" x="1134" y="196">
      <params>
         <frac32.u.map name="amp" value="1.2849993705749512"/>
      </params>
      <attribs/>
   </obj>
   <obj type="drj/lfo/sin_ph_b" uuid="75f7330c26a11233215dcdd3ba3b9008545c1daa9" name="sin_ph_b_1" x="1302" y="210">
      <params>
         <frac32.s.map name="pitch" value="-64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="mod gain l" x="980" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="yime mix l" x="1050" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="time_l" x="980" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="pre_filter" x="182" y="294">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="lp" x="294" y="294">
      <params>
         <frac32.u.map name="value" onParent="true" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="hp" x="378" y="294">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="hp_enable" x="462" y="294">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="ping" x="574" y="294">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="feedback" x="658" y="294">
      <params>
         <frac32.u.map name="value" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="time" x="770" y="294">
      <params>
         <frac32.u.map name="value" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="drj/ctrl/fadeout_xor" uuid="aa7e7d7f29093c95ce4aed72244d118ad4d46692" name="time_diff" x="854" y="294">
      <params>
         <frac32.s.map name="lr" onParent="true" value="2.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="mod amt" x="1050" y="294">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="mod freq" x="1134" y="294">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="mod phase" x="1218" y="294">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dry wet" x="1414" y="294">
      <params>
         <frac32.u.map name="value" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="time_r" x="980" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="drj/lfo/sin_ph_b" uuid="75f7330c26a11233215dcdd3ba3b9008545c1daa9" name="sin_ph_b_2" x="1302" y="350">
      <params>
         <frac32.s.map name="pitch" value="-64.0"/>
      </params>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="182" y="392" text="Pre delay filter"/>
   <comment type="patch/comment" x="294" y="392" text="Feedback LP and HP filters"/>
   <comment type="patch/comment" x="462" y="392" text="Enable hi pass"/>
   <comment type="patch/comment" x="574" y="392" text="Stereo/Ping"/>
   <comment type="patch/comment" x="658" y="392" text="Feedback gain"/>
   <comment type="patch/comment" x="770" y="392" text="Delay time"/>
   <obj type="math/inv" uuid="565521d3699b36d8095aa1c79b9ad0046fb133ce" name="inv_2" x="1232" y="392">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="1414" y="392" text="Dry/wet mix"/>
   <comment type="patch/comment" x="854" y="406" text="L/R time diff"/>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="mod gain r" x="980" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="time mix r" x="1050" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="in_r" x="98" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="filter_mix_r" x="210" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/lp1 m" uuid="18b561d14f9175f5380e6a1d9d55ca41e0e61974" name="lp_r" x="294" y="476">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/hp1 m" uuid="db72e08c265817674e56af3855bfca7a58b65e87" name="hp_r" x="378" y="476">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="539c246f4c360ac476e128cfbfa84348fb7f7e73" name="hp select r" x="462" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_fb_r" x="574" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="c16a625a661f40e4b359db604dcd00b3befcdbe3" name="vca_r" x="658" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="del_mix_r" x="728" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="delay/write sdram" uuid="5ae03f8d7b815edcfc40585d8bbac2ed48460fba" name="write_r" x="812" y="476">
      <params/>
      <attribs>
         <combo attributeName="size" selection="65536 (1.36s)"/>
      </attribs>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_2" x="980" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="delay/read interp" uuid="e3d8b8823ab551c588659520bf6cc25c630466c7" name="read_r" x="1064" y="476">
      <params>
         <frac32.u.map name="time" value="0.0"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="write_r"/>
      </attribs>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_r" x="1246" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="out_r" x="1372" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="time limiter r" x="952" y="532">
      <params>
         <frac32.u.map name="amp" value="62.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="demux/demux 2" uuid="f48c5f63c31c60c077648e2a0886e592e4fa9434" name="pre select r" x="182" y="546">
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
         <source obj="read_l" outlet="out"/>
         <dest obj="xfade_l" inlet="i2"/>
         <dest obj="filter_mix_l" inlet="in1"/>
      </net>
      <net>
         <source obj="xfade_l" outlet="o"/>
         <dest obj="out_l" inlet="outlet"/>
      </net>
      <net>
         <source obj="read_r" outlet="out"/>
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
         <source obj="time_diff" outlet="lgain"/>
         <dest obj="time_l" inlet="b"/>
      </net>
      <net>
         <source obj="time_diff" outlet="rgain"/>
         <dest obj="time_r" inlet="b"/>
      </net>
      <net>
         <source obj="time limiter r" outlet="out"/>
         <dest obj="interp_2" inlet="i"/>
      </net>
      <net>
         <source obj="interp_2" outlet="o"/>
         <dest obj="read_r" inlet="time"/>
      </net>
      <net>
         <source obj="time limiter l" outlet="out"/>
         <dest obj="interp_1" inlet="i"/>
      </net>
      <net>
         <source obj="interp_1" outlet="o"/>
         <dest obj="read_l" inlet="time"/>
      </net>
      <net>
         <source obj="time_r" outlet="result"/>
         <dest obj="time mix r" inlet="in1"/>
      </net>
      <net>
         <source obj="time_l" outlet="result"/>
         <dest obj="yime mix l" inlet="in1"/>
      </net>
      <net>
         <source obj="mod phase" outlet="out"/>
         <dest obj="sin_ph_b_1" inlet="phase"/>
         <dest obj="inv_2" inlet="in"/>
      </net>
      <net>
         <source obj="inv_2" outlet="out"/>
         <dest obj="sin_ph_b_2" inlet="phase"/>
      </net>
      <net>
         <source obj="mod amt limiter" outlet="out"/>
         <dest obj="mod gain r" inlet="b"/>
         <dest obj="mod gain l" inlet="b"/>
      </net>
      <net>
         <source obj="sin_ph_b_1" outlet="sine"/>
         <dest obj="mod gain l" inlet="a"/>
      </net>
      <net>
         <source obj="sin_ph_b_2" outlet="sine"/>
         <dest obj="mod gain r" inlet="a"/>
      </net>
      <net>
         <source obj="mod gain l" outlet="result"/>
         <dest obj="yime mix l" inlet="in2"/>
      </net>
      <net>
         <source obj="mod gain r" outlet="result"/>
         <dest obj="time mix r" inlet="in2"/>
      </net>
      <net>
         <source obj="mod freq" outlet="out"/>
         <dest obj="sin_ph_b_1" inlet="pitch"/>
         <dest obj="sin_ph_b_2" inlet="pitch"/>
      </net>
      <net>
         <source obj="yime mix l" outlet="out"/>
         <dest obj="time limiter l" inlet="in"/>
      </net>
      <net>
         <source obj="time mix r" outlet="out"/>
         <dest obj="time limiter r" inlet="in"/>
      </net>
      <net>
         <source obj="mod amt" outlet="out"/>
         <dest obj="mod amt limiter" inlet="in"/>
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
      <x>229</x>
      <y>113</y>
      <width>1607</width>
      <height>830</height>
   </windowPos>
</patch-1.0>