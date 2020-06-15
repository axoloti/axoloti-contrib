<patch-1.0 appVersion="1.0.12">
   <comment type="patch/comment" x="42" y="14" text="Hohum Axoctrl button"/>
   <comment type="patch/comment" x="42" y="28" text="Simple button patch to trigger actions on short and/or long presses"/>
   <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="Long press val" x="168" y="56">
      <params/>
      <attribs>
         <spinner attributeName="value" value="2"/>
      </attribs>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="button" x="42" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/control/click hold" uuid="18efd892-468b-4395-a455-47ea981ad016" name="click_1" x="168" y="112">
      <params/>
      <attribs>
         <spinner attributeName="short" value="190"/>
         <spinner attributeName="long" value="3000"/>
         <spinner attributeName="cancel" value="6000"/>
      </attribs>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="short" x="504" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="deaf0d36642c57876c4101e86f8a0b6a06021ab2" name="==_1" x="336" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="tiar/logic/rising" uuid="1d591a21-ac71-4b69-96f2-5c17b11ec2cd" name="rising_1" x="406" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="long" x="504" y="168">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="click_1" outlet="stage"/>
         <dest obj="==_1" inlet="in1"/>
      </net>
      <net>
         <source obj="Long press val" outlet="out"/>
         <dest obj="==_1" inlet="in2"/>
      </net>
      <net>
         <source obj="click_1" outlet="short"/>
         <dest obj="short" inlet="outlet"/>
      </net>
      <net>
         <source obj="button" outlet="inlet"/>
         <dest obj="click_1" inlet="gate"/>
      </net>
      <net>
         <source obj="rising_1" outlet="trig"/>
         <dest obj="long" inlet="outlet"/>
      </net>
      <net>
         <source obj="==_1" outlet="out"/>
         <dest obj="rising_1" inlet="in"/>
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
      <x>58</x>
      <y>74</y>
      <width>702</width>
      <height>371</height>
   </windowPos>
</patch-1.0>