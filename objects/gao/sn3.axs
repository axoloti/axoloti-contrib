<patch-1.0 appVersion="1.0.8">
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="trig" x="14" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/d m" uuid="85e82f54dfc28839d300cda777af8907ae2a28d0" name="body decay" x="448" y="14">
      <params>
         <frac32.s.map name="d" onParent="true" value="-27.53999948501587"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/sine" uuid="6e094045cca76a9dbf7ebfa72e44e4700d2b3ba" name="sine_1" x="224" y="126">
      <params>
         <frac32.s.map name="pitch" value="0.019999980926513672"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/sine" uuid="6e094045cca76a9dbf7ebfa72e44e4700d2b3ba" name="sine_2" x="336" y="126">
      <params>
         <frac32.s.map name="pitch" value="-10.429999828338623"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 2 g" uuid="221f038da51943034a75e442c90624fcebfe6112" name="mix_1" x="448" y="126">
      <params>
         <frac32.u.map name="gain1" value="32.0"/>
         <frac32.u.map name="gain2" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="574" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="velocity" x="0" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_1" x="84" y="252">
      <params>
         <frac32.u.map name="amp" value="5.6999993324279785"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/d m" uuid="85e82f54dfc28839d300cda777af8907ae2a28d0" name="noise decay" x="392" y="294">
      <params>
         <frac32.s.map name="d" onParent="true" value="-16.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="conv/bipolar2unipolar" uuid="f6f63d71053d572d3c795f83c7ec11dfbbce82dd" name="unipolar2bipolar_1" x="42" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="noise/uniform" uuid="a3926ef22ae9ac217cd09933d90101848796eb78" name="uniform_1" x="140" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/lp m" uuid="1aa1bc51da479ed92429af700591f9d7b9f45f22" name="lp_1" x="266" y="420">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="42.0"/>
         <frac32.u.map name="reso" value="37.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="jho/filter/notch" uuid="1f9c4090-02c0-44f2-a02a-a852f74d9022" name="hp_1" x="392" y="420">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="53.0"/>
         <frac32.u.map name="reso" value="25.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_4" x="518" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/mix 2 g" uuid="221f038da51943034a75e442c90624fcebfe6112" name="b/n1/n2" x="686" y="420">
      <params>
         <frac32.u.map name="gain1" value="32.0"/>
         <frac32.u.map name="gain2" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="c16a625a661f40e4b359db604dcd00b3befcdbe3" name="*_1" x="798" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/gain" uuid="62b1c1a6337c7c8f6aec96408a432477b113cfa0" name="gain_1" x="882" y="420">
      <params>
         <frac32.u.map name="amp" onParent="true" value="9.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="dist/soft" uuid="e680d76a805e4866027cdf654c7efd8b2e54622" name="soft_1" x="994" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1078" y="420">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="trig" outlet="inlet"/>
         <dest obj="noise decay" inlet="trig"/>
         <dest obj="body decay" inlet="trig"/>
      </net>
      <net>
         <source obj="noise decay" outlet="env"/>
         <dest obj="vca_4" inlet="v"/>
      </net>
      <net>
         <source obj="uniform_1" outlet="wave"/>
         <dest obj="lp_1" inlet="in"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="gain_1" outlet="out"/>
         <dest obj="soft_1" inlet="in"/>
      </net>
      <net>
         <source obj="soft_1" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="sine_2" outlet="wave"/>
         <dest obj="mix_1" inlet="in1"/>
      </net>
      <net>
         <source obj="sine_1" outlet="wave"/>
         <dest obj="mix_1" inlet="in2"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="b/n1/n2" inlet="in1"/>
      </net>
      <net>
         <source obj="body decay" outlet="env"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="hp_1" outlet="out"/>
         <dest obj="vca_4" inlet="a"/>
      </net>
      <net>
         <source obj="lp_1" outlet="out"/>
         <dest obj="hp_1" inlet="in"/>
      </net>
      <net>
         <source obj="*c_1" outlet="out"/>
         <dest obj="lp_1" inlet="pitch"/>
         <dest obj="noise decay" inlet="d"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="gain_1" inlet="in"/>
      </net>
      <net>
         <source obj="unipolar2bipolar_1" outlet="o"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="b/n1/n2" outlet="out"/>
         <dest obj="*_1" inlet="a"/>
      </net>
      <net>
         <source obj="vca_4" outlet="o"/>
         <dest obj="b/n1/n2" inlet="in2"/>
      </net>
      <net>
         <source obj="velocity" outlet="inlet"/>
         <dest obj="*c_1" inlet="in"/>
         <dest obj="unipolar2bipolar_1" inlet="i"/>
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