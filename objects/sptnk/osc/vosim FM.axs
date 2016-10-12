<patch-1.0 appVersion="1.0.11">
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
   <obj type="math/sin" uuid="3fd3c55bdecb474393c99b2a5b01e9bed143eca7" name="sin_1" x="630" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="dc7fbdd46e5e6d4b8de62ee63fd6321639b2f167" name="*_3" x="700" y="406">
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
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="FM mod" x="0" y="518">
      <params/>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="4cd3a610-ca1d-4a80-b3eb-8adafb16d7f0" name="window" x="574" y="532">
      <params>
         <frac32.u.map name="size" value="0.0"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="4cd3a610-ca1d-4a80-b3eb-8adafb16d7f0">
         <sDescription></sDescription>
         <inlets>
            <frac32buffer name="in"/>
         </inlets>
         <outlets>
            <frac32buffer name="out"/>
         </outlets>
         <displays/>
         <params>
            <frac32.u.map name="size"/>
         </params>
         <attribs/>
         <includes/>
         <code.srate><![CDATA[int32_t halfsize = param_size>>1;
int32_t halfsize_compl = (1<<27) - halfsize;

float arg1 = (inlet_in/halfsize)*67108864.0f;
float arg2 = ((inlet_in-halfsize_compl)/halfsize)*67108864.0f;

int32_t r1;
int32_t r2;

SINE2TINTERP(((int32_t) arg1 )<<4,r1);
SINE2TINTERP(((int32_t) arg2 )<<4,r2);


if (inlet_in < halfsize)
{
	outlet_out = r1>>4;
}
else if (inlet_in > halfsize_compl)
{
	outlet_out = r2>>4
}
else
outlet_out = inlet_in;]]></code.srate>
      </object>
   </patchobj>
   <obj type="osc/sine" uuid="6e094045cca76a9dbf7ebfa72e44e4700d2b3ba" name="FM osc" x="126" y="560">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="*_2" x="252" y="560">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="fold mod" x="0" y="602">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/cos" uuid="c813904f245103af9eafbc05ed6521f94472aed4" name="cos_1" x="714" y="672">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+c" uuid="13eec32bd8ad57dd0bb18a02566cc0a117d320e3" name="FM amount" x="140" y="686">
      <params>
         <frac32.u.map name="c" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="fold" x="168" y="812">
      <params>
         <frac32.u.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+c" uuid="13eec32bd8ad57dd0bb18a02566cc0a117d320e3" name="+c_1" x="392" y="812">
      <params>
         <frac32.u.map name="c" value="4.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="168" y="896">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 4 v" uuid="b610704137c90b0e43464440b84bfb4fb7d2bb30" name="Window type" x="364" y="924">
      <params>
         <int32.vradio name="value" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="Formant osc" outlet="phasor"/>
         <dest obj="vca_1" inlet="a"/>
         <dest obj="window" inlet="in"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="&gt;&gt;_1" inlet="a"/>
      </net>
      <net>
         <source obj="fold" outlet="out"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="FM osc" outlet="wave"/>
         <dest obj="*_2" inlet="a"/>
      </net>
      <net>
         <source obj="Pitch CV" outlet="inlet"/>
         <dest obj="Formant osc" inlet="pitch"/>
         <dest obj="FM osc" inlet="pitch"/>
      </net>
      <net>
         <source obj="FM mod" outlet="inlet"/>
         <dest obj="FM amount" inlet="in"/>
      </net>
      <net>
         <source obj="*_2" outlet="o"/>
         <dest obj="Formant osc" inlet="freq"/>
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
         <source obj="FM amount" outlet="out"/>
         <dest obj="*_2" inlet="v"/>
      </net>
      <net>
         <source obj="fold mod" outlet="inlet"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="+c_1" inlet="in"/>
      </net>
      <net>
         <source obj="+c_1" outlet="out"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="window" outlet="out"/>
         <dest obj="*_1" inlet="b"/>
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