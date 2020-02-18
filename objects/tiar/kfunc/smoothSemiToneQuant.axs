<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="in" x="28" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="tiar/kfunc/quant" uuid="c7fe0315-febf-47b4-915e-d8fefd0ae05e" name="quant_3" x="154" y="84">
      <params>
         <frac32.u.map name="quant" value="1.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/-" uuid="3280bb759e9fc189e134300e48dda7e903c9a110" name="-_6" x="252" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="kfilter/lowpass" uuid="4f0d68b39b6f6b1c1d371b028d84391d14062d68" name="lowpass_2" x="322" y="84">
      <params>
         <frac32.s.map name="freq" value="-64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/-" uuid="3280bb759e9fc189e134300e48dda7e903c9a110" name="-_8" x="420" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_4" x="490" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_1" x="574" y="84">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="quant_3" outlet="out"/>
         <dest obj="+_4" inlet="in2"/>
         <dest obj="-_6" inlet="in2"/>
      </net>
      <net>
         <source obj="in" outlet="inlet"/>
         <dest obj="quant_3" inlet="in"/>
         <dest obj="-_6" inlet="in1"/>
      </net>
      <net>
         <source obj="lowpass_2" outlet="out"/>
         <dest obj="-_8" inlet="in2"/>
      </net>
      <net>
         <source obj="-_6" outlet="out"/>
         <dest obj="lowpass_2" inlet="in"/>
         <dest obj="-_8" inlet="in1"/>
      </net>
      <net>
         <source obj="-_8" outlet="out"/>
         <dest obj="+_4" inlet="in1"/>
      </net>
      <net>
         <source obj="+_4" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>0</NPresets>
      <NPresetEntries>0</NPresetEntries>
      <NModulationSources>0</NModulationSources>
      <NModulationTargetsPerSource>0</NModulationTargetsPerSource>
      <Author></Author>
      <Saturate>false</Saturate>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>0</x>
      <y>0</y>
      <width>1020</width>
      <height>400</height>
   </windowPos>
</patch-1.0>