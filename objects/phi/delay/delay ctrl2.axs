<patch-1.0 appVersion="1.0.9">
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="read" x="126" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="out" x="406" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="in" x="126" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/mix 1 sq" uuid="cf790039775b62697a4b34e7a5389a5a8cc36e30" name="In" x="210" y="98">
      <params>
         <frac32.u.map name="gain1" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="xfade c" uuid="601566fe-6fc4-4f71-8a85-2e63797065d7" name="Dry/Wet" x="322" y="98">
      <params>
         <frac32.u.map name="c" onParent="true" value="50.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="Out" x="406" y="98">
      <params>
         <frac32.u.map name="amp" onParent="true" value="24.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 1 sq" uuid="cf790039775b62697a4b34e7a5389a5a8cc36e30" name="Fbb" x="546" y="98">
      <params>
         <frac32.u.map name="gain1" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/gain" uuid="62b1c1a6337c7c8f6aec96408a432477b113cfa0" name="FbGain" x="658" y="98">
      <params>
         <frac32.u.map name="amp" onParent="true" value="47.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="phi/switch/sw 2-1a" uuid="350b79179fa4cce3d231eaa45f23eefa9121cb3b" name="gain" x="770" y="98">
      <params>
         <bool32.tgl name="s" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="phi/filter/lp m hq" uuid="8703e111-64a3-432e-8d86-5fce92dc4565" name="lp_1" x="966" y="98">
      <params>
         <frac32.u.map name="pitch" onParent="true" value="0.0"/>
         <frac32.u.map name="reso" value="18.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="phi/switch/sw 2-1a" uuid="350b79179fa4cce3d231eaa45f23eefa9121cb3b" name="lpOn" x="1092" y="98">
      <params>
         <bool32.tgl name="s" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_1" x="1218" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="phi/filter/hp m hq" uuid="f6cb96ee-01df-47ec-b130-c1e780a638f8" name="hp_1" x="1302" y="98">
      <params>
         <frac32.u.map name="pitch" onParent="true" value="0.0"/>
         <frac32.u.map name="reso" value="19.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="phi/switch/sw 2-1a" uuid="350b79179fa4cce3d231eaa45f23eefa9121cb3b" name="hpOn" x="1414" y="98">
      <params>
         <bool32.tgl name="s" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="write" x="1554" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="lpf" x="112" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="hpf" x="112" y="322">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="read" outlet="inlet"/>
         <dest obj="Dry/Wet" inlet="i2"/>
         <dest obj="Fbb" inlet="in1"/>
      </net>
      <net>
         <source obj="Dry/Wet" outlet="o"/>
         <dest obj="Out" inlet="in"/>
      </net>
      <net>
         <source obj="in" outlet="inlet"/>
         <dest obj="In" inlet="in1"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="Out" outlet="out"/>
         <dest obj="out" inlet="outlet"/>
      </net>
      <net>
         <source obj="In" outlet="out"/>
         <dest obj="Dry/Wet" inlet="i1"/>
      </net>
      <net>
         <source obj="lpOn" outlet="o"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="hp_1" outlet="out"/>
         <dest obj="hpOn" inlet="i2"/>
      </net>
      <net>
         <source obj="hpOn" outlet="o"/>
         <dest obj="write" inlet="outlet"/>
      </net>
      <net>
         <source obj="lpf" outlet="inlet"/>
         <dest obj="lp_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="hpf" outlet="inlet"/>
         <dest obj="hp_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="lp_1" outlet="out"/>
         <dest obj="lpOn" inlet="i2"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="hp_1" inlet="in"/>
         <dest obj="hpOn" inlet="i1"/>
      </net>
      <net>
         <source obj="FbGain" outlet="out"/>
         <dest obj="lpOn" inlet="i1"/>
         <dest obj="gain" inlet="i2"/>
      </net>
      <net>
         <source obj="gain" outlet="o"/>
         <dest obj="lp_1" inlet="in"/>
      </net>
      <net>
         <source obj="Fbb" outlet="out"/>
         <dest obj="FbGain" inlet="in"/>
         <dest obj="gain" inlet="i1"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>0</x>
      <y>0</y>
      <width>1640</width>
      <height>632</height>
   </windowPos>
</patch-1.0>