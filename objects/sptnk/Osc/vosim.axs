<patch-1.0 appVersion="1.0.8">
   <comment type="patch/comment" x="1092" y="392" text="eliminating DC signals"/>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="448" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/&lt;&lt;" uuid="3c89a8ac22f44350a3366284704535e257aea35f" name="&gt;&gt;_1" x="518" y="406">
      <params/>
      <attribs>
         <spinner attributeName="shift" value="4"/>
      </attribs>
   </obj>
   <obj type="math/sin" uuid="3fd3c55bdecb474393c99b2a5b01e9bed143eca7" name="sin_1" x="672" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="dc7fbdd46e5e6d4b8de62ee63fd6321639b2f167" name="*_3" x="728" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="dc7fbdd46e5e6d4b8de62ee63fd6321639b2f167" name="*_1" x="896" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/hp1" uuid="abea7276611b289bed35b80345a6bc4efd4d9a4e" name="hp1_1" x="1092" y="406">
      <params>
         <frac32.s.map name="freq" value="-64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="Out" x="1232" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Pitch CV" x="0" y="448">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/phasor" uuid="e5553f226015bf75f4fdc3faa39be1bee4f84044" name="Formant osc" x="126" y="448">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/exp" uuid="e1823a9cb09047a52fa9ff06f72142c07e1a3800" name="exp_1" x="518" y="504">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/window" uuid="5582d4d31acd67073be69df4d31d686304e17161" name="window_1" x="588" y="504">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 4" uuid="e511105cf5630d1a0b4a144dc3fabb3cc7c07bd" name="mux_1" x="700" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/window" uuid="5582d4d31acd67073be69df4d31d686304e17161" name="window_2" x="588" y="560">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="Folds Mod" x="0" y="602">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i" uuid="a3786816db6ea5bc6ac4193a5cccdb2c83b83496" name="Folds" x="154" y="644">
      <params>
         <int32 name="value" onParent="true" value="4"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/&lt;&lt;" uuid="b03d8d8009c0480be0ccb29ed65933a82fa4a80f" name="quantize_1" x="266" y="644">
      <params/>
      <attribs>
         <spinner attributeName="shift" value="2"/>
      </attribs>
   </obj>
   <obj type="math/+c" uuid="13eec32bd8ad57dd0bb18a02566cc0a117d320e3" name="+c_1" x="378" y="644">
      <params>
         <frac32.u.map name="c" value="4.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="b94a9b8e9adcb7d18868c0ee808a9b211b65578d" name="+_1" x="154" y="728">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 4 v" uuid="b610704137c90b0e43464440b84bfb4fb7d2bb30" name="Window type" x="350" y="756">
      <params>
         <int32.vradio name="value" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="Formant osc" outlet="phasor"/>
         <dest obj="vca_1" inlet="a"/>
         <dest obj="exp_1" inlet="a"/>
         <dest obj="mux_1" inlet="i0"/>
         <dest obj="window_2" inlet="phase"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="&gt;&gt;_1" inlet="a"/>
      </net>
      <net>
         <source obj="Window type" outlet="out"/>
         <dest obj="mux_1" inlet="s"/>
      </net>
      <net>
         <source obj="Folds" outlet="out"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="Pitch CV" outlet="inlet"/>
         <dest obj="Formant osc" inlet="pitch"/>
      </net>
      <net>
         <source obj="hp1_1" outlet="out"/>
         <dest obj="Out" inlet="outlet"/>
      </net>
      <net>
         <source obj="&gt;&gt;_1" outlet="result"/>
         <dest obj="sin_1" inlet="phase"/>
      </net>
      <net>
         <source obj="sin_1" outlet="out"/>
         <dest obj="*_3" inlet="a"/>
         <dest obj="*_3" inlet="b"/>
      </net>
      <net>
         <source obj="*_3" outlet="result"/>
         <dest obj="*_1" inlet="a"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="hp1_1" inlet="in"/>
      </net>
      <net>
         <source obj="exp_1" outlet="result"/>
         <dest obj="window_1" inlet="phase"/>
         <dest obj="mux_1" inlet="i1"/>
      </net>
      <net>
         <source obj="window_1" outlet="win"/>
         <dest obj="mux_1" inlet="i3"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="window_2" outlet="win"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="quantize_1" outlet="result"/>
         <dest obj="+c_1" inlet="in"/>
      </net>
      <net>
         <source obj="+c_1" outlet="out"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="Folds Mod" outlet="inlet"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="quantize_1" inlet="a"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-8</x>
      <y>-8</y>
      <width>1382</width>
      <height>784</height>
   </windowPos>
</patch-1.0>