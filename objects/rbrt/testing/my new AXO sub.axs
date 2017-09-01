<patch-1.0 appVersion="1.0.11">
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Lgreen" x="140" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/out/digital" uuid="320eed040f6c55bb24c56416596ac2e67d0c82bc" name="digital_5" x="294" y="112">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PC2"/>
         <combo attributeName="mode" selection="Push pull"/>
      </attribs>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_9" x="448" y="140">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PA0"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="rbrt/control/speedlim" uuid="67c994de-e8ef-47f7-823a-4956d72fb5c2" name="speedlim_1" x="560" y="140">
      <params>
         <frac32.s.map name="d" value="-15.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="buttonL" x="742" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Lred" x="140" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/out/digital" uuid="320eed040f6c55bb24c56416596ac2e67d0c82bc" name="digital_6" x="294" y="196">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PC3"/>
         <combo attributeName="mode" selection="Push pull"/>
      </attribs>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Mgreen" x="140" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/out/digital" uuid="320eed040f6c55bb24c56416596ac2e67d0c82bc" name="digital_1" x="280" y="308">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PC0"/>
         <combo attributeName="mode" selection="Push pull"/>
      </attribs>
   </obj>
   <obj type="rbrt/control/speedlim" uuid="67c994de-e8ef-47f7-823a-4956d72fb5c2" name="speedlim_2" x="560" y="322">
      <params>
         <frac32.s.map name="d" value="-15.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_8" x="448" y="336">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PA1"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="buttonM" x="700" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Mred" x="140" y="392">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/out/digital" uuid="320eed040f6c55bb24c56416596ac2e67d0c82bc" name="digital_2" x="280" y="392">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PC1"/>
         <combo attributeName="mode" selection="Push pull"/>
      </attribs>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Rgreen" x="140" y="504">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/out/digital" uuid="320eed040f6c55bb24c56416596ac2e67d0c82bc" name="digital_3" x="280" y="504">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB8"/>
         <combo attributeName="mode" selection="Push pull"/>
      </attribs>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="digital_7" x="448" y="546">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PA2"/>
         <combo attributeName="mode" selection="pulldown"/>
      </attribs>
   </obj>
   <obj type="rbrt/control/speedlim" uuid="67c994de-e8ef-47f7-823a-4956d72fb5c2" name="speedlim_3" x="560" y="546">
      <params>
         <frac32.s.map name="d" value="-15.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="buttonR" x="700" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Rred" x="140" y="588">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/out/digital" uuid="320eed040f6c55bb24c56416596ac2e67d0c82bc" name="digital_4" x="280" y="588">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB9"/>
         <combo attributeName="mode" selection="Push pull"/>
      </attribs>
   </obj>
   <nets>
      <net>
         <source obj="Lred" outlet="inlet"/>
         <dest obj="digital_6" inlet="in"/>
      </net>
      <net>
         <source obj="Mgreen" outlet="inlet"/>
         <dest obj="digital_1" inlet="in"/>
      </net>
      <net>
         <source obj="Mred" outlet="inlet"/>
         <dest obj="digital_2" inlet="in"/>
      </net>
      <net>
         <source obj="Rgreen" outlet="inlet"/>
         <dest obj="digital_3" inlet="in"/>
      </net>
      <net>
         <source obj="Rred" outlet="inlet"/>
         <dest obj="digital_4" inlet="in"/>
      </net>
      <net>
         <source obj="Lgreen" outlet="inlet"/>
         <dest obj="digital_5" inlet="in"/>
      </net>
      <net>
         <source obj="digital_9" outlet="out"/>
         <dest obj="speedlim_1" inlet="in"/>
      </net>
      <net>
         <source obj="digital_8" outlet="out"/>
         <dest obj="speedlim_2" inlet="in"/>
      </net>
      <net>
         <source obj="digital_7" outlet="out"/>
         <dest obj="speedlim_3" inlet="in"/>
      </net>
      <net>
         <source obj="speedlim_1" outlet="out"/>
         <dest obj="buttonL" inlet="outlet"/>
      </net>
      <net>
         <source obj="speedlim_2" outlet="out"/>
         <dest obj="buttonM" inlet="outlet"/>
      </net>
      <net>
         <source obj="speedlim_3" outlet="out"/>
         <dest obj="buttonR" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-1032</x>
      <y>-40</y>
      <width>1040</width>
      <height>744</height>
   </windowPos>
</patch-1.0>