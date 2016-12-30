<patch-1.0 appVersion="1.0.11">
   <obj type="patch/inlet string" uuid="6c562c1a7890cccf18fa7327d8baa476d0926cd8" name="inlet_1" x="490" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/osc/waveformGenerator" uuid="38134d65-c7f2-4fa0-9e5f-7b1ed8f862b2" name="waveformGenerator_1" x="0" y="378">
      <params>
         <bool32.mom name="save" onParent="true" value="0"/>
         <bool32.mom name="load" onParent="true" value="0"/>
      </params>
      <attribs>
         <combo attributeName="size" selection="8192"/>
         <spinner attributeName="harmonics" value="34"/>
         <spinner attributeName="waveforms" value="64"/>
         <spinner attributeName="minharm" value="4"/>
         <spinner attributeName="maxharm" value="35"/>
         <spinner attributeName="maxLvl" value="32"/>
      </attribs>
   </obj>
   <obj type="midi/in/keyb touch" uuid="edfcb4cfd5b2064e95f5a7ee644bca56252ec11f" name="keyb_1" x="154" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="volume" x="266" y="378">
      <params>
         <frac32.s.map name="a" onParent="true" value="-64.0"/>
         <frac32.s.map name="d" onParent="true" value="40.0"/>
         <frac32.u.map name="s" onParent="true" value="0.0"/>
         <frac32.s.map name="r" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/env/hahdEnv" uuid="9a0e3b12-16ef-4a67-bad9-b88c35915cff" name="harmonics" x="364" y="378">
      <params>
         <frac32.s.map name="delay" onParent="true" value="0.0"/>
         <frac32.s.map name="attack" onParent="true" value="0.0"/>
         <frac32.s.map name="hold" onParent="true" value="0.0"/>
         <frac32.s.map name="decay" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/env/hahdEnv" uuid="9a0e3b12-16ef-4a67-bad9-b88c35915cff" name="mix1" x="462" y="378">
      <params>
         <frac32.s.map name="delay" onParent="true" value="-64.0"/>
         <frac32.s.map name="attack" onParent="true" value="-64.0"/>
         <frac32.s.map name="hold" onParent="true" value="10.0"/>
         <frac32.s.map name="decay" onParent="true" value="28.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/env/hahdEnv" uuid="9a0e3b12-16ef-4a67-bad9-b88c35915cff" name="mid2" x="560" y="378">
      <params>
         <frac32.s.map name="delay" onParent="true" value="-64.0"/>
         <frac32.s.map name="attack" onParent="true" value="0.0"/>
         <frac32.s.map name="hold" onParent="true" value="-30.0"/>
         <frac32.s.map name="decay" onParent="true" value="14.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="rand/uniform i" uuid="9b1f945f346af0165ed99b8e19136cdbf744e594" name="uniform_1" x="658" y="378">
      <params>
         <int32 name="max" value="64"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="742" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_2" x="812" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/math/divScale" uuid="97ff2f3e-6eae-4065-90c7-0e2abde101ca" name="divScale_1" x="882" y="378">
      <params>
         <frac32.u.map name="amp" onParent="true" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/math/divScale" uuid="97ff2f3e-6eae-4065-90c7-0e2abde101ca" name="divScale_2" x="980" y="378">
      <params>
         <frac32.u.map name="amp" onParent="true" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/osc/2DHQtable" uuid="911caf3d-2db2-4486-bb68-1a9048d8373f" name="2DHQtable_1" x="1078" y="378">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-14.0"/>
         <frac32.s.map name="FMW" onParent="true" value="0.0"/>
         <int32 name="waveform" onParent="true" value="0"/>
         <frac32.s.map name="sinemix" onParent="true" value="0.0"/>
         <frac32.u.map name="mix1" onParent="true" value="0.0"/>
         <int32 name="quant1" onParent="true" value="64"/>
         <int32 name="start1" onParent="true" value="16"/>
         <int32 name="step1" onParent="true" value="11"/>
         <frac32.u.map name="mix2" onParent="true" value="0.0"/>
         <int32 name="quant2" onParent="true" value="64"/>
         <int32 name="start2" onParent="true" value="23"/>
         <int32 name="step2" onParent="true" value="24"/>
      </params>
      <attribs>
         <objref attributeName="table" obj="waveformGenerator_1"/>
      </attribs>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_1" x="1204" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="1260" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1316" y="378">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="2DHQtable_1" outlet="out"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="gate"/>
         <dest obj="uniform_1" inlet="trig"/>
         <dest obj="mix1" inlet="trig"/>
         <dest obj="mid2" inlet="trig"/>
         <dest obj="harmonics" inlet="trig"/>
         <dest obj="volume" inlet="gate"/>
      </net>
      <net>
         <source obj="2DHQtable_1" outlet="divide1"/>
         <dest obj="divScale_1" inlet="D"/>
      </net>
      <net>
         <source obj="divScale_1" outlet="out"/>
         <dest obj="2DHQtable_1" inlet="mix1"/>
      </net>
      <net>
         <source obj="divScale_2" outlet="out"/>
         <dest obj="2DHQtable_1" inlet="mix2"/>
      </net>
      <net>
         <source obj="2DHQtable_1" outlet="divide2"/>
         <dest obj="divScale_2" inlet="D"/>
      </net>
      <net>
         <source obj="mid2" outlet="env"/>
         <dest obj="+_2" inlet="in1"/>
      </net>
      <net>
         <source obj="mix1" outlet="env"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="2DHQtable_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="uniform_1" outlet="v"/>
         <dest obj="2DHQtable_1" inlet="step"/>
      </net>
      <net>
         <source obj="inlet_1" outlet="inlet"/>
         <dest obj="waveformGenerator_1" inlet="filename"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="divScale_1" inlet="in"/>
      </net>
      <net>
         <source obj="+_2" outlet="out"/>
         <dest obj="divScale_2" inlet="in"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="touch"/>
         <dest obj="+_1" inlet="in2"/>
         <dest obj="+_2" inlet="in2"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="volume" outlet="env"/>
         <dest obj="*_1" inlet="a"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="velocity"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="harmonics" outlet="env"/>
         <dest obj="2DHQtable_1" inlet="sinemix"/>
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
      <width>1296</width>
      <height>1000</height>
   </windowPos>
</patch-1.0>