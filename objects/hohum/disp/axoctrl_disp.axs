<patch-1.0 appVersion="1.0.12">
   <comment type="patch/comment" x="126" y="14" text="Hohum Axoctrl display"/>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="OSC SCOPE" x="1050" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="tiar/disp/scope" uuid="0991142e-58fa-47e6-9f89-32da05f9fe41" name="axoctrlscope" x="1120" y="14">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="126" y="28" text="Displays scope and patch name on display of axoctrl"/>
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="PATCH NAME" x="14" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="777491e645978e331fcbab6610f52c1aaa5ade0e" name="title mux" x="602" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="string/c" uuid="4aa90a90c435a742ddfa152d232883fc5b2f1b3" name="Start up line 1" x="742" y="56">
      <params/>
      <attribs>
         <table attributeName="str" table=" HOHUM LAB"/>
      </attribs>
   </obj>
   <obj type="string/c" uuid="4aa90a90c435a742ddfa152d232883fc5b2f1b3" name="Start up line 2" x="742" y="126">
      <params/>
      <attribs>
         <table attributeName="str" table="  Axoctrl"/>
      </attribs>
   </obj>
   <obj type="logic/xor 2" uuid="7902b0001a2672a9008b3882d3681ec3e33fec74" name="xor object" x="448" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="timer/delayedpulseduration" uuid="3b7bf0a7b7f89fad06a734667f48de051deb5c78" name="mode long pulse" x="182" y="182">
      <params>
         <frac32.s.map name="delay" value="-64.0"/>
         <frac32.s.map name="pulselength" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="tiar/HW/OLED128x64" uuid="5bde8c3d-fe37-40b3-848e-edb192767bc8" name="OLED128x64_1" x="966" y="196">
      <params/>
      <attribs>
         <objref attributeName="scope" obj="axoctrlscope"/>
         <combo attributeName="type" selection="SH1106"/>
         <combo attributeName="I2CADDR" selection="0x3C"/>
      </attribs>
   </obj>
   <obj type="tiar/string/mux2" uuid="30532718-8506-494c-a058-054f0cb01027" name="startup mux" x="798" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="LFO_mode" x="70" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="jaffa/string/c2" uuid="204560dc-d001-446b-9f87-dd68f5ebffd2" name="LFO_mode_names" x="14" y="308">
      <params/>
      <attribs>
         <table attributeName="1" table="FREE LFO"/>
         <table attributeName="2" table="SYNCED LFO"/>
      </attribs>
   </obj>
   <obj type="tiar/string/mux2" uuid="30532718-8506-494c-a058-054f0cb01027" name="mode mux" x="182" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="777491e645978e331fcbab6610f52c1aaa5ade0e" name="mode form mux" x="448" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/patching/loadbang" uuid="45d1f29d-ac62-4e5b-86f8-2201d2f6c689" name="load startup" x="574" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="timer/delayedpulse" uuid="3f05ee534ca67755fb20c7437f9e4de3d4c2f73d" name="delay loadbang" x="700" y="308">
      <params>
         <frac32.s.map name="delay" value="37.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="rbrt/control/i radio 4 r" uuid="27dfcc93-071b-4343-ba0d-0678bab9ffec" name="Switcher radio buttons" x="812" y="308">
      <params>
         <int32.hradio name="value" value="0"/>
         <int32.hradio name="reset" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="logic/counter" uuid="7a141ba82230e54e5f5cd12da5dbe5a74ba854a5" name="mode counter" x="182" y="392">
      <params>
         <int32 name="maximum" value="4"/>
      </params>
      <attribs/>
   </obj>
   <obj type="timer/delayedpulseduration" uuid="3b7bf0a7b7f89fad06a734667f48de051deb5c78" name="mode form long pulse" x="294" y="406">
      <params>
         <frac32.s.map name="delay" value="-64.0"/>
         <frac32.s.map name="pulselength" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="jaffa/string/c4" uuid="e7c37b3e-e478-4967-8b0b-fc400c050e6a" name="LFO_waveform_names" x="14" y="532">
      <params/>
      <attribs>
         <table attributeName="1" table="LFO OFF"/>
         <table attributeName="2" table="LFO SINE"/>
         <table attributeName="3" table="LFO TRI"/>
         <table attributeName="4" table="LFO SQUARE"/>
      </attribs>
   </obj>
   <obj type="mux/mux 4" uuid="4629dfad262ff68419d12ab3fcd96e5e2e9f4190" name="form mux" x="182" y="532">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/counter" uuid="7a141ba82230e54e5f5cd12da5dbe5a74ba854a5" name="form counter" x="182" y="658">
      <params>
         <int32 name="maximum" value="4"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="LFO_waveform" x="70" y="742">
      <params/>
      <attribs/>
   </obj>
   <obj type="timer/delayedpulseduration" uuid="3b7bf0a7b7f89fad06a734667f48de051deb5c78" name="form long pulse" x="182" y="742">
      <params>
         <frac32.s.map name="delay" value="-64.0"/>
         <frac32.s.map name="pulselength" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="LFO_waveform_names" outlet="1"/>
         <dest obj="form mux" inlet="i0"/>
      </net>
      <net>
         <source obj="LFO_waveform_names" outlet="2"/>
         <dest obj="form mux" inlet="i1"/>
      </net>
      <net>
         <source obj="LFO_waveform_names" outlet="3"/>
         <dest obj="form mux" inlet="i2"/>
      </net>
      <net>
         <source obj="LFO_waveform_names" outlet="4"/>
         <dest obj="form mux" inlet="i3"/>
      </net>
      <net>
         <source obj="form counter" outlet="o"/>
         <dest obj="form mux" inlet="s"/>
      </net>
      <net>
         <source obj="LFO_waveform" outlet="inlet"/>
         <dest obj="form counter" inlet="trig"/>
         <dest obj="form long pulse" inlet="trig"/>
      </net>
      <net>
         <source obj="Start up line 1" outlet="out"/>
         <dest obj="OLED128x64_1" inlet="line2"/>
      </net>
      <net>
         <source obj="Start up line 2" outlet="out"/>
         <dest obj="OLED128x64_1" inlet="line3"/>
      </net>
      <net>
         <source obj="Switcher radio buttons" outlet="out"/>
         <dest obj="OLED128x64_1" inlet="mode"/>
         <dest obj="startup mux" inlet="sel"/>
      </net>
      <net>
         <source obj="load startup" outlet="pulse"/>
         <dest obj="delay loadbang" inlet="trig"/>
      </net>
      <net>
         <source obj="PATCH NAME" outlet="inlet"/>
         <dest obj="title mux" inlet="i1"/>
      </net>
      <net>
         <source obj="title mux" outlet="o"/>
         <dest obj="startup mux" inlet="i1"/>
      </net>
      <net>
         <source obj="startup mux" outlet="out"/>
         <dest obj="OLED128x64_1" inlet="line1"/>
      </net>
      <net>
         <source obj="LFO_mode" outlet="inlet"/>
         <dest obj="mode long pulse" inlet="trig"/>
         <dest obj="mode counter" inlet="trig"/>
         <dest obj="mode form long pulse" inlet="trig"/>
      </net>
      <net>
         <source obj="mode long pulse" outlet="pulse"/>
         <dest obj="xor object" inlet="i1"/>
      </net>
      <net>
         <source obj="form long pulse" outlet="pulse"/>
         <dest obj="xor object" inlet="i2"/>
      </net>
      <net>
         <source obj="xor object" outlet="o"/>
         <dest obj="title mux" inlet="s"/>
      </net>
      <net>
         <source obj="LFO_mode_names" outlet="1"/>
         <dest obj="mode mux" inlet="i0"/>
      </net>
      <net>
         <source obj="LFO_mode_names" outlet="2"/>
         <dest obj="mode mux" inlet="i1"/>
      </net>
      <net>
         <source obj="mode counter" outlet="o"/>
         <dest obj="mode mux" inlet="sel"/>
      </net>
      <net>
         <source obj="mode form mux" outlet="o"/>
         <dest obj="title mux" inlet="i2"/>
      </net>
      <net>
         <source obj="mode mux" outlet="out"/>
         <dest obj="mode form mux" inlet="i2"/>
      </net>
      <net>
         <source obj="form mux" outlet="o"/>
         <dest obj="mode form mux" inlet="i1"/>
      </net>
      <net>
         <source obj="mode form long pulse" outlet="pulse"/>
         <dest obj="mode form mux" inlet="s"/>
      </net>
      <net>
         <source obj="OSC SCOPE" outlet="inlet"/>
         <dest obj="axoctrlscope" inlet="in"/>
      </net>
      <net>
         <source obj="delay loadbang" outlet="pulse"/>
         <dest obj="Switcher radio buttons" inlet="reset"/>
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