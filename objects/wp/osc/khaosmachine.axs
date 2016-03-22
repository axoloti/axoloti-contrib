<patch-1.0 appVersion="1.0.8">
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="pitch control" x="14" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/pwm" uuid="a6b40ff63f161d8bac8ea2eba5b0dbffcf49b472" name="pitch" x="84" y="84">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="pwm" x="182" y="84">
      <params>
         <frac32.u.map name="value" onParent="true" value="24.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="wp/filter/4polelpf" uuid="c734ed62-d0d6-4386-aa1f-4f575e85c42d" name="4polelp_1" x="252" y="84">
      <params>
         <frac32.u.map name="vcf freq" value="37.0"/>
         <frac32.s.map name="hp freq" value="10.0"/>
         <frac32.u.map name="vcf res" value="18.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="delay/echo fdbk mix" uuid="15716b14ebe691010ccfd54af72ea23232a843c6" name="echo_1" x="350" y="84">
      <params>
         <frac32.u.map name="mix" onParent="true" value="0.0"/>
         <frac32.u.map name="feedback" onParent="true" value="0.0"/>
      </params>
      <attribs>
         <spinner attributeName="delaylength" value="1000"/>
      </attribs>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="audio out" x="462" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="delay mix" x="14" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="delay fdbk" x="14" y="168">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="pitch control" outlet="inlet"/>
         <dest obj="pitch" inlet="pitch"/>
      </net>
      <net>
         <source obj="pitch" outlet="wave"/>
         <dest obj="4polelp_1" inlet="filter in"/>
      </net>
      <net>
         <source obj="echo_1" outlet="out"/>
         <dest obj="audio out" inlet="outlet"/>
      </net>
      <net>
         <source obj="delay mix" outlet="inlet"/>
         <dest obj="echo_1" inlet="mix"/>
      </net>
      <net>
         <source obj="delay fdbk" outlet="inlet"/>
         <dest obj="echo_1" inlet="feedback"/>
      </net>
      <net>
         <source obj="pwm" outlet="out"/>
         <dest obj="pitch" inlet="pw"/>
      </net>
      <net>
         <source obj="4polelp_1" outlet="outlet_1"/>
         <dest obj="echo_1" inlet="in"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author>workerparasite303 (original patch by Alessio Degani)</Author>
      <License>GPL</License>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>622</x>
      <y>72</y>
      <width>658</width>
      <height>516</height>
   </windowPos>
</patch-1.0>