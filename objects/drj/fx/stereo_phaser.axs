<patch-1.0 appVersion="1.0.10">
   <comment type="patch/comment" x="42" y="28" text="---------- Stereo phaser --------"/>
   <obj type="drj/lfo/multi_wave" uuid="dd0f7330c0008545c1da17a321a3b9a5dc3b26a29" name="lfo l" x="532" y="42">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
         <frac32.u.map name="pw" value="32.0"/>
         <frac32.s.map name="amp" value="0.0"/>
         <bool32.tgl name="unipolar" value="0"/>
         <int32 name="wave" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="in_l" x="686" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="fx/phaser_32" uuid="14e14b82ec5d8040ae5f7aa33ed5925a7d1eb902" name="phaser_multi2_l" x="784" y="42">
      <params/>
      <attribs>
         <combo attributeName="mode" selection="32 bit"/>
         <spinner attributeName="maxdelay" value="16"/>
         <spinner attributeName="maxstages" value="16"/>
      </attribs>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="out_l" x="994" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_l" x="686" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="drj/math/sum3" uuid="93cb11244907aed86ae7d7f2274d118a23d46692" name="time mix l" x="686" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="manual" x="28" y="280">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="lr_diff" x="126" y="280">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="mod amt" x="224" y="280">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="drj/ctrl/dial_lfopitch" uuid="86ae7d7f72274d118a23d4649093cb1c94aed28a" name="mod freq" x="308" y="280">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="mod phase" x="434" y="280">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="wave" x="658" y="280">
      <params>
         <int32 name="value" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="feedback" x="728" y="280">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="saturate" x="812" y="280">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="mix" x="896" y="280">
      <params>
         <frac32.u.map name="value" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="delay" x="980" y="280">
      <params>
         <int32 name="value" onParent="true" value="4"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="stages" x="1050" y="280">
      <params>
         <int32 name="value" onParent="true" value="6"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/inv" uuid="565521d3699b36d8095aa1c79b9ad0046fb133ce" name="inv_2" x="532" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="drj/lfo/multi_wave" uuid="dd0f7330c0008545c1da17a321a3b9a5dc3b26a29" name="lfo_r" x="532" y="364">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
         <frac32.u.map name="pw" value="32.0"/>
         <frac32.s.map name="amp" value="0.0"/>
         <bool32.tgl name="unipolar" value="0"/>
         <int32 name="wave" value="1"/>
      </params>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="28" y="378" text="Manual"/>
   <comment type="patch/comment" x="126" y="378" text="L/R diff"/>
   <comment type="patch/comment" x="224" y="378" text="Mod amount"/>
   <comment type="patch/comment" x="322" y="378" text="Mod frequency"/>
   <obj type="math/inv" uuid="565521d3699b36d8095aa1c79b9ad0046fb133ce" name="inv_3" x="28" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/inv" uuid="565521d3699b36d8095aa1c79b9ad0046fb133ce" name="inv_4" x="126" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="drj/math/sum3" uuid="93cb11244907aed86ae7d7f2274d118a23d46692" name="time mix r" x="686" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="fx/phaser_32" uuid="14e14b82ec5d8040ae5f7aa33ed5925a7d1eb902" name="phaser_multi2_r" x="784" y="434">
      <params/>
      <attribs>
         <combo attributeName="mode" selection="32 bit"/>
         <spinner attributeName="maxdelay" value="16"/>
         <spinner attributeName="maxstages" value="16"/>
      </attribs>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="out_r" x="994" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_r" x="686" y="518">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="in_r" x="686" y="574">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="mod phase" outlet="out"/>
         <dest obj="inv_2" inlet="in"/>
         <dest obj="lfo l" inlet="phase"/>
      </net>
      <net>
         <source obj="inv_2" outlet="out"/>
         <dest obj="lfo_r" inlet="phase"/>
      </net>
      <net>
         <source obj="mod amt" outlet="out"/>
         <dest obj="lfo l" inlet="am"/>
         <dest obj="lfo_r" inlet="am"/>
      </net>
      <net>
         <source obj="interp_r" outlet="o"/>
         <dest obj="phaser_multi2_r" inlet="mod"/>
      </net>
      <net>
         <source obj="interp_l" outlet="o"/>
         <dest obj="phaser_multi2_l" inlet="mod"/>
      </net>
      <net>
         <source obj="in_r" outlet="inlet"/>
         <dest obj="phaser_multi2_r" inlet="in"/>
      </net>
      <net>
         <source obj="in_l" outlet="inlet"/>
         <dest obj="phaser_multi2_l" inlet="in"/>
      </net>
      <net>
         <source obj="phaser_multi2_l" outlet="out"/>
         <dest obj="out_l" inlet="outlet"/>
      </net>
      <net>
         <source obj="phaser_multi2_r" outlet="out"/>
         <dest obj="out_r" inlet="outlet"/>
      </net>
      <net>
         <source obj="feedback" outlet="out"/>
         <dest obj="phaser_multi2_l" inlet="feedback"/>
         <dest obj="phaser_multi2_r" inlet="feedback"/>
      </net>
      <net>
         <source obj="mix" outlet="out"/>
         <dest obj="phaser_multi2_l" inlet="mix"/>
         <dest obj="phaser_multi2_r" inlet="mix"/>
      </net>
      <net>
         <source obj="delay" outlet="out"/>
         <dest obj="phaser_multi2_l" inlet="delay"/>
         <dest obj="phaser_multi2_r" inlet="delay"/>
      </net>
      <net>
         <source obj="stages" outlet="out"/>
         <dest obj="phaser_multi2_l" inlet="stages"/>
         <dest obj="phaser_multi2_r" inlet="stages"/>
      </net>
      <net>
         <source obj="inv_3" outlet="out"/>
         <dest obj="time mix l" inlet="in2"/>
         <dest obj="time mix r" inlet="in3"/>
      </net>
      <net>
         <source obj="lr_diff" outlet="out"/>
         <dest obj="inv_4" inlet="in"/>
         <dest obj="time mix l" inlet="in1"/>
      </net>
      <net>
         <source obj="manual" outlet="out"/>
         <dest obj="inv_3" inlet="in"/>
      </net>
      <net>
         <source obj="saturate" outlet="o"/>
         <dest obj="phaser_multi2_r" inlet="saturate"/>
         <dest obj="phaser_multi2_l" inlet="saturate"/>
      </net>
      <net>
         <source obj="time mix r" outlet="out"/>
         <dest obj="interp_r" inlet="i"/>
      </net>
      <net>
         <source obj="time mix l" outlet="out"/>
         <dest obj="interp_l" inlet="i"/>
      </net>
      <net>
         <source obj="inv_4" outlet="out"/>
         <dest obj="time mix r" inlet="in2"/>
      </net>
      <net>
         <source obj="lfo l" outlet="out"/>
         <dest obj="time mix l" inlet="in3"/>
      </net>
      <net>
         <source obj="lfo_r" outlet="out"/>
         <dest obj="time mix r" inlet="in1"/>
      </net>
      <net>
         <source obj="wave" outlet="out"/>
         <dest obj="lfo l" inlet="wave"/>
         <dest obj="lfo_r" inlet="wave"/>
      </net>
      <net>
         <source obj="mod freq" outlet="out"/>
         <dest obj="lfo l" inlet="pitch"/>
         <dest obj="lfo_r" inlet="pitch"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author>Are Leistad</Author>
      <License>BSD</License>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>287</x>
      <y>81</y>
      <width>1301</width>
      <height>779</height>
   </windowPos>
</patch-1.0>