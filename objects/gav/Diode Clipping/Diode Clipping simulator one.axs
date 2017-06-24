<patch-1.0 appVersion="1.0.12">
   <comment type="patch/comment" x="182" y="14" text="+ +1 +2 +3 +4 +5 -5 -4 -3 -2 -1 -"/>
   <comment type="patch/comment" x="714" y="14" text="+ +1 +2 +3 +4 +5 -5 -4 -3 -2 -1 -"/>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="inlet_1" x="98" y="28">
      <params/>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="20b89722-0a57-4952-9874-dc9ea95bde7a" name="Clip Shape POS" x="196" y="28">
      <params>
         <int32.hradio name="value" onParent="true" value="11"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="20b89722-0a57-4952-9874-dc9ea95bde7a">
         <sDescription>positive integer control, horizontal radio buttons</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>ctrl.axh</helpPatch>
         <inlets/>
         <outlets>
            <int32.positive name="out" description="output"/>
         </outlets>
         <displays/>
         <params>
            <int32.hradio name="value" noLabel="true">
               <MaxValue i="12"/>
            </int32.hradio>
         </params>
         <attribs/>
         <includes/>
         <code.krate><![CDATA[outlet_out= param_value;]]></code.krate>
      </object>
   </patchobj>
   <patchobj type="patch/object" uuid="3030187c-dcb1-4da4-baba-aee23cea631d" name="clip level POS" x="392" y="28">
      <params>
         <frac32.u.map name="amp" onParent="true" value="32.5"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="3030187c-dcb1-4da4-baba-aee23cea631d">
         <sDescription>amplify up to 16 times (saturated)</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>math.axh</helpPatch>
         <inlets>
            <frac32buffer name="in" description="input"/>
         </inlets>
         <outlets>
            <frac32buffer name="out1" description="output"/>
            <frac32buffer name="out2"/>
         </outlets>
         <displays/>
         <params>
            <frac32.u.map name="amp"/>
         </params>
         <attribs/>
         <includes/>
         <code.srate><![CDATA[if (inlet_in >= param_amp){
	outlet_out1 = param_amp;
	outlet_out2 = inlet_in - param_amp;
} else {
	outlet_out1 = inlet_in;
	outlet_out2 = 0;
}]]></code.srate>
      </object>
   </patchobj>
   <patchobj type="patch/object" uuid="c3d2b623-3354-4316-809b-77067be3721e" name="mux_2" x="476" y="28">
      <params/>
      <attribs/>
      <object id="patch/object" uuid="c3d2b623-3354-4316-809b-77067be3721e">
         <sDescription>input multiplexer. Output is i1 when s &lt; 1, i[i] when....</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>mux.axh</helpPatch>
         <inlets>
            <frac32buffer name="i0" description="input 0"/>
            <int32.positive name="s" description="select"/>
         </inlets>
         <outlets>
            <frac32buffer name="o" description="output"/>
         </outlets>
         <displays/>
         <params/>
         <attribs/>
         <includes/>
         <code.srate><![CDATA[switch(inlet_s>0?inlet_s:0){
      case 0: outlet_o= inlet_i0 >> 0;break;
      case 1: outlet_o= inlet_i0 >> 1;break;
      case 2: outlet_o= inlet_i0 >> 2;break;
      case 3: outlet_o= inlet_i0 >> 3;break;
      case 4: outlet_o= inlet_i0 >> 4;break;
      case 5: outlet_o= inlet_i0 >> 5;break;
      case 6: outlet_o= -inlet_i0 >> 5;break;
      case 7: outlet_o= -inlet_i0 >> 4;break;
      case 8: outlet_o= -inlet_i0 >> 3;break;
      case 9: outlet_o= -inlet_i0 >> 2;break;
      case 10: outlet_o= -inlet_i0 >> 1;break;
      case 11: outlet_o= -inlet_i0 >> 0;break;
      default:break;
}]]></code.srate>
      </object>
   </patchobj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_1" x="560" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/inv" uuid="7f4c6cf4dcf79f9b0aa81c2eaf540405875714a3" name="inv_1" x="644" y="28">
      <params/>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="20b89722-0a57-4952-9874-dc9ea95bde7a" name="Clip Shape NEG" x="728" y="28">
      <params>
         <int32.hradio name="value" onParent="true" value="11"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="20b89722-0a57-4952-9874-dc9ea95bde7a">
         <sDescription>positive integer control, horizontal radio buttons</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>ctrl.axh</helpPatch>
         <inlets/>
         <outlets>
            <int32.positive name="out" description="output"/>
         </outlets>
         <displays/>
         <params>
            <int32.hradio name="value" noLabel="true">
               <MaxValue i="12"/>
            </int32.hradio>
         </params>
         <attribs/>
         <includes/>
         <code.krate><![CDATA[outlet_out= param_value;]]></code.krate>
      </object>
   </patchobj>
   <patchobj type="patch/object" uuid="3030187c-dcb1-4da4-baba-aee23cea631d" name="clip level NEG" x="896" y="28">
      <params>
         <frac32.u.map name="amp" onParent="true" value="32.5"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="3030187c-dcb1-4da4-baba-aee23cea631d">
         <sDescription>amplify up to 16 times (saturated)</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>math.axh</helpPatch>
         <inlets>
            <frac32buffer name="in" description="input"/>
         </inlets>
         <outlets>
            <frac32buffer name="out1" description="output"/>
            <frac32buffer name="out2"/>
         </outlets>
         <displays/>
         <params>
            <frac32.u.map name="amp"/>
         </params>
         <attribs/>
         <includes/>
         <code.srate><![CDATA[if (inlet_in >= param_amp){
	outlet_out1 = param_amp;
	outlet_out2 = inlet_in - param_amp;
} else {
	outlet_out1 = inlet_in;
	outlet_out2 = 0;
}]]></code.srate>
      </object>
   </patchobj>
   <patchobj type="patch/object" uuid="c3d2b623-3354-4316-809b-77067be3721e" name="mux_3" x="980" y="28">
      <params/>
      <attribs/>
      <object id="patch/object" uuid="c3d2b623-3354-4316-809b-77067be3721e">
         <sDescription>input multiplexer. Output is i1 when s &lt; 1, i[i] when....</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>mux.axh</helpPatch>
         <inlets>
            <frac32buffer name="i0" description="input 0"/>
            <int32.positive name="s" description="select"/>
         </inlets>
         <outlets>
            <frac32buffer name="o" description="output"/>
         </outlets>
         <displays/>
         <params/>
         <attribs/>
         <includes/>
         <code.srate><![CDATA[switch(inlet_s>0?inlet_s:0){
      case 0: outlet_o= inlet_i0 >> 0;break;
      case 1: outlet_o= inlet_i0 >> 1;break;
      case 2: outlet_o= inlet_i0 >> 2;break;
      case 3: outlet_o= inlet_i0 >> 3;break;
      case 4: outlet_o= inlet_i0 >> 4;break;
      case 5: outlet_o= inlet_i0 >> 5;break;
      case 6: outlet_o= -inlet_i0 >> 5;break;
      case 7: outlet_o= -inlet_i0 >> 4;break;
      case 8: outlet_o= -inlet_i0 >> 3;break;
      case 9: outlet_o= -inlet_i0 >> 2;break;
      case 10: outlet_o= -inlet_i0 >> 1;break;
      case 11: outlet_o= -inlet_i0 >> 0;break;
      default:break;
}]]></code.srate>
      </object>
   </patchobj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_2" x="1064" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/inv" uuid="7f4c6cf4dcf79f9b0aa81c2eaf540405875714a3" name="inv_2" x="1148" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1232" y="28">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="clip level POS" outlet="out1"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="Clip Shape POS" outlet="out"/>
         <dest obj="mux_2" inlet="s"/>
      </net>
      <net>
         <source obj="clip level POS" outlet="out2"/>
         <dest obj="mux_2" inlet="i0"/>
      </net>
      <net>
         <source obj="mux_2" outlet="o"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="inv_1" inlet="in"/>
      </net>
      <net>
         <source obj="Clip Shape NEG" outlet="out"/>
         <dest obj="mux_3" inlet="s"/>
      </net>
      <net>
         <source obj="clip level NEG" outlet="out2"/>
         <dest obj="mux_3" inlet="i0"/>
      </net>
      <net>
         <source obj="inv_1" outlet="out"/>
         <dest obj="clip level NEG" inlet="in"/>
      </net>
      <net>
         <source obj="mux_3" outlet="o"/>
         <dest obj="+_2" inlet="in1"/>
      </net>
      <net>
         <source obj="clip level NEG" outlet="out1"/>
         <dest obj="+_2" inlet="in2"/>
      </net>
      <net>
         <source obj="+_2" outlet="out"/>
         <dest obj="inv_2" inlet="in"/>
      </net>
      <net>
         <source obj="inlet_1" outlet="inlet"/>
         <dest obj="clip level POS" inlet="in"/>
      </net>
      <net>
         <source obj="inv_2" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-8</x>
      <y>-8</y>
      <width>1696</width>
      <height>1026</height>
   </windowPos>
</patch-1.0>