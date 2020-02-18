<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="in" x="28" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/&gt;&gt;" uuid="d883beaf50b7aae4803ed9941e8f123e87e1e3aa" name="&gt;&gt;_1" x="112" y="28">
      <params/>
      <attribs>
         <spinner attributeName="shift" value="1"/>
      </attribs>
   </obj>
   <obj type="table/read interp" uuid="e650ab07d8398b3a0fc7b498a9580d4144727675" name="read_1" x="210" y="28">
      <params/>
      <attribs>
         <objref attributeName="table" obj="fade"/>
      </attribs>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="350" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="table/read interp" uuid="e650ab07d8398b3a0fc7b498a9580d4144727675" name="read_2" x="434" y="28">
      <params/>
      <attribs>
         <objref attributeName="table" obj="fade"/>
      </attribs>
   </obj>
   <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_1" x="350" y="98">
      <params/>
      <attribs>
         <spinner attributeName="value" value="32"/>
      </attribs>
   </obj>
   <obj type="table/allocate 32b 16sliders" uuid="2f6705095e0695dcb701b7e442401b54838a4316" name="fade" x="28" y="112">
      <params>
         <frac32.s.mapvsl name="b0" value="0.0"/>
         <frac32.s.mapvsl name="b1" value="32.0"/>
         <frac32.s.mapvsl name="b2" value="64.0"/>
         <frac32.s.mapvsl name="b3" value="64.0"/>
         <frac32.s.mapvsl name="b4" value="64.0"/>
         <frac32.s.mapvsl name="b5" value="0.0"/>
         <frac32.s.mapvsl name="b6" value="0.0"/>
         <frac32.s.mapvsl name="b7" value="0.0"/>
         <frac32.s.mapvsl name="b8" value="0.0"/>
         <frac32.s.mapvsl name="b9" value="0.0"/>
         <frac32.s.mapvsl name="b10" value="0.0"/>
         <frac32.s.mapvsl name="b11" value="64.0"/>
         <frac32.s.mapvsl name="b12" value="64.0"/>
         <frac32.s.mapvsl name="b13" value="64.0"/>
         <frac32.s.mapvsl name="b14" value="32.0"/>
         <frac32.s.mapvsl name="b15" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="level1" x="280" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="level2" x="434" y="224">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="&gt;&gt;_1" outlet="result"/>
         <dest obj="read_1" inlet="a"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="read_1" outlet="o"/>
         <dest obj="level1" inlet="outlet"/>
      </net>
      <net>
         <source obj="read_2" outlet="o"/>
         <dest obj="level2" inlet="outlet"/>
      </net>
      <net>
         <source obj="i_1" outlet="out"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="read_2" inlet="a"/>
      </net>
      <net>
         <source obj="in" outlet="inlet"/>
         <dest obj="&gt;&gt;_1" inlet="a"/>
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
      <Attributions></Attributions>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>133</x>
      <y>194</y>
      <width>657</width>
      <height>429</height>
   </windowPos>
</patch-1.0>