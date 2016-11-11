<patch-1.0 appVersion="1.0.11">
   <obj type="delay/write sdram" uuid="5ae03f8d7b815edcfc40585d8bbac2ed48460fba" name="sound" x="42" y="28">
      <params/>
      <attribs>
         <combo attributeName="size" selection="1048576 (21.8s)"/>
      </attribs>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="inlet_1" x="42" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/mix 3" uuid="8be16f2156012a4a8974804178cece51555f272b" name="mix_1" x="350" y="140">
      <params>
         <frac32.u.map name="gain1" value="44.5"/>
         <frac32.u.map name="gain2" value="60.0"/>
         <frac32.u.map name="gain3" value="42.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="*c_7" x="616" y="210">
      <params>
         <frac32.u.map name="amp" value="26.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_1" x="812" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1022" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="feedback" x="154" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/smooth" uuid="6c5d08c282bb08bff24af85b4891447f99bcbc97" name="smooth_1" x="70" y="350">
      <params>
         <frac32.u.map name="time" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="c16a625a661f40e4b359db604dcd00b3befcdbe3" name="*_1" x="420" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_1" x="210" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/lp1" uuid="1b1fd7085e44d2b7b80b59b8d68796b909c1b2cc" name="lp1_1" x="966" y="434">
      <params>
         <frac32.s.map name="freq" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/hp1" uuid="abea7276611b289bed35b80345a6bc4efd4d9a4e" name="hp1_1" x="826" y="462">
      <params>
         <frac32.s.map name="freq" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="dist/soft" uuid="e680d76a805e4866027cdf654c7efd8b2e54622" name="soft_1" x="728" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="speed" x="42" y="518">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="amount" x="280" y="588">
      <params/>
      <attribs/>
   </obj>
   <obj type="delay/read interp" uuid="e3d8b8823ab551c588659520bf6cc25c630466c7" name="read_1" x="560" y="588">
      <params>
         <frac32.u.map name="time" value="0.0"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="sound"/>
      </attribs>
   </obj>
   <nets>
      <net>
         <source obj="inlet_1" outlet="inlet"/>
         <dest obj="*c_7" inlet="in"/>
         <dest obj="mix_1" inlet="in1"/>
      </net>
      <net>
         <source obj="*c_7" outlet="out"/>
         <dest obj="xfade_1" inlet="i1"/>
      </net>
      <net>
         <source obj="smooth_1" outlet="out"/>
         <dest obj="interp_1" inlet="i"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="sound" inlet="in"/>
      </net>
      <net>
         <source obj="read_1" outlet="out"/>
         <dest obj="soft_1" inlet="in"/>
      </net>
      <net>
         <source obj="interp_1" outlet="o"/>
         <dest obj="read_1" inlet="time"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="mix_1" inlet="in2"/>
      </net>
      <net>
         <source obj="amount" outlet="inlet"/>
         <dest obj="xfade_1" inlet="c"/>
      </net>
      <net>
         <source obj="speed" outlet="inlet"/>
         <dest obj="smooth_1" inlet="in"/>
      </net>
      <net>
         <source obj="feedback" outlet="inlet"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="xfade_1" outlet="o"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="lp1_1" outlet="out"/>
         <dest obj="xfade_1" inlet="i2"/>
         <dest obj="*_1" inlet="a"/>
      </net>
      <net>
         <source obj="hp1_1" outlet="out"/>
         <dest obj="lp1_1" inlet="in"/>
      </net>
      <net>
         <source obj="soft_1" outlet="out"/>
         <dest obj="hp1_1" inlet="in"/>
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
      <x>-7</x>
      <y>1</y>
      <width>1522</width>
      <height>979</height>
   </windowPos>
</patch-1.0>