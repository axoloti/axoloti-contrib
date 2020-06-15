<patch-1.0 appVersion="1.0.12">
   <comment type="patch/comment" x="84" y="28" text="Hohum Axoctrl"/>
   <comment type="patch/comment" x="84" y="42" text="Main Axoctrl object for setting up patches with the Axoctrl"/>
   <comment type="patch/comment" x="84" y="56" text="Features: built-in LFO (can be toggled), patch name display, custom parameter names + value on display, patch switching, etc."/>
   <comment type="patch/comment" x="84" y="112" text="For more info on Axoctrl, please visit:"/>
   <hyperlink type="patch/hyperlink" name="https://hohumlab.com" x="84" y="126"/>
   <comment type="patch/comment" x="1092" y="126" text="Audio in"/>
   <obj type="audio/in stereo" uuid="99848ad6d90a8e615e83b2e619cfc806f28e7281" name="IN_STEREO" x="1092" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="IN_L" x="1176" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="IN_R" x="1260" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="PATCH" x="70" y="196">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="728" y="238" text="Power on led"/>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="#17 MOD" x="70" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="const_on" x="728" y="252">
      <params/>
      <attribs>
         <spinner attributeName="value" value="1"/>
      </attribs>
   </obj>
   <comment type="patch/comment" x="70" y="308" text="Custom names for parameters"/>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="PAR 8" x="70" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="PAR 10" x="168" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="PAR 11" x="266" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="PAR 12" x="364" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="PAR 13" x="462" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="MOD 18" x="560" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="hohum/control/axoctrl_core" uuid="19ebcb61-7c12-4e2e-a50f-89d511735d94" name="axoctrl_core_obj" x="882" y="336">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="1036" y="364" text="Prev patch / LFO sync divide"/>
   <obj type="phi/logic/xor 4" uuid="4d70bbe27bfe5c2f07f9a80c0efda9ae9b8e771c" name="power led on off" x="672" y="378">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="770" y="378" text="Midi active message"/>
   <comment type="patch/comment" x="1036" y="378" text="Next patch / LFO sync multiply"/>
   <comment type="patch/comment" x="812" y="392" text="LFO shape"/>
   <obj type="hohum/disp/auto_muxer" uuid="544250aa-1432-46ea-9294-7367d4864a60" name="auto_muxer_1" x="1204" y="392">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/change" uuid="96e39ae624c3f3c952cec4a95e1986ee0104f718" name="change_1" x="1344" y="392">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="1036" y="406" text="LFO waveshape / Sync LFO"/>
   <comment type="patch/comment" x="1036" y="434" text="Output level"/>
   <obj type="logic/change" uuid="96e39ae624c3f3c952cec4a95e1986ee0104f718" name="change_2" x="1344" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/or 2" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="or_2" x="1428" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/send i" uuid="452e1d7a88de691f954015e6fec2f6994e1b35fc" name="send_par_value" x="1498" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/send i" uuid="452e1d7a88de691f954015e6fec2f6994e1b35fc" name="send_par_index" x="1568" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="MIDI_GATE" x="700" y="504">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/or 2" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="axo_ctrl_or" x="784" y="504">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="1036" y="504" text="LFO frequency"/>
   <comment type="patch/comment" x="1036" y="518" text="LFO wave smoother"/>
   <comment type="patch/comment" x="1036" y="532" text="LFO Intensity"/>
   <obj type="jaffa/string/c4" uuid="e7c37b3e-e478-4967-8b0b-fc400c050e6a" name="param_names" x="182" y="588">
      <params/>
      <attribs>
         <table attributeName="1" table="Volume"/>
         <table attributeName="2" table="LFO Frequency"/>
         <table attributeName="3" table="LFO Wave smoother"/>
         <table attributeName="4" table="LFO Mix"/>
      </attribs>
   </obj>
   <obj type="patch/recv i" uuid="c57c3fb0d08bcb566403f4fb43426338bd37ce1f" name="recv_2" x="378" y="588">
      <params/>
      <attribs>
         <objref attributeName="sender" obj="send_par_index"/>
      </attribs>
   </obj>
   <obj type="patch/recv i" uuid="c57c3fb0d08bcb566403f4fb43426338bd37ce1f" name="recv_1" x="462" y="588">
      <params/>
      <attribs>
         <objref attributeName="sender" obj="send_par_value"/>
      </attribs>
   </obj>
   <obj type="hohum/disp/parameter_muxer" uuid="d012d516-2dea-4331-bf1e-fa3994aa363b" name="param_muxer" x="630" y="588">
      <params/>
      <attribs/>
   </obj>
   <obj type="hohum/control/axoctrl_button" uuid="8806631a-ec84-448e-95a6-fdef3bbdc121" name="axo_switch_LFO_mode" x="1162" y="630">
      <params/>
      <attribs/>
   </obj>
   <obj type="hohum/disp/axoctrl_disp" uuid="7d4c5cb5-aba3-4f3e-8171-d789cd6daf34" name="axoctrl_display" x="1400" y="630">
      <params/>
      <attribs/>
   </obj>
   <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_1" x="1554" y="658">
      <params/>
      <attribs>
         <spinner attributeName="value" value="64"/>
      </attribs>
   </obj>
   <obj type="hohum/control/axoctrl_button" uuid="8806631a-ec84-448e-95a6-fdef3bbdc121" name="axo_switch_next" x="910" y="686">
      <params/>
      <attribs/>
   </obj>
   <obj type="hohum/lfo/axoctrl_lfo" uuid="dccdf58e-9e5f-497e-bcda-8bec815e638c" name="axo_lfa" x="1092" y="714">
      <params/>
      <attribs/>
   </obj>
   <obj type="hohum/control/axoctrl_button" uuid="8806631a-ec84-448e-95a6-fdef3bbdc121" name="axoswitch_prev" x="910" y="742">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="mix_max" x="1302" y="756">
      <params>
         <frac32.u.map name="value" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="bb87360199938d53d1183cdc80947ed0a39e3c9a" name="xfade_1" x="1372" y="756">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 2 h" uuid="965a945535a206a17296f000802fd0cfaf0e09e0" name="LFO vol on/off" x="1484" y="756">
      <params>
         <int32.hradio name="value" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="3bcb8a666381ed18b8962eda50b1aa679136f618" name="mux_1" x="1610" y="756">
      <params/>
      <attribs/>
   </obj>
   <obj type="hohum/control/axoctrl_switch" uuid="da392db6-f143-4f20-8299-dcb746feff83" name="axo_switch_prev_next" x="1092" y="826">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="LFO" x="1484" y="826">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="OUT_L" x="1344" y="882">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="OUT_R" x="1414" y="882">
      <params/>
      <attribs/>
   </obj>
   <obj type="hohum/mixer/axoctrl_mixer" uuid="e4f7a8f4-d875-4130-96f5-2487b9e58abd" name="axo_mix" x="1484" y="882">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="700" y="938" text="Custom button"/>
   <comment type="patch/comment" x="812" y="938" text="Custom parameters"/>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="#6 BUT" x="700" y="952">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="#8 PAR" x="812" y="952">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="#10 PAR" x="896" y="952">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="#11 PAR" x="980" y="952">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="#12 PAR" x="1064" y="952">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="#13 PAR" x="1148" y="952">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="#18 MOD" x="812" y="994">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="axo_lfa" outlet="LFO OUT"/>
         <dest obj="xfade_1" inlet="i2"/>
      </net>
      <net>
         <source obj="OUT_R" outlet="inlet"/>
         <dest obj="axo_mix" inlet="IN_R"/>
      </net>
      <net>
         <source obj="OUT_L" outlet="inlet"/>
         <dest obj="axo_mix" inlet="IN_L"/>
      </net>
      <net>
         <source obj="xfade_1" outlet="o"/>
         <dest obj="axoctrl_core_obj" inlet="#3 LED"/>
         <dest obj="LFO" inlet="outlet"/>
         <dest obj="mux_1" inlet="i1"/>
      </net>
      <net>
         <source obj="MIDI_GATE" outlet="inlet"/>
         <dest obj="axo_ctrl_or" inlet="i1"/>
      </net>
      <net>
         <source obj="mix_max" outlet="out"/>
         <dest obj="xfade_1" inlet="i1"/>
      </net>
      <net>
         <source obj="PATCH" outlet="inlet"/>
         <dest obj="axoctrl_display" inlet="PATCH NAME"/>
      </net>
      <net>
         <source obj="axo_ctrl_or" outlet="o"/>
         <dest obj="axoctrl_core_obj" inlet="#2 LED"/>
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#16 PAR"/>
         <dest obj="xfade_1" inlet="c"/>
         <dest obj="auto_muxer_1" inlet="i9"/>
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#14 PAR"/>
         <dest obj="axo_lfa" inlet="TIME_PHASE"/>
         <dest obj="auto_muxer_1" inlet="i7"/>
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#15 PAR"/>
         <dest obj="axo_lfa" inlet="SMOOTH"/>
         <dest obj="auto_muxer_1" inlet="i8"/>
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#4 BUT"/>
         <dest obj="power led on off" inlet="i2"/>
         <dest obj="axoswitch_prev" inlet="button"/>
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#5 BUT"/>
         <dest obj="power led on off" inlet="i3"/>
         <dest obj="axo_switch_next" inlet="button"/>
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#6 BUT"/>
         <dest obj="axo_ctrl_or" inlet="i2"/>
         <dest obj="#6 BUT" inlet="outlet"/>
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#7 BUT"/>
         <dest obj="axo_switch_LFO_mode" inlet="button"/>
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#9 PAR"/>
         <dest obj="axo_mix" inlet="VOL"/>
         <dest obj="auto_muxer_1" inlet="i2"/>
      </net>
      <net>
         <source obj="power led on off" outlet="o"/>
         <dest obj="axoctrl_core_obj" inlet="#1 LED"/>
      </net>
      <net>
         <source obj="const_on" outlet="out"/>
         <dest obj="power led on off" inlet="i1"/>
      </net>
      <net>
         <source obj="axo_mix" outlet="SIGNAL"/>
         <dest obj="axoctrl_display" inlet="OSC SCOPE"/>
      </net>
      <net>
         <source obj="axo_switch_next" outlet="long"/>
         <dest obj="axo_switch_prev_next" inlet="next"/>
      </net>
      <net>
         <source obj="axoswitch_prev" outlet="long"/>
         <dest obj="axo_switch_prev_next" inlet="previous"/>
      </net>
      <net>
         <source obj="axo_switch_next" outlet="short"/>
         <dest obj="axo_lfa" inlet="LFO SYNC UP"/>
      </net>
      <net>
         <source obj="axoswitch_prev" outlet="short"/>
         <dest obj="axo_lfa" inlet="LFO SYNC DOWN"/>
      </net>
      <net>
         <source obj="axo_switch_LFO_mode" outlet="short"/>
         <dest obj="axo_lfa" inlet="WAVE"/>
         <dest obj="axoctrl_display" inlet="LFO_waveform"/>
      </net>
      <net>
         <source obj="axo_switch_LFO_mode" outlet="long"/>
         <dest obj="axo_lfa" inlet="MODE"/>
         <dest obj="axoctrl_display" inlet="LFO_mode"/>
      </net>
      <net>
         <source obj="#17 MOD" outlet="inlet"/>
         <dest obj="axoctrl_core_obj" inlet="#17 MOD"/>
      </net>
      <net>
         <source obj="LFO vol on/off" outlet="out"/>
         <dest obj="mux_1" inlet="s"/>
      </net>
      <net>
         <source obj="i_1" outlet="out"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="axo_mix" inlet="LFO"/>
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#8 PAR"/>
         <dest obj="#8 PAR" inlet="outlet"/>
         <dest obj="auto_muxer_1" inlet="i1"/>
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#10 PAR"/>
         <dest obj="#10 PAR" inlet="outlet"/>
         <dest obj="auto_muxer_1" inlet="i3"/>
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#11 PAR"/>
         <dest obj="#11 PAR" inlet="outlet"/>
         <dest obj="auto_muxer_1" inlet="i4"/>
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#12 PAR"/>
         <dest obj="#12 PAR" inlet="outlet"/>
         <dest obj="auto_muxer_1" inlet="i5"/>
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#13 PAR"/>
         <dest obj="#13 PAR" inlet="outlet"/>
         <dest obj="auto_muxer_1" inlet="i6"/>
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#18 MOD"/>
         <dest obj="#18 MOD" inlet="outlet"/>
         <dest obj="auto_muxer_1" inlet="i10"/>
      </net>
      <net>
         <source obj="auto_muxer_1" outlet="out"/>
         <dest obj="send_par_value" inlet="v"/>
         <dest obj="change_1" inlet="in"/>
      </net>
      <net>
         <source obj="auto_muxer_1" outlet="index"/>
         <dest obj="send_par_index" inlet="v"/>
         <dest obj="change_2" inlet="in"/>
      </net>
      <net>
         <source obj="param_muxer" outlet="outlet_1"/>
         <dest obj="axoctrl_display" inlet="PARAM"/>
      </net>
      <net>
         <source obj="MOD 18" outlet="inlet"/>
         <dest obj="param_muxer" inlet="inlet_10"/>
      </net>
      <net>
         <source obj="param_names" outlet="1"/>
         <dest obj="param_muxer" inlet="inlet_2"/>
      </net>
      <net>
         <source obj="param_names" outlet="2"/>
         <dest obj="param_muxer" inlet="inlet_7"/>
      </net>
      <net>
         <source obj="param_names" outlet="3"/>
         <dest obj="param_muxer" inlet="inlet_8"/>
      </net>
      <net>
         <source obj="param_names" outlet="4"/>
         <dest obj="param_muxer" inlet="inlet_9"/>
      </net>
      <net>
         <source obj="PAR 8" outlet="inlet"/>
         <dest obj="param_muxer" inlet="inlet_1"/>
      </net>
      <net>
         <source obj="PAR 10" outlet="inlet"/>
         <dest obj="param_muxer" inlet="inlet_3"/>
      </net>
      <net>
         <source obj="PAR 11" outlet="inlet"/>
         <dest obj="param_muxer" inlet="inlet_4"/>
      </net>
      <net>
         <source obj="PAR 12" outlet="inlet"/>
         <dest obj="param_muxer" inlet="inlet_5"/>
      </net>
      <net>
         <source obj="PAR 13" outlet="inlet"/>
         <dest obj="param_muxer" inlet="inlet_6"/>
      </net>
      <net>
         <source obj="change_1" outlet="trig"/>
         <dest obj="or_2" inlet="i1"/>
      </net>
      <net>
         <source obj="change_2" outlet="trig"/>
         <dest obj="or_2" inlet="i2"/>
      </net>
      <net>
         <source obj="or_2" outlet="o"/>
         <dest obj="axoctrl_display" inlet="param trigger"/>
      </net>
      <net>
         <source obj="IN_STEREO" outlet="left"/>
         <dest obj="IN_L" inlet="outlet"/>
      </net>
      <net>
         <source obj="IN_STEREO" outlet="right"/>
         <dest obj="IN_R" inlet="outlet"/>
      </net>
      <net>
         <source obj="recv_2" outlet="v"/>
         <dest obj="param_muxer" inlet="index"/>
      </net>
      <net>
         <source obj="recv_1" outlet="v"/>
         <dest obj="param_muxer" inlet="value"/>
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
      <License>GPL</License>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>0</x>
      <y>0</y>
      <width>1803</width>
      <height>1178</height>
   </windowPos>
</patch-1.0>
