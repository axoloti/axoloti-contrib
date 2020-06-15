<patch-1.0 appVersion="1.0.12">
   <comment type="patch/comment" x="98" y="14" text="Hohum axoctrl LFO"/>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="dial_1" x="476" y="14">
      <params>
         <frac32.s.map name="value" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="98" y="28" text="LFO functionality of the axoctrl"/>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="TIME_PHASE" x="14" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/lfo/multiLFO" uuid="57c4490e-dad4-4778-8460-32796424a131" name="multiLFO_1" x="364" y="70">
      <params>
         <frac32.s.map name="pitch" value="-41.0"/>
         <bool32.tgl name="frqIn" value="1"/>
         <int32 name="octave" value="1"/>
         <int32 name="hrmSin" value="1"/>
         <int32 name="hrmTri" value="1"/>
         <int32 name="hrmSaw" value="1"/>
         <int32 name="hrmRmp" value="1"/>
         <int32 name="hrmSqr" value="1"/>
         <int32 name="hrmPls" value="1"/>
         <frac32.s.map name="PW" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 4" uuid="96e98d60314b64d05eb68046afa3ddfa42a785c6" name="mux_2" x="560" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="3bcb8a666381ed18b8962eda50b1aa679136f618" name="mux_3" x="644" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="bb87360199938d53d1183cdc80947ed0a39e3c9a" name="lfo fader object" x="756" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="LFO OUT" x="1008" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="SMOOTH" x="14" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="WAVE" x="14" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="MODE" x="14" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/counter" uuid="7a141ba82230e54e5f5cd12da5dbe5a74ba854a5" name="Mode counter" x="546" y="210">
      <params>
         <int32 name="maximum" value="2"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="LFO SYNC UP" x="14" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/smooth" uuid="6c5d08c282bb08bff24af85b4891447f99bcbc97" name="lfo smoother" x="686" y="266">
      <params>
         <frac32.u.map name="time" value="47.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="LFO SYNC DOWN" x="14" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/midi/clock" uuid="660f62c5-2850-483b-b57b-bec2e5c5ce4d" name="midi clock" x="182" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/lfo/tempoSyncedLFO" uuid="75b84958-bc07-418c-b306-9b29a4bdcee1" name="tempoSyncedLFO_1" x="350" y="420">
      <params>
         <int32 name="multiply" value="1"/>
         <int32 name="divide" value="4"/>
         <int32 name="octave" value="0"/>
         <frac32.u.map name="phase" value="0.0"/>
         <frac32.s.map name="PW" value="0.0"/>
         <bool32.tgl name="syncRst" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 4" uuid="96e98d60314b64d05eb68046afa3ddfa42a785c6" name="mux_1" x="560" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/counter" uuid="7a141ba82230e54e5f5cd12da5dbe5a74ba854a5" name="lfo counter" x="182" y="546">
      <params>
         <int32 name="maximum" value="4"/>
      </params>
      <attribs/>
   </obj>
   <obj type="logic/counter" uuid="7a141ba82230e54e5f5cd12da5dbe5a74ba854a5" name="counter_1" x="574" y="630">
      <params>
         <int32 name="maximum" value="4"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="TIME_PHASE" outlet="inlet"/>
         <dest obj="tempoSyncedLFO_1" inlet="phase"/>
         <dest obj="multiLFO_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="counter_1" outlet="o"/>
         <dest obj="mux_1" inlet="s"/>
         <dest obj="mux_2" inlet="s"/>
      </net>
      <net>
         <source obj="tempoSyncedLFO_1" outlet="square"/>
         <dest obj="mux_1" inlet="i3"/>
      </net>
      <net>
         <source obj="tempoSyncedLFO_1" outlet="triangle"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="tempoSyncedLFO_1" outlet="sine"/>
         <dest obj="mux_1" inlet="i1"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="mux_3" inlet="i2"/>
      </net>
      <net>
         <source obj="mux_2" outlet="o"/>
         <dest obj="mux_3" inlet="i1"/>
      </net>
      <net>
         <source obj="multiLFO_1" outlet="sqr"/>
         <dest obj="mux_2" inlet="i3"/>
      </net>
      <net>
         <source obj="multiLFO_1" outlet="tri"/>
         <dest obj="mux_2" inlet="i2"/>
      </net>
      <net>
         <source obj="Mode counter" outlet="o"/>
         <dest obj="mux_3" inlet="s"/>
      </net>
      <net>
         <source obj="LFO SYNC UP" outlet="inlet"/>
         <dest obj="lfo counter" inlet="trig"/>
      </net>
      <net>
         <source obj="dial_1" outlet="out"/>
         <dest obj="mux_2" inlet="i0"/>
         <dest obj="mux_1" inlet="i0"/>
      </net>
      <net>
         <source obj="midi clock" outlet="trig4ppq"/>
         <dest obj="tempoSyncedLFO_1" inlet="sync"/>
      </net>
      <net>
         <source obj="lfo counter" outlet="o"/>
         <dest obj="tempoSyncedLFO_1" inlet="multiply"/>
         <dest obj="tempoSyncedLFO_1" inlet="divide"/>
      </net>
      <net>
         <source obj="LFO SYNC DOWN" outlet="inlet"/>
         <dest obj="lfo counter" inlet="r"/>
      </net>
      <net>
         <source obj="mux_3" outlet="o"/>
         <dest obj="lfo smoother" inlet="in"/>
         <dest obj="lfo fader object" inlet="i1"/>
      </net>
      <net>
         <source obj="MODE" outlet="inlet"/>
         <dest obj="Mode counter" inlet="trig"/>
      </net>
      <net>
         <source obj="lfo smoother" outlet="out"/>
         <dest obj="lfo fader object" inlet="i2"/>
      </net>
      <net>
         <source obj="SMOOTH" outlet="inlet"/>
         <dest obj="lfo fader object" inlet="c"/>
      </net>
      <net>
         <source obj="WAVE" outlet="inlet"/>
         <dest obj="counter_1" inlet="trig"/>
      </net>
      <net>
         <source obj="lfo fader object" outlet="o"/>
         <dest obj="LFO OUT" inlet="outlet"/>
      </net>
      <net>
         <source obj="multiLFO_1" outlet="sine"/>
         <dest obj="mux_2" inlet="i1"/>
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
      <x>171</x>
      <y>47</y>
      <width>1155</width>
      <height>831</height>
   </windowPos>
</patch-1.0>