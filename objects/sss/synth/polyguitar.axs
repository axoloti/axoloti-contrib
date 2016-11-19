<patch-1.0 appVersion="1.0.11">
   <obj type="sss/osc/guitarAllocation" uuid="623061f1-0bb6-4e7d-af31-cbfff4d43c57" name="guitarAllocation_1" x="546" y="14">
      <params/>
      <attribs>
         <combo attributeName="size" selection="8192"/>
         <spinner attributeName="presets" value="1"/>
      </attribs>
   </obj>
   <obj type="sss/osc/guitarTable" uuid="3d635174-804e-49af-bbb5-611737145f3f" name="guitarTable_1" x="168" y="42">
      <params>
         <int32 name="damp" onParent="true" value="1"/>
         <int32 name="minDiv" onParent="true" value="2"/>
         <int32 name="harmonics" onParent="true" value="24"/>
         <int32 name="jump" onParent="true" value="27"/>
         <int32 name="max" onParent="true" value="63"/>
         <frac32.u.map name="position" onParent="true" value="38.5"/>
         <frac32.u.map name="strike" onParent="true" value="52.5"/>
         <int32 name="preset" value="0"/>
      </params>
      <attribs>
         <objref attributeName="table" obj="guitarAllocation_1"/>
      </attribs>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="PWM" x="364" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="MOD" x="364" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="START" x="364" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="sync" x="364" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="cut" x="364" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="midi/in/keyb touch" uuid="edfcb4cfd5b2064e95f5a7ee644bca56252ec11f" name="keyb_1" x="476" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/env/ADSRcrv" uuid="3eed0831-c77a-4251-8abe-5019a165602d" name="ADSRcrv_1" x="588" y="294">
      <params>
         <frac32.s.map name="A" onParent="true" value="-64.0"/>
         <frac32.s.map name="crvA" onParent="true" value="19.0"/>
         <frac32.s.map name="D" onParent="true" value="-9.0"/>
         <frac32.s.map name="crvD" onParent="true" value="-24.0"/>
         <frac32.u.map name="S" onParent="true" value="30.0"/>
         <frac32.s.map name="R" onParent="true" value="21.0"/>
         <frac32.s.map name="crvR" onParent="true" value="-25.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="kfilter/lowpass" uuid="4f0d68b39b6f6b1c1d371b028d84391d14062d68" name="smooth touch" x="714" y="294">
      <params>
         <frac32.s.map name="freq" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="touch2filter" x="812" y="294">
      <params>
         <frac32.u.map name="amp" onParent="true" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="vel/touch" x="924" y="294">
      <params>
         <frac32.u.map name="value" onParent="true" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="bb87360199938d53d1183cdc80947ed0a39e3c9a" name="xfade_1" x="994" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_1" x="1064" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="rand/uniform f trig" uuid="223873125a332e3b8a82795a3eef167993adb086" name="uniform_1" x="1148" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/math/bipAmp" uuid="054d3d1f-4bbf-4622-b310-c2f4d89cb965" name="touch2PWM" x="1260" y="294">
      <params>
         <frac32.s.map name="amp" onParent="true" value="23.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="1358" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/math/bipAmp" uuid="054d3d1f-4bbf-4622-b310-c2f4d89cb965" name="touch2MOD" x="1260" y="378">
      <params>
         <frac32.s.map name="amp" onParent="true" value="-28.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_2" x="1358" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/math/bipAmp" uuid="054d3d1f-4bbf-4622-b310-c2f4d89cb965" name="touch2START" x="1260" y="462">
      <params>
         <frac32.s.map name="amp" onParent="true" value="35.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_3" x="1358" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/math/bipAmp" uuid="054d3d1f-4bbf-4622-b310-c2f4d89cb965" name="touch2cutoff" x="1260" y="546">
      <params>
         <frac32.s.map name="amp" onParent="true" value="35.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_4" x="1358" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_5" x="1428" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/mix 1" uuid="26fb1fe4ed25d8bc2ac4a3f91ab6b80ed6d9d4fa" name="mix_1" x="490" y="686">
      <params>
         <frac32.u.map name="gain1" value="0.08999967575073242"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/osc/guitarDualOsc" uuid="0ffdcad9-b082-448c-b51b-7cb8d2479648" name="guitarDualOsc_1" x="574" y="686">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="0.0"/>
         <int32 name="harm2nd" onParent="true" value="1"/>
         <int32 name="rateM" onParent="true" value="1"/>
         <int32 name="rateD" onParent="true" value="10"/>
         <frac32.u.map name="pwm" onParent="true" value="39.5"/>
         <frac32.u.map name="mod" onParent="true" value="46.5"/>
         <frac32.u.map name="start" onParent="true" value="20.0"/>
         <int32 name="preset" value="0"/>
      </params>
      <attribs>
         <objref attributeName="table" obj="guitarAllocation_1"/>
      </attribs>
   </obj>
   <obj type="sss/gain/expLPG" uuid="cd53740f-3538-46e5-b8f8-a4b6c06a3b6b" name="expLPG_1" x="700" y="686">
      <params>
         <frac32.s.map name="expVCA" onParent="true" value="0.0"/>
         <frac32.s.map name="expLPG" onParent="true" value="0.0"/>
         <frac32.u.map name="cutoff" onParent="true" value="2.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/filter/LPos" uuid="82f8e740-c072-45ff-af2c-57f176c0eadd" name="LPos_1" x="798" y="686">
      <params>
         <frac32.s.map name="cut" onParent="true" value="0.0"/>
         <frac32.s.map name="res" onParent="true" value="0.0"/>
         <bool32.tgl name="mode" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="966" y="686">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1022" y="686">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="mix_1" inlet="bus_in"/>
      </net>
      <net>
         <source obj="ADSRcrv_1" outlet="out"/>
         <dest obj="*_1" inlet="a"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="gate2"/>
         <dest obj="ADSRcrv_1" inlet="gate"/>
         <dest obj="uniform_1" inlet="trig"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="expLPG_1" inlet="env"/>
      </net>
      <net>
         <source obj="expLPG_1" outlet="o"/>
         <dest obj="LPos_1" inlet="in"/>
      </net>
      <net>
         <source obj="PWM" outlet="inlet"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="MOD" outlet="inlet"/>
         <dest obj="+_2" inlet="in1"/>
      </net>
      <net>
         <source obj="START" outlet="inlet"/>
         <dest obj="+_3" inlet="in1"/>
      </net>
      <net>
         <source obj="uniform_1" outlet="rand"/>
         <dest obj="mix_1" inlet="in1"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="guitarDualOsc_1" inlet="pitch"/>
         <dest obj="+_4" inlet="in1"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="guitarDualOsc_1" inlet="pwm"/>
      </net>
      <net>
         <source obj="smooth touch" outlet="out"/>
         <dest obj="touch2PWM" inlet="in"/>
         <dest obj="touch2MOD" inlet="in"/>
         <dest obj="touch2START" inlet="in"/>
         <dest obj="touch2filter" inlet="in"/>
         <dest obj="touch2cutoff" inlet="in"/>
         <dest obj="xfade_1" inlet="i2"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="touch"/>
         <dest obj="smooth touch" inlet="in"/>
      </net>
      <net>
         <source obj="guitarDualOsc_1" outlet="wave"/>
         <dest obj="expLPG_1" inlet="a"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="sync" outlet="inlet"/>
         <dest obj="guitarDualOsc_1" inlet="sync"/>
      </net>
      <net>
         <source obj="touch2filter" outlet="out"/>
         <dest obj="expLPG_1" inlet="cutoff"/>
      </net>
      <net>
         <source obj="touch2PWM" outlet="out"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="touch2MOD" outlet="out"/>
         <dest obj="+_2" inlet="in2"/>
      </net>
      <net>
         <source obj="touch2START" outlet="out"/>
         <dest obj="+_3" inlet="in2"/>
      </net>
      <net>
         <source obj="+_2" outlet="out"/>
         <dest obj="guitarDualOsc_1" inlet="mod"/>
      </net>
      <net>
         <source obj="+_3" outlet="out"/>
         <dest obj="guitarDualOsc_1" inlet="start"/>
      </net>
      <net>
         <source obj="touch2cutoff" outlet="out"/>
         <dest obj="+_4" inlet="in2"/>
      </net>
      <net>
         <source obj="+_4" outlet="out"/>
         <dest obj="+_5" inlet="in1"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="velocity"/>
         <dest obj="xfade_1" inlet="i1"/>
      </net>
      <net>
         <source obj="xfade_1" outlet="o"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="vel/touch" outlet="out"/>
         <dest obj="xfade_1" inlet="c"/>
      </net>
      <net>
         <source obj="+_5" outlet="out"/>
         <dest obj="LPos_1" inlet="cut"/>
      </net>
      <net>
         <source obj="cut" outlet="inlet"/>
         <dest obj="+_5" inlet="in2"/>
      </net>
      <net>
         <source obj="LPos_1" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
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