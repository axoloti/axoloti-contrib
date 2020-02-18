<patch-1.0 appVersion="1.0.10">
   <comment type="patch/comment" x="14" y="14" text="Bode frequency shifter or Single Side Band (SSB) modulator"/>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="in" x="14" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="pitchm" x="14" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/phasor" uuid="e5553f226015bf75f4fdc3faa39be1bee4f84044" name="pitch" x="14" y="154">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-24.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="jt/filter/iqsplit" uuid="5a98950c-1137-4b6a-ab61-e95f01f55787" name="iqsplit_1" x="126" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/sin" uuid="3fd3c55bdecb474393c99b2a5b01e9bed143eca7" name="sin_1" x="224" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="dc7fbdd46e5e6d4b8de62ee63fd6321639b2f167" name="*_1" x="294" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/cos" uuid="a2ba1ca8d10b854e06728c088c43409866624fc1" name="cos_1" x="224" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="dc7fbdd46e5e6d4b8de62ee63fd6321639b2f167" name="*_2" x="294" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/-" uuid="832edca3a945aa25ae1875d277bdd12d6709031a" name="-_1" x="364" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="up" x="462" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_1" x="364" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="down" x="462" y="308">
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
         <source obj="pitch" outlet="phasor"/>
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
         <dest obj="down" inlet="outlet"/>
      </net>
      <net>
         <source obj="in" outlet="inlet"/>
         <dest obj="iqsplit_1" inlet="in"/>
      </net>
      <net>
         <source obj="pitchm" outlet="inlet"/>
         <dest obj="pitch" inlet="pitch"/>
      </net>
      <net>
         <source obj="-_1" outlet="out"/>
         <dest obj="up" inlet="outlet"/>
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
   <notes><![CDATA[Bode frequency shifter or SSB modulator.
It shifts the frequency content in a linear way, unlike a pitch shifter.
]]></notes>
   <windowPos>
      <x>54</x>
      <y>313</y>
      <width>705</width>
      <height>530</height>
   </windowPos>
</patch-1.0>