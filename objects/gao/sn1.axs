<patch-1.0 appVersion="1.0.8">
   <obj type="patch/inlet b" sha="e98d5f4c7b741588feaffc8629026f8d8e59e3ef" name="trig" x="28" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="body freq" x="126" y="28">
      <params>
         <frac32.u.map name="value" onParent="true" value="45.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_2" x="196" y="28">
      <params>
         <frac32.u.map name="amp" value="1.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_1" x="294" y="28">
      <params>
         <frac32.u.map name="amp" value="34.84999990463257"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/sine lin" uuid="6a4458d598c9b8634b469d1a6e7f87971b5932f" name="sine_1" x="392" y="28">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/sine lin" uuid="6a4458d598c9b8634b469d1a6e7f87971b5932f" name="sine_2" x="490" y="28">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 2 g" uuid="221f038da51943034a75e442c90624fcebfe6112" name="+_1" x="588" y="28">
      <params>
         <frac32.u.map name="gain1" value="32.0"/>
         <frac32.u.map name="gain2" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/adsr m" uuid="98bd39fb828c392b28126d259cb5175e6f6ea34b" name="body env" x="714" y="28">
      <params>
         <frac32.s.map name="a" value="-64.0"/>
         <frac32.s.map name="d" onParent="true" value="-64.0"/>
         <frac32.u.map name="s" value="0.0"/>
         <frac32.s.map name="r" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="xfade" x="882" y="126">
      <params>
         <frac32.u.map name="value" onParent="true" value="29.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="attack" x="14" y="210">
      <params>
         <frac32.u.map name="value" onParent="true" value="19.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="noise/uniform" uuid="a3926ef22ae9ac217cd09933d90101848796eb78" name="uniform_1" x="154" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/abs" uuid="f4078fd9b2dff40d4f1551b79900c9ab360c99" name="abs_1" x="252" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/bp svf m" uuid="90abfee2793172fc193ec82288a454727134cb31" name="bp noise" x="336" y="210">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="28.09999990463257"/>
         <frac32.u.map name="reso" onParent="true" value="5.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/adsr m" uuid="98bd39fb828c392b28126d259cb5175e6f6ea34b" name="noise env" x="448" y="210">
      <params>
         <frac32.s.map name="a" value="-64.0"/>
         <frac32.s.map name="d" onParent="true" value="-64.0"/>
         <frac32.u.map name="s" value="1.5"/>
         <frac32.s.map name="r" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_3" x="560" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="c16a625a661f40e4b359db604dcd00b3befcdbe3" name="*_2" x="644" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="c16a625a661f40e4b359db604dcd00b3befcdbe3" name="*_1" x="812" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="mix_1" x="882" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" sha="72226293648dde4dd4739bc1b8bc46a6bf660595" name="out" x="994" y="210">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="uniform_1" outlet="wave"/>
         <dest obj="abs_1" inlet="in"/>
      </net>
      <net>
         <source obj="xfade" outlet="out"/>
         <dest obj="mix_1" inlet="c"/>
      </net>
      <net>
         <source obj="bp noise" outlet="out"/>
         <dest obj="*_2" inlet="a"/>
      </net>
      <net>
         <source obj="body freq" outlet="out"/>
         <dest obj="*c_2" inlet="in"/>
      </net>
      <net>
         <source obj="sine_1" outlet="wave"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="sine_2" outlet="wave"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="attack" outlet="out"/>
         <dest obj="body env" inlet="a"/>
         <dest obj="noise env" inlet="a"/>
      </net>
      <net>
         <source obj="body env" outlet="env"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="noise env" outlet="env"/>
         <dest obj="*_3" inlet="a"/>
         <dest obj="*_3" inlet="b"/>
      </net>
      <net>
         <source obj="trig" outlet="inlet"/>
         <dest obj="noise env" inlet="gate"/>
         <dest obj="body env" inlet="gate"/>
      </net>
      <net>
         <source obj="*c_2" outlet="out"/>
         <dest obj="sine_1" inlet="freq"/>
         <dest obj="*c_1" inlet="in"/>
      </net>
      <net>
         <source obj="*c_1" outlet="out"/>
         <dest obj="sine_2" inlet="freq"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="*_1" inlet="a"/>
      </net>
      <net>
         <source obj="abs_1" outlet="out"/>
         <dest obj="bp noise" inlet="in"/>
      </net>
      <net>
         <source obj="*_3" outlet="result"/>
         <dest obj="*_2" inlet="b"/>
      </net>
      <net>
         <source obj="*_2" outlet="result"/>
         <dest obj="mix_1" inlet="i2"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="mix_1" inlet="i1"/>
      </net>
      <net>
         <source obj="mix_1" outlet="o"/>
         <dest obj="out" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>0</NPresets>
      <NPresetEntries>0</NPresetEntries>
      <NModulationSources>0</NModulationSources>
      <NModulationTargetsPerSource>0</NModulationTargetsPerSource>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>49</x>
      <y>24</y>
      <width>1115</width>
      <height>744</height>
   </windowPos>
</patch-1.0>