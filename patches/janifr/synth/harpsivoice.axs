<patch-1.0 appVersion="1.0.12">
   <obj type="midi/in/keyb zone" uuid="e7413176a91acc060036fd7f68fda24bbee265d3" name="keyb_1" x="14" y="14">
      <params/>
      <attribs>
         <spinner attributeName="startNote" value="0"/>
         <spinner attributeName="endNote" value="127"/>
      </attribs>
   </obj>
   <obj type="mix/mix 1 g" uuid="2065eeca525a4691f1bc08a7dc5468871de651b7" name="mix_2" x="154" y="14">
      <params>
         <frac32.u.map name="gain1" value="12.21999979019165"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/-" uuid="3280bb759e9fc189e134300e48dda7e903c9a110" name="-_1" x="280" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/d m" uuid="85e82f54dfc28839d300cda777af8907ae2a28d0" name="d_1" x="378" y="14">
      <params>
         <frac32.s.map name="d" value="-29.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="noise/uniform" uuid="a3926ef22ae9ac217cd09933d90101848796eb78" name="uniform_1" x="490" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="602" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="delay/mtod" uuid="bbaeb53acbf18f926c5febae31d8bf2f52725ee" name="mtod_1" x="14" y="168">
      <params>
         <frac32.s.map name="pitch" value="7.529999732971191"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/-c" uuid="bc70bed87e5405985ade03f4806b9450609a9093" name="-c_1" x="126" y="168">
      <params>
         <frac32.u.map name="c" value="0.034999847412109375"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/-c" uuid="bc70bed87e5405985ade03f4806b9450609a9093" name="-c1" x="196" y="168">
      <params>
         <frac32.u.map name="c" value="0.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_1" x="266" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="delay/read interp" uuid="e3d8b8823ab551c588659520bf6cc25c630466c7" name="delread2__1" x="350" y="168">
      <params>
         <frac32.u.map name="time" value="0.0"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="write_1"/>
      </attribs>
   </obj>
   <obj type="mix/mix 1" uuid="e8f482af5b1ec4a2e9cf8ac7ce09e7c0e43cea08" name="mix_1" x="532" y="168">
      <params>
         <frac32.u.map name="gain1" value="63.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="delay/write sdram" uuid="5ae03f8d7b815edcfc40585d8bbac2ed48460fba" name="write_1" x="630" y="168">
      <params/>
      <attribs>
         <combo attributeName="size" selection="2048 (42.66ms)"/>
      </attribs>
   </obj>
   <obj type="midi/in/bend" uuid="7bd8cace52a8c26ed61d80f65e238408d5d621f4" name="bend_1" x="14" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="kfilter/lowpass" uuid="4f0d68b39b6f6b1c1d371b028d84391d14062d68" name="lowpass_1" x="112" y="280">
      <params>
         <frac32.s.map name="freq" value="5.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="adsr_1" x="224" y="280">
      <params>
         <frac32.s.map name="a" value="-64.0"/>
         <frac32.s.map name="d" value="-64.0"/>
         <frac32.u.map name="s" value="64.0"/>
         <frac32.s.map name="r" value="-5.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_2" x="350" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/lp1 m" uuid="18b561d14f9175f5380e6a1d9d55ca41e0e61974" name="lp1_1" x="420" y="280">
      <params>
         <frac32.u.map name="freq" value="32.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="546" y="280">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="d_1" outlet="env"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="mix_1" inlet="bus_in"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="vca_2" inlet="a"/>
         <dest obj="write_1" inlet="in"/>
      </net>
      <net>
         <source obj="interp_1" outlet="o"/>
         <dest obj="delread2__1" inlet="time"/>
      </net>
      <net>
         <source obj="-c1" outlet="out"/>
         <dest obj="interp_1" inlet="i"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="mix_2" inlet="bus_in"/>
      </net>
      <net>
         <source obj="delread2__1" outlet="out"/>
         <dest obj="mix_1" inlet="in1"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="gate"/>
         <dest obj="adsr_1" inlet="gate"/>
         <dest obj="d_1" inlet="trig"/>
      </net>
      <net>
         <source obj="adsr_1" outlet="env"/>
         <dest obj="vca_2" inlet="v"/>
      </net>
      <net>
         <source obj="vca_2" outlet="o"/>
         <dest obj="lp1_1" inlet="in"/>
      </net>
      <net>
         <source obj="-c_1" outlet="out"/>
         <dest obj="-c1" inlet="in"/>
      </net>
      <net>
         <source obj="mtod_1" outlet="delay"/>
         <dest obj="-c_1" inlet="in"/>
      </net>
      <net>
         <source obj="uniform_1" outlet="wave"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="bend_1" outlet="bend"/>
         <dest obj="lowpass_1" inlet="in"/>
      </net>
      <net>
         <source obj="mix_2" outlet="out"/>
         <dest obj="mtod_1" inlet="pitch"/>
         <dest obj="lp1_1" inlet="freq"/>
         <dest obj="-_1" inlet="in2"/>
      </net>
      <net>
         <source obj="lowpass_1" outlet="out"/>
         <dest obj="mix_2" inlet="in1"/>
      </net>
      <net>
         <source obj="-_1" outlet="out"/>
         <dest obj="d_1" inlet="d"/>
      </net>
      <net>
         <source obj="lp1_1" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>polyphonic</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>199</x>
      <y>93</y>
      <width>1024</width>
      <height>660</height>
   </windowPos>
</patch-1.0>