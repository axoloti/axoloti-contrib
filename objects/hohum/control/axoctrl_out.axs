<patch-1.0 appVersion="1.0.12">
   <comment type="patch/comment" x="140" y="14" text="Hohum Axoctrl Outputs"/>
   <comment type="patch/comment" x="140" y="28" text="Main Axoctrl object for setting up patches with the Axoctrl"/>
   <comment type="patch/comment" x="140" y="42" text="NOTE: This patch does not handle the inputs. Use axoctrl_in for the inputs"/>
   <comment type="patch/comment" x="154" y="70" text="For more info on Axoctrl, please visit:"/>
   <comment type="patch/comment" x="28" y="84" text="Power on led"/>
   <hyperlink type="patch/hyperlink" name="https://hohumlab.com" x="154" y="84"/>
   <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="const_on" x="28" y="98">
      <params/>
      <attribs>
         <spinner attributeName="value" value="1"/>
      </attribs>
   </obj>
   <obj type="hohum/control/axoctrl_core" uuid="b41f1d76-cac6-4da9-9f43-74cdf15eaa8c" name="axoctrl_core_obj" x="294" y="126">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="420" y="154" text="Prev patch / LFO sync divide"/>
   <comment type="patch/comment" x="182" y="168" text="Midi active message"/>
   <comment type="patch/comment" x="420" y="168" text="Next patch / LFO sync multiply"/>
   <obj type="phi/logic/xor 4" uuid="4d70bbe27bfe5c2f07f9a80c0efda9ae9b8e771c" name="power led on off" x="98" y="182">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="224" y="182" text="LFO shape"/>
   <comment type="patch/comment" x="420" y="196" text="LFO waveshape / Sync LFO"/>
   <comment type="patch/comment" x="420" y="224" text="Output level"/>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="MIDI_GATE" x="98" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="PATCH_NAME" x="672" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/or 2" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="axo_ctrl_or" x="196" y="294">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="420" y="294" text="LFO frequency"/>
   <comment type="patch/comment" x="420" y="308" text="LFO wave smoother"/>
   <comment type="patch/comment" x="420" y="322" text="LFO Intensity"/>
   <obj type="hohum/control/axoctrl_button" uuid="8806631a-ec84-448e-95a6-fdef3bbdc121" name="axo_switch_LFO_mode" x="602" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="#17 MOD" x="112" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="hohum/disp/axoctrl_disp" uuid="7893735a-830f-49d3-bde4-ce0f598cd57e" name="axo_disp" x="812" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_1" x="966" y="392">
      <params/>
      <attribs>
         <spinner attributeName="value" value="64"/>
      </attribs>
   </obj>
   <obj type="hohum/control/axoctrl_button" uuid="8806631a-ec84-448e-95a6-fdef3bbdc121" name="axo_switch_next" x="322" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="hohum/lfo/axoctrl_lfo" uuid="dccdf58e-9e5f-497e-bcda-8bec815e638c" name="axo_lfa" x="504" y="448">
      <params/>
      <attribs/>
   </obj>
   <obj type="hohum/control/axoctrl_button" uuid="8806631a-ec84-448e-95a6-fdef3bbdc121" name="axoswitch_prev" x="322" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="mix_max" x="714" y="490">
      <params>
         <frac32.u.map name="value" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="bb87360199938d53d1183cdc80947ed0a39e3c9a" name="lfo_mix" x="784" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 2 h" uuid="965a945535a206a17296f000802fd0cfaf0e09e0" name="LFO vol on/off" x="896" y="490">
      <params>
         <int32.hradio name="value" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="3bcb8a666381ed18b8962eda50b1aa679136f618" name="mux_2" x="1064" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="hohum/control/axoctrl_switch" uuid="da392db6-f143-4f20-8299-dcb746feff83" name="axo_switch_prev_next" x="504" y="560">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_1" x="1134" y="574">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="OUT_L" x="714" y="602">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="OUT_R" x="784" y="602">
      <params/>
      <attribs/>
   </obj>
   <obj type="hohum/mixer/axoctrl_mixer" uuid="e4f7a8f4-d875-4130-96f5-2487b9e58abd" name="axo_mix" x="910" y="616">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="axo_lfa" outlet="LFO OUT"/>
         <dest obj="lfo_mix" inlet="i2"/>
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
         <source obj="lfo_mix" outlet="o"/>
         <dest obj="axoctrl_core_obj" inlet="#3 LED"/>
         <dest obj="mux_2" inlet="i1"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="MIDI_GATE" outlet="inlet"/>
         <dest obj="axo_ctrl_or" inlet="i1"/>
      </net>
      <net>
         <source obj="mix_max" outlet="out"/>
         <dest obj="lfo_mix" inlet="i1"/>
      </net>
      <net>
         <source obj="PATCH_NAME" outlet="inlet"/>
         <dest obj="axo_disp" inlet="PATCH NAME"/>
      </net>
      <net>
         <source obj="axo_ctrl_or" outlet="o"/>
         <dest obj="axoctrl_core_obj" inlet="#2 LED"/>
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#16 PAR"/>
         <dest obj="lfo_mix" inlet="c"/>
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#14 PAR"/>
         <dest obj="axo_lfa" inlet="TIME_PHASE"/>
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#15 PAR"/>
         <dest obj="axo_lfa" inlet="SMOOTH"/>
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
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#7 BUT"/>
         <dest obj="axo_switch_LFO_mode" inlet="button"/>
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#9 PAR"/>
         <dest obj="axo_mix" inlet="VOL"/>
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
         <dest obj="axo_disp" inlet="OSC SCOPE"/>
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
         <dest obj="axo_disp" inlet="LFO_waveform"/>
      </net>
      <net>
         <source obj="axo_switch_LFO_mode" outlet="long"/>
         <dest obj="axo_lfa" inlet="MODE"/>
         <dest obj="axo_disp" inlet="LFO_mode"/>
      </net>
      <net>
         <source obj="#17 MOD" outlet="inlet"/>
         <dest obj="axoctrl_core_obj" inlet="#17 MOD"/>
      </net>
      <net>
         <source obj="LFO vol on/off" outlet="out"/>
         <dest obj="mux_2" inlet="s"/>
      </net>
      <net>
         <source obj="i_1" outlet="out"/>
         <dest obj="mux_2" inlet="i2"/>
      </net>
      <net>
         <source obj="mux_2" outlet="o"/>
         <dest obj="axo_mix" inlet="LFO"/>
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
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>0</x>
      <y>0</y>
      <width>1440</width>
      <height>900</height>
   </windowPos>
</patch-1.0>