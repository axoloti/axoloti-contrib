<patch-1.0 appVersion="1.0.10">
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Seq pre" x="42" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" sha="60143a29e35f452025e9edaa2dec6e660ecb9c6e" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="donotouch" x="126" y="14">
      <params>
         <frac32.u.map name="amp" value="12.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="conv/to i" sha="54fcea709203eaee32032dcea036a67d527c7a7e" uuid="305966430ee86b5c3b8e18cde0c721657c558a87" name="to_1" x="238" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" sha="49587c7bc7e1813d8a9a7a9be012580af00ea274" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_3" x="308" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/divremc" sha="e05d21088634f9097b27f6de095eac6704de1457" uuid="fd7d945542e16344358136d7e22cffd5be704260" name="divremc_1" x="392" y="14">
      <params/>
      <attribs>
         <spinner attributeName="denominator" value="12"/>
      </attribs>
   </obj>
   <obj type="math/muls 12" sha="b8843476a1c719c1d3e849ff867276db1665ec8d" uuid="d6b556443075484966ce9f99adf1bcc9662d0126" name="muls_1" x="518" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" sha="49587c7bc7e1813d8a9a7a9be012580af00ea274" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_11" x="616" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" sha="748d226b7665f8addb97972e563e34b3fa57b22c" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_5" x="700" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" sha="73ba55fbf61b80b78dd5cb4f0c4bd5cbbdd54ea0" uuid="3bcb8a666381ed18b8962eda50b1aa679136f618" name="demux_1" x="784" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" sha="49587c7bc7e1813d8a9a7a9be012580af00ea274" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="868" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/latch" sha="efe28fa4b70e8abfb7de3dff6cad26b8c6a8c95e" uuid="14750683752bd43205826430adb7168dae3cc2c" name="latch_1" x="952" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" sha="c0c4ce40c7dec73dfbb009fd86c9b89c068b137a" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="pitch" x="1036" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Oct pre" x="42" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" sha="b26f881dfa1451f0269e068eb6b3d824b43b41d3" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="transpose" x="238" y="84">
      <params>
         <frac32.s.map name="value" onParent="true" value="-48.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="const/i" sha="15b9dce9232a04e8881936a6ea800e66ae8e0da9" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_1" x="602" y="84">
      <params/>
      <attribs>
         <spinner attributeName="value" value="-12"/>
      </attribs>
   </obj>
   <obj type="ctrl/toggle" sha="f5742cc9eee76fae90a4e570c34596dd327b6c28" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="On" x="784" y="84">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Key after" x="42" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" sha="49587c7bc7e1813d8a9a7a9be012580af00ea274" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_4" x="308" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" sha="49587c7bc7e1813d8a9a7a9be012580af00ea274" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_2" x="126" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Trans after" x="42" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" sha="525f64aba3d51dde5253cccedd116ec84bf5d5d1" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="Gate" x="42" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="drj/mux/mux 12" uuid="f548c23eb95fa96cfa963baaadac300608530430" name="mux_1" x="420" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 12 h" sha="307ecd4e3296e448022eca9a661c4f4dfbdc63b6" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="C" x="42" y="238">
      <params>
         <int32.hradio name="value" onParent="true" value="0">
            <presets>
               <preset index="1">
                  <i i="0"/>
               </preset>
            </presets>
         </int32.hradio>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 12 h" sha="307ecd4e3296e448022eca9a661c4f4dfbdc63b6" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="C#" x="42" y="294">
      <params>
         <int32.hradio name="value" onParent="true" value="1">
            <presets>
               <preset index="1">
                  <i i="1"/>
               </preset>
            </presets>
         </int32.hradio>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" sha="9c18b5ec0ea721bb98852ab326891478ca87a360" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Gate Thru" x="896" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 12 h" sha="307ecd4e3296e448022eca9a661c4f4dfbdc63b6" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="D" x="42" y="350">
      <params>
         <int32.hradio name="value" onParent="true" value="2">
            <presets>
               <preset index="1">
                  <i i="2"/>
               </preset>
            </presets>
         </int32.hradio>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 12 h" sha="307ecd4e3296e448022eca9a661c4f4dfbdc63b6" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="D#" x="42" y="406">
      <params>
         <int32.hradio name="value" onParent="true" value="3">
            <presets>
               <preset index="1">
                  <i i="3"/>
               </preset>
            </presets>
         </int32.hradio>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 12 h" sha="307ecd4e3296e448022eca9a661c4f4dfbdc63b6" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="E" x="42" y="462">
      <params>
         <int32.hradio name="value" onParent="true" value="4"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 12 h" sha="307ecd4e3296e448022eca9a661c4f4dfbdc63b6" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="F" x="42" y="518">
      <params>
         <int32.hradio name="value" onParent="true" value="5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 12 h" sha="307ecd4e3296e448022eca9a661c4f4dfbdc63b6" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="F#" x="42" y="574">
      <params>
         <int32.hradio name="value" onParent="true" value="6"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 12 h" sha="307ecd4e3296e448022eca9a661c4f4dfbdc63b6" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="G" x="42" y="630">
      <params>
         <int32.hradio name="value" onParent="true" value="7">
            <presets>
               <preset index="1">
                  <i i="7"/>
               </preset>
            </presets>
         </int32.hradio>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 12 h" sha="307ecd4e3296e448022eca9a661c4f4dfbdc63b6" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="G#" x="42" y="686">
      <params>
         <int32.hradio name="value" onParent="true" value="8">
            <presets>
               <preset index="1">
                  <i i="8"/>
               </preset>
            </presets>
         </int32.hradio>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 12 h" sha="307ecd4e3296e448022eca9a661c4f4dfbdc63b6" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="A" x="42" y="742">
      <params>
         <int32.hradio name="value" onParent="true" value="9">
            <presets>
               <preset index="1">
                  <i i="9"/>
               </preset>
            </presets>
         </int32.hradio>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 12 h" sha="307ecd4e3296e448022eca9a661c4f4dfbdc63b6" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="A#" x="42" y="798">
      <params>
         <int32.hradio name="value" onParent="true" value="10">
            <presets>
               <preset index="1">
                  <i i="10"/>
               </preset>
            </presets>
         </int32.hradio>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 12 h" sha="307ecd4e3296e448022eca9a661c4f4dfbdc63b6" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="B" x="42" y="854">
      <params>
         <int32.hradio name="value" onParent="true" value="11">
            <presets>
               <preset index="1">
                  <i i="11"/>
               </preset>
            </presets>
         </int32.hradio>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="divremc_1" outlet="div"/>
         <dest obj="muls_1" inlet="in"/>
      </net>
      <net>
         <source obj="divremc_1" outlet="rem"/>
         <dest obj="mux_1" inlet="s"/>
      </net>
      <net>
         <source obj="C" outlet="out"/>
         <dest obj="mux_1" inlet="i0"/>
      </net>
      <net>
         <source obj="C#" outlet="out"/>
         <dest obj="mux_1" inlet="i1"/>
      </net>
      <net>
         <source obj="D" outlet="out"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="D#" outlet="out"/>
         <dest obj="mux_1" inlet="i3"/>
      </net>
      <net>
         <source obj="E" outlet="out"/>
         <dest obj="mux_1" inlet="i4"/>
      </net>
      <net>
         <source obj="F" outlet="out"/>
         <dest obj="mux_1" inlet="i5"/>
      </net>
      <net>
         <source obj="F#" outlet="out"/>
         <dest obj="mux_1" inlet="i6"/>
      </net>
      <net>
         <source obj="G" outlet="out"/>
         <dest obj="mux_1" inlet="i7"/>
      </net>
      <net>
         <source obj="G#" outlet="out"/>
         <dest obj="mux_1" inlet="i8"/>
      </net>
      <net>
         <source obj="A" outlet="out"/>
         <dest obj="mux_1" inlet="i9"/>
      </net>
      <net>
         <source obj="A#" outlet="out"/>
         <dest obj="mux_1" inlet="i10"/>
      </net>
      <net>
         <source obj="B" outlet="out"/>
         <dest obj="mux_1" inlet="i11"/>
      </net>
      <net>
         <source obj="On" outlet="o"/>
         <dest obj="demux_1" inlet="s"/>
      </net>
      <net>
         <source obj="to_1" outlet="o"/>
         <dest obj="+_3" inlet="in1"/>
      </net>
      <net>
         <source obj="Trans after" outlet="inlet"/>
         <dest obj="+_2" inlet="in2"/>
      </net>
      <net>
         <source obj="transpose" outlet="out"/>
         <dest obj="+_4" inlet="in1"/>
      </net>
      <net>
         <source obj="Gate" outlet="inlet"/>
         <dest obj="Gate Thru" inlet="outlet"/>
         <dest obj="latch_1" inlet="trig"/>
      </net>
      <net>
         <source obj="donotouch" outlet="out"/>
         <dest obj="to_1" inlet="i"/>
      </net>
      <net>
         <source obj="+_3" outlet="out"/>
         <dest obj="divremc_1" inlet="a"/>
      </net>
      <net>
         <source obj="muls_1" outlet="out"/>
         <dest obj="+_11" inlet="in1"/>
      </net>
      <net>
         <source obj="+_11" outlet="out"/>
         <dest obj="+_5" inlet="in1"/>
      </net>
      <net>
         <source obj="demux_1" outlet="o"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="latch_1" inlet="i"/>
      </net>
      <net>
         <source obj="latch_1" outlet="o"/>
         <dest obj="pitch" inlet="outlet"/>
      </net>
      <net>
         <source obj="+_4" outlet="out"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="+_2" outlet="out"/>
         <dest obj="+_4" inlet="in2"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="+_11" inlet="in2"/>
      </net>
      <net>
         <source obj="i_1" outlet="out"/>
         <dest obj="+_5" inlet="in2"/>
      </net>
      <net>
         <source obj="+_5" outlet="out"/>
         <dest obj="demux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="Seq pre" outlet="inlet"/>
         <dest obj="donotouch" inlet="in"/>
         <dest obj="demux_1" inlet="i1"/>
      </net>
      <net>
         <source obj="Oct pre" outlet="inlet"/>
         <dest obj="+_3" inlet="in2"/>
      </net>
      <net>
         <source obj="Key after" outlet="inlet"/>
         <dest obj="+_2" inlet="in1"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>0</NPresets>
      <NPresetEntries>0</NPresetEntries>
      <NModulationSources>0</NModulationSources>
      <NModulationTargetsPerSource>0</NModulationTargetsPerSource>
      <Author>Philoop</Author>
      <License>Secret</License>
      <Attributions>melodizer</Attributions>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>592</x>
      <y>35</y>
      <width>1155</width>
      <height>1050</height>
   </windowPos>
</patch-1.0>