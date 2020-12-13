<patch-1.0 appVersion="1.0.12">
   <obj type="table/alloc 16b sdram" uuid="6d8eb0fd68f404cb5d14e7d4c8c146c8ccf09da1" name="sample" x="14" y="0">
      <params/>
      <attribs>
         <combo attributeName="size" selection="524288"/>
         <text attributeName="init">
            <sText><![CDATA[]]></sText>
         </text>
      </attribs>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="dial_1" x="434" y="0">
      <params>
         <frac32.s.map name="value" value="-64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="frequency" x="238" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_3" x="308" y="14">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="518" y="14" text="Two dephased phasors to read chunk"/>
   <comment type="patch/comment" x="518" y="28" text="Each chunk is used to obtain a specific pitch"/>
   <obj type="math/reciprocal" uuid="4be823e668871835d067cbfe42407b06f927f91f" name="reciprocal_1" x="154" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="*_4" x="252" y="70">
      <params>
         <frac32.u.map name="amp" value="9.999999046325684"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="dc7fbdd46e5e6d4b8de62ee63fd6321639b2f167" name="*c_6" x="364" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/phasor compl" uuid="11940ece0e29f3fae0d3c8e1fdabd63cacac5b48" name="phasor_1" x="434" y="84">
      <params>
         <frac32.s.map name="pitch" value="-64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/-1" uuid="e869edae3ba60b8ca33929e8a0a2b70a86074e11" name="-1_1" x="602" y="84">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="672" y="98" text="Mandatory for samplehold (to have zero or negative value)"/>
   <obj type="math/-1" uuid="e869edae3ba60b8ca33929e8a0a2b70a86074e11" name="-1_2" x="602" y="126">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="14" y="168" text="Speed read of chunk is proportionnal to chunk size"/>
   <comment type="patch/comment" x="14" y="182" text="Increase chunk size, reduce chunk speed"/>
   <comment type="patch/comment" x="14" y="196" text="With this feedback, we can change chunksize without modifying pitch"/>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="chunk size" x="28" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_2" x="98" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/window" uuid="5582d4d31acd67073be69df4d31d686304e17161" name="-c_1" x="868" y="224">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="966" y="224" text="Chunk envelope"/>
   <obj type="logic/samplehold" uuid="354e2699eb9934cfdecc09f32e96284f3d10d78b" name="samplehold_3" x="560" y="238">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="672" y="266" text="To avoid dopler effect"/>
   <obj type="math/window" uuid="5582d4d31acd67073be69df4d31d686304e17161" name="-c_2" x="868" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/samplehold" uuid="354e2699eb9934cfdecc09f32e96284f3d10d78b" name="samplehold_4" x="560" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="loop speed" x="28" y="336">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="280" y="378" text="Main phasor (sample read point)"/>
   <comment type="patch/comment" x="560" y="378" text="Two dephased channel to reduce artefacts"/>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="start" x="14" y="392">
      <params/>
      <attribs/>
   </obj>
   <obj type="lfo/saw lin" uuid="79fb6a3a77fc9fe0273c271ddccca019ebee6955" name="phasor_2" x="280" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="3bcb8a666381ed18b8962eda50b1aa679136f618" name="mux_2" x="392" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_1" x="476" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/samplehold" uuid="354e2699eb9934cfdecc09f32e96284f3d10d78b" name="samplehold_2" x="560" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="dc7fbdd46e5e6d4b8de62ee63fd6321639b2f167" name="*_chunk_size_r" x="714" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="read_point" x="798" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="table/read interp" uuid="42918ec2255011ae3787cc5488c9b29980d796a8" name="play_1" x="868" y="406">
      <params/>
      <attribs>
         <objref attributeName="table" obj="sample"/>
      </attribs>
   </obj>
   <obj type="math/*" uuid="dc7fbdd46e5e6d4b8de62ee63fd6321639b2f167" name="*_2" x="994" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/mix 2 g" uuid="221f038da51943034a75e442c90624fcebfe6112" name="mix_1" x="1050" y="406">
      <params>
         <frac32.u.map name="gain1" value="64.0"/>
         <frac32.u.map name="gain2" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="samplehold_1" x="1148" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1218" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/or 2" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="or_1" x="196" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="e1c92bc92f4d191bfadf0efeae4503b458a4e440" name="mux_3" x="126" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="length" x="28" y="448">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/samplehold" uuid="354e2699eb9934cfdecc09f32e96284f3d10d78b" name="samplehold_5" x="560" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="dc7fbdd46e5e6d4b8de62ee63fd6321639b2f167" name="*_chunk_size_l" x="728" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="read_point_" x="798" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="table/read interp" uuid="42918ec2255011ae3787cc5488c9b29980d796a8" name="play_2" x="868" y="490">
      <params/>
      <attribs>
         <objref attributeName="table" obj="sample"/>
      </attribs>
   </obj>
   <obj type="math/*" uuid="dc7fbdd46e5e6d4b8de62ee63fd6321639b2f167" name="*_3" x="994" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="loop mode" x="14" y="518">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="reverse" x="14" y="588">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="238" y="602" text="End finding (in reverse mode)"/>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_2" x="672" y="616">
      <params>
         <frac32.u.map name="value" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/-" uuid="3280bb759e9fc189e134300e48dda7e903c9a110" name="-_1" x="238" y="630">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/&lt;c" uuid="852c84e7bd967ee4a44cc553fcf6e3fc9d8b92c4" name="&lt;c_1" x="308" y="630">
      <params>
         <frac32.u.map name="c" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="outlet_2" x="406" y="630">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/or 2" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="or_2" x="462" y="700">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/flipflop" uuid="f9b15363f5ee203152e062c08a8846f0074b0ea5" name="toggle_1" x="560" y="700">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/hd" uuid="819e2ee2c29202649dec31560d8be9a92528ef15" name="hd_1" x="644" y="700">
      <params>
         <frac32.s.map name="d" value="-64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="3bcb8a666381ed18b8962eda50b1aa679136f618" name="mux_1" x="770" y="714">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="224" y="742" text="End finding (in normal mode)"/>
   <obj type="math/&gt;" uuid="8112942c245dbc2edf7d7de122fe83b0dcd0a391" name="&gt;_1" x="224" y="770">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="play_1" outlet="o"/>
         <dest obj="*_2" inlet="b"/>
      </net>
      <net>
         <source obj="-1_1" outlet="result"/>
         <dest obj="samplehold_2" inlet="s_h"/>
         <dest obj="samplehold_3" inlet="s_h"/>
      </net>
      <net>
         <source obj="play_2" outlet="o"/>
         <dest obj="*_3" inlet="b"/>
      </net>
      <net>
         <source obj="samplehold_5" outlet="out"/>
         <dest obj="read_point_" inlet="in2"/>
      </net>
      <net>
         <source obj="-c_1" outlet="win"/>
         <dest obj="*_2" inlet="a"/>
      </net>
      <net>
         <source obj="-c_2" outlet="win"/>
         <dest obj="*_3" inlet="a"/>
      </net>
      <net>
         <source obj="interp_2" outlet="o"/>
         <dest obj="samplehold_3" inlet="in"/>
         <dest obj="samplehold_4" inlet="in"/>
      </net>
      <net>
         <source obj="reciprocal_1" outlet="out"/>
         <dest obj="*_4" inlet="in"/>
      </net>
      <net>
         <source obj="*_chunk_size_r" outlet="result"/>
         <dest obj="read_point" inlet="in1"/>
      </net>
      <net>
         <source obj="*_chunk_size_l" outlet="result"/>
         <dest obj="read_point_" inlet="in1"/>
      </net>
      <net>
         <source obj="interp_3" outlet="o"/>
         <dest obj="*c_6" inlet="a"/>
      </net>
      <net>
         <source obj="*_4" outlet="out"/>
         <dest obj="*c_6" inlet="b"/>
      </net>
      <net>
         <source obj="*c_6" outlet="result"/>
         <dest obj="phasor_1" inlet="freq"/>
      </net>
      <net>
         <source obj="phasor_1" outlet="phasor0"/>
         <dest obj="-1_1" inlet="a"/>
         <dest obj="-c_1" inlet="phase"/>
         <dest obj="*_chunk_size_r" inlet="a"/>
      </net>
      <net>
         <source obj="dial_1" outlet="out"/>
         <dest obj="phasor_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="-1_2" outlet="result"/>
         <dest obj="samplehold_5" inlet="s_h"/>
         <dest obj="samplehold_4" inlet="s_h"/>
      </net>
      <net>
         <source obj="phasor_1" outlet="phasor180"/>
         <dest obj="*_chunk_size_l" inlet="a"/>
         <dest obj="-1_2" inlet="a"/>
         <dest obj="-c_2" inlet="phase"/>
      </net>
      <net>
         <source obj="read_point" outlet="out"/>
         <dest obj="play_1" inlet="a"/>
      </net>
      <net>
         <source obj="read_point_" outlet="out"/>
         <dest obj="play_2" inlet="a"/>
      </net>
      <net>
         <source obj="*_2" outlet="result"/>
         <dest obj="mix_1" inlet="in1"/>
      </net>
      <net>
         <source obj="*_3" outlet="result"/>
         <dest obj="mix_1" inlet="in2"/>
      </net>
      <net>
         <source obj="frequency" outlet="inlet"/>
         <dest obj="interp_3" inlet="i"/>
      </net>
      <net>
         <source obj="chunk size" outlet="inlet"/>
         <dest obj="interp_2" inlet="i"/>
      </net>
      <net>
         <source obj="samplehold_3" outlet="out"/>
         <dest obj="reciprocal_1" inlet="in"/>
         <dest obj="*_chunk_size_r" inlet="b"/>
      </net>
      <net>
         <source obj="samplehold_4" outlet="out"/>
         <dest obj="*_chunk_size_l" inlet="b"/>
      </net>
      <net>
         <source obj="samplehold_2" outlet="out"/>
         <dest obj="read_point" inlet="in2"/>
      </net>
      <net>
         <source obj="start" outlet="inlet"/>
         <dest obj="toggle_1" inlet="set"/>
         <dest obj="or_1" inlet="i1"/>
      </net>
      <net>
         <source obj="samplehold_1" outlet="o"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="samplehold_1" inlet="a"/>
      </net>
      <net>
         <source obj="toggle_1" outlet="o"/>
         <dest obj="hd_1" inlet="trig"/>
      </net>
      <net>
         <source obj="&gt;_1" outlet="out"/>
         <dest obj="mux_3" inlet="i1"/>
         <dest obj="or_2" inlet="i2"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="samplehold_1" inlet="v"/>
      </net>
      <net>
         <source obj="loop mode" outlet="inlet"/>
         <dest obj="mux_1" inlet="s"/>
      </net>
      <net>
         <source obj="dial_2" outlet="out"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="hd_1" outlet="env"/>
         <dest obj="mux_1" inlet="i1"/>
      </net>
      <net>
         <source obj="or_1" outlet="o"/>
         <dest obj="phasor_2" inlet="reset"/>
      </net>
      <net>
         <source obj="length" outlet="inlet"/>
         <dest obj="&gt;_1" inlet="in2"/>
         <dest obj="-_1" inlet="in1"/>
      </net>
      <net>
         <source obj="interp_1" outlet="o"/>
         <dest obj="samplehold_2" inlet="in"/>
         <dest obj="samplehold_5" inlet="in"/>
      </net>
      <net>
         <source obj="phasor_2" outlet="wave"/>
         <dest obj="&gt;_1" inlet="in1"/>
         <dest obj="-_1" inlet="in2"/>
         <dest obj="mux_2" inlet="i1"/>
         <dest obj="outlet_2" inlet="outlet"/>
      </net>
      <net>
         <source obj="loop speed" outlet="inlet"/>
         <dest obj="phasor_2" inlet="freq"/>
      </net>
      <net>
         <source obj="mux_2" outlet="o"/>
         <dest obj="interp_1" inlet="i"/>
      </net>
      <net>
         <source obj="-_1" outlet="out"/>
         <dest obj="mux_2" inlet="i2"/>
         <dest obj="&lt;c_1" inlet="in"/>
      </net>
      <net>
         <source obj="reverse" outlet="inlet"/>
         <dest obj="mux_2" inlet="s"/>
         <dest obj="mux_3" inlet="s"/>
      </net>
      <net>
         <source obj="mux_3" outlet="o"/>
         <dest obj="or_1" inlet="i2"/>
      </net>
      <net>
         <source obj="&lt;c_1" outlet="out"/>
         <dest obj="mux_3" inlet="i2"/>
         <dest obj="or_2" inlet="i1"/>
      </net>
      <net>
         <source obj="or_2" outlet="o"/>
         <dest obj="toggle_1" inlet="reset"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>10</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>64</x>
      <y>27</y>
      <width>1317</width>
      <height>772</height>
   </windowPos>
</patch-1.0>