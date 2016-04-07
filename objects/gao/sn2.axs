<patch-1.0 appVersion="1.0.8">
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="trig" x="0" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="dial_1" x="126" y="14">
      <params>
         <frac32.s.map name="value" value="1.0999999046325684"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/sine" uuid="6e094045cca76a9dbf7ebfa72e44e4700d2b3ba" name="sine_1" x="224" y="14">
      <params>
         <frac32.s.map name="pitch" value="0.019999980926513672"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/sine" uuid="6e094045cca76a9dbf7ebfa72e44e4700d2b3ba" name="sine_2" x="336" y="14">
      <params>
         <frac32.s.map name="pitch" value="-10.429999828338623"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="body decay" x="462" y="14">
      <params>
         <frac32.s.map name="value" onParent="true" value="-6.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_2" x="560" y="14">
      <params>
         <frac32.u.map name="amp" value="53.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/d m" uuid="85e82f54dfc28839d300cda777af8907ae2a28d0" name="d_1" x="672" y="14">
      <params>
         <frac32.s.map name="d" value="-17.53999948501587"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_4" x="784" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/d m" uuid="85e82f54dfc28839d300cda777af8907ae2a28d0" name="ad_1" x="896" y="14">
      <params>
         <frac32.s.map name="d" value="-10.269999504089355"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_3" x="1008" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="784" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_2" x="924" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/mix 2 g" uuid="221f038da51943034a75e442c90624fcebfe6112" name="mix_1" x="1148" y="140">
      <params>
         <frac32.u.map name="gain1" value="32.0"/>
         <frac32.u.map name="gain2" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="noise decay m" x="56" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="noise decay" x="252" y="168">
      <params>
         <frac32.s.map name="value" onParent="true" value="-7.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="350" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_3" x="434" y="168">
      <params>
         <frac32.u.map name="amp" value="45.25"/>
      </params>
      <attribs/>
   </obj>
   <obj type="noise/uniform" uuid="a3926ef22ae9ac217cd09933d90101848796eb78" name="uniform_1" x="84" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/lp" uuid="1427779cf086ab83c8b03eeeac69c2a97759c651" name="lp_1" x="308" y="294">
      <params>
         <frac32.s.map name="pitch" value="52.99999952316284"/>
         <frac32.u.map name="reso" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/d m" uuid="85e82f54dfc28839d300cda777af8907ae2a28d0" name="d_2" x="434" y="294">
      <params>
         <frac32.s.map name="d" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_2" x="546" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/bp" uuid="b83f82f9efb70107bea8d668a1652b1acfbde8b0" name="hp_1" x="630" y="294">
      <params>
         <frac32.s.map name="pitch" value="21.0"/>
         <frac32.u.map name="reso" value="46.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/d m" uuid="85e82f54dfc28839d300cda777af8907ae2a28d0" name="d_3" x="742" y="294">
      <params>
         <frac32.s.map name="d" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_1" x="854" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/mix 3 g" uuid="efc0bdb8ca0ec2184330951eff5203ff487e35a9" name="b/n1/n2" x="994" y="294">
      <params>
         <frac32.u.map name="gain1" onParent="true" value="35.0"/>
         <frac32.u.map name="gain2" onParent="true" value="5.0"/>
         <frac32.u.map name="gain3" onParent="true" value="25.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/gain" uuid="62b1c1a6337c7c8f6aec96408a432477b113cfa0" name="gain_1" x="1106" y="294">
      <params>
         <frac32.u.map name="amp" value="5.999999523162842"/>
      </params>
      <attribs/>
   </obj>
   <obj type="dist/soft" uuid="e680d76a805e4866027cdf654c7efd8b2e54622" name="soft_1" x="1218" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1288" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_3" x="434" y="392">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_4" x="742" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="audio/out stereo" uuid="a1ca7a567f535acc21055669829101d3ee7f0189" name="out_1" x="1204" y="434">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="trig" outlet="inlet"/>
         <dest obj="d_2" inlet="trig"/>
         <dest obj="d_3" inlet="trig"/>
         <dest obj="d_1" inlet="trig"/>
         <dest obj="ad_1" inlet="trig"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="mix_1" inlet="in1"/>
      </net>
      <net>
         <source obj="vca_2" outlet="o"/>
         <dest obj="mix_1" inlet="in2"/>
      </net>
      <net>
         <source obj="lp_1" outlet="out"/>
         <dest obj="vca_3" inlet="a"/>
         <dest obj="hp_1" inlet="in"/>
      </net>
      <net>
         <source obj="vca_3" outlet="o"/>
         <dest obj="b/n1/n2" inlet="in2"/>
      </net>
      <net>
         <source obj="vca_4" outlet="o"/>
         <dest obj="b/n1/n2" inlet="in3"/>
      </net>
      <net>
         <source obj="d_2" outlet="env"/>
         <dest obj="*_2" inlet="a"/>
         <dest obj="*_2" inlet="b"/>
      </net>
      <net>
         <source obj="d_3" outlet="env"/>
         <dest obj="*_1" inlet="a"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="d_1" outlet="env"/>
         <dest obj="*_4" inlet="a"/>
         <dest obj="*_4" inlet="b"/>
      </net>
      <net>
         <source obj="ad_1" outlet="env"/>
         <dest obj="*_3" inlet="a"/>
         <dest obj="*_3" inlet="b"/>
      </net>
      <net>
         <source obj="body decay" outlet="out"/>
         <dest obj="ad_1" inlet="d"/>
         <dest obj="*c_2" inlet="in"/>
      </net>
      <net>
         <source obj="noise decay" outlet="out"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="noise decay m" outlet="inlet"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="uniform_1" outlet="wave"/>
         <dest obj="lp_1" inlet="in"/>
      </net>
      <net>
         <source obj="*c_2" outlet="out"/>
         <dest obj="d_1" inlet="d"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="b/n1/n2" inlet="in1"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="d_2" inlet="d"/>
         <dest obj="*c_3" inlet="in"/>
      </net>
      <net>
         <source obj="*c_3" outlet="out"/>
         <dest obj="d_3" inlet="d"/>
      </net>
      <net>
         <source obj="*_2" outlet="result"/>
         <dest obj="vca_3" inlet="v"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="vca_4" inlet="v"/>
      </net>
      <net>
         <source obj="b/n1/n2" outlet="out"/>
         <dest obj="gain_1" inlet="in"/>
      </net>
      <net>
         <source obj="gain_1" outlet="out"/>
         <dest obj="soft_1" inlet="in"/>
      </net>
      <net>
         <source obj="soft_1" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
         <dest obj="out_1" inlet="left"/>
         <dest obj="out_1" inlet="right"/>
      </net>
      <net>
         <source obj="dial_1" outlet="out"/>
         <dest obj="sine_1" inlet="pitch"/>
         <dest obj="sine_2" inlet="pitch"/>
      </net>
      <net>
         <source obj="*_3" outlet="result"/>
         <dest obj="vca_2" inlet="v"/>
      </net>
      <net>
         <source obj="*_4" outlet="result"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="sine_1" outlet="wave"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="sine_2" outlet="wave"/>
         <dest obj="vca_2" inlet="a"/>
      </net>
      <net>
         <source obj="hp_1" outlet="out"/>
         <dest obj="vca_4" inlet="a"/>
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