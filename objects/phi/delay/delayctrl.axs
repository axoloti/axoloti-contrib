<patch-1.0 appVersion="1.0.9">
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="in" x="14" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/mix 1 sq" uuid="cf790039775b62697a4b34e7a5389a5a8cc36e30" name="In" x="98" y="14">
      <params>
         <frac32.u.map name="gain1" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="phi/mix/xfade c" uuid="601566fe-6fc4-4f71-8a85-2e43797065d7" name="xfade_1" x="210" y="14">
      <params>
         <frac32.u.map name="c" onParent="true" value="50.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="Out" x="308" y="14">
      <params>
         <frac32.u.map name="amp" onParent="true" value="24.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 1 sq" uuid="cf790039775b62697a4b34e7a5389a5a8cc36e30" name="FB" x="406" y="14">
      <params>
         <frac32.u.map name="gain1" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 1 sq" uuid="cf790039775b62697a4b34e7a5389a5a8cc36e30" name="Cross" x="518" y="14">
      <params>
         <frac32.u.map name="gain1" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/lp1" uuid="1b1fd7085e44d2b7b80b59b8d68796b909c1b2cc" name="LPFB" x="630" y="14">
      <params>
         <frac32.s.map name="freq" onParent="true" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_1" x="742" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/hp1" uuid="abea7276611b289bed35b80345a6bc4efd4d9a4e" name="HPwrite" x="826" y="14">
      <params>
         <frac32.s.map name="freq" onParent="true" value="-64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="write" x="938" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="read" x="98" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="out" x="392" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="cross" x="518" y="126">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="read" outlet="inlet"/>
         <dest obj="FB" inlet="in1"/>
         <dest obj="xfade_1" inlet="i2"/>
      </net>
      <net>
         <source obj="xfade_1" outlet="o"/>
         <dest obj="Out" inlet="in"/>
      </net>
      <net>
         <source obj="in" outlet="inlet"/>
         <dest obj="In" inlet="in1"/>
      </net>
      <net>
         <source obj="HPwrite" outlet="out"/>
         <dest obj="write" inlet="outlet"/>
      </net>
      <net>
         <source obj="Out" outlet="out"/>
         <dest obj="out" inlet="outlet"/>
      </net>
      <net>
         <source obj="cross" outlet="inlet"/>
         <dest obj="Cross" inlet="in1"/>
      </net>
      <net>
         <source obj="In" outlet="out"/>
         <dest obj="+_1" inlet="in1"/>
         <dest obj="xfade_1" inlet="i1"/>
      </net>
      <net>
         <source obj="Cross" outlet="out"/>
         <dest obj="FB" inlet="bus_in"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="HPwrite" inlet="in"/>
      </net>
      <net>
         <source obj="LPFB" outlet="out"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="FB" outlet="out"/>
         <dest obj="LPFB" inlet="in"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>420</x>
      <y>370</y>
      <width>1089</width>
      <height>374</height>
   </windowPos>
</patch-1.0>