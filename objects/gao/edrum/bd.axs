<patch-1.0 appVersion="1.0.8">
   <obj type="patch/inlet b" sha="e98d5f4c7b741588feaffc8629026f8d8e59e3ef" name="trig" x="0" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/d" uuid="190ae648e41832b41adbedb465317c18a010aefe" name="freq 1" x="98" y="14">
      <params>
         <frac32.s.map name="d" onParent="true" value="-22.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="noise/uniform" uuid="a3926ef22ae9ac217cd09933d90101848796eb78" name="uniform_1" x="378" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/abs" uuid="f4078fd9b2dff40d4f1551b79900c9ab360c99" name="abs_1" x="476" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/d" uuid="190ae648e41832b41adbedb465317c18a010aefe" name="noise decay" x="546" y="14">
      <params>
         <frac32.s.map name="d" onParent="true" value="-25.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="c16a625a661f40e4b359db604dcd00b3befcdbe3" name="*_3" x="658" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="noise level" x="728" y="14">
      <params>
         <frac32.u.map name="amp" onParent="true" value="20.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="decay m" x="14" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/d m" uuid="85e82f54dfc28839d300cda777af8907ae2a28d0" name="decay" x="98" y="182">
      <params>
         <frac32.s.map name="d" onParent="true" value="-2.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="curve" x="210" y="182">
      <params>
         <frac32.u.map name="amp" onParent="true" value="41.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/sine" sha="edec4a9d5f533ea748cd564ce8c69673dd78742f" name="freq 2" x="322" y="182">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-41.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="*_1" x="448" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="c16a625a661f40e4b359db604dcd00b3befcdbe3" name="*_2" x="448" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/lp" uuid="1427779cf086ab83c8b03eeeac69c2a97759c651" name="lp" x="532" y="252">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="42.0"/>
         <frac32.u.map name="reso" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/gain" uuid="62b1c1a6337c7c8f6aec96408a432477b113cfa0" name="gain" x="658" y="252">
      <params>
         <frac32.u.map name="amp" onParent="true" value="3.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="dist/soft" uuid="e680d76a805e4866027cdf654c7efd8b2e54622" name="soft_1" x="784" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" sha="72226293648dde4dd4739bc1b8bc46a6bf660595" name="out" x="882" y="252">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="freq 2" outlet="wave"/>
         <dest obj="*_1" inlet="in1"/>
      </net>
      <net>
         <source obj="*_1" outlet="out"/>
         <dest obj="*_2" inlet="a"/>
      </net>
      <net>
         <source obj="*_3" outlet="result"/>
         <dest obj="noise level" inlet="in"/>
      </net>
      <net>
         <source obj="trig" outlet="inlet"/>
         <dest obj="noise decay" inlet="trig"/>
         <dest obj="freq 1" inlet="trig"/>
         <dest obj="decay" inlet="trig"/>
      </net>
      <net>
         <source obj="uniform_1" outlet="wave"/>
         <dest obj="abs_1" inlet="in"/>
      </net>
      <net>
         <source obj="abs_1" outlet="out"/>
         <dest obj="*_3" inlet="a"/>
      </net>
      <net>
         <source obj="noise decay" outlet="env"/>
         <dest obj="*_3" inlet="b"/>
      </net>
      <net>
         <source obj="gain" outlet="out"/>
         <dest obj="soft_1" inlet="in"/>
      </net>
      <net>
         <source obj="freq 1" outlet="env"/>
         <dest obj="curve" inlet="in"/>
      </net>
      <net>
         <source obj="decay" outlet="env"/>
         <dest obj="*_2" inlet="b"/>
      </net>
      <net>
         <source obj="decay m" outlet="inlet"/>
         <dest obj="decay" inlet="d"/>
      </net>
      <net>
         <source obj="soft_1" outlet="out"/>
         <dest obj="out" inlet="outlet"/>
      </net>
      <net>
         <source obj="noise level" outlet="out"/>
         <dest obj="*_1" inlet="in2"/>
      </net>
      <net>
         <source obj="curve" outlet="out"/>
         <dest obj="freq 2" inlet="pitch"/>
      </net>
      <net>
         <source obj="lp" outlet="out"/>
         <dest obj="gain" inlet="in"/>
      </net>
      <net>
         <source obj="*_2" outlet="result"/>
         <dest obj="lp" inlet="in"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>0</NPresets>
      <NPresetEntries>0</NPresetEntries>
      <NModulationSources>0</NModulationSources>
      <NModulationTargetsPerSource>0</NModulationTargetsPerSource>
      <Author>GaoTamanrasset</Author>
      <License>GPL</License>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>120</x>
      <y>235</y>
      <width>995</width>
      <height>482</height>
   </windowPos>
</patch-1.0>