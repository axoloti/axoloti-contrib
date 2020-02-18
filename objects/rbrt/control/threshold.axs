<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="wave" x="28" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="threshold" x="154" y="70">
      <params>
         <frac32.u.map name="value" onParent="true" value="18.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="rbrt/math/pow4 attr" uuid="c9c30f09-53e9-4858-896e-b469b6a24347" name="pow4_1" x="238" y="70">
      <params/>
      <attribs>
         <spinner attributeName="curve" value="0"/>
      </attribs>
   </obj>
   <obj type="math/&lt;" uuid="c624e28be64ac9dad61b6dcd4ae6f241d2879167" name="&lt;_1" x="392" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="over" x="476" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="rbrt/control/env follow" uuid="34b1476e-5a06-4609-8e44-9848cf71f697" name="env_1" x="238" y="168">
      <params/>
      <attribs>
         <combo attributeName="time" selection="0.75ms"/>
      </attribs>
   </obj>
   <nets>
      <net>
         <source obj="env_1" outlet="amp"/>
         <dest obj="&lt;_1" inlet="in2"/>
      </net>
      <net>
         <source obj="threshold" outlet="out"/>
         <dest obj="pow4_1" inlet="in"/>
      </net>
      <net>
         <source obj="pow4_1" outlet="out"/>
         <dest obj="&lt;_1" inlet="in1"/>
      </net>
      <net>
         <source obj="wave" outlet="inlet"/>
         <dest obj="env_1" inlet="in"/>
      </net>
      <net>
         <source obj="&lt;_1" outlet="out"/>
         <dest obj="over" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>0</x>
      <y>0</y>
      <width>904</width>
      <height>626</height>
   </windowPos>
</patch-1.0>