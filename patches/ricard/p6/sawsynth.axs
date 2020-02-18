<patch-1.0 appVersion="1.0.12">
   <obj type="midi/in/keyb" uuid="53b04874696932f38aceaa168bd5d9efb743716d" name="keyb_1" x="0" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/out/led2" uuid="3d7a4c75d1f9901181a17ba5de752782de911803" name="led2_1" x="154" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/lp m" uuid="1aa1bc51da479ed92429af700591f9d7b9f45f22" name="lp_1" x="490" y="56">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="0.0"/>
         <frac32.u.map name="reso" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/saw" uuid="739ecc36017ef3249479b8f01716b8bbfba9abc1" name="saw_1" x="280" y="98">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 1 g" uuid="e6982841c1bf323ee2062a4b6cc2737adafbd668" name="mix_4" x="770" y="126">
      <params>
         <frac32.u.map name="gain1" value="22.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="686" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/mix 1 sq" uuid="868f78de01eb3fd44200549837330c2eeef8e002" name="mix_1" x="350" y="238">
      <params>
         <frac32.u.map name="gain1" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="868" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="f_env" x="196" y="266">
      <params>
         <frac32.s.map name="a" onParent="true" value="0.0"/>
         <frac32.s.map name="d" onParent="true" value="0.0"/>
         <frac32.u.map name="s" onParent="true" value="0.0"/>
         <frac32.s.map name="r" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="a_env" x="546" y="266">
      <params>
         <frac32.s.map name="a" onParent="true" value="-64.0"/>
         <frac32.s.map name="d" onParent="true" value="0.0"/>
         <frac32.u.map name="s" onParent="true" value="64.0"/>
         <frac32.s.map name="r" onParent="true" value="8.0"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="saw_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="gate2"/>
         <dest obj="a_env" inlet="gate"/>
         <dest obj="led2_1" inlet="in"/>
         <dest obj="f_env" inlet="gate"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="mix_4" inlet="in1"/>
      </net>
      <net>
         <source obj="mix_4" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="a_env" outlet="env"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="saw_1" outlet="wave"/>
         <dest obj="lp_1" inlet="in"/>
      </net>
      <net>
         <source obj="lp_1" outlet="out"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="f_env" outlet="env"/>
         <dest obj="mix_1" inlet="in1"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="lp_1" inlet="pitch"/>
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
      <x>135</x>
      <y>57</y>
      <width>1110</width>
      <height>672</height>
   </windowPos>
</patch-1.0>