<patch-1.0 appVersion="1.0.10">
   <obj type="lfo/sine" uuid="75f7330c26a13953215dccc3b7b9008545c9daa9" name="speed" x="14" y="14">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="inten" x="126" y="14">
      <params>
         <frac32.u.map name="amp" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/div 256" uuid="b805a4b200bd2e6ee06316c401d028e149722cda" name="div_1" x="238" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/div 32" uuid="40e43d0d284fded6b6cfadd45a5cb69c8d713691" name="div_2" x="322" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/phasor lin" uuid="ee34c4d34eba2cbd849b9e5631e60ce1651faf4c" name="phasor_1" x="434" y="14">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="in" x="294" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="jt/filter/iqsplit" uuid="5a98950c-1137-4b6a-ab61-e95f01f55787" name="iqsplit_1" x="420" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/sin" uuid="3fd3c55bdecb474393c99b2a5b01e9bed143eca7" name="sin_1" x="518" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="dc7fbdd46e5e6d4b8de62ee63fd6321639b2f167" name="*_1" x="588" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/cos" uuid="a2ba1ca8d10b854e06728c088c43409866624fc1" name="cos_1" x="518" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="dc7fbdd46e5e6d4b8de62ee63fd6321639b2f167" name="*_2" x="588" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_1" x="658" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="L" x="756" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/-" uuid="832edca3a945aa25ae1875d277bdd12d6709031a" name="-_1" x="658" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="R" x="756" y="294">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="iqsplit_1" outlet="i"/>
         <dest obj="*_1" inlet="a"/>
      </net>
      <net>
         <source obj="iqsplit_1" outlet="q"/>
         <dest obj="*_2" inlet="a"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="+_1" inlet="in1"/>
         <dest obj="-_1" inlet="in1"/>
      </net>
      <net>
         <source obj="*_2" outlet="result"/>
         <dest obj="+_1" inlet="in2"/>
         <dest obj="-_1" inlet="in2"/>
      </net>
      <net>
         <source obj="phasor_1" outlet="phasor"/>
         <dest obj="sin_1" inlet="phase"/>
         <dest obj="cos_1" inlet="phase"/>
      </net>
      <net>
         <source obj="sin_1" outlet="out"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="cos_1" outlet="out"/>
         <dest obj="*_2" inlet="b"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="L" inlet="outlet"/>
      </net>
      <net>
         <source obj="div_1" outlet="out"/>
         <dest obj="div_2" inlet="in"/>
      </net>
      <net>
         <source obj="inten" outlet="out"/>
         <dest obj="div_1" inlet="in"/>
      </net>
      <net>
         <source obj="speed" outlet="wave"/>
         <dest obj="inten" inlet="in"/>
      </net>
      <net>
         <source obj="div_2" outlet="out"/>
         <dest obj="phasor_1" inlet="freq"/>
      </net>
      <net>
         <source obj="in" outlet="inlet"/>
         <dest obj="iqsplit_1" inlet="in"/>
      </net>
      <net>
         <source obj="-_1" outlet="out"/>
         <dest obj="R" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>0</NPresets>
      <NPresetEntries>0</NPresetEntries>
      <NModulationSources>0</NModulationSources>
      <NModulationTargetsPerSource>0</NModulationTargetsPerSource>
      <Author>Johannes Taelman</Author>
      <License>GPL</License>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>28</x>
      <y>101</y>
      <width>898</width>
      <height>555</height>
   </windowPos>
</patch-1.0>