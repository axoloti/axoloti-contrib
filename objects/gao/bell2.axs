<patch-1.0 appVersion="1.0.8">
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="square_1" x="14" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="sine1 m" x="28" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/sine" uuid="6e094045cca76a9dbf7ebfa72e44e4700d2b3ba" name="sine1" x="154" y="98">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/ad" uuid="255cb0cd67470c7498f9c33b820facd26aa629ce" name="decay" x="392" y="98">
      <params>
         <frac32.s.map name="a" value="-64.0"/>
         <frac32.s.map name="d" onParent="true" value="-8.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="518" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="602" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="sine2 m" x="28" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/sine" uuid="6e094045cca76a9dbf7ebfa72e44e4700d2b3ba" name="sine2" x="154" y="224">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="10.0"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="decay" outlet="env"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="sine1" outlet="wave"/>
         <dest obj="sine2" inlet="freq"/>
      </net>
      <net>
         <source obj="sine2" outlet="wave"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="sine2 m" outlet="inlet"/>
         <dest obj="sine2" inlet="pitch"/>
      </net>
      <net>
         <source obj="square_1" outlet="inlet"/>
         <dest obj="decay" inlet="trig"/>
      </net>
      <net>
         <source obj="sine1 m" outlet="inlet"/>
         <dest obj="sine1" inlet="pitch"/>
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