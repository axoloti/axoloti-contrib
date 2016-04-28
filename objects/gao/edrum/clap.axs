<patch-1.0 appVersion="1.0.8">
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="trig" x="14" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="timer/pulselength" uuid="ca68725237d8ba8407773340801660a9fd9b0dba" name="pulselength_1" x="126" y="14">
      <params>
         <frac32.s.map name="delay" value="-41.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="timer/delayedpulse" uuid="3f05ee534ca67755fb20c7437f9e4de3d4c2f73d" name="delayedpulse_1" x="280" y="14">
      <params>
         <frac32.s.map name="delay" value="-37.59999990463257"/>
      </params>
      <attribs/>
   </obj>
   <obj type="timer/delayedpulse" uuid="3f05ee534ca67755fb20c7437f9e4de3d4c2f73d" name="delayedpulse_2" x="280" y="112">
      <params>
         <frac32.s.map name="delay" value="-25.59999990463257"/>
      </params>
      <attribs/>
   </obj>
   <obj type="timer/delayedpulse" uuid="3f05ee534ca67755fb20c7437f9e4de3d4c2f73d" name="delayedpulse_3" x="280" y="210">
      <params>
         <frac32.s.map name="delay" value="-18.59999990463257"/>
      </params>
      <attribs/>
   </obj>
   <obj type="logic/or 2" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="or_1" x="448" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/or 2" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="or_2" x="532" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/or 2" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="or_3" x="616" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_1" x="770" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/hp" uuid="7829b56456e975f1d89bda2ad1c7ad678080a73b" name="pulse hp" x="854" y="224">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="10.0"/>
         <frac32.u.map name="reso" onParent="true" value="40.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/ad" uuid="255cb0cd67470c7498f9c33b820facd26aa629ce" name="ad" x="616" y="308">
      <params>
         <frac32.s.map name="a" onParent="true" value="-40.0"/>
         <frac32.s.map name="d" onParent="true" value="-30.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/ad" uuid="255cb0cd67470c7498f9c33b820facd26aa629ce" name="fb ad" x="728" y="308">
      <params>
         <frac32.s.map name="a" onParent="true" value="-53.0"/>
         <frac32.s.map name="d" onParent="true" value="-2.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="noise/pink oct" uuid="972351c4c2b2b4e358c64a64d119b5ddfa074f8e" name="pink_1" x="28" y="490">
      <params/>
      <attribs>
         <combo attributeName="octaves" selection="4"/>
      </attribs>
   </obj>
   <obj type="filter/bp" uuid="b83f82f9efb70107bea8d668a1652b1acfbde8b0" name="bp" x="140" y="490">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="23.0"/>
         <frac32.u.map name="reso" onParent="true" value="51.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/lp" uuid="1427779cf086ab83c8b03eeeac69c2a97759c651" name="lp" x="280" y="490">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="30.0"/>
         <frac32.u.map name="reso" onParent="true" value="40.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="518" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/mix 3 g" uuid="efc0bdb8ca0ec2184330951eff5203ff487e35a9" name="mix_2" x="630" y="490">
      <params>
         <frac32.u.map name="gain1" value="32.0"/>
         <frac32.u.map name="gain2" value="32.0"/>
         <frac32.u.map name="gain3" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_2" x="784" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/mix 3 g" uuid="efc0bdb8ca0ec2184330951eff5203ff487e35a9" name="mix_1" x="868" y="490">
      <params>
         <frac32.u.map name="gain1" value="32.0"/>
         <frac32.u.map name="gain2" value="32.0"/>
         <frac32.u.map name="gain3" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/gain" uuid="62b1c1a6337c7c8f6aec96408a432477b113cfa0" name="gain" x="1008" y="532">
      <params>
         <frac32.u.map name="amp" onParent="true" value="16.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="dist/soft" uuid="e680d76a805e4866027cdf654c7efd8b2e54622" name="soft_1" x="1120" y="532">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1190" y="532">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="or_1" outlet="o"/>
         <dest obj="or_2" inlet="i1"/>
      </net>
      <net>
         <source obj="delayedpulse_3" outlet="pulse"/>
         <dest obj="or_2" inlet="i2"/>
         <dest obj="fb ad" inlet="trig"/>
      </net>
      <net>
         <source obj="delayedpulse_1" outlet="pulse"/>
         <dest obj="or_1" inlet="i1"/>
      </net>
      <net>
         <source obj="delayedpulse_2" outlet="pulse"/>
         <dest obj="or_1" inlet="i2"/>
      </net>
      <net>
         <source obj="or_2" outlet="o"/>
         <dest obj="or_3" inlet="i1"/>
      </net>
      <net>
         <source obj="or_3" outlet="o"/>
         <dest obj="ad" inlet="trig"/>
         <dest obj="interp_1" inlet="i"/>
      </net>
      <net>
         <source obj="ad" outlet="env"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="pink_1" outlet="out"/>
         <dest obj="bp" inlet="in"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="mix_2" inlet="in1"/>
      </net>
      <net>
         <source obj="lp" outlet="out"/>
         <dest obj="mix_1" inlet="in1"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="bp" outlet="out"/>
         <dest obj="mix_1" inlet="in2"/>
         <dest obj="lp" inlet="in"/>
      </net>
      <net>
         <source obj="interp_1" outlet="o"/>
         <dest obj="pulse hp" inlet="in"/>
      </net>
      <net>
         <source obj="pulse hp" outlet="out"/>
         <dest obj="mix_2" inlet="in3"/>
      </net>
      <net>
         <source obj="fb ad" outlet="env"/>
         <dest obj="vca_2" inlet="v"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="vca_2" inlet="a"/>
      </net>
      <net>
         <source obj="vca_2" outlet="o"/>
         <dest obj="mix_2" inlet="in2"/>
      </net>
      <net>
         <source obj="pulselength_1" outlet="pulse"/>
         <dest obj="delayedpulse_1" inlet="trig"/>
         <dest obj="delayedpulse_2" inlet="trig"/>
         <dest obj="delayedpulse_3" inlet="trig"/>
         <dest obj="or_3" inlet="i2"/>
      </net>
      <net>
         <source obj="trig" outlet="inlet"/>
         <dest obj="pulselength_1" inlet="trig"/>
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
         <source obj="mix_2" outlet="out"/>
         <dest obj="gain" inlet="in"/>
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