<patch-1.0 appVersion="1.0.11">
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="ON" x="28" y="28">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="pitch" x="196" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="gate" x="280" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="mux" x="364" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="C" x="28" y="84">
      <params>
         <frac32.s.map name="value" onParent="true" value="6.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="C#" x="98" y="84">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="D" x="168" y="84">
      <params>
         <frac32.s.map name="value" onParent="true" value="5.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="D#" x="238" y="84">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="E" x="308" y="84">
      <params>
         <frac32.s.map name="value" onParent="true" value="-15.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="F" x="378" y="84">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="F#" x="448" y="84">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="G" x="518" y="84">
      <params>
         <frac32.s.map name="value" onParent="true" value="24.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="G#" x="588" y="84">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="A" x="658" y="84">
      <params>
         <frac32.s.map name="value" onParent="true" value="18.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="A#" x="728" y="84">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="H" x="798" y="84">
      <params>
         <frac32.s.map name="value" onParent="true" value="-35.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/div 128" uuid="7e534ce0f62b1fddbad78a797d8c10c8d1a0b812" name="div_1" x="28" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/div 128" uuid="7e534ce0f62b1fddbad78a797d8c10c8d1a0b812" name="div_2" x="28" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/div 128" uuid="7e534ce0f62b1fddbad78a797d8c10c8d1a0b812" name="div_4" x="28" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/div 128" uuid="7e534ce0f62b1fddbad78a797d8c10c8d1a0b812" name="div_3" x="28" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/div 128" uuid="7e534ce0f62b1fddbad78a797d8c10c8d1a0b812" name="div_5" x="28" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="drj/mux/mux 12" uuid="da39b04ea2afde5167d9c2039376e8cc6202e28a" name="mux_1" x="490" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="644" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="3bcb8a666381ed18b8962eda50b1aa679136f618" name="mux_2" x="728" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/latch" uuid="14750683752bd43205826430adb7168dae3cc2c" name="latch_1" x="812" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="micro" x="896" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/div 128" uuid="7e534ce0f62b1fddbad78a797d8c10c8d1a0b812" name="div_8" x="28" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/div 128" uuid="7e534ce0f62b1fddbad78a797d8c10c8d1a0b812" name="div_6" x="28" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/div 128" uuid="7e534ce0f62b1fddbad78a797d8c10c8d1a0b812" name="div_9" x="28" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/div 128" uuid="7e534ce0f62b1fddbad78a797d8c10c8d1a0b812" name="div_7" x="28" y="504">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/div 128" uuid="7e534ce0f62b1fddbad78a797d8c10c8d1a0b812" name="div_10" x="28" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/div 128" uuid="7e534ce0f62b1fddbad78a797d8c10c8d1a0b812" name="div_11" x="28" y="588">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/div 128" uuid="7e534ce0f62b1fddbad78a797d8c10c8d1a0b812" name="div_12" x="28" y="630">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="C" outlet="out"/>
         <dest obj="div_1" inlet="in"/>
      </net>
      <net>
         <source obj="C#" outlet="out"/>
         <dest obj="div_2" inlet="in"/>
      </net>
      <net>
         <source obj="D" outlet="out"/>
         <dest obj="div_4" inlet="in"/>
      </net>
      <net>
         <source obj="D#" outlet="out"/>
         <dest obj="div_3" inlet="in"/>
      </net>
      <net>
         <source obj="E" outlet="out"/>
         <dest obj="div_5" inlet="in"/>
      </net>
      <net>
         <source obj="div_1" outlet="out"/>
         <dest obj="mux_1" inlet="i0"/>
      </net>
      <net>
         <source obj="div_2" outlet="out"/>
         <dest obj="mux_1" inlet="i1"/>
      </net>
      <net>
         <source obj="div_4" outlet="out"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="div_3" outlet="out"/>
         <dest obj="mux_1" inlet="i3"/>
      </net>
      <net>
         <source obj="div_5" outlet="out"/>
         <dest obj="mux_1" inlet="i4"/>
      </net>
      <net>
         <source obj="div_8" outlet="out"/>
         <dest obj="mux_1" inlet="i5"/>
      </net>
      <net>
         <source obj="div_6" outlet="out"/>
         <dest obj="mux_1" inlet="i6"/>
      </net>
      <net>
         <source obj="div_9" outlet="out"/>
         <dest obj="mux_1" inlet="i7"/>
      </net>
      <net>
         <source obj="div_7" outlet="out"/>
         <dest obj="mux_1" inlet="i8"/>
      </net>
      <net>
         <source obj="div_10" outlet="out"/>
         <dest obj="mux_1" inlet="i9"/>
      </net>
      <net>
         <source obj="div_11" outlet="out"/>
         <dest obj="mux_1" inlet="i10"/>
      </net>
      <net>
         <source obj="div_12" outlet="out"/>
         <dest obj="mux_1" inlet="i11"/>
      </net>
      <net>
         <source obj="F" outlet="out"/>
         <dest obj="div_8" inlet="in"/>
      </net>
      <net>
         <source obj="F#" outlet="out"/>
         <dest obj="div_6" inlet="in"/>
      </net>
      <net>
         <source obj="G" outlet="out"/>
         <dest obj="div_9" inlet="in"/>
      </net>
      <net>
         <source obj="G#" outlet="out"/>
         <dest obj="div_7" inlet="in"/>
      </net>
      <net>
         <source obj="A#" outlet="out"/>
         <dest obj="div_11" inlet="in"/>
      </net>
      <net>
         <source obj="A" outlet="out"/>
         <dest obj="div_10" inlet="in"/>
      </net>
      <net>
         <source obj="H" outlet="out"/>
         <dest obj="div_12" inlet="in"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="mux_2" inlet="i2"/>
      </net>
      <net>
         <source obj="mux" outlet="inlet"/>
         <dest obj="mux_1" inlet="s"/>
      </net>
      <net>
         <source obj="pitch" outlet="inlet"/>
         <dest obj="mux_2" inlet="i1"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="mux_2" outlet="o"/>
         <dest obj="latch_1" inlet="i"/>
      </net>
      <net>
         <source obj="ON" outlet="o"/>
         <dest obj="mux_2" inlet="s"/>
      </net>
      <net>
         <source obj="latch_1" outlet="o"/>
         <dest obj="micro" inlet="outlet"/>
      </net>
      <net>
         <source obj="gate" outlet="inlet"/>
         <dest obj="latch_1" inlet="trig"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>0</NPresets>
      <NPresetEntries>0</NPresetEntries>
      <NModulationSources>0</NModulationSources>
      <NModulationTargetsPerSource>0</NModulationTargetsPerSource>
      <Author>philoop</Author>
      <License>undefined</License>
      <Attributions>micro scaler </Attributions>
      <Saturate>false</Saturate>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>0</x>
      <y>0</y>
      <width>1109</width>
      <height>854</height>
   </windowPos>
</patch-1.0>