<patch-1.0 appVersion="1.0.8">
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="trig" x="126" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="pulse/d" uuid="a54f36d89d061702997ac09fd10a20a64154ed46" name="d_1" x="252" y="182">
      <params>
         <frac32.u.map name="d" onParent="true" value="1.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/ad" uuid="255cb0cd67470c7498f9c33b820facd26aa629ce" name="ad_1" x="322" y="182">
      <params>
         <frac32.s.map name="a" onParent="true" value="-64.0"/>
         <frac32.s.map name="d" onParent="true" value="16.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/square" uuid="aa9592566d3673fe64dcaede132e9ebd45d2202f" name="sine_2" x="224" y="392">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="8.499999523162842"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 3 g" uuid="efc0bdb8ca0ec2184330951eff5203ff487e35a9" name="mix_2" x="350" y="392">
      <params>
         <frac32.u.map name="gain1" value="32.0"/>
         <frac32.u.map name="gain2" value="32.0"/>
         <frac32.u.map name="gain3" value="63.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_2" x="476" y="392">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/bp" uuid="b83f82f9efb70107bea8d668a1652b1acfbde8b0" name="mix_1" x="560" y="392">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="13.0"/>
         <frac32.u.map name="reso" onParent="true" value="47.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/gain" uuid="62b1c1a6337c7c8f6aec96408a432477b113cfa0" name="gain_1" x="700" y="392">
      <params>
         <frac32.u.map name="amp" onParent="true" value="4.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="812" y="392">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/square" uuid="aa9592566d3673fe64dcaede132e9ebd45d2202f" name="sine_3" x="112" y="504">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="15.399999141693115"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="dc7fbdd46e5e6d4b8de62ee63fd6321639b2f167" name="*_1" x="224" y="504">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="trig" outlet="inlet"/>
         <dest obj="ad_1" inlet="trig"/>
         <dest obj="d_1" inlet="trig"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="gain_1" inlet="in"/>
      </net>
      <net>
         <source obj="sine_2" outlet="wave"/>
         <dest obj="mix_2" inlet="in1"/>
      </net>
      <net>
         <source obj="sine_3" outlet="wave"/>
         <dest obj="mix_2" inlet="in2"/>
         <dest obj="*_1" inlet="a"/>
      </net>
      <net>
         <source obj="vca_2" outlet="o"/>
         <dest obj="mix_1" inlet="in"/>
      </net>
      <net>
         <source obj="ad_1" outlet="env"/>
         <dest obj="vca_2" inlet="v"/>
      </net>
      <net>
         <source obj="mix_2" outlet="out"/>
         <dest obj="vca_2" inlet="a"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="mix_2" inlet="in3"/>
      </net>
      <net>
         <source obj="d_1" outlet="env"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="gain_1" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
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