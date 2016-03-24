<patch-1.0>
   <obj type="patch/outlet a" sha="9e7e04867e1d37837b0924c9bf18c44ac68602e6" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="left" x="1036" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" sha="9e7e04867e1d37837b0924c9bf18c44ac68602e6" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="right" x="1218" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" sha="709c10aa648c6e5a3c00da4b5dd238899a7c109c" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="in" x="70" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/mix 6" sha="88aa1ded747c306ebc5b58c0f5ed3613a887b2c0" uuid="a77539f90594da68ea7affa92e5c17caad5b3f04" name="fbleft" x="210" y="322">
      <params>
         <frac32.u.map name="gain1" onParent="true" value="19.0"/>
         <frac32.u.map name="gain2" onParent="true" value="20.5"/>
         <frac32.u.map name="gain3" value="32.0"/>
         <frac32.u.map name="gain4" onParent="true" value="32.0"/>
         <frac32.u.map name="gain5" onParent="true" value="15.5"/>
         <frac32.u.map name="gain6" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 6" sha="88aa1ded747c306ebc5b58c0f5ed3613a887b2c0" uuid="a77539f90594da68ea7affa92e5c17caad5b3f04" name="fbright" x="322" y="322">
      <params>
         <frac32.u.map name="gain1" onParent="true" value="18.0"/>
         <frac32.u.map name="gain2" onParent="true" value="21.5"/>
         <frac32.u.map name="gain3" value="32.0"/>
         <frac32.u.map name="gain4" onParent="true" value="32.0"/>
         <frac32.u.map name="gain5" onParent="true" value="15.5"/>
         <frac32.u.map name="gain6" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="reverb/fdn4" sha="da683dcf60f569b7354b1e5bf0d8e3a05c73faef" uuid="b7812f987aee4aa5d4db9db316eb993f993259ae" name="reverb" x="630" y="322">
      <params>
         <frac32.u.map name="g" onParent="true" value="17.5"/>
      </params>
      <attribs>
         <spinner attributeName="d1" value="500"/>
         <spinner attributeName="d2" value="1000"/>
         <spinner attributeName="d3" value="1500"/>
         <spinner attributeName="d4" value="2000"/>
      </attribs>
   </obj>
   <obj type="delay/write sdram" sha="aa55d7ae111ced1fafde9a6f6386d746292dc8d1" uuid="5ae03f8d7b815edcfc40585d8bbac2ed48460fba" name="d1" x="630" y="532">
      <params/>
      <attribs>
         <combo attributeName="size" selection="131072 (2.37s)"/>
      </attribs>
   </obj>
   <obj type="delay/write sdram" sha="aa55d7ae111ced1fafde9a6f6386d746292dc8d1" uuid="5ae03f8d7b815edcfc40585d8bbac2ed48460fba" name="d2" x="630" y="602">
      <params/>
      <attribs>
         <combo attributeName="size" selection="131072 (2.37s)"/>
      </attribs>
   </obj>
   <obj type="delay/write sdram" sha="aa55d7ae111ced1fafde9a6f6386d746292dc8d1" uuid="5ae03f8d7b815edcfc40585d8bbac2ed48460fba" name="d3" x="644" y="672">
      <params/>
      <attribs>
         <combo attributeName="size" selection="131072 (2.37s)"/>
      </attribs>
   </obj>
   <obj type="delay/write sdram" sha="aa55d7ae111ced1fafde9a6f6386d746292dc8d1" uuid="5ae03f8d7b815edcfc40585d8bbac2ed48460fba" name="d4" x="658" y="742">
      <params/>
      <attribs>
         <combo attributeName="size" selection="131072 (2.37s)"/>
      </attribs>
   </obj>
   <obj type="delay/read" sha="5fca22dde504617cc3aec49fd5fcc1d7296290ca" uuid="739f69bf3dae8db57f1412d0d15cb37bbae3f4c" name="read_1" x="658" y="826">
      <params>
         <frac32.u.map name="time" value="0.0"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="d1"/>
      </attribs>
   </obj>
   <obj type="delay/read" sha="5fca22dde504617cc3aec49fd5fcc1d7296290ca" uuid="739f69bf3dae8db57f1412d0d15cb37bbae3f4c" name="read_2" x="826" y="826">
      <params>
         <frac32.u.map name="time" value="0.0"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="d2"/>
      </attribs>
   </obj>
   <obj type="delay/read" sha="5fca22dde504617cc3aec49fd5fcc1d7296290ca" uuid="739f69bf3dae8db57f1412d0d15cb37bbae3f4c" name="read_3" x="1008" y="826">
      <params>
         <frac32.u.map name="time" value="0.0"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="d3"/>
      </attribs>
   </obj>
   <obj type="delay/read" sha="5fca22dde504617cc3aec49fd5fcc1d7296290ca" uuid="739f69bf3dae8db57f1412d0d15cb37bbae3f4c" name="read_4" x="1176" y="826">
      <params>
         <frac32.u.map name="time" value="0.0"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="d4"/>
      </attribs>
   </obj>
   <obj type="ctrl/dial p" sha="501c30e07dedf3d701e8d0b33c3c234908c3388e" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="del1time" x="112" y="980">
      <params>
         <frac32.u.map name="value" onParent="true" value="3.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" sha="501c30e07dedf3d701e8d0b33c3c234908c3388e" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="del2time" x="252" y="980">
      <params>
         <frac32.u.map name="value" onParent="true" value="6.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" sha="501c30e07dedf3d701e8d0b33c3c234908c3388e" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="del3time" x="378" y="980">
      <params>
         <frac32.u.map name="value" onParent="true" value="11.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" sha="501c30e07dedf3d701e8d0b33c3c234908c3388e" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="del4time" x="490" y="980">
      <params>
         <frac32.u.map name="value" onParent="true" value="21.0"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="in" outlet="inlet"/>
         <dest obj="fbleft" inlet="bus_in"/>
         <dest obj="fbright" inlet="bus_in"/>
         <dest obj="reverb" inlet="in1"/>
      </net>
      <net>
         <source obj="fbleft" outlet="out"/>
         <dest obj="d4" inlet="in"/>
         <dest obj="d2" inlet="in"/>
         <dest obj="left" inlet="outlet"/>
      </net>
      <net>
         <source obj="read_1" outlet="out"/>
         <dest obj="fbleft" inlet="in1"/>
      </net>
      <net>
         <source obj="read_2" outlet="out"/>
         <dest obj="fbright" inlet="in1"/>
      </net>
      <net>
         <source obj="fbright" outlet="out"/>
         <dest obj="d3" inlet="in"/>
         <dest obj="d1" inlet="in"/>
         <dest obj="right" inlet="outlet"/>
      </net>
      <net>
         <source obj="read_3" outlet="out"/>
         <dest obj="fbleft" inlet="in2"/>
      </net>
      <net>
         <source obj="read_4" outlet="out"/>
         <dest obj="fbright" inlet="in2"/>
      </net>
      <net>
         <source obj="del1time" outlet="out"/>
         <dest obj="read_1" inlet="time"/>
      </net>
      <net>
         <source obj="del2time" outlet="out"/>
         <dest obj="read_2" inlet="time"/>
      </net>
      <net>
         <source obj="del3time" outlet="out"/>
         <dest obj="read_3" inlet="time"/>
      </net>
      <net>
         <source obj="del4time" outlet="out"/>
         <dest obj="read_4" inlet="time"/>
      </net>
      <net>
         <source obj="reverb" outlet="out3"/>
         <dest obj="fbleft" inlet="in4"/>
      </net>
      <net>
         <source obj="reverb" outlet="out4"/>
         <dest obj="fbright" inlet="in4"/>
      </net>
      <net>
         <source obj="reverb" outlet="out2"/>
         <dest obj="fbleft" inlet="in5"/>
      </net>
      <net>
         <source obj="reverb" outlet="out1"/>
         <dest obj="fbright" inlet="in5"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
      <MidiChannel>5</MidiChannel>
      <NPresets>0</NPresets>
      <NPresetEntries>0</NPresetEntries>
      <NModulationSources>0</NModulationSources>
      <NModulationTargetsPerSource>0</NModulationTargetsPerSource>
      <Author></Author>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>410</x>
      <y>23</y>
      <width>1480</width>
      <height>1201</height>
   </windowPos>
</patch-1.0>