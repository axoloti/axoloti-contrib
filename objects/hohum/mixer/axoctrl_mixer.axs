<patch-1.0 appVersion="1.0.12">
   <comment type="patch/comment" x="28" y="14" text="Hohum axoctrl mixer"/>
   <comment type="patch/comment" x="28" y="28" text="Applies LFO and Volume control to incoming audio and sends it to audio out"/>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="IN_L" x="28" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca Left" x="154" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="jaffa/mix/StMix1" uuid="554303f6-2807-4425-abd2-8a6c9e6b6c72" name="stereo mixer 1" x="266" y="56">
      <params>
         <frac32.u.map name="St. Gain" value="31.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/gain/vcaST" uuid="82f6d1d8-7fb6-413a-994e-96fdf4b98ee7" name="gain ctrl object" x="364" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="audio/out stereo" uuid="a1ca7a567f535acc21055669829101d3ee7f0189" name="audio_out" x="448" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="IN_R" x="28" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca Right" x="154" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="LFO" x="28" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="VOL" x="28" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="phi/math/xfade c" uuid="eb765f98-ec1e-4cf5-8423-f4e764b7dea3" name="fader" x="266" y="210">
      <params>
         <frac32.s.map name="c" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="SIGNAL" x="364" y="210">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="gain ctrl object" outlet="o1"/>
         <dest obj="audio_out" inlet="left"/>
      </net>
      <net>
         <source obj="gain ctrl object" outlet="o2"/>
         <dest obj="audio_out" inlet="right"/>
      </net>
      <net>
         <source obj="LFO" outlet="inlet"/>
         <dest obj="vca Left" inlet="v"/>
         <dest obj="vca Right" inlet="v"/>
      </net>
      <net>
         <source obj="vca Right" outlet="o"/>
         <dest obj="fader" inlet="i2"/>
         <dest obj="stereo mixer 1" inlet="R In"/>
      </net>
      <net>
         <source obj="vca Left" outlet="o"/>
         <dest obj="fader" inlet="i1"/>
         <dest obj="stereo mixer 1" inlet="L In"/>
      </net>
      <net>
         <source obj="stereo mixer 1" outlet="L Out"/>
         <dest obj="gain ctrl object" inlet="a1"/>
      </net>
      <net>
         <source obj="stereo mixer 1" outlet="R Out"/>
         <dest obj="gain ctrl object" inlet="a2"/>
      </net>
      <net>
         <source obj="fader" outlet="o"/>
         <dest obj="SIGNAL" inlet="outlet"/>
      </net>
      <net>
         <source obj="IN_L" outlet="inlet"/>
         <dest obj="vca Left" inlet="a"/>
      </net>
      <net>
         <source obj="IN_R" outlet="inlet"/>
         <dest obj="vca Right" inlet="a"/>
      </net>
      <net>
         <source obj="VOL" outlet="inlet"/>
         <dest obj="gain ctrl object" inlet="v"/>
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
      <x>314</x>
      <y>294</y>
      <width>830</width>
      <height>606</height>
   </windowPos>
</patch-1.0>