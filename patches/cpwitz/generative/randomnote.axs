<patch-1.0>
   <obj type="math/*c" sha="60143a29e35f452025e9edaa2dec6e660ecb9c6e" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="range" x="364" y="126">
      <params>
         <frac32.u.map name="amp" onParent="true" value="6.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+c" sha="d0aea6063c88e27c97acf08b33a056fec3e150f1" uuid="13eec32bd8ad57dd0bb18a02566cc0a117d320e3" name="offset" x="476" y="126">
      <params>
         <frac32.u.map name="c" onParent="true" value="7.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="harmony/note quantizer" sha="13431d42028aa183f45816ccf88d37464b5ef22b" uuid="d5343a4fea87a3e4f4dae20287226084550ea8d3" name="note_1" x="644" y="126">
      <params>
         <bin12 name="b12" onParent="true" value="1189"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" sha="c0c4ce40c7dec73dfbb009fd86c9b89c068b137a" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="pitch" x="854" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" sha="17c8e188371661163bfa55cea9974eecb785fb06" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="trigger" x="84" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="rand/uniform f trig" sha="926c3f305c1c8031d3cad3e29eb688cee124ab2e" uuid="223873125a332e3b8a82795a3eef167993adb086" name="uniform_1" x="196" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/bipolar2unipolar" sha="93baeaf78c9a228f23225186d21e61abc921c3d6" uuid="f6f63d71053d572d3c795f83c7ec11dfbbce82dd" name="bipolar2unipolar_1" x="280" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/unipolar2bipolar" sha="5f55b7ee58828996387d37c5431384eb14c9dd16" uuid="efc8ee28c508740c5edf7995eaaa07a6d6818e5e" name="unipolar2bipolar_1" x="504" y="238">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="uniform_1" outlet="rand"/>
         <dest obj="bipolar2unipolar_1" inlet="i"/>
      </net>
      <net>
         <source obj="bipolar2unipolar_1" outlet="o"/>
         <dest obj="range" inlet="in"/>
      </net>
      <net>
         <source obj="range" outlet="out"/>
         <dest obj="offset" inlet="in"/>
      </net>
      <net>
         <source obj="offset" outlet="out"/>
         <dest obj="unipolar2bipolar_1" inlet="i"/>
      </net>
      <net>
         <source obj="unipolar2bipolar_1" outlet="o"/>
         <dest obj="note_1" inlet="note"/>
      </net>
      <net>
         <source obj="trigger" outlet="inlet"/>
         <dest obj="uniform_1" inlet="trig"/>
      </net>
      <net>
         <source obj="note_1" outlet="note"/>
         <dest obj="pitch" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>0</NPresets>
      <NPresetEntries>0</NPresetEntries>
      <NModulationSources>0</NModulationSources>
      <NModulationTargetsPerSource>0</NModulationTargetsPerSource>
      <Author></Author>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>548</x>
      <y>182</y>
      <width>1186</width>
      <height>559</height>
   </windowPos>
</patch-1.0>