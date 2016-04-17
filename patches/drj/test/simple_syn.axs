<patch-1.0 appVersion="1.0.9">
   <comment type="patch/comment" x="168" y="70" text="VCO"/>
   <comment type="patch/comment" x="294" y="70" text="VCF"/>
   <comment type="patch/comment" x="434" y="70" text="VCA"/>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="pitch" x="28" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/pwm" uuid="a6b40ff63f161d8bac8ea2eba5b0dbffcf49b472" name="pwm_1" x="168" y="98">
      <params>
         <frac32.s.map name="pitch" value="-25.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/vcf3" uuid="92455c652cd098cbb682a5497baa18abbf2ef865" name="vcf3_1" x="294" y="98">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-40.0"/>
         <frac32.u.map name="reso" onParent="true" value="36.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="434" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="out" x="560" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="gate" x="28" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="velo" x="28" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="294" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_1" x="434" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/inv" uuid="565521d3699b36d8095aa1c79b9ad0046fb133ce" name="inv_1" x="168" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/adsr m" uuid="98bd39fb828c392b28126d259cb5175e6f6ea34b" name="adsr_2" x="294" y="322">
      <params>
         <frac32.s.map name="a" onParent="true" value="14.0"/>
         <frac32.s.map name="d" value="0.0"/>
         <frac32.u.map name="s" value="0.0"/>
         <frac32.s.map name="r" value="24.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/adsr m" uuid="98bd39fb828c392b28126d259cb5175e6f6ea34b" name="adsr_1" x="434" y="322">
      <params>
         <frac32.s.map name="a" onParent="true" value="0.0"/>
         <frac32.s.map name="d" value="0.0"/>
         <frac32.u.map name="s" value="0.0"/>
         <frac32.s.map name="r" value="24.0"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="pwm_1" outlet="wave"/>
         <dest obj="vcf3_1" inlet="in"/>
      </net>
      <net>
         <source obj="vcf3_1" outlet="out"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="out" inlet="outlet"/>
      </net>
      <net>
         <source obj="pitch" outlet="inlet"/>
         <dest obj="pwm_1" inlet="pitch"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="adsr_2" outlet="env"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="vcf3_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="gate" outlet="inlet"/>
         <dest obj="adsr_2" inlet="gate"/>
         <dest obj="adsr_1" inlet="gate"/>
      </net>
      <net>
         <source obj="adsr_1" outlet="env"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="velo" outlet="inlet"/>
         <dest obj="*_1" inlet="a"/>
         <dest obj="inv_1" inlet="in"/>
      </net>
      <net>
         <source obj="inv_1" outlet="out"/>
         <dest obj="adsr_2" inlet="a"/>
         <dest obj="adsr_1" inlet="a"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>589</x>
      <y>276</y>
      <width>734</width>
      <height>717</height>
   </windowPos>
</patch-1.0>