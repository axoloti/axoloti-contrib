<patch-1.0 appVersion="1.0.9">
   <obj type="midi/in/cc hr i" uuid="72d8018c0f072c469fcd902b0423ba8fd5e6433" name="cc_1" x="0" y="14">
      <params/>
      <attribs>
         <spinner attributeName="cc" value="1"/>
         <spinner attributeName="default" value="0"/>
      </attribs>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_3" x="112" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/mix 3 g" uuid="efc0bdb8ca0ec2184330951eff5203ff487e35a9" name="mix_3" x="196" y="14">
      <params>
         <frac32.u.map name="gain1" value="14.0"/>
         <frac32.u.map name="gain2" value="32.0"/>
         <frac32.u.map name="gain3" value="14.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/vcf3" uuid="92455c652cd098cbb682a5497baa18abbf2ef865" name="vcf3_1" x="294" y="14">
      <params>
         <frac32.s.map name="pitch" value="-25.0"/>
         <frac32.u.map name="reso" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="392" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_2" x="448" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="adsr_2" x="392" y="70">
      <params>
         <frac32.s.map name="a" value="-64.0"/>
         <frac32.s.map name="d" value="-8.0"/>
         <frac32.u.map name="s" value="28.0"/>
         <frac32.s.map name="r" value="-17.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="stomps/compressor1" uuid="60399825-fff0-42fe-927f-3a65df036893" name="obj_2" x="490" y="70">
      <params>
         <frac32.u.map name="comp_1:tresh" value="4.0"/>
         <frac32.u.map name="comp_1:ratio" value="15.5"/>
         <frac32.u.map name="smooth2_1:risetime" value="10.5"/>
         <frac32.u.map name="smooth2_1:falltime" value="45.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="midi/in/bend hr" uuid="e4fa0e78f7aa37d4ece5dbd5b5fc726de695a035" name="bend_1" x="0" y="98">
      <params/>
      <attribs>
         <spinner attributeName="ccl" value="85"/>
      </attribs>
   </obj>
   <obj type="osc/saw" uuid="739ecc36017ef3249479b8f01716b8bbfba9abc1" name="saw_3" x="98" y="98">
      <params>
         <frac32.s.map name="pitch" value="0.11999988555908203"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="adsr_1" x="294" y="154">
      <params>
         <frac32.s.map name="a" value="-17.0"/>
         <frac32.s.map name="d" value="-21.0"/>
         <frac32.u.map name="s" value="23.5"/>
         <frac32.s.map name="r" value="-19.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="midi/in/keyb mod" uuid="abcd509d15e7d13d5381203fd2b4d0ac6fe57bb3" name="keyb_1" x="0" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/saw" uuid="739ecc36017ef3249479b8f01716b8bbfba9abc1" name="saw_2" x="98" y="182">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 3 g" uuid="120ea4967d52e3d5c98fd51fb38c424809d34f3b" name="mix_1" x="196" y="210">
      <params>
         <frac32.u.map name="gain1" value="33.5"/>
         <frac32.u.map name="gain2" value="32.0"/>
         <frac32.u.map name="gain3" value="7.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 2" uuid="682ea5496ded046d981e26b720a6e7f8eca97541" name="mix_4" x="14" y="266">
      <params>
         <frac32.u.map name="gain1" value="64.0"/>
         <frac32.u.map name="gain2" value="2.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/saw" uuid="739ecc36017ef3249479b8f01716b8bbfba9abc1" name="saw_1" x="98" y="266">
      <params>
         <frac32.s.map name="pitch" value="-0.09999990463256836"/>
      </params>
      <attribs/>
   </obj>
   <obj type="fx/chorus" uuid="b620e683-06ed-48b2-a5ac-a05906eda3d5" name="obj_1" x="392" y="266">
      <params>
         <frac32.u.map name="depth" value="13.5"/>
         <frac32.s.map name="speed" value="-57.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="audio/out stereo" uuid="a1ca7a567f535acc21055669829101d3ee7f0189" name="out_1" x="490" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="lfo/sine" uuid="75f7330c26a13953215dccc3b7b9008545c9daa9" name="sine_1" x="294" y="350">
      <params>
         <frac32.s.map name="pitch" value="-57.0"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="keyb_1" outlet="gate"/>
         <dest obj="adsr_1" inlet="gate"/>
         <dest obj="adsr_2" inlet="gate"/>
      </net>
      <net>
         <source obj="vcf3_1" outlet="out"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="obj_1" outlet="L"/>
         <dest obj="out_1" inlet="left"/>
      </net>
      <net>
         <source obj="adsr_1" outlet="env"/>
         <dest obj="mix_1" inlet="in1"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="velocity"/>
         <dest obj="vca_2" inlet="v"/>
         <dest obj="mix_1" inlet="in2"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="vcf3_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="mix_4" inlet="in1"/>
      </net>
      <net>
         <source obj="bend_1" outlet="bend"/>
         <dest obj="mix_4" inlet="in2"/>
      </net>
      <net>
         <source obj="mix_4" outlet="out"/>
         <dest obj="saw_3" inlet="pitch"/>
         <dest obj="saw_2" inlet="pitch"/>
         <dest obj="saw_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="saw_1" outlet="wave"/>
         <dest obj="mix_3" inlet="in3"/>
      </net>
      <net>
         <source obj="saw_2" outlet="wave"/>
         <dest obj="mix_3" inlet="in2"/>
      </net>
      <net>
         <source obj="saw_3" outlet="wave"/>
         <dest obj="mix_3" inlet="in1"/>
      </net>
      <net>
         <source obj="mix_3" outlet="out"/>
         <dest obj="vcf3_1" inlet="in"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="vca_2" inlet="a"/>
      </net>
      <net>
         <source obj="obj_1" outlet="R"/>
         <dest obj="out_1" inlet="right"/>
      </net>
      <net>
         <source obj="adsr_2" outlet="env"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="vca_2" outlet="o"/>
         <dest obj="obj_2" inlet="in"/>
      </net>
      <net>
         <source obj="obj_2" outlet="out"/>
         <dest obj="obj_1" inlet="in"/>
      </net>
      <net>
         <source obj="sine_1" outlet="wave"/>
         <dest obj="mix_1" inlet="in3"/>
      </net>
      <net>
         <source obj="cc_1" outlet="midiCC"/>
         <dest obj="sine_1" inlet="pitch"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>polyphonic</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author>Quincas Moreira</Author>
      <License>undefined</License>
      <Saturate>false</Saturate>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>392</x>
      <y>148</y>
      <width>822</width>
      <height>629</height>
   </windowPos>
</patch-1.0>