<patch-1.0 appVersion="1.0.10">
   <obj type="midi/in/keyb touch" uuid="edfcb4cfd5b2064e95f5a7ee644bca56252ec11f" name="keyb_1" x="462" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/delay/mod2Karplus" uuid="e52a20b9-b586-4ed2-a42f-e0f41561aa6e" name="mod2Karplus_1" x="560" y="336">
      <params>
         <frac32.s.map name="note" onParent="true" value="0.0"/>
         <frac32.s.map name="vel" onParent="true" value="0.0"/>
         <frac32.s.map name="touch" onParent="true" value="0.0"/>
         <int32 name="select" value="0"/>
         <frac32.s.map name="n2p" value="0.0"/>
         <frac32.s.map name="v2p" value="0.0"/>
         <frac32.s.map name="t2p" value="0.0"/>
         <frac32.s.map name="n2t" value="0.0"/>
         <frac32.s.map name="v2t" value="0.0"/>
         <frac32.s.map name="t2t" value="0.0"/>
         <frac32.s.map name="n2c" value="0.0"/>
         <frac32.s.map name="v2c" value="0.0"/>
         <frac32.s.map name="t2c" value="0.0"/>
         <frac32.s.map name="n2m" value="0.0"/>
         <frac32.s.map name="v2m" value="0.0"/>
         <frac32.s.map name="t2m" value="0.0"/>
         <frac32.s.map name="n2s" value="0.0"/>
         <frac32.s.map name="v2s" value="0.0"/>
         <frac32.s.map name="t2s" value="0.0"/>
         <frac32.s.map name="n2i" value="0.0"/>
         <frac32.s.map name="v2i" value="0.0"/>
         <frac32.s.map name="t2i" value="0.0"/>
         <frac32.s.map name="n2BPc" value="0.0"/>
         <frac32.s.map name="v2BPc" value="0.0"/>
         <frac32.s.map name="t2BPc" value="0.0"/>
         <frac32.s.map name="n2BPr" value="0.0"/>
         <frac32.s.map name="v2BPr" value="0.0"/>
         <frac32.s.map name="t2BPr" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="Feed" x="700" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="A" x="700" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="D" x="700" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="S" x="700" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="R" x="700" y="504">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/adsr m" uuid="98bd39fb828c392b28126d259cb5175e6f6ea34b" name="adsr_1" x="770" y="546">
      <params>
         <frac32.s.map name="a" onParent="true" value="-64.0"/>
         <frac32.s.map name="d" onParent="true" value="-52.0"/>
         <frac32.u.map name="s" onParent="true" value="0.0"/>
         <frac32.s.map name="r" onParent="true" value="-57.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="840" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/bp m" uuid="f26437572c3a1f6be883bb219c773a9906ff8296" name="bp_1" x="896" y="798">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-1.0"/>
         <frac32.u.map name="reso" onParent="true" value="20.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/delay/KarplusStrong2" uuid="e0ae375a-c621-4865-94d5-dd136330a55c" name="KarplusStrong2_1" x="994" y="938">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-24.0"/>
         <frac32.u.map name="position" onParent="true" value="32.0"/>
         <frac32.u.map name="tailtime" onParent="true" value="10.0"/>
         <frac32.s.map name="color" onParent="true" value="20.0"/>
         <frac32.u.map name="mode" onParent="true" value="4.5"/>
         <frac32.u.map name="strength" onParent="true" value="14.0"/>
         <frac32.s.map name="influence" onParent="true" value="47.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1134" y="938">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="keyb_1" outlet="gate2"/>
         <dest obj="adsr_1" inlet="gate"/>
      </net>
      <net>
         <source obj="adsr_1" outlet="env"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="Feed" outlet="inlet"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="bp_1" inlet="in"/>
      </net>
      <net>
         <source obj="bp_1" outlet="out"/>
         <dest obj="KarplusStrong2_1" inlet="in"/>
      </net>
      <net>
         <source obj="KarplusStrong2_1" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="KarplusStrong2_1" inlet="pitch"/>
         <dest obj="mod2Karplus_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="velocity"/>
         <dest obj="mod2Karplus_1" inlet="velocity"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="touch"/>
         <dest obj="mod2Karplus_1" inlet="touch"/>
      </net>
      <net>
         <source obj="mod2Karplus_1" outlet="position"/>
         <dest obj="KarplusStrong2_1" inlet="position"/>
      </net>
      <net>
         <source obj="mod2Karplus_1" outlet="tailtime"/>
         <dest obj="KarplusStrong2_1" inlet="tailtime"/>
      </net>
      <net>
         <source obj="mod2Karplus_1" outlet="color"/>
         <dest obj="KarplusStrong2_1" inlet="color"/>
      </net>
      <net>
         <source obj="mod2Karplus_1" outlet="mode"/>
         <dest obj="KarplusStrong2_1" inlet="mode"/>
      </net>
      <net>
         <source obj="mod2Karplus_1" outlet="strength"/>
         <dest obj="KarplusStrong2_1" inlet="strength"/>
      </net>
      <net>
         <source obj="mod2Karplus_1" outlet="influence"/>
         <dest obj="KarplusStrong2_1" inlet="influence"/>
      </net>
      <net>
         <source obj="mod2Karplus_1" outlet="BPcut"/>
         <dest obj="bp_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="mod2Karplus_1" outlet="BPres"/>
         <dest obj="bp_1" inlet="reso"/>
      </net>
      <net>
         <source obj="A" outlet="inlet"/>
         <dest obj="adsr_1" inlet="a"/>
      </net>
      <net>
         <source obj="D" outlet="inlet"/>
         <dest obj="adsr_1" inlet="d"/>
      </net>
      <net>
         <source obj="S" outlet="inlet"/>
         <dest obj="adsr_1" inlet="s"/>
      </net>
      <net>
         <source obj="R" outlet="inlet"/>
         <dest obj="adsr_1" inlet="r"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>polyphonic</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author>Remco van der Most</Author>
      <License>Secret</License>
      <Attributions></Attributions>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-8</x>
      <y>-8</y>
      <width>1696</width>
      <height>1026</height>
   </windowPos>
</patch-1.0>