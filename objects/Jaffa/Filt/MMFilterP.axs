<patch-1.0 appVersion="1.0.8">
   <obj type="filter/lp m" sha="c2224dc682842eae1af4496f3f94a6afc1525ee4" uuid="1aa1bc51da479ed92429af700591f9d7b9f45f22" name="lp_2" x="1036" y="0">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
         <frac32.u.map name="reso" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/lp m" sha="c2224dc682842eae1af4496f3f94a6afc1525ee4" uuid="1aa1bc51da479ed92429af700591f9d7b9f45f22" name="lp_1" x="406" y="14">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
         <frac32.u.map name="reso" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 4 h" sha="80639b318a28c19dfe0e2f1b0e97b4c11bb52d02" uuid="f87ae81e3162014f3bdca0f56dbbdf9322e69dfd" name="1.Cl Lp Bp Hp" x="518" y="14">
      <params>
         <int32.hradio name="value" onParent="true" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" sha="9e7e04867e1d37837b0924c9bf18c44ac68602e6" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="Out" x="1288" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" sha="b26f881dfa1451f0269e068eb6b3d824b43b41d3" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="CutOff1" x="196" y="70">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 1 g" sha="8da53cae124061a6d56c67fe1f11b0656428c0af" uuid="2065eeca525a4691f1bc08a7dc5468871de651b7" name="mix_2" x="280" y="70">
      <params>
         <frac32.u.map name="gain1" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" sha="709c10aa648c6e5a3c00da4b5dd238899a7c109c" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="In" x="14" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 4" sha="9f7f3b7a0abf760b335371219c835086f87c62b0" uuid="e511105cf5630d1a0b4a144dc3fabb3cc7c07bd" name="FilterRoute_" x="1204" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 4" sha="9f7f3b7a0abf760b335371219c835086f87c62b0" uuid="e511105cf5630d1a0b4a144dc3fabb3cc7c07bd" name="FilterRoute" x="532" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/bp m" sha="5e3b2b4e742da695308a0fccf1cd7407d702b1f5" uuid="f26437572c3a1f6be883bb219c773a9906ff8296" name="bp_1" x="406" y="154">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
         <frac32.u.map name="reso" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/bp m" sha="5e3b2b4e742da695308a0fccf1cd7407d702b1f5" uuid="f26437572c3a1f6be883bb219c773a9906ff8296" name="bp_2" x="1036" y="154">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
         <frac32.u.map name="reso" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="CutModIn" x="196" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" sha="501c30e07dedf3d701e8d0b33c3c234908c3388e" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="Reso1" x="196" y="238">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 1 g" sha="8da53cae124061a6d56c67fe1f11b0656428c0af" uuid="2065eeca525a4691f1bc08a7dc5468871de651b7" name="mix_3" x="280" y="238">
      <params>
         <frac32.u.map name="gain1" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_1" x="868" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/xfade" sha="46677d62cd61f18b6996ffad67cd94b74cd98f2d" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="xfade_3" x="602" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/hp m" sha="c3a6ffa90d2d2057bfbd666463b169384503d2eb" uuid="fdba806c3cfd2b7aca3256c733379a06e5811e66" name="hp_1" x="406" y="294">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
         <frac32.u.map name="reso" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="filter/hp m" sha="c3a6ffa90d2d2057bfbd666463b169384503d2eb" uuid="fdba806c3cfd2b7aca3256c733379a06e5811e66" name="hp_2" x="1036" y="294">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
         <frac32.u.map name="reso" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="ResoModIn" x="196" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" sha="b26f881dfa1451f0269e068eb6b3d824b43b41d3" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="FilterMix" x="644" y="420">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 4 h" sha="80639b318a28c19dfe0e2f1b0e97b4c11bb52d02" uuid="f87ae81e3162014f3bdca0f56dbbdf9322e69dfd" name="2.Cl Lp Bp Hp" x="728" y="434">
      <params>
         <int32.hradio name="value" onParent="true" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" sha="b26f881dfa1451f0269e068eb6b3d824b43b41d3" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="CutOff2" x="826" y="434">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" sha="501c30e07dedf3d701e8d0b33c3c234908c3388e" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="Reso2" x="896" y="434">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
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
         <source obj="mix_3" outlet="out"/>
         <dest obj="hp_1" inlet="reso"/>
         <dest obj="bp_1" inlet="reso"/>
         <dest obj="lp_1" inlet="reso"/>
      </net>
      <net>
         <source obj="In" outlet="inlet"/>
         <dest obj="lp_1" inlet="in"/>
         <dest obj="bp_1" inlet="in"/>
         <dest obj="hp_1" inlet="in"/>
         <dest obj="FilterRoute" inlet="i0"/>
      </net>
      <net>
         <source obj="CutOff1" outlet="out"/>
         <dest obj="mix_2" inlet="bus_in"/>
      </net>
      <net>
         <source obj="1.Cl Lp Bp Hp" outlet="out"/>
         <dest obj="FilterRoute" inlet="s"/>
      </net>
      <net>
         <source obj="FilterRoute" outlet="o"/>
         <dest obj="xfade_3" inlet="i1"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="FilterMix" outlet="out"/>
         <dest obj="xfade_3" inlet="c"/>
      </net>
      <net>
         <source obj="xfade_3" outlet="o"/>
         <dest obj="Out" inlet="outlet"/>
      </net>
      <net>
         <source obj="CutModIn" outlet="inlet"/>
         <dest obj="mix_2" inlet="in1"/>
      </net>
      <net>
         <source obj="mix_2" outlet="out"/>
         <dest obj="lp_1" inlet="pitch"/>
         <dest obj="bp_1" inlet="pitch"/>
         <dest obj="hp_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="ResoModIn" outlet="inlet"/>
         <dest obj="mix_3" inlet="in1"/>
      </net>
      <net>
         <source obj="Reso1" outlet="out"/>
         <dest obj="mix_3" inlet="bus_in"/>
      </net>
      <net>
         <source obj="lp_2" outlet="out"/>
         <dest obj="FilterRoute_" inlet="i1"/>
      </net>
      <net>
         <source obj="bp_2" outlet="out"/>
         <dest obj="FilterRoute_" inlet="i2"/>
      </net>
      <net>
         <source obj="hp_2" outlet="out"/>
         <dest obj="FilterRoute_" inlet="i3"/>
      </net>
      <net>
         <source obj="Reso2" outlet="out"/>
         <dest obj="hp_2" inlet="reso"/>
         <dest obj="bp_2" inlet="reso"/>
         <dest obj="lp_2" inlet="reso"/>
      </net>
      <net>
         <source obj="CutOff2" outlet="out"/>
         <dest obj="lp_2" inlet="pitch"/>
         <dest obj="bp_2" inlet="pitch"/>
         <dest obj="hp_2" inlet="pitch"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="lp_2" inlet="in"/>
         <dest obj="bp_2" inlet="in"/>
         <dest obj="hp_2" inlet="in"/>
         <dest obj="FilterRoute_" inlet="i0"/>
      </net>
      <net>
         <source obj="FilterRoute_" outlet="o"/>
         <dest obj="xfade_3" inlet="i2"/>
      </net>
      <net>
         <source obj="2.Cl Lp Bp Hp" outlet="out"/>
         <dest obj="FilterRoute_" inlet="s"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>223</x>
      <y>100</y>
      <width>1113</width>
      <height>773</height>
   </windowPos>
</patch-1.0>