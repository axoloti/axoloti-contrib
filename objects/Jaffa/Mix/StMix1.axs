<patch-1.0>
   <comment type="patch/comment" x="28" y="14" text=".................................... Stereo Mixer...................................."/>
   <obj type="patch/inlet a" sha="709c10aa648c6e5a3c00da4b5dd238899a7c109c" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="L In" x="56" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" sha="709c10aa648c6e5a3c00da4b5dd238899a7c109c" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="R In" x="210" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/xfade" sha="46677d62cd61f18b6996ffad67cd94b74cd98f2d" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="L Mix" x="56" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/xfade" sha="46677d62cd61f18b6996ffad67cd94b74cd98f2d" uuid="375dc91d218e96cdc9cbc7e92adb48f705ef701a" name="R Mix" x="210" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" sha="9e7e04867e1d37837b0924c9bf18c44ac68602e6" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="L Out" x="56" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" sha="9e7e04867e1d37837b0924c9bf18c44ac68602e6" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="R Out" x="210" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" sha="501c30e07dedf3d701e8d0b33c3c234908c3388e" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="St. Gain" x="140" y="238">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="St. Gain" outlet="out"/>
         <dest obj="R Mix" inlet="c"/>
         <dest obj="L Mix" inlet="c"/>
      </net>
      <net>
         <source obj="R Mix" outlet="o"/>
         <dest obj="R Out" inlet="outlet"/>
      </net>
      <net>
         <source obj="L Mix" outlet="o"/>
         <dest obj="L Out" inlet="outlet"/>
      </net>
      <net>
         <source obj="L In" outlet="inlet"/>
         <dest obj="L Mix" inlet="i2"/>
      </net>
      <net>
         <source obj="R In" outlet="inlet"/>
         <dest obj="R Mix" inlet="i2"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>0</x>
      <y>22</y>
      <width>729</width>
      <height>582</height>
   </windowPos>
</patch-1.0>