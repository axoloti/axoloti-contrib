<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="toggle" x="28" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="rec" x="28" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_1" x="168" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/flipflop toggle" uuid="195e489e5fc3d275944b0de56c7a91c8641ea22a" name="flipflop_1" x="280" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="play" x="574" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/or 2" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="or_1" x="168" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/control/t2p" uuid="e076e6e6-f59e-429e-b4ca-c0f3e55f074a" name="t2p_1" x="462" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="reset" x="574" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/patching/loadbang" uuid="45d1f29d-ac62-4e5b-86f8-2201d2f6c689" name="loadbang_1" x="0" y="168">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="rec" outlet="inlet"/>
         <dest obj="inv_1" inlet="i"/>
         <dest obj="or_1" inlet="i1"/>
      </net>
      <net>
         <source obj="loadbang_1" outlet="pulse"/>
         <dest obj="or_1" inlet="i2"/>
      </net>
      <net>
         <source obj="inv_1" outlet="o"/>
         <dest obj="flipflop_1" inlet="set"/>
      </net>
      <net>
         <source obj="or_1" outlet="o"/>
         <dest obj="flipflop_1" inlet="reset"/>
      </net>
      <net>
         <source obj="flipflop_1" outlet="o"/>
         <dest obj="t2p_1" inlet="trig"/>
         <dest obj="play" inlet="outlet"/>
      </net>
      <net>
         <source obj="toggle" outlet="inlet"/>
         <dest obj="flipflop_1" inlet="trig"/>
      </net>
      <net>
         <source obj="t2p_1" outlet="pulse"/>
         <dest obj="reset" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>339</x>
      <y>0</y>
      <width>926</width>
      <height>775</height>
   </windowPos>
</patch-1.0>