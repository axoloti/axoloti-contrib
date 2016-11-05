<patch-1.0 appVersion="1.0.11">
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="scale" x="140" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/divremc" uuid="fd7d945542e16344358136d7e22cffd5be704260" name="divremc_1" x="406" y="42">
      <params/>
      <attribs>
         <spinner attributeName="denominator" value="12"/>
      </attribs>
   </obj>
   <obj type="math/muls 12" uuid="d6b556443075484966ce9f99adf1bcc9662d0126" name="muls_1" x="532" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="644" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/latch" uuid="14750683752bd43205826430adb7168dae3cc2c" name="latch_1" x="728" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_2" x="826" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="3bcb8a666381ed18b8962eda50b1aa679136f618" name="mux_1" x="966" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="pitch" x="1050" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i bp" uuid="e5bf3953ead2048r4692af5d85c0et3a027r74f1" name="transpose" x="826" y="112">
      <params>
         <int32 name="c" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="gate in" x="140" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/-+i" uuid="e5bf3953ead204874692af5d85c0e43a027g74f1" name="-+i_1" x="630" y="140">
      <params>
         <int32 name="c" value="-4"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="On" x="728" y="168">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Gate Thru" x="994" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 12 h" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="C" x="140" y="224">
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
   <obj type="drj/mux/mux 12" uuid="f548c23eb95fa96cfa963baaadac300608530430" name="mux_2" x="532" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 12 h" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="C#" x="140" y="280">
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
   <obj type="ctrl/i radio 12 h" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="D" x="140" y="336">
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
   <obj type="ctrl/i radio 12 h" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="D#" x="140" y="392">
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
   <obj type="ctrl/i radio 12 h" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="E" x="140" y="448">
      <params>
         <int32.hradio name="value" onParent="true" value="4"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 12 h" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="F" x="140" y="504">
      <params>
         <int32.hradio name="value" onParent="true" value="5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 12 h" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="F#" x="140" y="560">
      <params>
         <int32.hradio name="value" onParent="true" value="6"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 12 h" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="G" x="140" y="616">
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
   <obj type="ctrl/i radio 12 h" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="G#" x="140" y="672">
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
   <obj type="ctrl/i radio 12 h" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="A" x="140" y="728">
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
   <obj type="ctrl/i radio 12 h" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="A#" x="140" y="784">
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
   <obj type="ctrl/i radio 12 h" uuid="3c306e7cf0813bdf10bad2a87266ea6c60e80cf2" name="B" x="140" y="840">
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
         <dest obj="mux_1" inlet="s"/>
      </net>
      <net>
         <source obj="gate in" outlet="inlet"/>
         <dest obj="Gate Thru" inlet="outlet"/>
         <dest obj="latch_1" inlet="trig"/>
      </net>
      <net>
         <source obj="scale" outlet="inlet"/>
         <dest obj="divremc_1" inlet="a"/>
         <dest obj="mux_1" inlet="i1"/>
      </net>
      <net>
         <source obj="mux_2" outlet="o"/>
         <dest obj="-+i_1" inlet="in"/>
      </net>
      <net>
         <source obj="muls_1" outlet="out"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="latch_1" inlet="i"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
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
         <source obj="transpose" outlet="out"/>
         <dest obj="+_2" inlet="in2"/>
      </net>
      <net>
         <source obj="-+i_1" outlet="out"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="+_2" outlet="out"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="latch_1" outlet="o"/>
         <dest obj="+_2" inlet="in1"/>
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