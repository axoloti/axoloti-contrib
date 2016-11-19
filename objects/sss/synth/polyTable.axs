<patch-1.0 appVersion="1.0.11">
   <obj type="sss/table/monoTable" uuid="a4fc8dc0-76c0-4321-93a4-9f22f9952eec" name="monoTable_1" x="210" y="0">
      <params/>
      <attribs>
         <combo attributeName="size" selection="1048576"/>
         <text attributeName="init">
            <sText><![CDATA[]]></sText>
         </text>
      </attribs>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="Load" x="350" y="0">
      <params>
         <bool32.tgl name="b" onParent="true" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="preset" x="420" y="0">
      <params>
         <int32 name="value" onParent="true" value="14"/>
      </params>
      <attribs/>
   </obj>
   <obj type="string/indexed" uuid="a28740deef67c39ffc65bd0f341a47c9b196f46" name="indexed_4" x="476" y="0">
      <params/>
      <attribs>
         <table attributeName="prefix" table="0:/WAP"/>
         <table attributeName="suffix" table=".tab"/>
      </attribs>
   </obj>
   <obj type="table/load" uuid="600cc22c6734d23a82620da1a14e78782a7e168e" name="load_4" x="644" y="0">
      <params/>
      <attribs>
         <objref attributeName="table" obj="monoTable_1"/>
      </attribs>
   </obj>
   <obj type="midi/in/keyb touch" uuid="edfcb4cfd5b2064e95f5a7ee644bca56252ec11f" name="keyb_1" x="0" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="kfilter/lowpass" uuid="4f0d68b39b6f6b1c1d371b028d84391d14062d68" name="touch smooth" x="112" y="84">
      <params>
         <frac32.s.map name="freq" onParent="true" value="-31.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="touchwidth" x="210" y="84">
      <params>
         <frac32.u.map name="amp" onParent="true" value="33.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="mixSine" x="308" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="mix1" x="378" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="mix2" x="448" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="mix3" x="518" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="630" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_2" x="700" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_3" x="770" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_4" x="840" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/osc/tableMorph" uuid="7442440c-c46d-4efb-9ba6-f2c98ab62d30" name="OSC" x="910" y="84">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="0.0"/>
         <int32 name="octSine" onParent="true" value="0"/>
         <frac32.u.map name="mixSine" onParent="true" value="0.0"/>
         <int32 name="waveform" onParent="true" value="0"/>
         <frac32.s.map name="LP" onParent="true" value="0.0"/>
         <frac32.u.map name="mix1" onParent="true" value="0.0"/>
         <int32 name="step1" onParent="true" value="16"/>
         <int32 name="quant1" onParent="true" value="12"/>
         <frac32.u.map name="mix2" onParent="true" value="0.0"/>
         <int32 name="step2" onParent="true" value="24"/>
         <int32 name="quant2" onParent="true" value="8"/>
         <frac32.u.map name="mix3" onParent="true" value="0.0"/>
         <int32 name="step3" onParent="true" value="7"/>
         <int32 name="quant3" onParent="true" value="9"/>
      </params>
      <attribs>
         <objref attributeName="table" obj="monoTable_1"/>
      </attribs>
   </obj>
   <obj type="sss/env/ADloopR" uuid="b14a56b0-c76b-4952-a288-f7420eed3f1f" name="ENV" x="1050" y="84">
      <params>
         <frac32.s.map name="a" onParent="true" value="-64.0"/>
         <frac32.s.map name="d" onParent="true" value="10.0"/>
         <frac32.u.map name="s1" onParent="true" value="19.0"/>
         <frac32.s.map name="ds1" onParent="true" value="17.0"/>
         <frac32.u.map name="s2" onParent="true" value="42.5"/>
         <frac32.s.map name="ds2" onParent="true" value="-21.0"/>
         <frac32.s.map name="r" onParent="true" value="24.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_1" x="1148" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="1204" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1260" y="84">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="OSC" inlet="pitch"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="gate"/>
         <dest obj="ENV" inlet="gate"/>
      </net>
      <net>
         <source obj="ENV" outlet="env"/>
         <dest obj="*_1" inlet="a"/>
      </net>
      <net>
         <source obj="OSC" outlet="wave"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="velocity"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="touchwidth" outlet="out"/>
         <dest obj="+_1" inlet="in1"/>
         <dest obj="+_2" inlet="in1"/>
         <dest obj="+_3" inlet="in1"/>
         <dest obj="+_4" inlet="in1"/>
      </net>
      <net>
         <source obj="Load" outlet="o"/>
         <dest obj="load_4" inlet="trig"/>
      </net>
      <net>
         <source obj="indexed_4" outlet="out"/>
         <dest obj="load_4" inlet="filename"/>
      </net>
      <net>
         <source obj="preset" outlet="out"/>
         <dest obj="indexed_4" inlet="index"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="touch"/>
         <dest obj="touch smooth" inlet="in"/>
      </net>
      <net>
         <source obj="touch smooth" outlet="out"/>
         <dest obj="touchwidth" inlet="in"/>
      </net>
      <net>
         <source obj="+_4" outlet="out"/>
         <dest obj="OSC" inlet="mix3"/>
      </net>
      <net>
         <source obj="+_3" outlet="out"/>
         <dest obj="OSC" inlet="mix2"/>
      </net>
      <net>
         <source obj="+_2" outlet="out"/>
         <dest obj="OSC" inlet="mix1"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="OSC" inlet="mixSine"/>
      </net>
      <net>
         <source obj="mixSine" outlet="inlet"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="mix1" outlet="inlet"/>
         <dest obj="+_2" inlet="in2"/>
      </net>
      <net>
         <source obj="mix2" outlet="inlet"/>
         <dest obj="+_3" inlet="in2"/>
      </net>
      <net>
         <source obj="mix3" outlet="inlet"/>
         <dest obj="+_4" inlet="in2"/>
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
      <Author></Author>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>0</x>
      <y>0</y>
      <width>1695</width>
      <height>831</height>
   </windowPos>
</patch-1.0>