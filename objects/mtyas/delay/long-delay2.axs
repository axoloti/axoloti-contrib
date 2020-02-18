<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="inlet" x="42" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="speed" x="42" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="feedback" x="42" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="kfilter/lowpass" uuid="4f0d68b39b6f6b1c1d371b028d84391d14062d68" name="lowpass_1" x="126" y="126">
      <params>
         <frac32.s.map name="freq" onParent="true" value="-53.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_2" x="238" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="delay/read interp" uuid="e3d8b8823ab551c588659520bf6cc25c630466c7" name="read_2" x="322" y="126">
      <params>
         <frac32.u.map name="time" value="0.0"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="sound"/>
      </attribs>
   </obj>
   <obj type="dist/soft" uuid="e680d76a805e4866027cdf654c7efd8b2e54622" name="soft_1" x="504" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/hp1" uuid="abea7276611b289bed35b80345a6bc4efd4d9a4e" name="hp1_1" x="574" y="126">
      <params>
         <frac32.s.map name="freq" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/lp1" uuid="1b1fd7085e44d2b7b80b59b8d68796b909c1b2cc" name="lp1_1" x="686" y="126">
      <params>
         <frac32.s.map name="freq" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="c16a625a661f40e4b359db604dcd00b3befcdbe3" name="*_2" x="798" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_1" x="868" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="delay/write sdram" uuid="5ae03f8d7b815edcfc40585d8bbac2ed48460fba" name="sound_" x="952" y="126">
      <params/>
      <attribs>
         <combo attributeName="size" selection="262144 (5.46s)"/>
      </attribs>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_2" x="1078" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet" x="1162" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="amount" x="42" y="168">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="inlet" outlet="inlet"/>
         <dest obj="xfade_2" inlet="i1"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="lp1_1" outlet="out"/>
         <dest obj="*_2" inlet="a"/>
         <dest obj="xfade_2" inlet="i2"/>
      </net>
      <net>
         <source obj="hp1_1" outlet="out"/>
         <dest obj="lp1_1" inlet="in"/>
      </net>
      <net>
         <source obj="soft_1" outlet="out"/>
         <dest obj="hp1_1" inlet="in"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="sound_" inlet="in"/>
      </net>
      <net>
         <source obj="read_2" outlet="out"/>
         <dest obj="soft_1" inlet="in"/>
      </net>
      <net>
         <source obj="interp_2" outlet="o"/>
         <dest obj="read_2" inlet="time"/>
      </net>
      <net>
         <source obj="lowpass_1" outlet="out"/>
         <dest obj="interp_2" inlet="i"/>
      </net>
      <net>
         <source obj="*_2" outlet="result"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="xfade_2" outlet="o"/>
         <dest obj="outlet" inlet="outlet"/>
      </net>
      <net>
         <source obj="amount" outlet="inlet"/>
         <dest obj="xfade_2" inlet="c"/>
      </net>
      <net>
         <source obj="feedback" outlet="inlet"/>
         <dest obj="*_2" inlet="b"/>
      </net>
      <net>
         <source obj="speed" outlet="inlet"/>
         <dest obj="lowpass_1" inlet="in"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-8</x>
      <y>-8</y>
      <width>1936</width>
      <height>1096</height>
   </windowPos>
</patch-1.0>