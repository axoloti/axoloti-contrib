<patch-1.0 appVersion="1.0.11">
   <obj type="logic/xor 2" uuid="7902b0001a2672a9008b3882d3681ec3e33fec74" name="or_2" x="1106" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/or 2" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="or_1" x="1176" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="Active" x="1246" y="42">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="154" y="84" text="lfospeed"/>
   <comment type="patch/comment" x="714" y="84" text="32th"/>
   <comment type="patch/comment" x="784" y="84" text="16th"/>
   <obj type="midi/in/clock" uuid="f1aa3a79d6de9bd6d38dc64c9d4bb5c9de4f4198" name="Midiin" x="140" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="16f90f81694766b0bc8187bfcba5a021e5701d81" name="mux_7" x="224" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="lfo/square" uuid="de6909eb64db13af5b43f979a4c130024b3a4793" name="LFO" x="308" y="98">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-36.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="logic/counter" uuid="7a141ba82230e54e5f5cd12da5dbe5a74ba854a5" name="counter_1" x="406" y="98">
      <params>
         <int32 name="maximum" value="96"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="16f90f81694766b0bc8187bfcba5a021e5701d81" name="mux_5" x="490" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/divremc" uuid="fd7d945542e16344358136d7e22cffd5be704260" name="divremc_2" x="602" y="98">
      <params/>
      <attribs>
         <spinner attributeName="denominator" value="3"/>
      </attribs>
   </obj>
   <obj type="logic/change" uuid="96e39ae624c3f3c952cec4a95e1986ee0104f718" name="change_4" x="714" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/flipflop toggle" uuid="195e489e5fc3d275944b0de56c7a91c8641ea22a" name="flipflop_1" x="798" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="deaf0d36642c57876c4101e86f8a0b6a06021ab2" name="==_2" x="728" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="midi/out/clock" uuid="12b916e835bb6fc9fa4f2c858d1d1a72d5cf6d08" name="Midi out " x="140" y="182">
      <params>
         <frac32.u.map name="bpm" onParent="true" value="11.0"/>
      </params>
      <attribs>
         <combo attributeName="device" selection="din"/>
      </attribs>
   </obj>
   <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="c_1" x="602" y="182">
      <params/>
      <attribs>
         <spinner attributeName="value" value="3"/>
      </attribs>
   </obj>
   <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_1" x="798" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="e1c92bc92f4d191bfadf0efeae4503b458a4e440" name="mux_3" x="1064" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="16f90f81694766b0bc8187bfcba5a021e5701d81" name="mux_6" x="336" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/decode/int 4" uuid="a9b111f292909123d27b4cda86d43c5fb9f9f17c" name="int_1" x="448" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="1tel" x="1246" y="238">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="714" y="252" text="24Th"/>
   <comment type="patch/comment" x="798" y="252" text="12TH"/>
   <obj type="math/divremc" uuid="fd7d945542e16344358136d7e22cffd5be704260" name="divremc_4" x="602" y="266">
      <params/>
      <attribs>
         <spinner attributeName="denominator" value="4"/>
      </attribs>
   </obj>
   <obj type="logic/change" uuid="96e39ae624c3f3c952cec4a95e1986ee0104f718" name="change_6" x="714" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/flipflop toggle" uuid="195e489e5fc3d275944b0de56c7a91c8641ea22a" name="flipflop_2" x="798" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 4 h" uuid="f87ae81e3162014f3bdca0f56dbbdf9322e69dfd" name="Lfo/in/out/off" x="322" y="280">
      <params>
         <int32.hradio name="value" onParent="true" value="2"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="3tel/4tel" x="1246" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="Triplet" x="140" y="322">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="12/16tel" x="1246" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/divremc" uuid="fd7d945542e16344358136d7e22cffd5be704260" name="divremc_5" x="602" y="364">
      <params/>
      <attribs>
         <spinner attributeName="denominator" value="96"/>
      </attribs>
   </obj>
   <obj type="logic/change" uuid="96e39ae624c3f3c952cec4a95e1986ee0104f718" name="change_1" x="714" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="32tel" x="1246" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/button" uuid="ef3d13774349df85aa9bfecf30dbc91ab8488b3f" name="res" x="140" y="378">
      <params>
         <bool32.mom name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="phi/logic/xor 4" uuid="4d70bbe27bfe5c2f07f9a80c0efda9ae9b8e771c" name="xor_1" x="280" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/to b" uuid="91ff898f0f2bf6e4dc0165515e0be7c2281da18b" name="to_1" x="378" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/counter" uuid="7a141ba82230e54e5f5cd12da5dbe5a74ba854a5" name="binar" x="952" y="406">
      <params>
         <int32 name="maximum" onParent="true" value="16"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="resetthr" x="1246" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="reset" x="140" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/counter" uuid="7a141ba82230e54e5f5cd12da5dbe5a74ba854a5" name="triplet" x="952" y="476">
      <params>
         <int32 name="maximum" onParent="true" value="12"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="16f90f81694766b0bc8187bfcba5a021e5701d81" name="mux_2" x="1092" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="16/12" x="1176" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Lfocv" x="140" y="532">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/counter" uuid="7a141ba82230e54e5f5cd12da5dbe5a74ba854a5" name="counterV_1" x="966" y="574">
      <params>
         <int32 name="maximum" value="4"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/==" uuid="deaf0d36642c57876c4101e86f8a0b6a06021ab2" name="==_1" x="1050" y="574">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="16f90f81694766b0bc8187bfcba5a021e5701d81" name="mux_4" x="966" y="644">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/counter" uuid="7a141ba82230e54e5f5cd12da5dbe5a74ba854a5" name="counterV_3" x="966" y="714">
      <params>
         <int32 name="maximum" value="3"/>
      </params>
      <attribs/>
   </obj>
   <obj type="logic/counter" uuid="7a141ba82230e54e5f5cd12da5dbe5a74ba854a5" name="xbar" x="966" y="798">
      <params>
         <int32 name="maximum" onParent="true" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="logic/counter" uuid="7a141ba82230e54e5f5cd12da5dbe5a74ba854a5" name="xBar*x" x="1050" y="798">
      <params>
         <int32 name="maximum" onParent="true" value="16"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="1bar" x="1134" y="798">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="24ppq" x="1134" y="882">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="divremc_2" outlet="div"/>
         <dest obj="change_4" inlet="in"/>
      </net>
      <net>
         <source obj="binar" outlet="o"/>
         <dest obj="mux_2" inlet="i1"/>
      </net>
      <net>
         <source obj="divremc_4" outlet="div"/>
         <dest obj="change_6" inlet="in"/>
      </net>
      <net>
         <source obj="triplet" outlet="o"/>
         <dest obj="mux_2" inlet="i2"/>
      </net>
      <net>
         <source obj="Triplet" outlet="o"/>
         <dest obj="mux_3" inlet="s"/>
         <dest obj="mux_2" inlet="s"/>
      </net>
      <net>
         <source obj="to_1" outlet="o"/>
         <dest obj="binar" inlet="r"/>
         <dest obj="triplet" inlet="r"/>
         <dest obj="counterV_1" inlet="r"/>
         <dest obj="counterV_3" inlet="r"/>
         <dest obj="resetthr" inlet="outlet"/>
         <dest obj="LFO" inlet="reset"/>
         <dest obj="counter_1" inlet="r"/>
         <dest obj="Midi out " inlet="rst"/>
         <dest obj="xbar" inlet="r"/>
         <dest obj="flipflop_1" inlet="reset"/>
         <dest obj="flipflop_2" inlet="reset"/>
         <dest obj="xBar*x" inlet="r"/>
         <dest obj="mux_4" inlet="s"/>
      </net>
      <net>
         <source obj="counterV_1" outlet="o"/>
         <dest obj="mux_4" inlet="i1"/>
      </net>
      <net>
         <source obj="counterV_3" outlet="o"/>
         <dest obj="mux_4" inlet="i2"/>
      </net>
      <net>
         <source obj="LFO" outlet="wave"/>
         <dest obj="counter_1" inlet="trig"/>
      </net>
      <net>
         <source obj="counter_1" outlet="o"/>
         <dest obj="mux_5" inlet="i2"/>
      </net>
      <net>
         <source obj="Lfocv" outlet="inlet"/>
         <dest obj="LFO" inlet="pitch"/>
      </net>
      <net>
         <source obj="Midiin" outlet="pos24ppq"/>
         <dest obj="mux_7" inlet="i1"/>
      </net>
      <net>
         <source obj="Midi out " outlet="pos24ppq"/>
         <dest obj="mux_6" inlet="i2"/>
      </net>
      <net>
         <source obj="Midiin" outlet="active"/>
         <dest obj="or_1" inlet="i1"/>
         <dest obj="xor_1" inlet="i1"/>
      </net>
      <net>
         <source obj="Midi out " outlet="active"/>
         <dest obj="xor_1" inlet="i2"/>
      </net>
      <net>
         <source obj="reset" outlet="inlet"/>
         <dest obj="xor_1" inlet="i4"/>
      </net>
      <net>
         <source obj="res" outlet="o"/>
         <dest obj="xor_1" inlet="i3"/>
      </net>
      <net>
         <source obj="xBar*x" outlet="o"/>
         <dest obj="1bar" inlet="outlet"/>
      </net>
      <net>
         <source obj="Lfo/in/out/off" outlet="out"/>
         <dest obj="int_1" inlet="i1"/>
      </net>
      <net>
         <source obj="int_1" outlet="o2"/>
         <dest obj="Midi out " inlet="run"/>
         <dest obj="or_2" inlet="i1"/>
         <dest obj="mux_6" inlet="s"/>
      </net>
      <net>
         <source obj="int_1" outlet="o0"/>
         <dest obj="or_2" inlet="i2"/>
         <dest obj="mux_5" inlet="s"/>
      </net>
      <net>
         <source obj="or_2" outlet="o"/>
         <dest obj="or_1" inlet="i2"/>
      </net>
      <net>
         <source obj="or_1" outlet="o"/>
         <dest obj="Active" inlet="outlet"/>
      </net>
      <net>
         <source obj="int_1" outlet="o3"/>
         <dest obj="mux_7" inlet="s"/>
      </net>
      <net>
         <source obj="xbar" outlet="c"/>
         <dest obj="xBar*x" inlet="trig"/>
      </net>
      <net>
         <source obj="flipflop_1" outlet="o"/>
         <dest obj="binar" inlet="trig"/>
         <dest obj="mux_3" inlet="i1"/>
      </net>
      <net>
         <source obj="flipflop_2" outlet="o"/>
         <dest obj="triplet" inlet="trig"/>
         <dest obj="mux_3" inlet="i2"/>
      </net>
      <net>
         <source obj="xor_1" outlet="o"/>
         <dest obj="to_1" inlet="i"/>
      </net>
      <net>
         <source obj="mux_7" outlet="o"/>
         <dest obj="mux_6" inlet="i1"/>
      </net>
      <net>
         <source obj="mux_5" outlet="o"/>
         <dest obj="24ppq" inlet="outlet"/>
         <dest obj="divremc_4" inlet="a"/>
         <dest obj="divremc_2" inlet="a"/>
         <dest obj="divremc_5" inlet="a"/>
      </net>
      <net>
         <source obj="change_4" outlet="trig"/>
         <dest obj="flipflop_1" inlet="trig"/>
      </net>
      <net>
         <source obj="mux_3" outlet="o"/>
         <dest obj="12/16tel" inlet="outlet"/>
         <dest obj="counterV_1" inlet="trig"/>
         <dest obj="counterV_3" inlet="trig"/>
      </net>
      <net>
         <source obj="mux_6" outlet="o"/>
         <dest obj="mux_5" inlet="i1"/>
      </net>
      <net>
         <source obj="change_6" outlet="trig"/>
         <dest obj="flipflop_2" inlet="trig"/>
      </net>
      <net>
         <source obj="mux_2" outlet="o"/>
         <dest obj="16/12" inlet="outlet"/>
      </net>
      <net>
         <source obj="==_1" outlet="out"/>
         <dest obj="3tel/4tel" inlet="outlet"/>
      </net>
      <net>
         <source obj="mux_4" outlet="o"/>
         <dest obj="==_1" inlet="in1"/>
      </net>
      <net>
         <source obj="c_1" outlet="out"/>
         <dest obj="==_2" inlet="in2"/>
      </net>
      <net>
         <source obj="==_2" outlet="out"/>
         <dest obj="inv_1" inlet="i"/>
      </net>
      <net>
         <source obj="divremc_2" outlet="rem"/>
         <dest obj="==_2" inlet="in1"/>
      </net>
      <net>
         <source obj="inv_1" outlet="o"/>
         <dest obj="32tel" inlet="outlet"/>
      </net>
      <net>
         <source obj="divremc_5" outlet="div"/>
         <dest obj="change_1" inlet="in"/>
      </net>
      <net>
         <source obj="change_1" outlet="trig"/>
         <dest obj="1tel" inlet="outlet"/>
         <dest obj="xbar" inlet="trig"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-8</x>
      <y>-8</y>
      <width>1936</width>
      <height>1066</height>
   </windowPos>
</patch-1.0>