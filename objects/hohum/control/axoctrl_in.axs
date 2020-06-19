<patch-1.0 appVersion="1.0.12">
   <comment type="patch/comment" x="140" y="14" text="Hohum Axoctrl Inputs"/>
   <comment type="patch/comment" x="140" y="28" text="Main Axoctrl object for setting up patches with the Axoctrl."/>
   <comment type="patch/comment" x="140" y="42" text="NOTE: This patch just channels the Axoctrl inputs"/>
   <comment type="patch/comment" x="518" y="42" text="Audio in"/>
   <obj type="audio/in stereo" uuid="99848ad6d90a8e615e83b2e619cfc806f28e7281" name="IN_STEREO" x="518" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="IN_L" x="602" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="IN_R" x="686" y="56">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="154" y="70" text="For more info on Axoctrl, please visit:"/>
   <hyperlink type="patch/hyperlink" name="https://hohumlab.com" x="154" y="84"/>
   <comment type="patch/comment" x="266" y="126" text="Custom button"/>
   <comment type="patch/comment" x="364" y="126" text="Custom parameters"/>
   <obj type="hohum/control/axoctrl_core" uuid="b41f1d76-cac6-4da9-9f43-74cdf15eaa8c" name="axoctrl_core_obj" x="112" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="#6 BUT" x="266" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="#8 PAR" x="364" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="#10 PAR" x="364" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="#11 PAR" x="364" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="#12 PAR" x="364" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="#13 PAR" x="364" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="#18 MOD" x="364" y="378">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="IN_STEREO" outlet="left"/>
         <dest obj="IN_L" inlet="outlet"/>
      </net>
      <net>
         <source obj="IN_STEREO" outlet="right"/>
         <dest obj="IN_R" inlet="outlet"/>
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#8 PAR"/>
         <dest obj="#8 PAR" inlet="outlet"/>
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#10 PAR"/>
         <dest obj="#10 PAR" inlet="outlet"/>
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#11 PAR"/>
         <dest obj="#11 PAR" inlet="outlet"/>
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#12 PAR"/>
         <dest obj="#12 PAR" inlet="outlet"/>
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#13 PAR"/>
         <dest obj="#13 PAR" inlet="outlet"/>
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#6 BUT"/>
         <dest obj="#6 BUT" inlet="outlet"/>
      </net>
      <net>
         <source obj="axoctrl_core_obj" outlet="#18 MOD"/>
         <dest obj="#18 MOD" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author>hohum_lab (berendkleinhaneveld)</Author>
      <License>undefined</License>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>122</x>
      <y>0</y>
      <width>858</width>
      <height>565</height>
   </windowPos>
</patch-1.0>