<patch-1.0 appVersion="1.0.9">
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="inlet_1" x="42" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_1" x="238" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/inv cf1" uuid="f536e36a05a0083eea7de9aeb7c3e944473bgc87c87" name="inv_1" x="42" y="70">
      <params>
         <frac32.u.map name="inv" onParent="true" value="16.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/-+c" uuid="c2daf2b9c21e96312ccb58fda18b827ec2e4fa2f" name="-+c_2" x="112" y="70">
      <params>
         <frac32.s.map name="c" onParent="true" value="-30.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/smooth" uuid="6c5d08c282bb08bff24af85b4891447f99bcbc97" name="smooth_3" x="252" y="70">
      <params>
         <frac32.u.map name="time" onParent="true" value="15.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="phi/switch/sw 1f" uuid="6b74be34e6389f0407aabd25b82499a4aeb86bcd" name="on" x="168" y="126">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="-+c_2" outlet="out"/>
         <dest obj="on" inlet="i1"/>
      </net>
      <net>
         <source obj="inv_1" outlet="o"/>
         <dest obj="-+c_2" inlet="in"/>
      </net>
      <net>
         <source obj="on" outlet="o"/>
         <dest obj="smooth_3" inlet="in"/>
      </net>
      <net>
         <source obj="smooth_3" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="inlet_1" outlet="inlet"/>
         <dest obj="inv_1" inlet="i1"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>0</NPresets>
      <NPresetEntries>0</NPresetEntries>
      <NModulationSources>0</NModulationSources>
      <NModulationTargetsPerSource>0</NModulationTargetsPerSource>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>0</x>
      <y>0</y>
      <width>562</width>
      <height>400</height>
   </windowPos>
</patch-1.0>