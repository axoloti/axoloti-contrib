<patch-1.0>
   <obj type="noise/uniform" sha="117e0adca76d1dc3810e120a06d022ef06093103" uuid="a3926ef22ae9ac217cd09933d90101848796eb78" name="uniform_1" x="98" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" sha="17c8e188371661163bfa55cea9974eecb785fb06" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="trig" x="14" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="wp/env/ad_mod" sha="c664a1653d0ebe6ad82ee15dc1b2bcf0eb36f4fc" uuid="55ddb6ff153b6099abdcaa20e07889682dd23893" name="ad_mod_1" x="98" y="112">
      <params>
         <frac32.s.map name="a" onParent="true" value="0.0"/>
         <frac32.s.map name="d" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" sha="c904cdd24d65968df2f5796e107db3747dd691a6" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="196" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/bp svf m" sha="24097930d951f375e0839b70f065d71a782d8b23" uuid="90abfee2793172fc193ec82288a454727134cb31" name="bp_1" x="252" y="112">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="0.0"/>
         <frac32.u.map name="reso" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" sha="9e7e04867e1d37837b0924c9bf18c44ac68602e6" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="350" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="attack" x="14" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="decay" x="14" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="pitch" x="14" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="reso" x="14" y="280">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="trig" outlet="inlet"/>
         <dest obj="ad_mod_1" inlet="trig"/>
      </net>
      <net>
         <source obj="attack" outlet="inlet"/>
         <dest obj="ad_mod_1" inlet="a"/>
      </net>
      <net>
         <source obj="decay" outlet="inlet"/>
         <dest obj="ad_mod_1" inlet="d"/>
      </net>
      <net>
         <source obj="ad_mod_1" outlet="env"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="uniform_1" outlet="wave"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="pitch" outlet="inlet"/>
         <dest obj="bp_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="reso" outlet="inlet"/>
         <dest obj="bp_1" inlet="reso"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="bp_1" inlet="in"/>
      </net>
      <net>
         <source obj="bp_1" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author>workerparasite303</Author>
      <License>GPL</License>
   </settings>
   <notes><![CDATA[TO-DO:
add CV gain control for each CV input]]></notes>
   <windowPos>
      <x>770</x>
      <y>164</y>
      <width>890</width>
      <height>696</height>
   </windowPos>
</patch-1.0>