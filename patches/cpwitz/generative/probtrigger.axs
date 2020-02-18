<patch-1.0>
   <obj type="patch/inlet b" sha="17c8e188371661163bfa55cea9974eecb785fb06" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="trigger" x="84" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="rand/uniform f trig" sha="926c3f305c1c8031d3cad3e29eb688cee124ab2e" uuid="223873125a332e3b8a82795a3eef167993adb086" name="uniform_1" x="252" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/bipolar2unipolar" sha="93baeaf78c9a228f23225186d21e61abc921c3d6" uuid="f6f63d71053d572d3c795f83c7ec11dfbbce82dd" name="bipolar2unipolar_1" x="266" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="prob+" x="84" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" sha="fcf3c7b64624a2ee10ab0923e03af3f1e8e2a648" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_1" x="476" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" sha="d53edf73b9c33108cbb6e5487759ac27b809cfcc" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="shoot" x="644" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" sha="49587c7bc7e1813d8a9a7a9be012580af00ea274" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="252" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/&lt;" sha="1b9f991b3ee7bbd48190ada0fefa35b908dc982b" uuid="c624e28be64ac9dad61b6dcd4ae6f241d2879167" name="&lt;_1" x="392" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" sha="c0c4ce40c7dec73dfbb009fd86c9b89c068b137a" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="lastprop" x="644" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="more+" x="84" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/exp" sha="2ac6f1fe7b85cbd855f836a65df6a49bcd2c0f62" uuid="3f0e6db61bc98c04b42a940e7a93abbf8a178317" name="exp_1" x="168" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/latch" sha="efe28fa4b70e8abfb7de3dff6cad26b8c6a8c95e" uuid="14750683752bd43205826430adb7168dae3cc2c" name="latch_1" x="560" y="266">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="uniform_1" outlet="rand"/>
         <dest obj="bipolar2unipolar_1" inlet="i"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="&lt;_1" inlet="in2"/>
         <dest obj="latch_1" inlet="i"/>
      </net>
      <net>
         <source obj="bipolar2unipolar_1" outlet="o"/>
         <dest obj="&lt;_1" inlet="in1"/>
      </net>
      <net>
         <source obj="trigger" outlet="inlet"/>
         <dest obj="uniform_1" inlet="trig"/>
         <dest obj="and_1" inlet="i1"/>
      </net>
      <net>
         <source obj="and_1" outlet="o"/>
         <dest obj="shoot" inlet="outlet"/>
         <dest obj="latch_1" inlet="trig"/>
      </net>
      <net>
         <source obj="&lt;_1" outlet="out"/>
         <dest obj="and_1" inlet="i2"/>
      </net>
      <net>
         <source obj="latch_1" outlet="o"/>
         <dest obj="lastprop" inlet="outlet"/>
      </net>
      <net>
         <source obj="exp_1" outlet="result"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="prob+" outlet="inlet"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="more+" outlet="inlet"/>
         <dest obj="exp_1" inlet="a"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>0</NPresets>
      <NPresetEntries>0</NPresetEntries>
      <NModulationSources>0</NModulationSources>
      <NModulationTargetsPerSource>0</NModulationTargetsPerSource>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>285</x>
      <y>201</y>
      <width>871</width>
      <height>538</height>
   </windowPos>
</patch-1.0>