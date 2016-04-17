<patch-1.0 appVersion="1.0.8">
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="trig" x="168" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/ad" uuid="255cb0cd67470c7498f9c33b820facd26aa629ce" name="ad_2" x="448" y="182">
      <params>
         <frac32.s.map name="a" onParent="true" value="-64.0"/>
         <frac32.s.map name="d" onParent="true" value="-54.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/ad" uuid="255cb0cd67470c7498f9c33b820facd26aa629ce" name="ad_1" x="784" y="238">
      <params>
         <frac32.s.map name="a" onParent="true" value="-64.0"/>
         <frac32.s.map name="d" onParent="true" value="-11.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/sine" uuid="6e094045cca76a9dbf7ebfa72e44e4700d2b3ba" name="sine_2" x="224" y="378">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="12.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="noise/uniform" uuid="a3926ef22ae9ac217cd09933d90101848796eb78" name="uniform_1" x="350" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_3" x="462" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/mix 2 g" uuid="221f038da51943034a75e442c90624fcebfe6112" name="mix_2" x="546" y="378">
      <params>
         <frac32.u.map name="gain1" onParent="true" value="32.0"/>
         <frac32.u.map name="gain2" onParent="true" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/bp" uuid="b83f82f9efb70107bea8d668a1652b1acfbde8b0" name="mix_1" x="658" y="378">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="12.0"/>
         <frac32.u.map name="reso" onParent="true" value="53.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_2" x="826" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/gain" uuid="62b1c1a6337c7c8f6aec96408a432477b113cfa0" name="gain" x="910" y="378">
      <params>
         <frac32.u.map name="amp" onParent="true" value="2.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="dist/soft" uuid="e680d76a805e4866027cdf654c7efd8b2e54622" name="soft_1" x="1022" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1092" y="378">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="ad_1" outlet="env"/>
         <dest obj="vca_2" inlet="v"/>
      </net>
      <net>
         <source obj="gain" outlet="out"/>
         <dest obj="soft_1" inlet="in"/>
      </net>
      <net>
         <source obj="soft_1" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="vca_2" inlet="a"/>
      </net>
      <net>
         <source obj="ad_2" outlet="env"/>
         <dest obj="vca_3" inlet="v"/>
      </net>
      <net>
         <source obj="uniform_1" outlet="wave"/>
         <dest obj="vca_3" inlet="a"/>
      </net>
      <net>
         <source obj="vca_3" outlet="o"/>
         <dest obj="mix_2" inlet="in1"/>
      </net>
      <net>
         <source obj="vca_2" outlet="o"/>
         <dest obj="gain" inlet="in"/>
      </net>
      <net>
         <source obj="mix_2" outlet="out"/>
         <dest obj="mix_1" inlet="in"/>
      </net>
      <net>
         <source obj="sine_2" outlet="wave"/>
         <dest obj="mix_2" inlet="in2"/>
      </net>
      <net>
         <source obj="trig" outlet="inlet"/>
         <dest obj="ad_2" inlet="trig"/>
         <dest obj="ad_1" inlet="trig"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>49</x>
      <y>-4</y>
      <width>1317</width>
      <height>772</height>
   </windowPos>
</patch-1.0>