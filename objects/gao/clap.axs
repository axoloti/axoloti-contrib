<patch-1.0 appVersion="1.0.8">
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="trig" x="14" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="timer/delayedpulse" sha="5539e718df5cf366409d4957ce55598a2d1d1e9" uuid="3f05ee534ca67755fb20c7437f9e4de3d4c2f73d" name="delayedpulse_1" x="196" y="56">
      <params>
         <frac32.s.map name="delay" value="-37.59999990463257"/>
      </params>
      <attribs/>
   </obj>
   <obj type="timer/delayedpulse" sha="5539e718df5cf366409d4957ce55598a2d1d1e9" uuid="3f05ee534ca67755fb20c7437f9e4de3d4c2f73d" name="delayedpulse_2" x="196" y="140">
      <params>
         <frac32.s.map name="delay" value="-24.899999618530273"/>
      </params>
      <attribs/>
   </obj>
   <obj type="timer/delayedpulse" sha="5539e718df5cf366409d4957ce55598a2d1d1e9" uuid="3f05ee534ca67755fb20c7437f9e4de3d4c2f73d" name="delayedpulse_3" x="196" y="224">
      <params>
         <frac32.s.map name="delay" value="-18.59999942779541"/>
      </params>
      <attribs/>
   </obj>
   <obj type="logic/or 2" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="or" x="322" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/or 2" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="and_2" x="406" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/interp" sha="4b93f3e0f08b85924e07feabcdfe53fc11aa6a48" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_1" x="490" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/ad" uuid="255cb0cd67470c7498f9c33b820facd26aa629ce" name="ahd_2" x="490" y="364">
      <params>
         <frac32.s.map name="a" value="-64.0"/>
         <frac32.s.map name="d" value="2.6999993324279785"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_2" x="602" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/mix 2 g" uuid="221f038da51943034a75e442c90624fcebfe6112" name="mix_1" x="700" y="364">
      <params>
         <frac32.u.map name="gain1" value="32.0"/>
         <frac32.u.map name="gain2" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="filter pitch m" x="0" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="noise/uniform" uuid="a3926ef22ae9ac217cd09933d90101848796eb78" name="uniform_1" x="84" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/bp m" uuid="f26437572c3a1f6be883bb219c773a9906ff8296" name="bp_1" x="182" y="378">
      <params>
         <frac32.s.map name="pitch" value="20.0"/>
         <frac32.u.map name="reso" value="57.84999990463257"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/ad" sha="27b3ed2c63d43d64a78d406f20737f83110a3df7" uuid="255cb0cd67470c7498f9c33b820facd26aa629ce" name="ad_1" x="308" y="378">
      <params>
         <frac32.s.map name="a" value="-64.0"/>
         <frac32.s.map name="d" value="-26.499999523162842"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/line 2 m" uuid="ca6fa83252b4e4dcb354f99f6a1f4bd0b07813cd" name="ahd_1" x="182" y="518">
      <params>
         <frac32.u.map name="v0" value="64.0"/>
         <frac32.s.map name="tA" value="-19.199999809265137"/>
         <frac32.u.map name="v1" value="64.0"/>
         <frac32.s.map name="tB" value="20.0"/>
         <frac32.u.map name="v2" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/lp m" uuid="1aa1bc51da479ed92429af700591f9d7b9f45f22" name="lp_1" x="308" y="518">
      <params>
         <frac32.s.map name="pitch" value="36.0"/>
         <frac32.u.map name="reso" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" sha="c904cdd24d65968df2f5796e107db3747dd691a6" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="420" y="518">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/hp" sha="de47923046728f9eb4d6e6cbf26314bf518174fc" uuid="7829b56456e975f1d89bda2ad1c7ad678080a73b" name="hp_1" x="490" y="518">
      <params>
         <frac32.s.map name="pitch" value="42.99999952316284"/>
         <frac32.u.map name="reso" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 3 g" uuid="efc0bdb8ca0ec2184330951eff5203ff487e35a9" name="mix_2" x="602" y="518">
      <params>
         <frac32.u.map name="gain1" value="32.0"/>
         <frac32.u.map name="gain2" value="32.0"/>
         <frac32.u.map name="gain3" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/gain" uuid="62b1c1a6337c7c8f6aec96408a432477b113cfa0" name="gain_1" x="826" y="518">
      <params>
         <frac32.u.map name="amp" value="10.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="952" y="518">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="trig" outlet="inlet"/>
         <dest obj="delayedpulse_1" inlet="trig"/>
         <dest obj="delayedpulse_2" inlet="trig"/>
         <dest obj="delayedpulse_3" inlet="trig"/>
         <dest obj="ahd_1" inlet="trig"/>
      </net>
      <net>
         <source obj="delayedpulse_1" outlet="pulse"/>
         <dest obj="or" inlet="i1"/>
      </net>
      <net>
         <source obj="delayedpulse_2" outlet="pulse"/>
         <dest obj="or" inlet="i2"/>
      </net>
      <net>
         <source obj="delayedpulse_3" outlet="pulse"/>
         <dest obj="and_2" inlet="i2"/>
         <dest obj="ahd_2" inlet="trig"/>
      </net>
      <net>
         <source obj="ad_1" outlet="env"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="interp_1" outlet="o"/>
         <dest obj="hp_1" inlet="in"/>
      </net>
      <net>
         <source obj="hp_1" outlet="out"/>
         <dest obj="mix_2" inlet="in1"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="mix_2" inlet="in2"/>
      </net>
      <net>
         <source obj="vca_2" outlet="o"/>
         <dest obj="mix_2" inlet="in3"/>
      </net>
      <net>
         <source obj="lp_1" outlet="out"/>
         <dest obj="mix_1" inlet="in2"/>
      </net>
      <net>
         <source obj="or" outlet="o"/>
         <dest obj="and_2" inlet="i1"/>
      </net>
      <net>
         <source obj="and_2" outlet="o"/>
         <dest obj="ad_1" inlet="trig"/>
         <dest obj="interp_1" inlet="i"/>
      </net>
      <net>
         <source obj="ahd_1" outlet="out"/>
         <dest obj="lp_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="uniform_1" outlet="wave"/>
         <dest obj="bp_1" inlet="in"/>
      </net>
      <net>
         <source obj="ahd_2" outlet="env"/>
         <dest obj="vca_2" inlet="v"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="vca_2" inlet="a"/>
      </net>
      <net>
         <source obj="mix_2" outlet="out"/>
         <dest obj="gain_1" inlet="in"/>
      </net>
      <net>
         <source obj="gain_1" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="bp_1" outlet="out"/>
         <dest obj="vca_1" inlet="a"/>
         <dest obj="lp_1" inlet="in"/>
         <dest obj="mix_1" inlet="in1"/>
      </net>
      <net>
         <source obj="filter pitch m" outlet="inlet"/>
         <dest obj="bp_1" inlet="pitch"/>
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