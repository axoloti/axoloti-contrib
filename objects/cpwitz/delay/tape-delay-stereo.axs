<patch-1.0 appVersion="1.0.9">
   <obj type="table/alloc 32b sdram" uuid="1a4546b7b52747ea765093ac97444601c44721e8" name="buffer-l" x="826" y="0">
      <params/>
      <attribs>
         <combo attributeName="size" selection="2048"/>
         <text attributeName="init">
            <sText><![CDATA[]]></sText>
         </text>
      </attribs>
   </obj>
   <obj type="table/alloc 32b sdram" uuid="1a4546b7b52747ea765093ac97444601c44721e8" name="buffer-r" x="966" y="0">
      <params/>
      <attribs>
         <combo attributeName="size" selection="2048"/>
         <text attributeName="init">
            <sText><![CDATA[]]></sText>
         </text>
      </attribs>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="rate-l" x="14" y="98">
      <params>
         <frac32.u.map name="value" onParent="true" value="50.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="rate-r" x="98" y="98">
      <params>
         <frac32.u.map name="value" onParent="true" value="50.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="rate-combined" x="182" y="98">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="feedback" x="532" y="112">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="filterfreq" x="728" y="140">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dry/wet" x="910" y="168">
      <params>
         <frac32.u.map name="value" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/&gt;&gt;" uuid="d883beaf50b7aae4803ed9941e8f123e87e1e3aa" name="&gt;&gt;_1" x="98" y="252">
      <params/>
      <attribs>
         <spinner attributeName="shift" value="2"/>
      </attribs>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="196" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_4" x="280" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="in" x="364" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/phasor lin" uuid="ee34c4d34eba2cbd849b9e5631e60ce1651faf4c" name="phasor_1" x="504" y="266">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="cpwitz/delay/triggered buffer feedback" uuid="cpwitz-delay-triggered buffer feedback" name="triggered_1" x="672" y="266">
      <params>
         <frac32.u.map name="feedback" value="0.0"/>
      </params>
      <attribs>
         <objref attributeName="table" obj="buffer-l"/>
      </attribs>
   </obj>
   <obj type="filter/vcf2" uuid="67c9424e51d449a210e1697a6c965c821522de8e" name="filter-out" x="896" y="266">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_1" x="1078" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="l" x="1190" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="rate-left" x="14" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="rate-right" x="14" y="392">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/&gt;&gt;" uuid="d883beaf50b7aae4803ed9941e8f123e87e1e3aa" name="&gt;&gt;_2" x="98" y="392">
      <params/>
      <attribs>
         <spinner attributeName="shift" value="2"/>
      </attribs>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_2" x="196" y="392">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_5" x="280" y="392">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/phasor lin" uuid="ee34c4d34eba2cbd849b9e5631e60ce1651faf4c" name="phasor_2" x="504" y="406">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="cpwitz/delay/triggered buffer feedback" uuid="cpwitz-delay-triggered buffer feedback" name="triggered_2" x="672" y="420">
      <params>
         <frac32.u.map name="feedback" value="0.0"/>
      </params>
      <attribs>
         <objref attributeName="table" obj="buffer-r"/>
      </attribs>
   </obj>
   <obj type="filter/vcf2" uuid="67c9424e51d449a210e1697a6c965c821522de8e" name="filter-out_" x="896" y="420">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_2" x="1078" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="r" x="1190" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_3" x="112" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="rate-comb" x="14" y="476">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="rate-l" outlet="out"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="in" outlet="inlet"/>
         <dest obj="xfade_1" inlet="i1"/>
         <dest obj="xfade_2" inlet="i1"/>
         <dest obj="triggered_2" inlet="in"/>
         <dest obj="triggered_1" inlet="in"/>
      </net>
      <net>
         <source obj="xfade_1" outlet="o"/>
         <dest obj="l" inlet="outlet"/>
      </net>
      <net>
         <source obj="dry/wet" outlet="out"/>
         <dest obj="xfade_1" inlet="c"/>
         <dest obj="xfade_2" inlet="c"/>
      </net>
      <net>
         <source obj="rate-left" outlet="inlet"/>
         <dest obj="&gt;&gt;_1" inlet="a"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="+_4" inlet="in1"/>
      </net>
      <net>
         <source obj="&gt;&gt;_1" outlet="result"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="rate-right" outlet="inlet"/>
         <dest obj="&gt;&gt;_2" inlet="a"/>
      </net>
      <net>
         <source obj="rate-r" outlet="out"/>
         <dest obj="+_2" inlet="in1"/>
      </net>
      <net>
         <source obj="&gt;&gt;_2" outlet="result"/>
         <dest obj="+_2" inlet="in2"/>
      </net>
      <net>
         <source obj="filterfreq" outlet="out"/>
         <dest obj="filter-out" inlet="pitch"/>
         <dest obj="filter-out_" inlet="pitch"/>
      </net>
      <net>
         <source obj="+_2" outlet="out"/>
         <dest obj="+_5" inlet="in1"/>
      </net>
      <net>
         <source obj="xfade_2" outlet="o"/>
         <dest obj="r" inlet="outlet"/>
      </net>
      <net>
         <source obj="phasor_1" outlet="phasor"/>
         <dest obj="triggered_1" inlet="trigger"/>
      </net>
      <net>
         <source obj="phasor_2" outlet="phasor"/>
         <dest obj="triggered_2" inlet="trigger"/>
      </net>
      <net>
         <source obj="feedback" outlet="out"/>
         <dest obj="triggered_2" inlet="feedback"/>
         <dest obj="triggered_1" inlet="feedback"/>
      </net>
      <net>
         <source obj="filter-out" outlet="out"/>
         <dest obj="xfade_1" inlet="i2"/>
      </net>
      <net>
         <source obj="filter-out_" outlet="out"/>
         <dest obj="xfade_2" inlet="i2"/>
      </net>
      <net>
         <source obj="rate-comb" outlet="inlet"/>
         <dest obj="+_3" inlet="in2"/>
      </net>
      <net>
         <source obj="rate-combined" outlet="out"/>
         <dest obj="+_3" inlet="in1"/>
      </net>
      <net>
         <source obj="+_3" outlet="out"/>
         <dest obj="+_4" inlet="in2"/>
         <dest obj="+_5" inlet="in2"/>
      </net>
      <net>
         <source obj="+_4" outlet="out"/>
         <dest obj="phasor_1" inlet="freq"/>
      </net>
      <net>
         <source obj="+_5" outlet="out"/>
         <dest obj="phasor_2" inlet="freq"/>
      </net>
      <net>
         <source obj="triggered_2" outlet="out"/>
         <dest obj="filter-out_" inlet="in"/>
      </net>
      <net>
         <source obj="triggered_1" outlet="out"/>
         <dest obj="filter-out" inlet="in"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>0</NPresets>
      <NPresetEntries>0</NPresetEntries>
      <NModulationSources>0</NModulationSources>
      <NModulationTargetsPerSource>0</NModulationTargetsPerSource>
      <Author>Peter Witzel</Author>
      <License>CC0</License>
   </settings>
   <notes><![CDATA[A pitch-shifting tape delay effect with saturation. Sounds like cheap bbd delays.]]></notes>
   <windowPos>
      <x>372</x>
      <y>474</y>
      <width>1758</width>
      <height>825</height>
   </windowPos>
</patch-1.0>