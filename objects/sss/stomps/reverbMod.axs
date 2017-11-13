<patch-1.0 appVersion="1.0.12">
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="on" x="308" y="14">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="inL" x="28" y="24">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="inR" x="28" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_1" x="126" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/div 2" uuid="ad1e413d83e5edce017e3e9a4f30d86035cf637" name="div_1" x="210" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="539c246f4c360ac476e128cfbfa84348fb7f7e73" name="mux_1" x="308" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="*c_1" x="434" y="84">
      <params>
         <frac32.u.map name="amp" onParent="true" value="17.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mix/mix 1 g" uuid="e6982841c1bf323ee2062a4b6cc2737adafbd668" name="feedback" x="532" y="84">
      <params>
         <frac32.u.map name="gain1" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="delay/write sdram" uuid="5ae03f8d7b815edcfc40585d8bbac2ed48460fba" name="d1" x="630" y="84">
      <params/>
      <attribs>
         <combo attributeName="size" selection="65536 (1.36s)"/>
      </attribs>
   </obj>
   <obj type="delay/read" uuid="9323a43569373145e559ad309eaf65a47b14cb54" name="read_1" x="140" y="224">
      <params>
         <frac32.u.map name="time" onParent="true" value="13.979999999999997"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="d1"/>
      </attribs>
   </obj>
   <obj type="delay/read" uuid="9323a43569373145e559ad309eaf65a47b14cb54" name="read_2" x="140" y="322">
      <params>
         <frac32.u.map name="time" onParent="true" value="21.549999999999994"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="d1"/>
      </attribs>
   </obj>
   <obj type="math/inv" uuid="7f4c6cf4dcf79f9b0aa81c2eaf540405875714a3" name="inv_1" x="294" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="delay/read" uuid="9323a43569373145e559ad309eaf65a47b14cb54" name="read_3" x="140" y="420">
      <params>
         <frac32.u.map name="time" onParent="true" value="31.729999999999997"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="d1"/>
      </attribs>
   </obj>
   <obj type="mix/mix 3 g" uuid="efc0bdb8ca0ec2184330951eff5203ff487e35a9" name="mix_1" x="364" y="420">
      <params>
         <frac32.u.map name="gain1" onParent="true" value="41.0"/>
         <frac32.u.map name="gain2" onParent="true" value="33.0"/>
         <frac32.u.map name="gain3" onParent="true" value="16.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/reverb/fnd4Mod" uuid="4f16d226-c187-4f7e-a0f8-aad87ef37a58" name="fnd4Mod_1" x="588" y="420">
      <params>
         <frac32.u.map name="size" onParent="true" value="31.5"/>
         <frac32.u.map name="decay" onParent="true" value="21.5"/>
         <frac32.u.map name="s1" onParent="true" value="25.525"/>
         <frac32.u.map name="s2" onParent="true" value="39.515"/>
         <frac32.u.map name="s3" onParent="true" value="49.03500000000001"/>
         <frac32.u.map name="s4" onParent="true" value="51.98499999999999"/>
      </params>
      <attribs>
         <spinner attributeName="d1" value="3000"/>
      </attribs>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_2" x="700" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outL" x="812" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_3" x="700" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outR" x="812" y="504">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="inL" outlet="inlet"/>
         <dest obj="+_1" inlet="in1"/>
         <dest obj="+_2" inlet="in1"/>
      </net>
      <net>
         <source obj="inR" outlet="inlet"/>
         <dest obj="+_1" inlet="in2"/>
         <dest obj="+_3" inlet="in2"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="div_1" inlet="in"/>
      </net>
      <net>
         <source obj="*c_1" outlet="out"/>
         <dest obj="mix_1" inlet="bus_in"/>
         <dest obj="feedback" inlet="bus_in"/>
      </net>
      <net>
         <source obj="read_1" outlet="out"/>
         <dest obj="mix_1" inlet="in1"/>
      </net>
      <net>
         <source obj="read_3" outlet="out"/>
         <dest obj="mix_1" inlet="in3"/>
      </net>
      <net>
         <source obj="read_2" outlet="out"/>
         <dest obj="inv_1" inlet="in"/>
      </net>
      <net>
         <source obj="inv_1" outlet="out"/>
         <dest obj="mix_1" inlet="in2"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="fnd4Mod_1" inlet="in1"/>
         <dest obj="feedback" inlet="in1"/>
      </net>
      <net>
         <source obj="fnd4Mod_1" outlet="out4"/>
         <dest obj="+_2" inlet="in2"/>
      </net>
      <net>
         <source obj="fnd4Mod_1" outlet="out3"/>
         <dest obj="+_3" inlet="in1"/>
      </net>
      <net>
         <source obj="div_1" outlet="out"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="*c_1" inlet="in"/>
      </net>
      <net>
         <source obj="on" outlet="o"/>
         <dest obj="mux_1" inlet="s"/>
      </net>
      <net>
         <source obj="+_2" outlet="out"/>
         <dest obj="outL" inlet="outlet"/>
      </net>
      <net>
         <source obj="+_3" outlet="out"/>
         <dest obj="outR" inlet="outlet"/>
      </net>
      <net>
         <source obj="feedback" outlet="out"/>
         <dest obj="d1" inlet="in"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>4</NPresetEntries>
      <NModulationSources>1</NModulationSources>
      <NModulationTargetsPerSource>4</NModulationTargetsPerSource>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>144</x>
      <y>0</y>
      <width>1119</width>
      <height>814</height>
   </windowPos>
</patch-1.0>