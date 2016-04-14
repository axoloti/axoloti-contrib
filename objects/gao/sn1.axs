<patch-1.0 appVersion="1.0.8">
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="trig" x="14" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="attack" x="98" y="28">
      <params>
         <frac32.u.map name="value" onParent="true" value="19.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="body freq" x="182" y="28">
      <params>
         <frac32.u.map name="value" onParent="true" value="45.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_2" x="252" y="28">
      <params>
         <frac32.u.map name="amp" value="1.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_1" x="350" y="28">
      <params>
         <frac32.u.map name="amp" value="35.849999904632526"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/sine lin" uuid="6a4458d598c9b8634b469d1a6e7f87971b5932f" name="sine_1" x="448" y="28">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/sine lin" uuid="6a4458d598c9b8634b469d1a6e7f87971b5932f" name="sine_2" x="546" y="28">
      <params>
         <frac32.u.map name="freq" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 2 g" uuid="221f038da51943034a75e442c90624fcebfe6112" name="+_1" x="644" y="28">
      <params>
         <frac32.u.map name="gain1" value="32.0"/>
         <frac32.u.map name="gain2" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/line 2 m" uuid="ca6fa83252b4e4dcb354f99f6a1f4bd0b07813cd" name="body env" x="756" y="28">
      <params>
         <frac32.u.map name="v0" value="0.0"/>
         <frac32.s.map name="tA" value="-64.0"/>
         <frac32.u.map name="v1" value="64.0"/>
         <frac32.s.map name="tB" onParent="true" value="0.0"/>
         <frac32.u.map name="v2" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="xfade" x="938" y="126">
      <params>
         <frac32.u.map name="value" onParent="true" value="29.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="noise/uniform" uuid="a3926ef22ae9ac217cd09933d90101848796eb78" name="uniform_1" x="210" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/abs" uuid="f4078fd9b2dff40d4f1551b79900c9ab360c99" name="abs_1" x="308" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/bp svf m" uuid="90abfee2793172fc193ec82288a454727134cb31" name="bp noise" x="392" y="210">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="28.09999990463257"/>
         <frac32.u.map name="reso" onParent="true" value="5.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/line 2 m" uuid="ca6fa83252b4e4dcb354f99f6a1f4bd0b07813cd" name="noise env" x="504" y="210">
      <params>
         <frac32.u.map name="v0" value="0.0"/>
         <frac32.s.map name="tA" value="-64.0"/>
         <frac32.u.map name="v1" value="64.0"/>
         <frac32.s.map name="tB" onParent="true" value="0.0"/>
         <frac32.u.map name="v2" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_3" x="616" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="c16a625a661f40e4b359db604dcd00b3befcdbe3" name="*_2" x="700" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="c16a625a661f40e4b359db604dcd00b3befcdbe3" name="*_1" x="868" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="mix_1" x="938" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" sha="72226293648dde4dd4739bc1b8bc46a6bf660595" name="out" x="1050" y="210">
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
         <dest obj="noise env" inlet="tA"/>
         <dest obj="body env" inlet="tA"/>
      </net>
      <net>
         <source obj="trig" outlet="inlet"/>
         <dest obj="noise env" inlet="trig"/>
         <dest obj="body env" inlet="trig"/>
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
      <net>
         <source obj="body env" outlet="out"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="noise env" outlet="out"/>
         <dest obj="*_3" inlet="a"/>
         <dest obj="*_3" inlet="b"/>
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
      <y>-4</y>
      <width>1317</width>
      <height>772</height>
   </windowPos>
</patch-1.0>