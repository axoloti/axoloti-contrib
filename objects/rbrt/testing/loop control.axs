<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="mode" x="126" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/change" uuid="96e39ae624c3f3c952cec4a95e1986ee0104f718" name="change_1" x="434" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="rec" x="126" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="demux/demux 2" uuid="28788637ca4264670042a31303a9d6e100646ff0" name="demux_2" x="434" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/testing/lsync new" uuid="47dcd445-19f4-473d-989a-2464bff8521c" name="lsync_1" x="546" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/or 2" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="or_4" x="700" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="phi/logic/or 4" uuid="5dc5a7c1fb7809522171638f755fead71cbe14ea" name="or_3" x="854" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="toggle" x="126" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/flipflop toggle" uuid="195e489e5fc3d275944b0de56c7a91c8641ea22a" name="flipflop_3" x="1260" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="phase" x="126" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="demux/demux 3" uuid="1d56896bf04a3aa5148abc88ac741df1d1b3e6f8" name="demux_3" x="448" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/inv" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_1" x="854" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/control/t2p" uuid="e076e6e6-f59e-429e-b4ca-c0f3e55f074a" name="t2p_1" x="924" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="phi/logic/or 4" uuid="5dc5a7c1fb7809522171638f755fead71cbe14ea" name="or_1" x="1162" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="start_out" x="1456" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="start_in" x="126" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/wrap" uuid="bb34ebfe0112f3238b3f928bf7ddea465d410bcb" name="wrap_1" x="756" y="350">
      <params/>
      <attribs>
         <spinner attributeName="bits" value="0"/>
      </attribs>
   </obj>
   <obj type="math/-" uuid="3280bb759e9fc189e134300e48dda7e903c9a110" name="-_1" x="644" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="play" x="1456" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="master_start" x="126" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/patching/loadbang" uuid="45d1f29d-ac62-4e5b-86f8-2201d2f6c689" name="loadbang_1" x="1008" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="phi/logic/or 4" uuid="5dc5a7c1fb7809522171638f755fead71cbe14ea" name="or_2" x="1358" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="r2offset" x="1456" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/wrap" uuid="bb34ebfe0112f3238b3f928bf7ddea465d410bcb" name="wrap_2" x="518" y="476">
      <params/>
      <attribs>
         <spinner attributeName="bits" value="0"/>
      </attribs>
   </obj>
   <obj type="demux/demux 3" uuid="1d56896bf04a3aa5148abc88ac741df1d1b3e6f8" name="demux_4" x="1218" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="r2start" x="1456" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/-" uuid="3280bb759e9fc189e134300e48dda7e903c9a110" name="-_2" x="406" y="504">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="stop" x="126" y="518">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="waiting" x="1456" y="546">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="phase" outlet="inlet"/>
         <dest obj="lsync_1" inlet="pos"/>
         <dest obj="-_1" inlet="in1"/>
      </net>
      <net>
         <source obj="start_in" outlet="inlet"/>
         <dest obj="-_1" inlet="in2"/>
         <dest obj="lsync_1" inlet="start"/>
      </net>
      <net>
         <source obj="flipflop_3" outlet="o"/>
         <dest obj="play" inlet="outlet"/>
         <dest obj="demux_2" inlet="s"/>
      </net>
      <net>
         <source obj="demux_2" outlet="o1"/>
         <dest obj="or_4" inlet="i2"/>
      </net>
      <net>
         <source obj="demux_2" outlet="o0"/>
         <dest obj="lsync_1" inlet="wait"/>
      </net>
      <net>
         <source obj="lsync_1" outlet="trig"/>
         <dest obj="or_4" inlet="i1"/>
      </net>
      <net>
         <source obj="or_4" outlet="o"/>
         <dest obj="or_3" inlet="i1"/>
      </net>
      <net>
         <source obj="or_3" outlet="o"/>
         <dest obj="demux_4" inlet="i"/>
         <dest obj="flipflop_3" inlet="trig"/>
      </net>
      <net>
         <source obj="demux_3" outlet="o0"/>
         <dest obj="demux_2" inlet="i"/>
      </net>
      <net>
         <source obj="demux_3" outlet="o1"/>
         <dest obj="or_3" inlet="i2"/>
      </net>
      <net>
         <source obj="-_1" outlet="out"/>
         <dest obj="wrap_1" inlet="a"/>
      </net>
      <net>
         <source obj="change_1" outlet="trig"/>
         <dest obj="lsync_1" inlet="stop"/>
      </net>
      <net>
         <source obj="toggle" outlet="inlet"/>
         <dest obj="demux_3" inlet="i"/>
      </net>
      <net>
         <source obj="demux_4" outlet="o0"/>
         <dest obj="or_2" inlet="i2"/>
      </net>
      <net>
         <source obj="wrap_1" outlet="b"/>
         <dest obj="start_out" inlet="outlet"/>
      </net>
      <net>
         <source obj="rec" outlet="inlet"/>
         <dest obj="inv_1" inlet="i"/>
         <dest obj="or_1" inlet="i1"/>
      </net>
      <net>
         <source obj="inv_1" outlet="o"/>
         <dest obj="t2p_1" inlet="trig"/>
      </net>
      <net>
         <source obj="-_2" outlet="out"/>
         <dest obj="wrap_2" inlet="a"/>
      </net>
      <net>
         <source obj="demux_4" outlet="o1"/>
         <dest obj="r2start" inlet="outlet"/>
      </net>
      <net>
         <source obj="or_2" outlet="o"/>
         <dest obj="r2offset" inlet="outlet"/>
      </net>
      <net>
         <source obj="demux_4" outlet="o2"/>
         <dest obj="or_2" inlet="i3"/>
      </net>
      <net>
         <source obj="demux_3" outlet="o2"/>
         <dest obj="or_3" inlet="i3"/>
      </net>
      <net>
         <source obj="mode" outlet="inlet"/>
         <dest obj="change_1" inlet="in"/>
         <dest obj="demux_4" inlet="s"/>
         <dest obj="demux_3" inlet="s"/>
      </net>
      <net>
         <source obj="lsync_1" outlet="wait"/>
         <dest obj="waiting" inlet="outlet"/>
      </net>
      <net>
         <source obj="t2p_1" outlet="pulse"/>
         <dest obj="flipflop_3" inlet="set"/>
         <dest obj="or_2" inlet="i1"/>
      </net>
      <net>
         <source obj="or_1" outlet="o"/>
         <dest obj="flipflop_3" inlet="reset"/>
      </net>
      <net>
         <source obj="loadbang_1" outlet="pulse"/>
         <dest obj="or_1" inlet="i2"/>
      </net>
      <net>
         <source obj="stop" outlet="inlet"/>
         <dest obj="or_1" inlet="i3"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-8</x>
      <y>-8</y>
      <width>1616</width>
      <height>876</height>
   </windowPos>
</patch-1.0>