<patch-1.0 appVersion="1.0.12">
   <obj type="patch/bankindex" uuid="943bd281-10a5-4994-9876-11a3b1fbde8a" name="bankindex_1" x="98" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/button1" uuid="2f4fbacf3969a3a1ff9d23899566430051cb01f" name="button1_1" x="42" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+1" uuid="13c1a4574bb81783beb8839e81782b9a34e3fc17" name="+1_1" x="154" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/load i" uuid="b79124f5b7d1e8b39e187677ddab6260ce8c60a3" name="load_1" x="224" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="gpio/in/button2" uuid="e844813dc6e022223cd10d8beb29b62732231867" name="button2_1" x="42" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/-1" uuid="5fd46bab471bb6509ae83de702dea72933683a98" name="-1_1" x="154" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/load i" uuid="b79124f5b7d1e8b39e187677ddab6260ce8c60a3" name="load_2" x="224" y="140">
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
         <source obj="button1_1" outlet="out"/>
         <dest obj="load_1" inlet="trig"/>
      </net>
      <net>
         <source obj="-1_1" outlet="result"/>
         <dest obj="load_2" inlet="i"/>
      </net>
      <net>
         <source obj="button2_1" outlet="out"/>
         <dest obj="load_2" inlet="trig"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>1336</x>
      <y>242</y>
      <width>773</width>
      <height>596</height>
   </windowPos>
</patch-1.0>