<patch-1.0 appVersion="1.0.9">
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="rate" x="14" y="14">
      <params>
         <frac32.u.map name="value" onParent="true" value="50.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="table/alloc 32b sdram" uuid="1a4546b7b52747ea765093ac97444601c44721e8" name="table" x="868" y="14">
      <params/>
      <attribs>
         <combo attributeName="size" selection="2048"/>
         <text attributeName="init">
            <sText><![CDATA[]]></sText>
         </text>
      </attribs>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="98" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="saturation on" x="280" y="112">
      <params>
         <bool32.tgl name="b" onParent="true" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="filter on" x="616" y="112">
      <params>
         <bool32.tgl name="b" onParent="true" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="in" x="98" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/phasor lin" uuid="ee34c4d34eba2cbd849b9e5631e60ce1651faf4c" name="phasor_1" x="182" y="224">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/sat" uuid="a64166c1389cd0d5c62a8d3cd5963613be84e9e8" name="sat_1" x="294" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="539c246f4c360ac476e128cfbfa84348fb7f7e73" name="mux_2" x="364" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="cpwitz/delay/triggered buffer feedback" uuid="cpwitz-delay-triggered buffer feedback" name="feedback-buffer" x="476" y="224">
      <params>
         <frac32.u.map name="feedback" onParent="true" value="16.0"/>
      </params>
      <attribs>
         <objref attributeName="table" obj="table"/>
      </attribs>
   </obj>
   <obj type="filter/vcf2" uuid="67c9424e51d449a210e1697a6c965c821522de8e" name="filter" x="714" y="224">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="34.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="539c246f4c360ac476e128cfbfa84348fb7f7e73" name="mux_1" x="812" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_1" x="896" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="980" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="ratemod" x="14" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dry/wet" x="812" y="378">
      <params>
         <frac32.u.map name="value" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="filter" outlet="out"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="sat_1" outlet="out"/>
         <dest obj="mux_2" inlet="i2"/>
      </net>
      <net>
         <source obj="phasor_1" outlet="phasor"/>
         <dest obj="feedback-buffer" inlet="trigger"/>
      </net>
      <net>
         <source obj="rate" outlet="out"/>
         <dest obj="filter" inlet="pitch"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="feedback-buffer" outlet="out"/>
         <dest obj="filter" inlet="in"/>
         <dest obj="mux_1" inlet="i1"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="xfade_1" inlet="i2"/>
      </net>
      <net>
         <source obj="filter on" outlet="o"/>
         <dest obj="mux_1" inlet="s"/>
      </net>
      <net>
         <source obj="saturation on" outlet="o"/>
         <dest obj="mux_2" inlet="s"/>
      </net>
      <net>
         <source obj="in" outlet="inlet"/>
         <dest obj="xfade_1" inlet="i1"/>
         <dest obj="mux_2" inlet="i1"/>
         <dest obj="sat_1" inlet="in"/>
      </net>
      <net>
         <source obj="xfade_1" outlet="o"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="dry/wet" outlet="out"/>
         <dest obj="xfade_1" inlet="c"/>
      </net>
      <net>
         <source obj="ratemod" outlet="inlet"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="phasor_1" inlet="freq"/>
      </net>
      <net>
         <source obj="mux_2" outlet="o"/>
         <dest obj="feedback-buffer" inlet="in"/>
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
      <x>448</x>
      <y>395</y>
      <width>1231</width>
      <height>642</height>
   </windowPos>
</patch-1.0>