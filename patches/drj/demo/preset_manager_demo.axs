<patch-1.0 appVersion="1.0.8">
   <comment type="patch/comment" x="364" y="14" text="The preset, load and save outputs can go to further subpatches."/>
   <comment type="patch/comment" x="14" y="28" text="Chained preset/load/save signals"/>
   <comment type="patch/comment" x="364" y="28" text="We just connect them for monitoring in this demo patch."/>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="preset_in" x="112" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="drj/patch/preset_manager" uuid="awca12227f535a1288055669829101d3ee7f0189" name="preset_manager_1" x="224" y="56">
      <params>
         <bool32.mom name="load" value="0"/>
         <int32 name="preset" value="0"/>
         <bool32.mom name="save" value="0"/>
      </params>
      <attribs>
         <combo attributeName="pgmchange" selection="Disabled"/>
         <spinner attributeName="channel" value="1"/>
         <spinner attributeName="presetcc" value="0"/>
         <spinner attributeName="loadcc" value="0"/>
         <spinner attributeName="savecc" value="0"/>
         <spinner attributeName="autoload" value="-1"/>
      </attribs>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="preset_out" x="378" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="load_in" x="98" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="load_out" x="378" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="save_in" x="98" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="save_out" x="378" y="168">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="14" y="224" text="Prefix for the filenames for this sub patch"/>
   <obj type="string/c" uuid="4aa90a90c435a742ddfa152d232883fc5b2f1b3" name="c_1" x="28" y="252">
      <params/>
      <attribs>
         <table attributeName="str" table="bar"/>
      </attribs>
   </obj>
   <comment type="patch/comment" x="224" y="322" text="A simple patch so that we have something to test"/>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="pitch" x="140" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/sine" uuid="6e094045cca76a9dbf7ebfa72e44e4700d2b3ba" name="sine_2" x="224" y="350">
      <params>
         <frac32.s.map name="pitch" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="sine_1" x="336" y="350">
      <params>
         <frac32.u.map name="amp" value="10.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="out" x="448" y="350">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="preset_in" outlet="inlet"/>
         <dest obj="preset_manager_1" inlet="preset"/>
      </net>
      <net>
         <source obj="c_1" outlet="out"/>
         <dest obj="preset_manager_1" inlet="prefix"/>
      </net>
      <net>
         <source obj="preset_manager_1" outlet="preset"/>
         <dest obj="preset_out" inlet="outlet"/>
      </net>
      <net>
         <source obj="preset_manager_1" outlet="load"/>
         <dest obj="load_out" inlet="outlet"/>
      </net>
      <net>
         <source obj="preset_manager_1" outlet="save"/>
         <dest obj="save_out" inlet="outlet"/>
      </net>
      <net>
         <source obj="load_in" outlet="inlet"/>
         <dest obj="preset_manager_1" inlet="load"/>
      </net>
      <net>
         <source obj="sine_2" outlet="wave"/>
         <dest obj="sine_1" inlet="in"/>
      </net>
      <net>
         <source obj="sine_1" outlet="out"/>
         <dest obj="out" inlet="outlet"/>
      </net>
      <net>
         <source obj="save_in" outlet="inlet"/>
         <dest obj="preset_manager_1" inlet="save"/>
      </net>
      <net>
         <source obj="pitch" outlet="inlet"/>
         <dest obj="sine_2" inlet="pitch"/>
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
      <x>878</x>
      <y>153</y>
      <width>720</width>
      <height>638</height>
   </windowPos>
</patch-1.0>