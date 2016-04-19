<patch-1.0 appVersion="1.0.8">
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="trig" x="14" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="timer/pulselength" uuid="ca68725237d8ba8407773340801660a9fd9b0dba" name="pulselength_1" x="392" y="14">
      <params>
         <frac32.s.map name="delay" onParent="true" value="1.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/ahd" uuid="2139369d6de2ba5ddf76e602d1d25df653ca9eed" name="ahd_1" x="504" y="14">
      <params>
         <frac32.s.map name="a" onParent="true" value="-47.0"/>
         <frac32.s.map name="d" onParent="true" value="33.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/d" uuid="190ae648e41832b41adbedb465317c18a010aefe" name="d_1" x="280" y="70">
      <params>
         <frac32.s.map name="d" onParent="true" value="12.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_1" x="84" y="210">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/supersquare" uuid="ed9ce670bb2de7c801d5a1843f6669ce9d176b08" name="supersquare_1" x="168" y="210">
      <params>
         <frac32.s.map name="pitch" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 2 g" uuid="221f038da51943034a75e442c90624fcebfe6112" name="mix_2" x="294" y="210">
      <params>
         <frac32.u.map name="gain1" value="32.0"/>
         <frac32.u.map name="gain2" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/bp m" uuid="f26437572c3a1f6be883bb219c773a9906ff8296" name="bp_1" x="434" y="224">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="14.0"/>
         <frac32.u.map name="reso" onParent="true" value="41.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="560" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/d" uuid="190ae648e41832b41adbedb465317c18a010aefe" name="d_2" x="798" y="280">
      <params>
         <frac32.s.map name="d" onParent="true" value="21.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_2" x="98" y="294">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/supersquare" uuid="ed9ce670bb2de7c801d5a1843f6669ce9d176b08" name="supersquare_2" x="168" y="294">
      <params>
         <frac32.s.map name="pitch" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/hp m" uuid="fdba806c3cfd2b7aca3256c733379a06e5811e66" name="hp_1" x="434" y="378">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="31.0"/>
         <frac32.u.map name="reso" onParent="true" value="31.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_2" x="560" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/mix 2 g" uuid="221f038da51943034a75e442c90624fcebfe6112" name="mix_1" x="658" y="378">
      <params>
         <frac32.u.map name="gain1" value="64.0"/>
         <frac32.u.map name="gain2" value="63.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_3" x="798" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/gain" uuid="62b1c1a6337c7c8f6aec96408a432477b113cfa0" name="gain_1" x="1078" y="392">
      <params>
         <frac32.u.map name="amp" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1190" y="392">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="d_1" outlet="env"/>
         <dest obj="vca_1" inlet="v"/>
         <dest obj="bp_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="ahd_1" outlet="env"/>
         <dest obj="vca_2" inlet="v"/>
         <dest obj="hp_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="trig" outlet="inlet"/>
         <dest obj="d_1" inlet="trig"/>
         <dest obj="pulselength_1" inlet="trig"/>
         <dest obj="d_2" inlet="trig"/>
      </net>
      <net>
         <source obj="pulselength_1" outlet="pulse"/>
         <dest obj="ahd_1" inlet="gate"/>
      </net>
      <net>
         <source obj="d_2" outlet="env"/>
         <dest obj="vca_3" inlet="v"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="vca_3" inlet="a"/>
      </net>
      <net>
         <source obj="supersquare_1" outlet="wave"/>
         <dest obj="mix_2" inlet="in1"/>
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
         <source obj="gain_1" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="supersquare_2" outlet="wave"/>
         <dest obj="mix_2" inlet="in2"/>
      </net>
      <net>
         <source obj="mix_2" outlet="out"/>
         <dest obj="bp_1" inlet="in"/>
         <dest obj="hp_1" inlet="in"/>
      </net>
      <net>
         <source obj="bp_1" outlet="out"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="hp_1" outlet="out"/>
         <dest obj="vca_2" inlet="a"/>
      </net>
      <net>
         <source obj="vca_3" outlet="o"/>
         <dest obj="gain_1" inlet="in"/>
      </net>
      <net>
         <source obj="dial_1" outlet="out"/>
         <dest obj="supersquare_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="dial_2" outlet="out"/>
         <dest obj="supersquare_2" inlet="pitch"/>
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