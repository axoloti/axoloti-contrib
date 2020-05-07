<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Lgreen" x="140" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/out/digital" uuid="320eed040f6c55bb24c56416596ac2e67d0c82bc" name="G left" x="280" y="112">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB1"/>
         <combo attributeName="mode" selection="Push pull"/>
      </attribs>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Lred" x="140" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/out/digital" uuid="320eed040f6c55bb24c56416596ac2e67d0c82bc" name="R left" x="280" y="196">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PB0"/>
         <combo attributeName="mode" selection="Push pull"/>
      </attribs>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="BUTTON LEFT" x="672" y="196">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PA0"/>
         <combo attributeName="mode" selection="pullup"/>
      </attribs>
   </obj>
   <obj type="rbrt/control/speedlim attr" uuid="312d9785-af8a-43d8-bee0-a4cc8e09fb54" name="speedlim_1" x="784" y="196">
      <params/>
      <attribs>
         <spinner attributeName="time" value="300"/>
      </attribs>
   </obj>
   <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_1" x="952" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="buttonL" x="1036" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="BUTTON MID" x="672" y="266">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PA1"/>
         <combo attributeName="mode" selection="pullup"/>
      </attribs>
   </obj>
   <obj type="rbrt/control/speedlim attr" uuid="312d9785-af8a-43d8-bee0-a4cc8e09fb54" name="speedlim_2" x="784" y="280">
      <params/>
      <attribs>
         <spinner attributeName="time" value="300"/>
      </attribs>
   </obj>
   <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_2" x="952" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="buttonM" x="1036" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/out/digital" uuid="320eed040f6c55bb24c56416596ac2e67d0c82bc" name="G mid" x="280" y="294">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PA7"/>
         <combo attributeName="mode" selection="Push pull"/>
      </attribs>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Mgreen" x="140" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/digital" uuid="f59f139e8da912742832dc541157f20f30b7ac1b" name="BUTTON RIGHT" x="672" y="336">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PA2"/>
         <combo attributeName="mode" selection="pullup"/>
      </attribs>
   </obj>
   <obj type="rbrt/control/speedlim attr" uuid="312d9785-af8a-43d8-bee0-a4cc8e09fb54" name="speedlim_3" x="784" y="350">
      <params/>
      <attribs>
         <spinner attributeName="time" value="300"/>
      </attribs>
   </obj>
   <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_3" x="952" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="buttonR" x="1036" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Mred" x="140" y="392">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/out/digital" uuid="320eed040f6c55bb24c56416596ac2e67d0c82bc" name="R mid" x="280" y="392">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PA6"/>
         <combo attributeName="mode" selection="Push pull"/>
      </attribs>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Rgreen" x="140" y="504">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/out/digital" uuid="320eed040f6c55bb24c56416596ac2e67d0c82bc" name="G right" x="308" y="504">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PA4"/>
         <combo attributeName="mode" selection="Push pull"/>
      </attribs>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Rred" x="140" y="588">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/out/digital" uuid="320eed040f6c55bb24c56416596ac2e67d0c82bc" name="R right" x="308" y="588">
      <params/>
      <attribs>
         <combo attributeName="pad" selection="PA5"/>
         <combo attributeName="mode" selection="Push pull"/>
      </attribs>
   </obj>
   <nets>
      <net>
         <source obj="BUTTON LEFT" outlet="out"/>
         <dest obj="speedlim_1" inlet="in"/>
      </net>
      <net>
         <source obj="speedlim_1" outlet="out"/>
         <dest obj="inv_1" inlet="i"/>
      </net>
      <net>
         <source obj="inv_1" outlet="o"/>
         <dest obj="buttonL" inlet="outlet"/>
      </net>
      <net>
         <source obj="inv_2" outlet="o"/>
         <dest obj="buttonM" inlet="outlet"/>
      </net>
      <net>
         <source obj="inv_3" outlet="o"/>
         <dest obj="buttonR" inlet="outlet"/>
      </net>
      <net>
         <source obj="Rgreen" outlet="inlet"/>
         <dest obj="G right" inlet="in"/>
      </net>
      <net>
         <source obj="Lred" outlet="inlet"/>
         <dest obj="R left" inlet="in"/>
      </net>
      <net>
         <source obj="Lgreen" outlet="inlet"/>
         <dest obj="G left" inlet="in"/>
      </net>
      <net>
         <source obj="Rred" outlet="inlet"/>
         <dest obj="R right" inlet="in"/>
      </net>
      <net>
         <source obj="Mred" outlet="inlet"/>
         <dest obj="R mid" inlet="in"/>
      </net>
      <net>
         <source obj="Mgreen" outlet="inlet"/>
         <dest obj="G mid" inlet="in"/>
      </net>
      <net>
         <source obj="speedlim_2" outlet="out"/>
         <dest obj="inv_2" inlet="i"/>
      </net>
      <net>
         <source obj="BUTTON MID" outlet="out"/>
         <dest obj="speedlim_2" inlet="in"/>
      </net>
      <net>
         <source obj="BUTTON RIGHT" outlet="out"/>
         <dest obj="speedlim_3" inlet="in"/>
      </net>
      <net>
         <source obj="speedlim_3" outlet="out"/>
         <dest obj="inv_3" inlet="i"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-8</x>
      <y>-8</y>
      <width>1616</width>
      <height>876</height>
   </windowPos>
</patch-1.0>