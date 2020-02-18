<patch-1.0 appVersion="1.0.12">
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="note +-" x="1176" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="midi/in/keyb" uuid="53b04874696932f38aceaa168bd5d9efb743716d" name="keyb_1" x="28" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="gate" x="1176" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="gate2" x="1176" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="velocity +" x="1176" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="releaseVeocity +" x="1176" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="Left Att" x="350" y="224">
      <params>
         <frac32.s.map name="value" onParent="true" MidiCC="27" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_2" x="980" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="dial_2" x="154" y="294">
      <params>
         <frac32.s.map name="value" value="-64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_1" x="560" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="jv/math/constrain b input" uuid="32556959-2471-4853-a1ee-cd607b20fcc2" name="constrain_1" x="280" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/-" uuid="3280bb759e9fc189e134300e48dda7e903c9a110" name="-_1" x="434" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="644" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="Split" x="154" y="378">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="jv/math/constrain b input" uuid="32556959-2471-4853-a1ee-cd607b20fcc2" name="constrain_2" x="280" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/-" uuid="3280bb759e9fc189e134300e48dda7e903c9a110" name="-_2" x="434" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_2" x="560" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="dial_3" x="154" y="462">
      <params>
         <frac32.s.map name="value" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="Right Att" x="350" y="490">
      <params>
         <frac32.s.map name="value" onParent="true" MidiCC="82" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="note +-" inlet="outlet"/>
         <dest obj="constrain_1" inlet="in"/>
         <dest obj="constrain_2" inlet="in"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="velocity"/>
         <dest obj="+_2" inlet="in2"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="releaseVelocity"/>
         <dest obj="releaseVeocity +" inlet="outlet"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="gate"/>
         <dest obj="gate" inlet="outlet"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="gate2"/>
         <dest obj="gate2" inlet="outlet"/>
      </net>
      <net>
         <source obj="Split" outlet="out"/>
         <dest obj="constrain_1" inlet="max"/>
         <dest obj="constrain_2" inlet="min"/>
         <dest obj="-_1" inlet="in1"/>
         <dest obj="-_2" inlet="in2"/>
      </net>
      <net>
         <source obj="constrain_1" outlet="out"/>
         <dest obj="-_1" inlet="in2"/>
      </net>
      <net>
         <source obj="dial_2" outlet="out"/>
         <dest obj="constrain_1" inlet="min"/>
      </net>
      <net>
         <source obj="dial_3" outlet="out"/>
         <dest obj="constrain_2" inlet="max"/>
      </net>
      <net>
         <source obj="constrain_2" outlet="out"/>
         <dest obj="-_2" inlet="in1"/>
      </net>
      <net>
         <source obj="Left Att" outlet="out"/>
         <dest obj="*_1" inlet="a"/>
      </net>
      <net>
         <source obj="-_1" outlet="out"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="*_2" outlet="result"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="-_2" outlet="out"/>
         <dest obj="*_2" inlet="a"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="+_2" inlet="in1"/>
      </net>
      <net>
         <source obj="+_2" outlet="out"/>
         <dest obj="velocity +" inlet="outlet"/>
      </net>
      <net>
         <source obj="Right Att" outlet="out"/>
         <dest obj="*_2" inlet="b"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-8</x>
      <y>-8</y>
      <width>1552</width>
      <height>840</height>
   </windowPos>
</patch-1.0>