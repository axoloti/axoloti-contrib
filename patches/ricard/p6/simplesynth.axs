<patch-1.0 appVersion="1.0.11">
   <obj type="osc/sine lin" uuid="6a4458d598c9b8634b469d1a6e7f87971b5932f" name="sine_1" x="364" y="0">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="midi/in/keyb" uuid="53b04874696932f38aceaa168bd5d9efb743716d" name="keyb_1" x="0" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/out/led2" uuid="3d7a4c75d1f9901181a17ba5de752782de911803" name="led2_1" x="154" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/saw" uuid="739ecc36017ef3249479b8f01716b8bbfba9abc1" name="saw_1" x="140" y="98">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 2" uuid="30c04239c88e09d3fa5c333b784ecf54f1b0e268" name="osc_mix" x="294" y="98">
      <params>
         <frac32.u.map name="gain1" onParent="true" value="32.0"/>
         <frac32.u.map name="gain2" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/lp m" uuid="1aa1bc51da479ed92429af700591f9d7b9f45f22" name="lp_1" x="462" y="98">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="9.0"/>
         <frac32.u.map name="reso" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="658" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/mix 1 g" uuid="e6982841c1bf323ee2062a4b6cc2737adafbd668" name="mix_4" x="742" y="182">
      <params>
         <frac32.u.map name="gain1" value="22.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/saw" uuid="739ecc36017ef3249479b8f01716b8bbfba9abc1" name="saw_2" x="140" y="238">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="868" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/mix 3 g" uuid="120ea4967d52e3d5c98fd51fb38c424809d34f3b" name="f_fmix" x="546" y="266">
      <params>
         <frac32.u.map name="gain1" onParent="true" value="43.5"/>
         <frac32.u.map name="gain2" onParent="true" value="32.0"/>
         <frac32.u.map name="gain3" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="a_env" x="644" y="322">
      <params>
         <frac32.s.map name="a" onParent="true" value="-64.0"/>
         <frac32.s.map name="d" onParent="true" value="0.0"/>
         <frac32.u.map name="s" onParent="true" value="64.0"/>
         <frac32.s.map name="r" onParent="true" value="8.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="f_env" x="434" y="336">
      <params>
         <frac32.s.map name="a" onParent="true" value="-64.0"/>
         <frac32.s.map name="d" onParent="true" value="0.0"/>
         <frac32.u.map name="s" onParent="true" value="32.5"/>
         <frac32.s.map name="r" onParent="true" value="11.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 2 g" uuid="a68d65dda222bc916b36b283cc06d2edd719bf3b" name="osc2_fmix" x="126" y="378">
      <params>
         <frac32.u.map name="gain1" value="64.0"/>
         <frac32.u.map name="gain2" onParent="true" value="11.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_1" x="0" y="392">
      <params/>
      <attribs>
         <spinner attributeName="value" value="1"/>
      </attribs>
   </obj>
   <obj type="midi/in/cc" uuid="6096d217701cbdf251a9ab6ba029af78c5722a56" name="cc_1" x="546" y="476">
      <params/>
      <attribs>
         <spinner attributeName="cc" value="1"/>
         <spinner attributeName="default" value="0"/>
      </attribs>
   </obj>
   <nets>
      <net>
         <source obj="lp_1" outlet="out"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="a_env" outlet="env"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="saw_1" outlet="wave"/>
         <dest obj="osc_mix" inlet="in1"/>
      </net>
      <net>
         <source obj="saw_2" outlet="wave"/>
         <dest obj="osc_mix" inlet="in2"/>
      </net>
      <net>
         <source obj="osc_mix" outlet="out"/>
         <dest obj="lp_1" inlet="in"/>
      </net>
      <net>
         <source obj="osc2_fmix" outlet="out"/>
         <dest obj="saw_2" inlet="pitch"/>
      </net>
      <net>
         <source obj="i_1" outlet="out"/>
         <dest obj="osc2_fmix" inlet="in2"/>
      </net>
      <net>
         <source obj="f_env" outlet="env"/>
         <dest obj="f_fmix" inlet="in1"/>
      </net>
      <net>
         <source obj="f_fmix" outlet="out"/>
         <dest obj="lp_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="saw_1" inlet="pitch"/>
         <dest obj="osc2_fmix" inlet="in1"/>
         <dest obj="f_fmix" inlet="in2"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="gate2"/>
         <dest obj="f_env" inlet="gate"/>
         <dest obj="a_env" inlet="gate"/>
         <dest obj="led2_1" inlet="in"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="mix_4" inlet="in1"/>
      </net>
      <net>
         <source obj="mix_4" outlet="out"/>
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
      <x>135</x>
      <y>57</y>
      <width>1110</width>
      <height>672</height>
   </windowPos>
</patch-1.0>