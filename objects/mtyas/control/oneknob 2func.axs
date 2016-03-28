<patch-1.0 appVersion="1.0.8">
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_1" x="630" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/control/rbrt/control/gate_hold" uuid="484da049-8773-470e-aae4-e632b53e1fda" name="gate_hold_1" x="406" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="demux/demux 2" uuid="49737f48bfddf5d3ad9f98e4752b5b8bd5f566ad" name="demux_1" x="266" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="in" x="42" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="gate" x="42" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_1" x="364" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_1" x="196" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_2" x="644" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="d80966871d5328696da567bba03c3fa83060f08d" name="==_1" x="238" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/control/rbrt/control/gate_hold" uuid="484da049-8773-470e-aae4-e632b53e1fda" name="gate_hold_2" x="406" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_2" x="392" y="392">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="d80966871d5328696da567bba03c3fa83060f08d" name="==_2" x="266" y="406">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="in" outlet="inlet"/>
         <dest obj="demux_1" inlet="i"/>
         <dest obj="==_1" inlet="in2"/>
         <dest obj="==_2" inlet="in2"/>
      </net>
      <net>
         <source obj="demux_1" outlet="o0"/>
         <dest obj="gate_hold_1" inlet="in"/>
         <dest obj="demux_1" inlet="d0"/>
      </net>
      <net>
         <source obj="demux_1" outlet="o1"/>
         <dest obj="gate_hold_2" inlet="in"/>
         <dest obj="demux_1" inlet="d1"/>
      </net>
      <net>
         <source obj="gate" outlet="inlet"/>
         <dest obj="demux_1" inlet="s"/>
         <dest obj="inv_1" inlet="i"/>
         <dest obj="and_2" inlet="i1"/>
      </net>
      <net>
         <source obj="gate_hold_1" outlet="out"/>
         <dest obj="==_1" inlet="in1"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="gate_hold_2" outlet="out"/>
         <dest obj="==_2" inlet="in1"/>
         <dest obj="outlet_2" inlet="outlet"/>
      </net>
      <net>
         <source obj="inv_1" outlet="o"/>
         <dest obj="and_1" inlet="i1"/>
      </net>
      <net>
         <source obj="==_1" outlet="out"/>
         <dest obj="and_1" inlet="i2"/>
      </net>
      <net>
         <source obj="and_1" outlet="o"/>
         <dest obj="gate_hold_1" inlet="gate"/>
      </net>
      <net>
         <source obj="==_2" outlet="out"/>
         <dest obj="and_2" inlet="i2"/>
      </net>
      <net>
         <source obj="and_2" outlet="o"/>
         <dest obj="gate_hold_2" inlet="gate"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author></Author>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>444</x>
      <y>191</y>
      <width>886</width>
      <height>675</height>
   </windowPos>
</patch-1.0>