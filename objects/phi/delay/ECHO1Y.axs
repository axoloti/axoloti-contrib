<patch-1.0>
   <obj type="patch/inlet a" sha="709c10aa648c6e5a3c00da4b5dd238899a7c109c" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="echo" x="14" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" sha="501c30e07dedf3d701e8d0b33c3c234908c3388e" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dry/wet" x="112" y="14">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 2 sq" sha="6c4786e8008cc53406b64b8fdfb9706cf7afebc9" uuid="9b03da12a01f39ecd48d16285e7d10acb8e1267c" name="" x="112" y="112">
      <params>
         <frac32.u.map name="gain1" onParent="true" value="64.0"/>
         <frac32.u.map name="gain2" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/lp m" sha="c2224dc682842eae1af4496f3f94a6afc1525ee4" uuid="1aa1bc51da479ed92429af700591f9d7b9f45f22" name="HP IN" x="224" y="112">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="64.0"/>
         <frac32.u.map name="reso" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="delay/write sdram" sha="aa55d7ae111ced1fafde9a6f6386d746292dc8d1" uuid="5ae03f8d7b815edcfc40585d8bbac2ed48460fba" name="echoloti" x="336" y="112">
      <params/>
      <attribs>
         <combo attributeName="size" selection="32768 (682ms)"/>
      </attribs>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="time" x="14" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/interp" sha="4b93f3e0f08b85924e07feabcdfe53fc11aa6a48" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_1" x="84" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="delay/read interp" sha="6fda3a4b04cc8fc49e63240c2fff115695ec7a7" uuid="e3d8b8823ab551c588659520bf6cc25c630466c7" name="Time" x="154" y="266">
      <params>
         <frac32.u.map name="time" onParent="true" value="48.5"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="echoloti"/>
      </attribs>
   </obj>
   <obj type="mix/xfade" sha="46677d62cd61f18b6996ffad67cd94b74cd98f2d" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_1" x="336" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" sha="9e7e04867e1d37837b0924c9bf18c44ac68602e6" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="Echoout" x="434" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/lp m" sha="c2224dc682842eae1af4496f3f94a6afc1525ee4" uuid="1aa1bc51da479ed92429af700591f9d7b9f45f22" name="FbLp " x="154" y="364">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-64.0"/>
         <frac32.u.map name="reso" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" sha="a73a2cafcf92eb4b6524655dcee98a569d5ddc28" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="fba" x="280" y="364">
      <params>
         <frac32.u.map name="amp" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="FB" x="70" y="518">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" sha="c904cdd24d65968df2f5796e107db3747dd691a6" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="308" y="518">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="HP IN" outlet="out"/>
         <dest obj="echoloti" inlet="in"/>
      </net>
      <net>
         <source obj="FbLp " outlet="out"/>
         <dest obj="vca_1" inlet="a"/>
         <dest obj="fba" inlet="in"/>
      </net>
      <net>
         <source obj="echo" outlet="inlet"/>
         <dest obj="xfade_1" inlet="i1"/>
         <dest obj="" inlet="in1"/>
      </net>
      <net>
         <source obj="Time" outlet="out"/>
         <dest obj="FbLp " inlet="in"/>
         <dest obj="xfade_1" inlet="i2"/>
      </net>
      <net>
         <source obj="xfade_1" outlet="o"/>
         <dest obj="Echoout" inlet="outlet"/>
      </net>
      <net>
         <source obj="dry/wet" outlet="out"/>
         <dest obj="xfade_1" inlet="c"/>
      </net>
      <net>
         <source obj="interp_1" outlet="o"/>
         <dest obj="Time" inlet="time"/>
      </net>
      <net>
         <source obj="time" outlet="inlet"/>
         <dest obj="interp_1" inlet="i"/>
      </net>
      <net>
         <source obj="FB" outlet="inlet"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="" inlet="in2"/>
      </net>
      <net>
         <source obj="fba" outlet="out"/>
         <dest obj="" inlet="bus_in"/>
      </net>
      <net>
         <source obj="" outlet="out"/>
         <dest obj="HP IN" inlet="in"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>0</NPresets>
      <NPresetEntries>0</NPresetEntries>
      <NModulationSources>0</NModulationSources>
      <NModulationTargetsPerSource>0</NModulationTargetsPerSource>
      <Author>philoop</Author>
      <License>GPL</License>
      <Attributions>delay</Attributions>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>308</x>
      <y>87</y>
      <width>1129</width>
      <height>748</height>
   </windowPos>
</patch-1.0>