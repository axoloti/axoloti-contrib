<patch-1.0 appVersion="1.0.8">
   <comment type="patch/comment" x="28" y="14" text="a filter based on pd&apos;s 4poleLP~"/>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="filter in" x="28" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="vcf freq" x="98" y="28">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/vcf" uuid="2b0aad6aeb06cc86c5802d2f167e9f281d8c35e1" name="vcf_1" x="168" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/hp1" uuid="abea7276611b289bed35b80345a6bc4efd4d9a4e" name="hp freq" x="266" y="28">
      <params>
         <frac32.s.map name="freq" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="364" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="vcf res" x="98" y="112">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/vcf" uuid="2b0aad6aeb06cc86c5802d2f167e9f281d8c35e1" name="vcf_2" x="168" y="112">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="vcf_1" outlet="out"/>
         <dest obj="vcf_2" inlet="in"/>
      </net>
      <net>
         <source obj="filter in" outlet="inlet"/>
         <dest obj="vcf_1" inlet="in"/>
      </net>
      <net>
         <source obj="vcf_2" outlet="out"/>
         <dest obj="hp freq" inlet="in"/>
      </net>
      <net>
         <source obj="hp freq" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="vcf freq" outlet="out"/>
         <dest obj="vcf_1" inlet="frequency"/>
         <dest obj="vcf_2" inlet="frequency"/>
      </net>
      <net>
         <source obj="vcf res" outlet="out"/>
         <dest obj="vcf_1" inlet="reso"/>
         <dest obj="vcf_2" inlet="reso"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author>worerparasite303</Author>
      <License>LGPL</License>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>731</x>
      <y>97</y>
      <width>463</width>
      <height>478</height>
   </windowPos>
</patch-1.0>