<patch-1.0 appVersion="1.0.8">
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="dial_1" x="0" y="0">
      <params>
         <frac32.s.map name="value" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="closed velocity" x="1134" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/square cheap" uuid="58dc60ffca7e6c5029f12ec68787945c669b7a8f" name="square_1" x="0" y="84">
      <params>
         <frac32.s.map name="pitch" value="-20.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/square cheap" uuid="58dc60ffca7e6c5029f12ec68787945c669b7a8f" name="square_2" x="98" y="84">
      <params>
         <frac32.s.map name="pitch" value="-1.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/square cheap" uuid="58dc60ffca7e6c5029f12ec68787945c669b7a8f" name="square_3" x="196" y="84">
      <params>
         <frac32.s.map name="pitch" value="-19.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 6 g" uuid="2dd642dee5072357722740c850699b79b8da3008" name="mix_1" x="350" y="84">
      <params>
         <frac32.u.map name="gain1" value="32.0"/>
         <frac32.u.map name="gain2" value="32.0"/>
         <frac32.u.map name="gain3" value="32.0"/>
         <frac32.u.map name="gain4" value="32.0"/>
         <frac32.u.map name="gain5" value="32.0"/>
         <frac32.u.map name="gain6" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/bp svf m" uuid="90abfee2793172fc193ec82288a454727134cb31" name="bp" x="462" y="98">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="53.0"/>
         <frac32.u.map name="reso" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="closed" x="616" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/or 2" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="or_2" x="728" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/ad" uuid="255cb0cd67470c7498f9c33b820facd26aa629ce" name="closed decay" x="812" y="98">
      <params>
         <frac32.s.map name="a" value="-64.0"/>
         <frac32.s.map name="d" onParent="true" value="-31.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="924" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/hp m" uuid="fdba806c3cfd2b7aca3256c733379a06e5811e66" name="hp closed" x="994" y="98">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="49.0"/>
         <frac32.u.map name="reso" onParent="true" value="47.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/gain" uuid="62b1c1a6337c7c8f6aec96408a432477b113cfa0" name="gain closed" x="1106" y="98">
      <params>
         <frac32.u.map name="amp" onParent="true" value="46.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_3" x="1218" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/square cheap" uuid="58dc60ffca7e6c5029f12ec68787945c669b7a8f" name="square_4" x="0" y="168">
      <params>
         <frac32.s.map name="pitch" value="3.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/square cheap" uuid="58dc60ffca7e6c5029f12ec68787945c669b7a8f" name="square_5" x="98" y="168">
      <params>
         <frac32.s.map name="pitch" value="-19.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/square cheap" uuid="58dc60ffca7e6c5029f12ec68787945c669b7a8f" name="square_6" x="196" y="168">
      <params>
         <frac32.s.map name="pitch" value="-8.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="open velocity" x="1162" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="open" x="462" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="timer/delayedpulse" uuid="3f05ee534ca67755fb20c7437f9e4de3d4c2f73d" name="open decay" x="546" y="294">
      <params>
         <frac32.s.map name="delay" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="logic/or 2" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="or_1" x="658" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/flipflop toggle" uuid="195e489e5fc3d275944b0de56c7a91c8641ea22a" name="toggle_1" x="728" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/ahd" uuid="2139369d6de2ba5ddf76e602d1d25df653ca9eed" name="ad_2" x="840" y="294">
      <params>
         <frac32.s.map name="a" value="-46.0"/>
         <frac32.s.map name="d" value="-38.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_2" x="952" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/hp m" uuid="fdba806c3cfd2b7aca3256c733379a06e5811e66" name="hp open" x="1022" y="294">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="47.0"/>
         <frac32.u.map name="reso" onParent="true" value="53.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/gain" uuid="62b1c1a6337c7c8f6aec96408a432477b113cfa0" name="gain open" x="1134" y="294">
      <params>
         <frac32.u.map name="amp" onParent="true" value="45.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_4" x="1246" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/mix 2 g" uuid="221f038da51943034a75e442c90624fcebfe6112" name="mix_2" x="882" y="504">
      <params>
         <frac32.u.map name="gain1" value="32.0"/>
         <frac32.u.map name="gain2" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="994" y="504">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="hp closed" inlet="in"/>
      </net>
      <net>
         <source obj="square_3" outlet="wave"/>
         <dest obj="mix_1" inlet="in1"/>
      </net>
      <net>
         <source obj="square_2" outlet="wave"/>
         <dest obj="mix_1" inlet="in2"/>
      </net>
      <net>
         <source obj="square_1" outlet="wave"/>
         <dest obj="mix_1" inlet="in3"/>
      </net>
      <net>
         <source obj="square_4" outlet="wave"/>
         <dest obj="mix_1" inlet="in4"/>
      </net>
      <net>
         <source obj="square_5" outlet="wave"/>
         <dest obj="mix_1" inlet="in5"/>
      </net>
      <net>
         <source obj="square_6" outlet="wave"/>
         <dest obj="mix_1" inlet="in6"/>
      </net>
      <net>
         <source obj="closed decay" outlet="env"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="bp" outlet="out"/>
         <dest obj="vca_1" inlet="a"/>
         <dest obj="vca_2" inlet="a"/>
      </net>
      <net>
         <source obj="closed" outlet="inlet"/>
         <dest obj="or_1" inlet="i2"/>
         <dest obj="or_2" inlet="i1"/>
      </net>
      <net>
         <source obj="dial_1" outlet="out"/>
         <dest obj="square_1" inlet="pitch"/>
         <dest obj="square_4" inlet="pitch"/>
         <dest obj="square_2" inlet="pitch"/>
         <dest obj="square_5" inlet="pitch"/>
         <dest obj="square_3" inlet="pitch"/>
         <dest obj="square_6" inlet="pitch"/>
      </net>
      <net>
         <source obj="vca_2" outlet="o"/>
         <dest obj="hp open" inlet="in"/>
      </net>
      <net>
         <source obj="ad_2" outlet="env"/>
         <dest obj="vca_2" inlet="v"/>
      </net>
      <net>
         <source obj="toggle_1" outlet="o"/>
         <dest obj="ad_2" inlet="gate"/>
      </net>
      <net>
         <source obj="open" outlet="inlet"/>
         <dest obj="toggle_1" inlet="set"/>
         <dest obj="open decay" inlet="trig"/>
         <dest obj="or_2" inlet="i2"/>
      </net>
      <net>
         <source obj="open decay" outlet="pulse"/>
         <dest obj="or_1" inlet="i1"/>
      </net>
      <net>
         <source obj="or_1" outlet="o"/>
         <dest obj="toggle_1" inlet="reset"/>
      </net>
      <net>
         <source obj="gain closed" outlet="out"/>
         <dest obj="vca_3" inlet="a"/>
      </net>
      <net>
         <source obj="hp closed" outlet="out"/>
         <dest obj="gain closed" inlet="in"/>
      </net>
      <net>
         <source obj="hp open" outlet="out"/>
         <dest obj="gain open" inlet="in"/>
      </net>
      <net>
         <source obj="gain open" outlet="out"/>
         <dest obj="vca_4" inlet="a"/>
      </net>
      <net>
         <source obj="mix_2" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="vca_3" outlet="o"/>
         <dest obj="mix_2" inlet="in1"/>
      </net>
      <net>
         <source obj="vca_4" outlet="o"/>
         <dest obj="mix_2" inlet="in2"/>
      </net>
      <net>
         <source obj="closed velocity" outlet="inlet"/>
         <dest obj="vca_3" inlet="v"/>
      </net>
      <net>
         <source obj="open velocity" outlet="inlet"/>
         <dest obj="vca_4" inlet="v"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="bp" inlet="in"/>
      </net>
      <net>
         <source obj="or_2" outlet="o"/>
         <dest obj="closed decay" inlet="trig"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>49</x>
      <y>24</y>
      <width>1317</width>
      <height>744</height>
   </windowPos>
</patch-1.0>