<patch-1.0 appVersion="1.0.11">
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="in" x="0" y="0">
      <params/>
      <attribs/>
   </obj>
   <obj type="delay/write" uuid="bd73958e3830021807ee97a8cff4500a72a5710d" name="dela" x="84" y="0">
      <params/>
      <attribs>
         <combo attributeName="size" selection="256 (5.33ms)"/>
      </attribs>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="depth_1" x="0" y="56">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="lfo/sine" uuid="75f7330c26a13953215dccc3b7b9008545c9daa9" name="sine_1" x="84" y="56">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="conv/bipolar2unipolar" uuid="f6f63d71053d572d3c795f83c7ec11dfbbce82dd" name="bipolar2unipolar1" x="196" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="vca_1" x="336" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_1" x="406" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="delay/read interp" uuid="e3d8b8823ab551c588659520bf6cc25c630466c7" name="delread21" x="490" y="56">
      <params>
         <frac32.u.map name="time" value="1.0"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="dela"/>
      </attribs>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="658" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="depth_2" x="0" y="154">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="lfo/sine" uuid="75f7330c26a13953215dccc3b7b9008545c9daa9" name="sine_2" x="84" y="154">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="conv/bipolar2unipolar" uuid="f6f63d71053d572d3c795f83c7ec11dfbbce82dd" name="bipolar2unipolar1_" x="196" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="vca_2" x="336" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_2" x="406" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="delay/read interp" uuid="e3d8b8823ab551c588659520bf6cc25c630466c7" name="delread21_" x="490" y="154">
      <params>
         <frac32.u.map name="time" value="1.0"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="dela"/>
      </attribs>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_2" x="658" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="depth_3" x="0" y="252">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="lfo/sine" uuid="75f7330c26a13953215dccc3b7b9008545c9daa9" name="sine_3" x="84" y="252">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="conv/bipolar2unipolar" uuid="f6f63d71053d572d3c795f83c7ec11dfbbce82dd" name="bipolar2unipolar1__" x="196" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="vca_3" x="336" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_3" x="406" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="delay/read interp" uuid="e3d8b8823ab551c588659520bf6cc25c630466c7" name="delread21__" x="490" y="252">
      <params>
         <frac32.u.map name="time" value="1.0"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="dela"/>
      </attribs>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_3" x="658" y="252">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="in" outlet="inlet"/>
         <dest obj="dela" inlet="in"/>
      </net>
      <net>
         <source obj="delread21" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="sine_1" outlet="wave"/>
         <dest obj="bipolar2unipolar1" inlet="i"/>
      </net>
      <net>
         <source obj="bipolar2unipolar1" outlet="o"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="depth_1" outlet="out"/>
         <dest obj="vca_1" inlet="b"/>
      </net>
      <net>
         <source obj="vca_1" outlet="result"/>
         <dest obj="interp_1" inlet="i"/>
      </net>
      <net>
         <source obj="interp_1" outlet="o"/>
         <dest obj="delread21" inlet="time"/>
      </net>
      <net>
         <source obj="delread21_" outlet="out"/>
         <dest obj="outlet_2" inlet="outlet"/>
      </net>
      <net>
         <source obj="sine_2" outlet="wave"/>
         <dest obj="bipolar2unipolar1_" inlet="i"/>
      </net>
      <net>
         <source obj="bipolar2unipolar1_" outlet="o"/>
         <dest obj="vca_2" inlet="a"/>
      </net>
      <net>
         <source obj="depth_2" outlet="out"/>
         <dest obj="vca_2" inlet="b"/>
      </net>
      <net>
         <source obj="vca_2" outlet="result"/>
         <dest obj="interp_2" inlet="i"/>
      </net>
      <net>
         <source obj="interp_2" outlet="o"/>
         <dest obj="delread21_" inlet="time"/>
      </net>
      <net>
         <source obj="delread21__" outlet="out"/>
         <dest obj="outlet_3" inlet="outlet"/>
      </net>
      <net>
         <source obj="sine_3" outlet="wave"/>
         <dest obj="bipolar2unipolar1__" inlet="i"/>
      </net>
      <net>
         <source obj="bipolar2unipolar1__" outlet="o"/>
         <dest obj="vca_3" inlet="a"/>
      </net>
      <net>
         <source obj="depth_3" outlet="out"/>
         <dest obj="vca_3" inlet="b"/>
      </net>
      <net>
         <source obj="vca_3" outlet="result"/>
         <dest obj="interp_3" inlet="i"/>
      </net>
      <net>
         <source obj="interp_3" outlet="o"/>
         <dest obj="delread21__" inlet="time"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author>T.Rochebois</Author>
      <License>LGPL</License>
      <Attributions>based on jt&apos;s stereo chorus</Attributions>
   </settings>
   <notes><![CDATA[A simple stereo chorus, based on two out-of-phase sine-wave modulated linear interpolating delayline readers.
]]></notes>
   <windowPos>
      <x>924</x>
      <y>162</y>
      <width>910</width>
      <height>550</height>
   </windowPos>
</patch-1.0>