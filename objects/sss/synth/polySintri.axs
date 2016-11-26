<patch-1.0 appVersion="1.0.11">
   <obj type="midi/in/keyb mod" uuid="abcd509d15e7d13d5381203fd2b4d0ac6fe57bb3" name="keyb_1" x="56" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="ENV vol" x="154" y="308">
      <params>
         <frac32.s.map name="a" onParent="true" value="-62.0"/>
         <frac32.s.map name="d" onParent="true" value="26.0"/>
         <frac32.u.map name="s" onParent="true" value="28.5"/>
         <frac32.s.map name="r" onParent="true" value="31.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/ad" uuid="255cb0cd67470c7498f9c33b820facd26aa629ce" name="ENV sh/pi" x="252" y="308">
      <params>
         <frac32.s.map name="a" onParent="true" value="-64.0"/>
         <frac32.s.map name="d" onParent="true" value="16.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="lfo/sine r" uuid="725d481acbefa181fa5d92f414d317c86b77b789" name="sine_1" x="350" y="308">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/math/expCurveK" uuid="bde45a1d-540b-4c33-b7b5-d733d42a1772" name="CurveShape" x="518" y="308">
      <params>
         <frac32.s.map name="exp" onParent="true" value="49.0"/>
         <int32 name="stack" onParent="true" value="5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="MW shape" x="630" y="308">
      <params>
         <frac32.u.map name="amp" onParent="true" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/math/expCurveK" uuid="bde45a1d-540b-4c33-b7b5-d733d42a1772" name="CurvePitch" x="728" y="308">
      <params>
         <frac32.s.map name="exp" onParent="true" value="64.0"/>
         <int32 name="stack" onParent="true" value="4"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="MW pitch" x="840" y="308">
      <params>
         <frac32.u.map name="amp" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="938" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/osc/sintri" uuid="32c3619b-d1db-4441-beb0-6594ecca18b3" name="sintri_1" x="1008" y="308">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="0.0"/>
         <frac32.u.map name="shape" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 1 g" uuid="2065eeca525a4691f1bc08a7dc5468871de651b7" name="MW tremelo" x="1106" y="308">
      <params>
         <frac32.u.map name="gain1" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_1" x="1204" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="1260" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1316" y="308">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="sintri_1" outlet="wave"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="ENV vol" outlet="env"/>
         <dest obj="*_1" inlet="a"/>
      </net>
      <net>
         <source obj="CurveShape" outlet="out"/>
         <dest obj="MW shape" inlet="in"/>
      </net>
      <net>
         <source obj="MW pitch" outlet="out"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="CurvePitch" outlet="out"/>
         <dest obj="MW pitch" inlet="in"/>
      </net>
      <net>
         <source obj="ENV sh/pi" outlet="env"/>
         <dest obj="CurvePitch" inlet="in"/>
         <dest obj="CurveShape" inlet="in"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="gate"/>
         <dest obj="ENV vol" inlet="gate"/>
         <dest obj="ENV sh/pi" inlet="trig"/>
         <dest obj="sine_1" inlet="reset"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="sintri_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="+_1" inlet="in1"/>
         <dest obj="sine_1" inlet="phase"/>
      </net>
      <net>
         <source obj="MW shape" outlet="out"/>
         <dest obj="sintri_1" inlet="shape"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="velocity"/>
         <dest obj="MW tremelo" inlet="bus_in"/>
      </net>
      <net>
         <source obj="sine_1" outlet="wave"/>
         <dest obj="MW tremelo" inlet="in1"/>
      </net>
      <net>
         <source obj="MW tremelo" outlet="out"/>
         <dest obj="*_1" inlet="b"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>polyphonic</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <HasMidiChannelSelector>true</HasMidiChannelSelector>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-8</x>
      <y>-8</y>
      <width>1696</width>
      <height>1026</height>
   </windowPos>
</patch-1.0>