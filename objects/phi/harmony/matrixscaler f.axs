<patch-1.0 appVersion="1.0.10">
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="scale" x="140" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" sha="60143a29e35f452025e9edaa2dec6e660ecb9c6e" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="donotouch" x="224" y="42">
      <params>
         <frac32.u.map name="amp" value="12.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="conv/to i" sha="54fcea709203eaee32032dcea036a67d527c7a7e" uuid="305966430ee86b5c3b8e18cde0c721657c558a87" name="to_1" x="336" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/divremc" sha="e05d21088634f9097b27f6de095eac6704de1457" uuid="fd7d945542e16344358136d7e22cffd5be704260" name="divremc_1" x="406" y="42">
      <params/>
      <attribs>
         <spinner attributeName="denominator" value="12"/>
      </attribs>
   </obj>
   <obj type="math/muls 12" sha="80114b7c423b3c152da58fcac4369ad9a91e05fe" uuid="d6b556443075484966ce9f99adf1bcc9662d0126" name="muls_1" x="532" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" sha="49587c7bc7e1813d8a9a7a9be012580af00ea274" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_11" x="644" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" sha="73ba55fbf61b80b78dd5cb4f0c4bd5cbbdd54ea0" uuid="3bcb8a666381ed18b8962eda50b1aa679136f618" name="demux_1" x="728" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" sha="49587c7bc7e1813d8a9a7a9be012580af00ea274" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_5" x="826" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/latch" sha="efe28fa4b70e8abfb7de3dff6cad26b8c6a8c95e" uuid="14750683752bd43205826430adb7168dae3cc2c" name="latch_1" x="910" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" sha="c0c4ce40c7dec73dfbb009fd86c9b89c068b137a" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="pitch" x="994" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i bp" uuid="e5bf3953ead2048r4692af5d85c0et3a027r74f1" name="transpose" x="826" y="112">
      <params>
         <int32 name="c" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" sha="525f64aba3d51dde5253cccedd116ec84bf5d5d1" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="gate in" x="140" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" sha="f5742cc9eee76fae90a4e570c34596dd327b6c28" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="On" x="728" y="168">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" sha="9c18b5ec0ea721bb98852ab326891478ca87a360" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Gate Thru" x="994" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 12 h" sha="307ecd4e3296e448022eca9a661c4f4dfbdc63b6" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="C" x="140" y="224">
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
   <obj type="mux/mux 12 i" sha="c6e523b08ac9a741b9b5f3d2c8434ce37398794b" uuid="abf7398da594fbea312a22e2a31c6fe2b60826e9" name="mux_2" x="532" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 12 h" sha="307ecd4e3296e448022eca9a661c4f4dfbdc63b6" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="C#" x="140" y="280">
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
   <obj type="ctrl/i radio 12 h" sha="307ecd4e3296e448022eca9a661c4f4dfbdc63b6" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="D" x="140" y="336">
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
   <obj type="ctrl/i radio 12 h" sha="307ecd4e3296e448022eca9a661c4f4dfbdc63b6" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="D#" x="140" y="392">
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
   <obj type="ctrl/i radio 12 h" sha="307ecd4e3296e448022eca9a661c4f4dfbdc63b6" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="E" x="140" y="448">
      <params>
         <int32.hradio name="value" onParent="true" value="4"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 12 h" sha="307ecd4e3296e448022eca9a661c4f4dfbdc63b6" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="F" x="140" y="504">
      <params>
         <int32.hradio name="value" onParent="true" value="5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 12 h" sha="307ecd4e3296e448022eca9a661c4f4dfbdc63b6" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="F#" x="140" y="560">
      <params>
         <int32.hradio name="value" onParent="true" value="6"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 12 h" sha="307ecd4e3296e448022eca9a661c4f4dfbdc63b6" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="G" x="140" y="616">
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
   <obj type="ctrl/i radio 12 h" sha="307ecd4e3296e448022eca9a661c4f4dfbdc63b6" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="G#" x="140" y="672">
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
   <obj type="ctrl/i radio 12 h" sha="307ecd4e3296e448022eca9a661c4f4dfbdc63b6" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="A" x="140" y="728">
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
   <obj type="ctrl/i radio 12 h" sha="307ecd4e3296e448022eca9a661c4f4dfbdc63b6" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="A#" x="140" y="784">
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
   <obj type="ctrl/i radio 12 h" sha="307ecd4e3296e448022eca9a661c4f4dfbdc63b6" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="B" x="140" y="840">
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
         <source obj="On" outlet="o"/>
         <dest obj="demux_1" inlet="s"/>
      </net>
      <net>
         <source obj="gate in" outlet="inlet"/>
         <dest obj="Gate Thru" inlet="outlet"/>
         <dest obj="latch_1" inlet="trig"/>
      </net>
      <net>
         <source obj="scale" outlet="inlet"/>
         <dest obj="donotouch" inlet="in"/>
         <dest obj="demux_1" inlet="i1"/>
      </net>
      <net>
         <source obj="to_1" outlet="o"/>
         <dest obj="divremc_1" inlet="a"/>
      </net>
      <net>
         <source obj="mux_2" outlet="o"/>
         <dest obj="+_11" inlet="in2"/>
      </net>
      <net>
         <source obj="donotouch" outlet="out"/>
         <dest obj="to_1" inlet="i"/>
      </net>
      <net>
         <source obj="muls_1" outlet="out"/>
         <dest obj="+_11" inlet="in1"/>
      </net>
      <net>
         <source obj="+_11" outlet="out"/>
         <dest obj="demux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="demux_1" outlet="o"/>
         <dest obj="+_5" inlet="in1"/>
      </net>
      <net>
         <source obj="latch_1" outlet="o"/>
         <dest obj="pitch" inlet="outlet"/>
      </net>
      <net>
         <source obj="C" outlet="out"/>
         <dest obj="mux_2" inlet="i0"/>
      </net>
      <net>
         <source obj="C#" outlet="out"/>
         <dest obj="mux_2" inlet="i1"/>
      </net>
      <net>
         <source obj="D" outlet="out"/>
         <dest obj="mux_2" inlet="i2"/>
      </net>
      <net>
         <source obj="D#" outlet="out"/>
         <dest obj="mux_2" inlet="i3"/>
      </net>
      <net>
         <source obj="E" outlet="out"/>
         <dest obj="mux_2" inlet="i4"/>
      </net>
      <net>
         <source obj="F" outlet="out"/>
         <dest obj="mux_2" inlet="i5"/>
      </net>
      <net>
         <source obj="F#" outlet="out"/>
         <dest obj="mux_2" inlet="i6"/>
      </net>
      <net>
         <source obj="G" outlet="out"/>
         <dest obj="mux_2" inlet="i7"/>
      </net>
      <net>
         <source obj="G#" outlet="out"/>
         <dest obj="mux_2" inlet="i8"/>
      </net>
      <net>
         <source obj="A" outlet="out"/>
         <dest obj="mux_2" inlet="i9"/>
      </net>
      <net>
         <source obj="B" outlet="out"/>
         <dest obj="mux_2" inlet="i11"/>
      </net>
      <net>
         <source obj="A#" outlet="out"/>
         <dest obj="mux_2" inlet="i10"/>
      </net>
      <net>
         <source obj="divremc_1" outlet="rem"/>
         <dest obj="mux_2" inlet="s"/>
      </net>
      <net>
         <source obj="+_5" outlet="out"/>
         <dest obj="latch_1" inlet="i"/>
      </net>
      <net>
         <source obj="transpose" outlet="out"/>
         <dest obj="+_5" inlet="in2"/>
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