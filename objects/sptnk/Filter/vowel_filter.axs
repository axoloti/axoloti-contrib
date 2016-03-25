<patch-1.0>
   <comment type="patch/comment" x="210" y="14" text="These 3 tables store the various formant data"/>
   <obj type="table/allocate 32b 16sliders" sha="2f1e2cd3b4f9cf737a104f27588ceba898111302" uuid="2f6705095e0695dcb701b7e442401b54838a4316" name="Formant 1" x="210" y="42">
      <params>
         <frac32.s.mapvsl name="b0" value="-3.0"/>
         <frac32.s.mapvsl name="b1" value="1.0"/>
         <frac32.s.mapvsl name="b2" value="10.0"/>
         <frac32.s.mapvsl name="b3" value="15.0"/>
         <frac32.s.mapvsl name="b4" value="14.0"/>
         <frac32.s.mapvsl name="b5" value="14.0"/>
         <frac32.s.mapvsl name="b6" value="9.0"/>
         <frac32.s.mapvsl name="b7" value="6.0"/>
         <frac32.s.mapvsl name="b8" value="2.0"/>
         <frac32.s.mapvsl name="b9" value="-1.0"/>
         <frac32.s.mapvsl name="b10" value="9.0"/>
         <frac32.s.mapvsl name="b11" value="9.0"/>
         <frac32.s.mapvsl name="b12" value="13.0"/>
         <frac32.s.mapvsl name="b13" value="9.0"/>
         <frac32.s.mapvsl name="b14" value="2.0"/>
         <frac32.s.mapvsl name="b15" value="6.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="table/allocate 32b 16sliders" sha="2f1e2cd3b4f9cf737a104f27588ceba898111302" uuid="2f6705095e0695dcb701b7e442401b54838a4316" name="Formant 2" x="420" y="42">
      <params>
         <frac32.s.mapvsl name="b0" value="35.0"/>
         <frac32.s.mapvsl name="b1" value="33.0"/>
         <frac32.s.mapvsl name="b2" value="31.0"/>
         <frac32.s.mapvsl name="b3" value="28.0"/>
         <frac32.s.mapvsl name="b4" value="24.0"/>
         <frac32.s.mapvsl name="b5" value="22.0"/>
         <frac32.s.mapvsl name="b6" value="17.0"/>
         <frac32.s.mapvsl name="b7" value="14.0"/>
         <frac32.s.mapvsl name="b8" value="18.0"/>
         <frac32.s.mapvsl name="b9" value="17.0"/>
         <frac32.s.mapvsl name="b10" value="17.0"/>
         <frac32.s.mapvsl name="b11" value="30.0"/>
         <frac32.s.mapvsl name="b12" value="22.0"/>
         <frac32.s.mapvsl name="b13" value="24.0"/>
         <frac32.s.mapvsl name="b14" value="18.0"/>
         <frac32.s.mapvsl name="b15" value="22.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="table/allocate 32b 16sliders" sha="2f1e2cd3b4f9cf737a104f27588ceba898111302" uuid="2f6705095e0695dcb701b7e442401b54838a4316" name="Formant 3" x="630" y="42">
      <params>
         <frac32.s.mapvsl name="b0" value="40.0"/>
         <frac32.s.mapvsl name="b1" value="37.0"/>
         <frac32.s.mapvsl name="b2" value="37.0"/>
         <frac32.s.mapvsl name="b3" value="35.0"/>
         <frac32.s.mapvsl name="b4" value="35.0"/>
         <frac32.s.mapvsl name="b5" value="36.0"/>
         <frac32.s.mapvsl name="b6" value="35.0"/>
         <frac32.s.mapvsl name="b7" value="35.0"/>
         <frac32.s.mapvsl name="b8" value="33.0"/>
         <frac32.s.mapvsl name="b9" value="33.0"/>
         <frac32.s.mapvsl name="b10" value="32.0"/>
         <frac32.s.mapvsl name="b11" value="37.0"/>
         <frac32.s.mapvsl name="b12" value="40.0"/>
         <frac32.s.mapvsl name="b13" value="34.0"/>
         <frac32.s.mapvsl name="b14" value="39.0"/>
         <frac32.s.mapvsl name="b15" value="35.0"/>
      </params>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="210" y="210" text="These indicators show you approximately which formant you&apos;re on and the current value of  the table"/>
   <obj type="disp/ibar 16" sha="6998eafb11a17e8569492b9ac4fa9710eb907cb8" uuid="302bfed4cde8894229679ce81f6b8a5c5212dd98" name="ibar_1" x="210" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/ibar 16" sha="6998eafb11a17e8569492b9ac4fa9710eb907cb8" uuid="302bfed4cde8894229679ce81f6b8a5c5212dd98" name="ibar_2" x="420" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/ibar 16" sha="6998eafb11a17e8569492b9ac4fa9710eb907cb8" uuid="302bfed4cde8894229679ce81f6b8a5c5212dd98" name="ibar_3" x="630" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/div 4" sha="96a7c0765a638d8fc2cda60dcb59896abb613995" uuid="507955275561b256e540f7205386d31545a2828f" name="div_1" x="112" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial b" sha="5d4fe09e04ac9d02b2f3224e493c9536fe25fa66" uuid="9ffed04e6a3052d9001eda83bae7024cb6d17037" name="dial_3" x="210" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial b" sha="5d4fe09e04ac9d02b2f3224e493c9536fe25fa66" uuid="9ffed04e6a3052d9001eda83bae7024cb6d17037" name="dial_5" x="420" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/dial b" sha="5d4fe09e04ac9d02b2f3224e493c9536fe25fa66" uuid="9ffed04e6a3052d9001eda83bae7024cb6d17037" name="dial_4" x="630" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" sha="501c30e07dedf3d701e8d0b33c3c234908c3388e" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="Formant" x="308" y="322">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" sha="709c10aa648c6e5a3c00da4b5dd238899a7c109c" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="Audio In" x="0" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="table/read interp" sha="b5d8a31ff5713762101bdd21bac59b164ed9332b" uuid="e650ab07d8398b3a0fc7b498a9580d4144727675" name="read_1" x="154" y="406">
      <params/>
      <attribs>
         <objref attributeName="table" obj="Formant 1"/>
      </attribs>
   </obj>
   <obj type="filter/bp m" sha="5e3b2b4e742da695308a0fccf1cd7407d702b1f5" uuid="f26437572c3a1f6be883bb219c773a9906ff8296" name="Filter 1" x="294" y="406">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
         <frac32.u.map name="reso" onParent="true" value="54.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Formant Mod (+/-)" x="0" y="448">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" sha="49587c7bc7e1813d8a9a7a9be012580af00ea274" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="14" y="532">
      <params/>
      <attribs/>
   </obj>
   <obj type="table/read interp" sha="b5d8a31ff5713762101bdd21bac59b164ed9332b" uuid="e650ab07d8398b3a0fc7b498a9580d4144727675" name="read_2" x="154" y="560">
      <params/>
      <attribs>
         <objref attributeName="table" obj="Formant 2"/>
      </attribs>
   </obj>
   <obj type="filter/bp m" sha="5e3b2b4e742da695308a0fccf1cd7407d702b1f5" uuid="f26437572c3a1f6be883bb219c773a9906ff8296" name="Filter 2" x="294" y="560">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
         <frac32.u.map name="reso" onParent="true" value="59.0"/>
      </params>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="434" y="616" text="There are 3 bandpass filters in parallel, they filter a specific frequency band, defined by the tables "/>
   <obj type="table/read interp" sha="b5d8a31ff5713762101bdd21bac59b164ed9332b" uuid="e650ab07d8398b3a0fc7b498a9580d4144727675" name="read_3" x="154" y="714">
      <params/>
      <attribs>
         <objref attributeName="table" obj="Formant 3"/>
      </attribs>
   </obj>
   <obj type="filter/bp m" sha="5e3b2b4e742da695308a0fccf1cd7407d702b1f5" uuid="f26437572c3a1f6be883bb219c773a9906ff8296" name="Filter 3" x="294" y="714">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
         <frac32.u.map name="reso" onParent="true" value="60.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 3 sq" sha="c7cead13835b9e268e2d11582f547bee1337097f" uuid="d7b47d5c17ec70f49b38661d48ad251bad22aace" name="Formant Mix" x="294" y="854">
      <params>
         <frac32.u.map name="gain1" onParent="true" value="30.5"/>
         <frac32.u.map name="gain2" onParent="true" value="29.0"/>
         <frac32.u.map name="gain3" onParent="true" value="31.5"/>
      </params>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="434" y="910" text="This mixer allows to mix the 3 filter sources"/>
   <comment type="patch/comment" x="434" y="1008" text="Final stage gain, so you won&apos;t hurt your ears!"/>
   <obj type="ctrl/dial p" sha="501c30e07dedf3d701e8d0b33c3c234908c3388e" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="Master gain" x="322" y="1050">
      <params>
         <frac32.u.map name="value" onParent="true" value="20.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" sha="c904cdd24d65968df2f5796e107db3747dd691a6" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="434" y="1050">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" sha="9e7e04867e1d37837b0924c9bf18c44ac68602e6" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="Output" x="504" y="1050">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="read_1" outlet="o"/>
         <dest obj="dial_3" inlet="in"/>
         <dest obj="Filter 1" inlet="pitch"/>
      </net>
      <net>
         <source obj="read_2" outlet="o"/>
         <dest obj="Filter 2" inlet="pitch"/>
         <dest obj="dial_5" inlet="in"/>
      </net>
      <net>
         <source obj="read_3" outlet="o"/>
         <dest obj="Filter 3" inlet="pitch"/>
         <dest obj="dial_4" inlet="in"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="read_2" inlet="a"/>
         <dest obj="read_1" inlet="a"/>
         <dest obj="read_3" inlet="a"/>
         <dest obj="div_1" inlet="in"/>
      </net>
      <net>
         <source obj="div_1" outlet="out"/>
         <dest obj="ibar_1" inlet="in"/>
         <dest obj="ibar_2" inlet="in"/>
         <dest obj="ibar_3" inlet="in"/>
      </net>
      <net>
         <source obj="Filter 2" outlet="out"/>
         <dest obj="Formant Mix" inlet="in2"/>
      </net>
      <net>
         <source obj="Filter 3" outlet="out"/>
         <dest obj="Formant Mix" inlet="in3"/>
      </net>
      <net>
         <source obj="Master gain" outlet="out"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="Formant Mix" outlet="out"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="Filter 1" outlet="out"/>
         <dest obj="Formant Mix" inlet="in1"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="Output" inlet="outlet"/>
      </net>
      <net>
         <source obj="Audio In" outlet="inlet"/>
         <dest obj="Filter 2" inlet="in"/>
         <dest obj="Filter 3" inlet="in"/>
         <dest obj="Filter 1" inlet="in"/>
      </net>
      <net>
         <source obj="Formant Mod (+/-)" outlet="inlet"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="Formant" outlet="out"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author>Sputnki</Author>
      <License> </License>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>0</x>
      <y>24</y>
      <width>1366</width>
      <height>744</height>
   </windowPos>
</patch-1.0>