<patch-1.0 appVersion="1.0.12">
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="OFFSET" x="1260" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="offset" x="56" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/math/scale m" uuid="ed61801c-b16c-4ac5-8ee1-d4d02ba68483" name="scale_2" x="938" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/math/scale m" uuid="ed61801c-b16c-4ac5-8ee1-d4d02ba68483" name="scale_1" x="686" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="812" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/-" uuid="3280bb759e9fc189e134300e48dda7e903c9a110" name="-_1" x="1078" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/min" uuid="e3d20abc508a5b2245686febc1caf036edc7f501" name="min_2" x="1162" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="drj/math/inv_pos" uuid="ae23d42592d86ae7d7f2202cb1124490774d118a" name="inv_pos_1" x="266" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/&gt;&gt;" uuid="d883beaf50b7aae4803ed9941e8f123e87e1e3aa" name="&gt;&gt;_1" x="406" y="98">
      <params/>
      <attribs>
         <spinner attributeName="shift" value="6"/>
      </attribs>
   </obj>
   <obj type="drj/math/inv_pos" uuid="ae23d42592d86ae7d7f2202cb1124490774d118a" name="inv_pos_2" x="546" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="RANGE" x="1260" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="range" x="56" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="omod" x="56" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_1" x="1050" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_1" x="686" y="196">
      <params/>
      <attribs>
         <spinner attributeName="value" value="64"/>
      </attribs>
   </obj>
   <obj type="rbrt/math/scale m" uuid="ed61801c-b16c-4ac5-8ee1-d4d02ba68483" name="scale_3" x="868" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="rmod" x="56" y="238">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="-_1" inlet="in1"/>
         <dest obj="scale_2" inlet="high"/>
      </net>
      <net>
         <source obj="scale_2" outlet="out"/>
         <dest obj="-_1" inlet="in2"/>
         <dest obj="OFFSET" inlet="outlet"/>
      </net>
      <net>
         <source obj="-_1" outlet="out"/>
         <dest obj="min_2" inlet="in1"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="min_2" inlet="in2"/>
      </net>
      <net>
         <source obj="min_2" outlet="out"/>
         <dest obj="RANGE" inlet="outlet"/>
      </net>
      <net>
         <source obj="scale_1" outlet="out"/>
         <dest obj="scale_2" inlet="in"/>
      </net>
      <net>
         <source obj="scale_3" outlet="out"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="inv_pos_1" outlet="out"/>
         <dest obj="&gt;&gt;_1" inlet="a"/>
      </net>
      <net>
         <source obj="&gt;&gt;_1" outlet="result"/>
         <dest obj="inv_pos_2" inlet="in"/>
         <dest obj="scale_3" inlet="low"/>
      </net>
      <net>
         <source obj="inv_pos_2" outlet="out"/>
         <dest obj="scale_1" inlet="high"/>
      </net>
      <net>
         <source obj="offset" outlet="inlet"/>
         <dest obj="+_1" inlet="in1"/>
         <dest obj="scale_2" inlet="low"/>
      </net>
      <net>
         <source obj="range" outlet="inlet"/>
         <dest obj="inv_pos_1" inlet="in"/>
         <dest obj="+_1" inlet="in2"/>
         <dest obj="*_1" inlet="a"/>
      </net>
      <net>
         <source obj="omod" outlet="inlet"/>
         <dest obj="scale_1" inlet="in"/>
      </net>
      <net>
         <source obj="rmod" outlet="inlet"/>
         <dest obj="scale_3" inlet="in"/>
      </net>
      <net>
         <source obj="i_1" outlet="out"/>
         <dest obj="scale_3" inlet="high"/>
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