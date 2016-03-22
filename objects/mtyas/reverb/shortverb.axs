<patch-1.0 appVersion="1.0.8">
   <obj type="filter/fdbkcomb" sha="c1460c1719f177dfad99c9c5a2660c2408879c1d" uuid="b252513db2f8cc9a8964bad2a8eb7922be08690f" name="fdbkcomb_2" x="812" y="98">
      <params>
         <frac32.s.map name="a" value="-54.0"/>
         <frac32.s.map name="b" value="51.299999713897705"/>
      </params>
      <attribs>
         <spinner attributeName="delay" value="1601"/>
      </attribs>
   </obj>
   <obj type="filter/fdbkcomb" sha="c1460c1719f177dfad99c9c5a2660c2408879c1d" uuid="b252513db2f8cc9a8964bad2a8eb7922be08690f" name="fdbkcomb_1" x="812" y="294">
      <params>
         <frac32.s.map name="a" value="-53.0"/>
         <frac32.s.map name="b" value="49.5"/>
      </params>
      <attribs>
         <spinner attributeName="delay" value="1687"/>
      </attribs>
   </obj>
   <obj type="patch/inlet a" sha="709c10aa648c6e5a3c00da4b5dd238899a7c109c" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="inlet_1" x="168" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/allpass" sha="37340d199dcecabccaa8b825fa01a5fb789d939" uuid="59cc8e3d8044e145e1eb908baa5a7d3ed2ec5f72" name="allpass_1" x="280" y="364">
      <params>
         <frac32.s.map name="g" value="12.0"/>
      </params>
      <attribs>
         <spinner attributeName="delay" value="281"/>
      </attribs>
   </obj>
   <obj type="filter/allpass" sha="37340d199dcecabccaa8b825fa01a5fb789d939" uuid="59cc8e3d8044e145e1eb908baa5a7d3ed2ec5f72" name="allpass_2" x="406" y="364">
      <params>
         <frac32.s.map name="g" value="4.0"/>
      </params>
      <attribs>
         <spinner attributeName="delay" value="113"/>
      </attribs>
   </obj>
   <obj type="filter/allpass" sha="37340d199dcecabccaa8b825fa01a5fb789d939" uuid="59cc8e3d8044e145e1eb908baa5a7d3ed2ec5f72" name="allpass_3" x="546" y="364">
      <params>
         <frac32.s.map name="g" value="8.0"/>
      </params>
      <attribs>
         <spinner attributeName="delay" value="37"/>
      </attribs>
   </obj>
   <obj type="mix/mix 4" sha="6d667381bdeea6a139000a94f808f3e63efd414a" uuid="e6f9a0cc7aadc1b89516143cf1ccb79b3538d05a" name="mix_1" x="1008" y="378">
      <params>
         <frac32.u.map name="gain1" value="45.5"/>
         <frac32.u.map name="gain2" value="55.5"/>
         <frac32.u.map name="gain3" value="55.0"/>
         <frac32.u.map name="gain4" value="51.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" sha="a73a2cafcf92eb4b6524655dcee98a569d5ddc28" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="*c_1" x="1120" y="378">
      <params>
         <frac32.u.map name="amp" value="22.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" sha="9e7e04867e1d37837b0924c9bf18c44ac68602e6" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1274" y="392">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/fdbkcomb" sha="c1460c1719f177dfad99c9c5a2660c2408879c1d" uuid="b252513db2f8cc9a8964bad2a8eb7922be08690f" name="fdbkcomb_3" x="812" y="476">
      <params>
         <frac32.s.map name="a" value="51.0"/>
         <frac32.s.map name="b" value="48.09999990463257"/>
      </params>
      <attribs>
         <spinner attributeName="delay" value="2053"/>
      </attribs>
   </obj>
   <obj type="filter/fdbkcomb" sha="c1460c1719f177dfad99c9c5a2660c2408879c1d" uuid="b252513db2f8cc9a8964bad2a8eb7922be08690f" name="fdbkcomb_4" x="812" y="630">
      <params>
         <frac32.s.map name="a" value="-53.0"/>
         <frac32.s.map name="b" value="46.89999961853027"/>
      </params>
      <attribs>
         <spinner attributeName="delay" value="2251"/>
      </attribs>
   </obj>
   <nets>
      <net>
         <source obj="*c_1" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="*c_1" inlet="in"/>
      </net>
      <net>
         <source obj="allpass_1" outlet="out"/>
         <dest obj="allpass_2" inlet="in"/>
      </net>
      <net>
         <source obj="allpass_2" outlet="out"/>
         <dest obj="allpass_3" inlet="in"/>
      </net>
      <net>
         <source obj="allpass_3" outlet="out"/>
         <dest obj="fdbkcomb_1" inlet="in"/>
         <dest obj="fdbkcomb_2" inlet="in"/>
         <dest obj="fdbkcomb_3" inlet="in"/>
         <dest obj="fdbkcomb_4" inlet="in"/>
      </net>
      <net>
         <source obj="fdbkcomb_4" outlet="out"/>
         <dest obj="mix_1" inlet="in4"/>
      </net>
      <net>
         <source obj="fdbkcomb_3" outlet="out"/>
         <dest obj="mix_1" inlet="in3"/>
      </net>
      <net>
         <source obj="fdbkcomb_2" outlet="out"/>
         <dest obj="mix_1" inlet="in2"/>
      </net>
      <net>
         <source obj="fdbkcomb_1" outlet="out"/>
         <dest obj="mix_1" inlet="in1"/>
      </net>
      <net>
         <source obj="inlet_1" outlet="inlet"/>
         <dest obj="allpass_1" inlet="in"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>0</x>
      <y>0</y>
      <width>1510</width>
      <height>1087</height>
   </windowPos>
</patch-1.0>