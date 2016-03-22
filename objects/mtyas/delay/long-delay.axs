<patch-1.0 appVersion="1.0.8">
   <obj type="delay/write sdram" sha="63d300dd732507b7237b5fd45676bc14c9e77ce7" uuid="5ae03f8d7b815edcfc40585d8bbac2ed48460fba" name="sound" x="42" y="28">
      <params/>
      <attribs>
         <combo attributeName="size" selection="524288 (10.9s)"/>
      </attribs>
   </obj>
   <obj type="patch/inlet a" sha="709c10aa648c6e5a3c00da4b5dd238899a7c109c" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="inlet_1" x="42" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/mix 3" sha="5d346e1293f2b7a8bf6bf2542e88a629e67a201e" uuid="8be16f2156012a4a8974804178cece51555f272b" name="mix_1" x="350" y="140">
      <params>
         <frac32.u.map name="gain1" value="45.5"/>
         <frac32.u.map name="gain2" value="45.0"/>
         <frac32.u.map name="gain3" value="42.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" sha="a73a2cafcf92eb4b6524655dcee98a569d5ddc28" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="*c_7" x="616" y="210">
      <params>
         <frac32.u.map name="amp" value="20.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/xfade" sha="46677d62cd61f18b6996ffad67cd94b74cd98f2d" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_1" x="812" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" sha="9e7e04867e1d37837b0924c9bf18c44ac68602e6" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1022" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="feedback" x="154" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" sha="a380d86c2bc116d90e7b5eb49277941d4e9343d1" uuid="c16a625a661f40e4b359db604dcd00b3befcdbe3" name="*_1" x="476" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/smooth" sha="74c40dd64acc980ba4e6ffc729e07365b00044fa" uuid="6c5d08c282bb08bff24af85b4891447f99bcbc97" name="smooth_1" x="84" y="336">
      <params>
         <frac32.u.map name="time" value="55.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="conv/interp" sha="4b93f3e0f08b85924e07feabcdfe53fc11aa6a48" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_1" x="210" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="delay/read interp" sha="6fda3a4b04cc8fc49e63240c2fff115695ec7a7" uuid="e3d8b8823ab551c588659520bf6cc25c630466c7" name="read_1" x="406" y="378">
      <params>
         <frac32.u.map name="time" value="0.0"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="sound"/>
      </attribs>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="speed" x="42" y="518">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="amount" x="280" y="588">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="inlet_1" outlet="inlet"/>
         <dest obj="*c_7" inlet="in"/>
         <dest obj="mix_1" inlet="in1"/>
      </net>
      <net>
         <source obj="*c_7" outlet="out"/>
         <dest obj="xfade_1" inlet="i1"/>
      </net>
      <net>
         <source obj="smooth_1" outlet="out"/>
         <dest obj="interp_1" inlet="i"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="sound" inlet="in"/>
      </net>
      <net>
         <source obj="read_1" outlet="out"/>
         <dest obj="xfade_1" inlet="i2"/>
         <dest obj="*_1" inlet="a"/>
      </net>
      <net>
         <source obj="interp_1" outlet="o"/>
         <dest obj="read_1" inlet="time"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="mix_1" inlet="in2"/>
      </net>
      <net>
         <source obj="amount" outlet="inlet"/>
         <dest obj="xfade_1" inlet="c"/>
      </net>
      <net>
         <source obj="speed" outlet="inlet"/>
         <dest obj="smooth_1" inlet="in"/>
      </net>
      <net>
         <source obj="feedback" outlet="inlet"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="xfade_1" outlet="o"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>884</x>
      <y>333</y>
      <width>880</width>
      <height>737</height>
   </windowPos>
</patch-1.0>