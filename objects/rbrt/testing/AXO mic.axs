<patch-1.0 appVersion="1.0.12">
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="MIC in left" x="70" y="70">
      <params>
         <bool32.tgl name="b" onParent="true" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gpio/out/digital" uuid="320eed040f6c55bb24c56416596ac2e67d0c82bc" name="digital_1" x="168" y="70">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PC5"/>
         <combo attributeName="mode" selection="Push pull"/>
      </attribs>
   </obj>
   <nets>
      <net>
         <source obj="MIC in left" outlet="o"/>
         <dest obj="digital_1" inlet="in"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>0</x>
      <y>0</y>
      <width>400</width>
      <height>400</height>
   </windowPos>
</patch-1.0>