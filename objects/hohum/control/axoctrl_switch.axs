<patch-1.0 appVersion="1.0.12">
   <comment type="patch/comment" x="28" y="14" text="Hohum axoctrl switch"/>
   <comment type="patch/comment" x="28" y="28" text="Use this object to switch to next/previous patch in patch bank"/>
   <obj type="patch/bankindex" uuid="943bd281-10a5-4994-9876-11a3b1fbde8a" name="bankindex_1" x="70" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="next" x="28" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+1" uuid="13c1a4574bb81783beb8839e81782b9a34e3fc17" name="+1_1" x="126" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/load i" uuid="b79124f5b7d1e8b39e187677ddab6260ce8c60a3" name="load_1" x="196" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="previous" x="28" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/-1" uuid="5fd46bab471bb6509ae83de702dea72933683a98" name="-1_1" x="126" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/load i" uuid="b79124f5b7d1e8b39e187677ddab6260ce8c60a3" name="load_2" x="196" y="168">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="bankindex_1" outlet="index"/>
         <dest obj="+1_1" inlet="a"/>
         <dest obj="-1_1" inlet="a"/>
      </net>
      <net>
         <source obj="+1_1" outlet="result"/>
         <dest obj="load_1" inlet="i"/>
      </net>
      <net>
         <source obj="-1_1" outlet="result"/>
         <dest obj="load_2" inlet="i"/>
      </net>
      <net>
         <source obj="next" outlet="inlet"/>
         <dest obj="load_1" inlet="trig"/>
      </net>
      <net>
         <source obj="previous" outlet="inlet"/>
         <dest obj="load_2" inlet="trig"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author>hohum_lab (berendkleinhaneveld)</Author>
      <License>undefined</License>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>96</x>
      <y>210</y>
      <width>538</width>
      <height>350</height>
   </windowPos>
</patch-1.0>