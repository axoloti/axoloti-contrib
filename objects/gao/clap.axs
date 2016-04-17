<patch-1.0 appVersion="1.0.8">
   <obj type="lfo/square" uuid="de6909eb64db13af5b43f979a4c130024b3a4793" name="trig" x="14" y="14">
      <params>
         <frac32.s.map name="pitch" value="-31.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/d" uuid="190ae648e41832b41adbedb465317c18a010aefe" name="d_1" x="616" y="84">
      <params>
         <frac32.s.map name="d" value="19.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/pwm" uuid="a6b40ff63f161d8bac8ea2eba5b0dbffcf49b472" name="pwm_1" x="28" y="182">
      <params>
         <frac32.s.map name="pitch" value="60.89999961853027"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/square" uuid="aa9592566d3673fe64dcaede132e9ebd45d2202f" name="pwm_2" x="210" y="182">
      <params>
         <frac32.s.map name="pitch" value="1.6999998092651367"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/bp" uuid="b83f82f9efb70107bea8d668a1652b1acfbde8b0" name="bp_1" x="532" y="182">
      <params>
         <frac32.s.map name="pitch" value="36.0"/>
         <frac32.u.map name="reso" value="52.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="658" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/gain" uuid="62b1c1a6337c7c8f6aec96408a432477b113cfa0" name="gain_1" x="742" y="182">
      <params>
         <frac32.u.map name="amp" value="38.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="dial_1" x="28" y="294">
      <params>
         <frac32.s.map name="value" value="16.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/d" uuid="190ae648e41832b41adbedb465317c18a010aefe" name="d_2" x="1008" y="308">
      <params>
         <frac32.s.map name="d" value="17.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="timer/pulselength" uuid="ca68725237d8ba8407773340801660a9fd9b0dba" name="pulselength_1" x="504" y="322">
      <params>
         <frac32.s.map name="delay" value="10.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/ahd" uuid="2139369d6de2ba5ddf76e602d1d25df653ca9eed" name="ahd_1" x="616" y="322">
      <params>
         <frac32.s.map name="a" value="-41.0"/>
         <frac32.s.map name="d" value="18.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/hp" uuid="7829b56456e975f1d89bda2ad1c7ad678080a73b" name="hp_1" x="504" y="448">
      <params>
         <frac32.s.map name="pitch" value="51.0"/>
         <frac32.u.map name="reso" value="45.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_2" x="658" y="448">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/gain" uuid="62b1c1a6337c7c8f6aec96408a432477b113cfa0" name="gain_2" x="756" y="448">
      <params>
         <frac32.u.map name="amp" value="24.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 2 g" uuid="221f038da51943034a75e442c90624fcebfe6112" name="mix_1" x="924" y="448">
      <params>
         <frac32.u.map name="gain1" value="64.0"/>
         <frac32.u.map name="gain2" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_3" x="1050" y="448">
      <params/>
      <attribs/>
   </obj>
   <obj type="audio/out stereo" uuid="a1ca7a567f535acc21055669829101d3ee7f0189" name="outlet_1" x="1134" y="448">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="vca_3" inlet="a"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="gain_1" inlet="in"/>
      </net>
      <net>
         <source obj="d_1" outlet="env"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="ahd_1" outlet="env"/>
         <dest obj="vca_2" inlet="v"/>
      </net>
      <net>
         <source obj="vca_2" outlet="o"/>
         <dest obj="gain_2" inlet="in"/>
      </net>
      <net>
         <source obj="trig" outlet="wave"/>
         <dest obj="d_1" inlet="trig"/>
         <dest obj="pulselength_1" inlet="trig"/>
         <dest obj="d_2" inlet="trig"/>
      </net>
      <net>
         <source obj="pulselength_1" outlet="pulse"/>
         <dest obj="ahd_1" inlet="gate"/>
      </net>
      <net>
         <source obj="gain_1" outlet="out"/>
         <dest obj="mix_1" inlet="in1"/>
      </net>
      <net>
         <source obj="gain_2" outlet="out"/>
         <dest obj="mix_1" inlet="in2"/>
      </net>
      <net>
         <source obj="pwm_2" outlet="wave"/>
         <dest obj="bp_1" inlet="in"/>
         <dest obj="hp_1" inlet="in"/>
      </net>
      <net>
         <source obj="dial_1" outlet="out"/>
         <dest obj="pwm_1" inlet="pw"/>
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
         <source obj="pwm_1" outlet="wave"/>
         <dest obj="pwm_2" inlet="pitch"/>
      </net>
      <net>
         <source obj="vca_3" outlet="o"/>
         <dest obj="outlet_1" inlet="left"/>
         <dest obj="outlet_1" inlet="right"/>
      </net>
      <net>
         <source obj="d_2" outlet="env"/>
         <dest obj="vca_3" inlet="v"/>
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