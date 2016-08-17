<patch-1.0 appVersion="1.0.10">
   <obj type="midi/in/keyb touch" uuid="edfcb4cfd5b2064e95f5a7ee644bca56252ec11f" name="keyb_1" x="28" y="140">
      <params/>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="67add07e-825f-45e7-b943-220b3ca83dae" name="*_1" x="140" y="140">
      <params/>
      <attribs/>
      <object id="patch/object" uuid="67add07e-825f-45e7-b943-220b3ca83dae">
         <sDescription>multiply</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>math.axh</helpPatch>
         <inlets>
            <frac32 name="a" description="input"/>
         </inlets>
         <outlets>
            <frac32 name="result" description="output"/>
         </outlets>
         <displays/>
         <params/>
         <attribs/>
         <includes/>
         <code.krate><![CDATA[outlet_result= ___SMMUL(inlet_a<<3,4<<23);
]]></code.krate>
      </object>
   </patchobj>
   <obj type="conv/to i" uuid="305966430ee86b5c3b8e18cde0c721657c558a87" name="to_1" x="210" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/polyindex" uuid="edc730b5393c31d703572e0c0c88aaced643bd6" name="polyindex_1" x="266" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="16f90f81694766b0bc8187bfcba5a021e5701d81" name="mux_1" x="364" y="140">
      <params/>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="dbc713d7-b64d-4573-9dbd-41c3fc0ed844" name="-8_1" x="434" y="140">
      <params/>
      <attribs/>
      <object id="patch/object" uuid="dbc713d7-b64d-4573-9dbd-41c3fc0ed844">
         <sDescription>subtracts one unit</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>math.axh</helpPatch>
         <inlets>
            <int32 name="a" description="a"/>
         </inlets>
         <outlets>
            <int32 name="result" description="a-1"/>
         </outlets>
         <displays/>
         <params/>
         <attribs/>
         <includes/>
         <code.krate><![CDATA[outlet_result= inlet_a-8;]]></code.krate>
      </object>
   </patchobj>
   <patchobj type="patch/object" uuid="337950ee-0b26-4a62-836d-61b57abcedda" name="divremc_1" x="504" y="140">
      <params/>
      <attribs>
         <spinner attributeName="denominator" value="48"/>
      </attribs>
      <object id="patch/object" uuid="337950ee-0b26-4a62-836d-61b57abcedda">
         <sDescription>divide integer with constant, also outputs remainder (modulo)</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>math.axh</helpPatch>
         <inlets>
            <int32 name="a" description="nominator"/>
         </inlets>
         <outlets>
            <int32 name="rem" description="remainder of division by denominator"/>
         </outlets>
         <displays/>
         <params/>
         <attribs>
            <spinner name="denominator" MinValue="1" MaxValue="128" DefaultValue="1"/>
         </attribs>
         <includes/>
         <code.krate><![CDATA[int32_t r;
int32_t a=inlet_a+88;
r=a/attr_denominator;
outlet_rem = inlet_a+88-(r*attr_denominator);
]]></code.krate>
      </object>
   </patchobj>
   <obj type="demux/demux 8" uuid="424562e2d235f474eefb20fa34619b76498b7c63" name="demux_1" x="616" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="demux/demux 8" uuid="424562e2d235f474eefb20fa34619b76498b7c63" name="demux_2" x="700" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Gate1" x="798" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Note1" x="798" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Gate2" x="798" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Note2" x="798" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Gate3" x="798" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Note3" x="798" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Gate4" x="798" y="392">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Note4" x="798" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Gate5" x="798" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Note5" x="798" y="518">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Gate6" x="798" y="560">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Note6" x="798" y="602">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Gate7" x="798" y="644">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Note7" x="798" y="686">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Gate8" x="798" y="728">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Note8" x="798" y="770">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="-8_1" inlet="a"/>
         <dest obj="divremc_1" inlet="a"/>
      </net>
      <net>
         <source obj="polyindex_1" outlet="index"/>
         <dest obj="demux_1" inlet="s"/>
         <dest obj="demux_2" inlet="s"/>
      </net>
      <net>
         <source obj="demux_1" outlet="o0"/>
         <dest obj="Note1" inlet="outlet"/>
      </net>
      <net>
         <source obj="demux_1" outlet="o1"/>
         <dest obj="Note2" inlet="outlet"/>
      </net>
      <net>
         <source obj="demux_1" outlet="o2"/>
         <dest obj="Note3" inlet="outlet"/>
      </net>
      <net>
         <source obj="demux_1" outlet="o3"/>
         <dest obj="Note4" inlet="outlet"/>
      </net>
      <net>
         <source obj="demux_1" outlet="o4"/>
         <dest obj="Note5" inlet="outlet"/>
      </net>
      <net>
         <source obj="demux_1" outlet="o5"/>
         <dest obj="Note6" inlet="outlet"/>
      </net>
      <net>
         <source obj="demux_1" outlet="o6"/>
         <dest obj="Note7" inlet="outlet"/>
      </net>
      <net>
         <source obj="demux_1" outlet="o7"/>
         <dest obj="Note8" inlet="outlet"/>
      </net>
      <net>
         <source obj="demux_2" outlet="o0"/>
         <dest obj="Gate1" inlet="outlet"/>
      </net>
      <net>
         <source obj="demux_2" outlet="o1"/>
         <dest obj="Gate2" inlet="outlet"/>
      </net>
      <net>
         <source obj="demux_2" outlet="o2"/>
         <dest obj="Gate3" inlet="outlet"/>
      </net>
      <net>
         <source obj="demux_2" outlet="o3"/>
         <dest obj="Gate4" inlet="outlet"/>
      </net>
      <net>
         <source obj="demux_2" outlet="o4"/>
         <dest obj="Gate5" inlet="outlet"/>
      </net>
      <net>
         <source obj="demux_2" outlet="o5"/>
         <dest obj="Gate6" inlet="outlet"/>
      </net>
      <net>
         <source obj="demux_2" outlet="o6"/>
         <dest obj="Gate7" inlet="outlet"/>
      </net>
      <net>
         <source obj="demux_2" outlet="o7"/>
         <dest obj="Gate8" inlet="outlet"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="gate2"/>
         <dest obj="mux_1" inlet="s"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="touch"/>
         <dest obj="*_1" inlet="a"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="demux_2" inlet="i"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="to_1" inlet="i"/>
      </net>
      <net>
         <source obj="to_1" outlet="o"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="divremc_1" outlet="rem"/>
         <dest obj="demux_1" inlet="i"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>polyphonic</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <HasMidiChannelSelector>true</HasMidiChannelSelector>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>67</x>
      <y>72</y>
      <width>1696</width>
      <height>1026</height>
   </windowPos>
</patch-1.0>