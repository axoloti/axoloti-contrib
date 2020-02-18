<patch-1.0 appVersion="1.0.8">
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="note-in" x="14" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/mtof" sha="e815acb07fcb4cab1bce05fdfb98164d1def831f" uuid="ff3acbab734a93d2098a49e1c4c5d1ad10e0e8bf" name="mtof_1" x="98" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/phasor lin" sha="873b68569160056c2e8af2698180935eb8de0268" uuid="ee34c4d34eba2cbd849b9e5631e60ce1651faf4c" name="phasor_1" x="658" y="56">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" sha="9e7e04867e1d37837b0924c9bf18c44ac68602e6" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="wave" x="784" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="script/oneliner_k" sha="fb08e892fcd66d476cedefd8bbe89dd92df9ad80" uuid="ce83f60df6c609f81d7a7c65857db0f459deb90" name="div2" x="238" y="70">
      <params>
         <frac32.s.map name="c" value="0.0"/>
      </params>
      <attribs>
         <table attributeName="line" table="outlet_out=inlet_in/2.0"/>
      </attribs>
   </obj>
   <obj type="mux/mux 8" sha="8235eae55c039d753de98e786521870a1302ce53" uuid="de5167d9da39b04039376e8cc620ea2afc22e28a" name="mux_1" x="546" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 8 v" sha="a2ed8a60e7db97fda888b7f7c66aa23711070918" uuid="577436e6982cb8ac1f816144195641eeb6846f79" name="divisor" x="420" y="126">
      <params>
         <int32.vradio name="value" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="script/oneliner_k" sha="fb08e892fcd66d476cedefd8bbe89dd92df9ad80" uuid="ce83f60df6c609f81d7a7c65857db0f459deb90" name="div3" x="238" y="182">
      <params>
         <frac32.s.map name="c" value="0.0"/>
      </params>
      <attribs>
         <table attributeName="line" table="outlet_out=inlet_in/3.0"/>
      </attribs>
   </obj>
   <obj type="script/oneliner_k" sha="fb08e892fcd66d476cedefd8bbe89dd92df9ad80" uuid="ce83f60df6c609f81d7a7c65857db0f459deb90" name="div4" x="238" y="294">
      <params>
         <frac32.s.map name="c" value="0.0"/>
      </params>
      <attribs>
         <table attributeName="line" table="outlet_out=inlet_in/4.0"/>
      </attribs>
   </obj>
   <obj type="script/oneliner_k" sha="fb08e892fcd66d476cedefd8bbe89dd92df9ad80" uuid="ce83f60df6c609f81d7a7c65857db0f459deb90" name="div5" x="238" y="406">
      <params>
         <frac32.s.map name="c" value="0.0"/>
      </params>
      <attribs>
         <table attributeName="line" table="outlet_out=inlet_in/5.0"/>
      </attribs>
   </obj>
   <obj type="script/oneliner_k" sha="fb08e892fcd66d476cedefd8bbe89dd92df9ad80" uuid="ce83f60df6c609f81d7a7c65857db0f459deb90" name="div6" x="238" y="518">
      <params>
         <frac32.s.map name="c" value="0.0"/>
      </params>
      <attribs>
         <table attributeName="line" table="outlet_out=inlet_in/6.0"/>
      </attribs>
   </obj>
   <obj type="script/oneliner_k" sha="fb08e892fcd66d476cedefd8bbe89dd92df9ad80" uuid="ce83f60df6c609f81d7a7c65857db0f459deb90" name="div7" x="238" y="630">
      <params>
         <frac32.s.map name="c" value="0.0"/>
      </params>
      <attribs>
         <table attributeName="line" table="outlet_out=inlet_in/7.0"/>
      </attribs>
   </obj>
   <obj type="script/oneliner_k" sha="fb08e892fcd66d476cedefd8bbe89dd92df9ad80" uuid="ce83f60df6c609f81d7a7c65857db0f459deb90" name="div7_" x="238" y="742">
      <params>
         <frac32.s.map name="c" value="0.0"/>
      </params>
      <attribs>
         <table attributeName="line" table="outlet_out=inlet_in/8.0"/>
      </attribs>
   </obj>
   <nets>
      <net>
         <source obj="note-in" outlet="inlet"/>
         <dest obj="mtof_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="div2" outlet="out"/>
         <dest obj="mux_1" inlet="i1"/>
      </net>
      <net>
         <source obj="div3" outlet="out"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="div4" outlet="out"/>
         <dest obj="mux_1" inlet="i3"/>
      </net>
      <net>
         <source obj="div5" outlet="out"/>
         <dest obj="mux_1" inlet="i4"/>
      </net>
      <net>
         <source obj="div6" outlet="out"/>
         <dest obj="mux_1" inlet="i5"/>
      </net>
      <net>
         <source obj="divisor" outlet="out"/>
         <dest obj="mux_1" inlet="s"/>
      </net>
      <net>
         <source obj="mtof_1" outlet="frequency"/>
         <dest obj="div2" inlet="in"/>
         <dest obj="div3" inlet="in"/>
         <dest obj="div4" inlet="in"/>
         <dest obj="div5" inlet="in"/>
         <dest obj="div6" inlet="in"/>
         <dest obj="div7" inlet="in"/>
         <dest obj="mux_1" inlet="i0"/>
         <dest obj="div7_" inlet="in"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="phasor_1" inlet="freq"/>
      </net>
      <net>
         <source obj="div7" outlet="out"/>
         <dest obj="mux_1" inlet="i6"/>
      </net>
      <net>
         <source obj="div7_" outlet="out"/>
         <dest obj="mux_1" inlet="i7"/>
      </net>
      <net>
         <source obj="phasor_1" outlet="phasor"/>
         <dest obj="wave" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>0</NPresets>
      <NPresetEntries>0</NPresetEntries>
      <NModulationSources>0</NModulationSources>
      <NModulationTargetsPerSource>0</NModulationTargetsPerSource>
      <Author>Peter Witzel</Author>
      <License>CC0</License>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>630</x>
      <y>246</y>
      <width>897</width>
      <height>1026</height>
   </windowPos>
</patch-1.0>