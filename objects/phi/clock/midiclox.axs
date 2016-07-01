<patch-1.0 appVersion="1.0.10">
   <obj type="ctrl/toggle" sha="f5742cc9eee76fae90a4e570c34596dd327b6c28" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="Run" x="14" y="0">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="logic/change" sha="837ce58b607d311bf1cf34a4ace8f7c43c5699c9" uuid="96e39ae624c3f3c952cec4a95e1986ee0104f718" name="change_1" x="98" y="0">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/xor 2" sha="95db3f381bc92e323edb63e0dc8514fdca5085af" uuid="7902b0001a2672a9008b3882d3681ec3e33fec74" name="xor_3" x="196" y="0">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/to b" sha="b045cb41b877b7bf951bee343db05e80b252b6e5" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_1" x="280" y="0">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 4 h" sha="80639b318a28c19dfe0e2f1b0e97b4c11bb52d02" uuid="f87ae81e3162014f3bdca0f56dbbdf9322e69dfd" name="in-out-Lfo-off" x="14" y="56">
      <params>
         <int32.hradio name="value" onParent="true" value="2"/>
      </params>
      <attribs/>
   </obj>
   <obj type="midi/in/clock" sha="1637298ca1893391b89d9c016c7ae76d752acf72" uuid="f1aa3a79d6de9bd6d38dc64c9d4bb5c9de4f4198" name="ext" x="294" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/xor 2" sha="95db3f381bc92e323edb63e0dc8514fdca5085af" uuid="7902b0001a2672a9008b3882d3681ec3e33fec74" name="xor_1" x="420" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" sha="d53edf73b9c33108cbb6e5487759ac27b809cfcc" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="Active" x="490" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="midi/out/clock" sha="b1a8f7267317fa583225dc218f285fe306220d1b" uuid="12b916e835bb6fc9fa4f2c858d1d1a72d5cf6d08" name="clock out" x="252" y="126">
      <params>
         <frac32.u.map name="bpm" onParent="true" value="15.5"/>
      </params>
      <attribs>
         <combo attributeName="device" selection="din"/>
      </attribs>
   </obj>
   <obj type="patch/inlet b" sha="17c8e188371661163bfa55cea9974eecb785fb06" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Reset" x="14" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 4" sha="fbbb8923dd965c395c14947cd0aac1464a19b456" uuid="bd572dad58644793774a69385f376bda2e1fd9be" name="mux_1" x="420" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/change" sha="837ce58b607d311bf1cf34a4ace8f7c43c5699c9" uuid="96e39ae624c3f3c952cec4a95e1986ee0104f718" name="change_2" x="490" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/counter" sha="519c79f42a7c84352830b08e68696ecbf5d0bd52" uuid="7a141ba82230e54e5f5cd12da5dbe5a74ba854a5" name="counter_2" x="574" y="196">
      <params>
         <int32 name="maximum" value="24"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" sha="9c18b5ec0ea721bb98852ab326891478ca87a360" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="24ppq" x="658" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" sha="d53edf73b9c33108cbb6e5487759ac27b809cfcc" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="Reset-out" x="574" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Lfo cv" x="98" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="lfo/square" sha="b4420b58ca2ae5ece53d53540bc91bc9ed7a4b83" uuid="de6909eb64db13af5b43f979a4c130024b3a4793" name="Lfo" x="196" y="308">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="logic/counter" sha="519c79f42a7c84352830b08e68696ecbf5d0bd52" uuid="7a141ba82230e54e5f5cd12da5dbe5a74ba854a5" name="counter_1" x="294" y="308">
      <params>
         <int32 name="maximum" value="24"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="Run" outlet="o"/>
         <dest obj="change_1" inlet="in"/>
         <dest obj="clock out" inlet="run"/>
      </net>
      <net>
         <source obj="ext" outlet="active"/>
         <dest obj="xor_1" inlet="i1"/>
      </net>
      <net>
         <source obj="clock out" outlet="active"/>
         <dest obj="xor_1" inlet="i2"/>
      </net>
      <net>
         <source obj="xor_1" outlet="o"/>
         <dest obj="Active" inlet="outlet"/>
      </net>
      <net>
         <source obj="ext" outlet="pos24ppq"/>
         <dest obj="mux_1" inlet="i0"/>
      </net>
      <net>
         <source obj="clock out" outlet="pos24ppq"/>
         <dest obj="mux_1" inlet="i1"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="change_2" inlet="in"/>
      </net>
      <net>
         <source obj="Lfo" outlet="wave"/>
         <dest obj="counter_1" inlet="trig"/>
      </net>
      <net>
         <source obj="counter_1" outlet="o"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="change_1" outlet="trig"/>
         <dest obj="xor_3" inlet="i1"/>
      </net>
      <net>
         <source obj="Reset" outlet="inlet"/>
         <dest obj="xor_3" inlet="i2"/>
      </net>
      <net>
         <source obj="Lfo cv" outlet="inlet"/>
         <dest obj="Lfo" inlet="pitch"/>
      </net>
      <net>
         <source obj="change_2" outlet="trig"/>
         <dest obj="counter_2" inlet="trig"/>
      </net>
      <net>
         <source obj="counter_2" outlet="o"/>
         <dest obj="24ppq" inlet="outlet"/>
      </net>
      <net>
         <source obj="in-out-Lfo-off" outlet="out"/>
         <dest obj="mux_1" inlet="s"/>
      </net>
      <net>
         <source obj="to_1" outlet="o"/>
         <dest obj="counter_2" inlet="r"/>
         <dest obj="Reset-out" inlet="outlet"/>
         <dest obj="Lfo" inlet="reset"/>
         <dest obj="clock out" inlet="rst"/>
      </net>
      <net>
         <source obj="xor_3" outlet="o"/>
         <dest obj="to_1" inlet="i"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>0</NPresets>
      <NPresetEntries>0</NPresetEntries>
      <NModulationSources>0</NModulationSources>
      <NModulationTargetsPerSource>0</NModulationTargetsPerSource>
      <Author>Philip Ahrendt</Author>
      <License>Top secret</License>
      <Attributions>Clocx</Attributions>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>665</x>
      <y>93</y>
      <width>889</width>
      <height>621</height>
   </windowPos>
</patch-1.0>