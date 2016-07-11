<patch-1.0 appVersion="1.0.10">
   <comment type="patch/comment" x="42" y="14" text="--------------- Stereo chorus ---------------"/>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="in_l" x="574" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="fx/chorus" uuid="1ed4bbac5ae03f123f84cfc0d7b815240585d8ba" name="chorus_1" x="672" y="56">
      <params/>
      <attribs>
         <combo attributeName="resolution" selection="32 bit"/>
         <combo attributeName="storage" selection="SDRAM"/>
         <combo attributeName="delaysize" selection="4096 (85.33ms)"/>
         <spinner attributeName="maxvoices" value="4"/>
      </attribs>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="out_l" x="826" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="time" x="42" y="252">
      <params>
         <frac32.u.map name="value" onParent="true" value="21.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="tspread" x="126" y="252">
      <params>
         <frac32.s.map name="value" onParent="true" value="-11.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="lfoamt" x="210" y="252">
      <params>
         <frac32.u.map name="value" onParent="true" value="14.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="drj/ctrl/dial_lfopitch" uuid="86ae7d7f72274d118a23d4649093cb1c94aed28a" name="lfofreq" x="294" y="252">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-41.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="fspread" x="420" y="252">
      <params>
         <frac32.s.map name="value" onParent="true" value="17.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="mix" x="504" y="252">
      <params>
         <frac32.u.map name="value" onParent="true" value="26.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="voices" x="588" y="252">
      <params>
         <int32 name="value" onParent="true" value="3"/>
      </params>
      <attribs/>
   </obj>
   <obj type="fx/chorus" uuid="1ed4bbac5ae03f123f84cfc0d7b815240585d8ba" name="chorus_2" x="672" y="308">
      <params/>
      <attribs>
         <combo attributeName="resolution" selection="32 bit"/>
         <combo attributeName="storage" selection="SDRAM"/>
         <combo attributeName="delaysize" selection="4096 (85.33ms)"/>
         <spinner attributeName="maxvoices" value="4"/>
      </attribs>
   </obj>
   <obj type="math/inv" uuid="565521d3699b36d8095aa1c79b9ad0046fb133ce" name="tspreadinv" x="126" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/inv" uuid="565521d3699b36d8095aa1c79b9ad0046fb133ce" name="fspreadinv" x="420" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="in_r" x="574" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="out_r" x="826" y="476">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="chorus_1" outlet="out"/>
         <dest obj="out_l" inlet="outlet"/>
      </net>
      <net>
         <source obj="chorus_2" outlet="out"/>
         <dest obj="out_r" inlet="outlet"/>
      </net>
      <net>
         <source obj="voices" outlet="out"/>
         <dest obj="chorus_1" inlet="voices"/>
         <dest obj="chorus_2" inlet="voices"/>
      </net>
      <net>
         <source obj="mix" outlet="out"/>
         <dest obj="chorus_1" inlet="mix"/>
         <dest obj="chorus_2" inlet="mix"/>
      </net>
      <net>
         <source obj="fspread" outlet="out"/>
         <dest obj="fspreadinv" inlet="in"/>
         <dest obj="chorus_1" inlet="fspread"/>
      </net>
      <net>
         <source obj="time" outlet="out"/>
         <dest obj="chorus_1" inlet="time"/>
         <dest obj="chorus_2" inlet="time"/>
      </net>
      <net>
         <source obj="tspread" outlet="out"/>
         <dest obj="tspreadinv" inlet="in"/>
         <dest obj="chorus_1" inlet="tspread"/>
      </net>
      <net>
         <source obj="lfoamt" outlet="out"/>
         <dest obj="chorus_1" inlet="lfoamt"/>
         <dest obj="chorus_2" inlet="lfoamt"/>
      </net>
      <net>
         <source obj="tspreadinv" outlet="out"/>
         <dest obj="chorus_2" inlet="tspread"/>
      </net>
      <net>
         <source obj="lfofreq" outlet="out"/>
         <dest obj="chorus_1" inlet="lfofreq"/>
         <dest obj="chorus_2" inlet="lfofreq"/>
      </net>
      <net>
         <source obj="fspreadinv" outlet="out"/>
         <dest obj="chorus_2" inlet="fspread"/>
      </net>
      <net>
         <source obj="in_l" outlet="inlet"/>
         <dest obj="chorus_1" inlet="in"/>
      </net>
      <net>
         <source obj="in_r" outlet="inlet"/>
         <dest obj="chorus_2" inlet="in"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author>Are Leistad</Author>
      <License>BSD</License>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>71</x>
      <y>57</y>
      <width>1143</width>
      <height>746</height>
   </windowPos>
</patch-1.0>