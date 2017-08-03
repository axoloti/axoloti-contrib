<patch-1.0 appVersion="1.0.12">
   <comment type="patch/comment" x="154" y="28" text="Set the maximum delay time as required"/>
   <comment type="patch/comment" x="364" y="28" text="Set the clock source and device as required"/>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="in" x="28" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/mix 1 sq" uuid="cf790039775b62697a4b34e7a5389a5a8cc36e30" name="feedback" x="126" y="56">
      <params>
         <frac32.u.map name="gain1" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="delay/write sdram" uuid="5ae03f8d7b815edcfc40585d8bbac2ed48460fba" name="write_1" x="238" y="56">
      <params/>
      <attribs>
         <combo attributeName="size" selection="65536 (1.36s)"/>
      </attribs>
   </obj>
   <obj type="drj/delay/read_interp_sync" uuid="e3d8b551c58865958823ab20186cc25ccf0466c7" name="delay" x="364" y="56">
      <params>
         <int32 name="clockmul" onParent="true" value="1"/>
         <int32 name="clockdiv" onParent="true" value="24"/>
         <frac32.u.map name="time" value="30.0"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="write_1"/>
         <combo attributeName="clocksource" selection="MIDI"/>
         <combo attributeName="device" selection="omni"/>
         <combo attributeName="smooth" selection="3"/>
      </attribs>
   </obj>
   <obj type="mix/xfade" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_1" x="532" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="out" x="630" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dry/wet" x="532" y="140">
      <params>
         <frac32.u.map name="value" onParent="true" value="24.0"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="xfade_1" outlet="o"/>
         <dest obj="out" inlet="outlet"/>
      </net>
      <net>
         <source obj="delay" outlet="out"/>
         <dest obj="xfade_1" inlet="i2"/>
         <dest obj="feedback" inlet="in1"/>
      </net>
      <net>
         <source obj="in" outlet="inlet"/>
         <dest obj="xfade_1" inlet="i1"/>
         <dest obj="feedback" inlet="bus_in"/>
      </net>
      <net>
         <source obj="feedback" outlet="out"/>
         <dest obj="write_1" inlet="in"/>
      </net>
      <net>
         <source obj="dry/wet" outlet="out"/>
         <dest obj="xfade_1" inlet="c"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>580</x>
      <y>195</y>
      <width>818</width>
      <height>505</height>
   </windowPos>
</patch-1.0>