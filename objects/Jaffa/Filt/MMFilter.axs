<patch-1.0>
   <obj type="filter/lp m" sha="c2224dc682842eae1af4496f3f94a6afc1525ee4" uuid="1aa1bc51da479ed92429af700591f9d7b9f45f22" name="lp_1" x="476" y="14">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
         <frac32.u.map name="reso" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" sha="709c10aa648c6e5a3c00da4b5dd238899a7c109c" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="In" x="182" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 4" sha="9f7f3b7a0abf760b335371219c835086f87c62b0" uuid="e511105cf5630d1a0b4a144dc3fabb3cc7c07bd" name="FilterRoute" x="714" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" sha="9e7e04867e1d37837b0924c9bf18c44ac68602e6" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="Out" x="854" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/bp m" sha="5e3b2b4e742da695308a0fccf1cd7407d702b1f5" uuid="f26437572c3a1f6be883bb219c773a9906ff8296" name="bp_1" x="476" y="154">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
         <frac32.u.map name="reso" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" sha="b26f881dfa1451f0269e068eb6b3d824b43b41d3" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="Cut Off" x="336" y="196">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" sha="501c30e07dedf3d701e8d0b33c3c234908c3388e" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="Resonance" x="336" y="280">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 4 v" sha="37aa6f17297981ccdf9a037eecf728e7c0ff0ae4" uuid="b610704137c90b0e43464440b84bfb4fb7d2bb30" name="Cl Lp Bp Hp" x="714" y="280">
      <params>
         <int32.vradio name="value" onParent="true" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/hp m" sha="c3a6ffa90d2d2057bfbd666463b169384503d2eb" uuid="fdba806c3cfd2b7aca3256c733379a06e5811e66" name="hp_1" x="476" y="294">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
         <frac32.u.map name="reso" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="lp_1" outlet="out"/>
         <dest obj="FilterRoute" inlet="i1"/>
      </net>
      <net>
         <source obj="bp_1" outlet="out"/>
         <dest obj="FilterRoute" inlet="i2"/>
      </net>
      <net>
         <source obj="hp_1" outlet="out"/>
         <dest obj="FilterRoute" inlet="i3"/>
      </net>
      <net>
         <source obj="Resonance" outlet="out"/>
         <dest obj="hp_1" inlet="reso"/>
         <dest obj="bp_1" inlet="reso"/>
         <dest obj="lp_1" inlet="reso"/>
      </net>
      <net>
         <source obj="Cut Off" outlet="out"/>
         <dest obj="lp_1" inlet="pitch"/>
         <dest obj="bp_1" inlet="pitch"/>
         <dest obj="hp_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="In" outlet="inlet"/>
         <dest obj="lp_1" inlet="in"/>
         <dest obj="bp_1" inlet="in"/>
         <dest obj="hp_1" inlet="in"/>
         <dest obj="FilterRoute" inlet="i0"/>
      </net>
      <net>
         <source obj="FilterRoute" outlet="o"/>
         <dest obj="Out" inlet="outlet"/>
      </net>
      <net>
         <source obj="Cl Lp Bp Hp" outlet="out"/>
         <dest obj="FilterRoute" inlet="s"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>0</x>
      <y>22</y>
      <width>1024</width>
      <height>624</height>
   </windowPos>
</patch-1.0>