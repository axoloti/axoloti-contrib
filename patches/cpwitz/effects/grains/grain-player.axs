<patch-1.0 appVersion="1.0.10">
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="trigger" x="28" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="pos" x="126" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="length" x="210" y="28">
      <params/>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="178a332e-a087-407c-a8cc-f9f3bf1cf6d9" name="grain-env__" x="294" y="28">
      <params/>
      <attribs/>
      <object id="patch/object" uuid="178a332e-a087-407c-a8cc-f9f3bf1cf6d9">
         <sDescription>Attack/decay envelope, linear attack, exponential decay</sDescription>
         <author>Johannes Taelman (+cpwitz)</author>
         <license>BSD</license>
         <helpPatch>env.axh</helpPatch>
         <inlets>
            <bool32.rising name="trig" description="trigger"/>
            <frac32 name="atk"/>
            <frac32 name="dcy"/>
         </inlets>
         <outlets>
            <frac32.positive name="env" description="envelope output"/>
         </outlets>
         <displays/>
         <params/>
         <attribs/>
         <includes/>
         <code.declaration><![CDATA[int8_t stage;
int ntrig;
int32_t val;
]]></code.declaration>
         <code.init><![CDATA[ntrig = 0;
val = 0;
]]></code.init>
         <code.krate><![CDATA[if ((inlet_trig>0) && !ntrig) {
   ntrig = 1;
   stage = 1;
} else if (!(inlet_trig>0)) {
   ntrig = 0;
}
if (stage == 0){
   int32_t r1;
   int32_t r2;
   MTOF(- inlet_dcy, r1);
   r1 = 0x7FFFFFFF - (r1 >> 2);
   val = ___SMMUL(val,r1)<<1;

   
} else {
  int32_t a;
   MTOF(- inlet_atk,a);
   a = a >> 2;
   val = val + a;
   if (val<0) {
      val =0x7FFFFFFF;
      stage = 0;
   }
   
}
outlet_env = val>>4;




	]]></code.krate>
      </object>
   </patchobj>
   <patchobj type="patch/object" uuid="fada1e19-25fd-4049-8b56-a58eb344f550" name="read_1" x="392" y="28">
      <params/>
      <attribs>
         <objref attributeName="table" obj="../buffertable"/>
         <objref attributeName="graintable" obj="graintable"/>
      </attribs>
      <object id="patch/object" uuid="fada1e19-25fd-4049-8b56-a58eb344f550">
         <sDescription>delay read, non-interpolated</sDescription>
         <author>Peter Witzel</author>
         <license>CC0</license>
         <helpPatch>delay.axh</helpPatch>
         <inlets>
            <bool32.rising name="trigger"/>
            <frac32.positive name="pos"/>
            <frac32.positive name="length"/>
         </inlets>
         <outlets>
            <frac32buffer name="out" description="wave"/>
         </outlets>
         <displays/>
         <params/>
         <attribs>
            <objref name="table"/>
            <objref name="graintable"/>
         </attribs>
         <includes/>
         <code.declaration><![CDATA[
uint32_t readpos;
uint32_t startpos;
uint32_t length;
uint32_t index;
int ntrig;
uint32_t writepos;
int att_samples;
int att_step;
bool filltable;
uint32_t maxgrainlength;]]></code.declaration>
         <code.init><![CDATA[readpos = 0;
startpos = 0;
length = 0;
index = 0;
ntrig = 0;
writepos = 1; // offset 1 to real writepos
att_samples = 200;
att_step = 0x7FFFFFF / att_samples;
filltable = false;
maxgrainlength = attr_table.LENGTHPOW<attr_graintable.LENGTHPOW?attr_table.LENGTHPOW:attr_graintable.LENGTHPOW;
]]></code.init>
         <code.krate><![CDATA[
if ((inlet_trigger>0) && !ntrig) {
	ntrig = 1;
	startpos = __USAT(inlet_pos,27)>>(27-attr_table.LENGTHPOW);
	length = __USAT(inlet_length,27)>>(27-maxgrainlength);
	filltable = true;
	index = 0;
} else if (!(inlet_trigger>0)) {
   ntrig = 0;
}

]]></code.krate>
         <code.srate><![CDATA[writepos = (writepos + 1)&attr_table.LENGTHMASK; // this runs synchronous with the recording table
if (filltable) {
	int attenuation = 0x7FFFFFF;
	int crossfadevalue = 0;
	if (index<att_samples) {
		attenuation = index * att_step;
		crossfadevalue = ___SMMUL(attr_graintable.array[index], 0x7FFFFFF-attenuation)<<5;
	}
	if (index>length-att_samples) {
		attenuation = (length-index) * att_step;
	}
	readpos = (writepos+startpos)&attr_table.LENGTHMASK;
	int value = ___SMMUL(attr_table.array[readpos], attenuation)<<5;
	attr_graintable.array[index] = value;
	outlet_out = value + crossfadevalue;
	if (index+1==length) {
		filltable = false;	
	}
} else {
	outlet_out = attr_graintable.array[index];
}
index = (index+1)%length;
]]></code.srate>
      </object>
   </patchobj>
   <obj type="filter/lp" uuid="1427779cf086ab83c8b03eeeac69c2a97759c651" name="lp_1" x="546" y="28">
      <params>
         <frac32.s.map name="pitch" value="60.0"/>
         <frac32.u.map name="reso" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="658" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="out" x="728" y="28">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="pos&gt;" x="728" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="attack" x="28" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="decay" x="126" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="length&gt;" x="728" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="table/alloc 32b sdram" uuid="1a4546b7b52747ea765093ac97444601c44721e8" name="graintable" x="392" y="182">
      <params/>
      <attribs>
         <combo attributeName="size" selection="65536"/>
         <text attributeName="init">
            <sText><![CDATA[]]></sText>
         </text>
      </attribs>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="attack&gt;" x="728" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="decay&gt;" x="728" y="266">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="read_1" outlet="out"/>
         <dest obj="lp_1" inlet="in"/>
      </net>
      <net>
         <source obj="trigger" outlet="inlet"/>
         <dest obj="grain-env__" inlet="trig"/>
         <dest obj="read_1" inlet="trigger"/>
      </net>
      <net>
         <source obj="pos" outlet="inlet"/>
         <dest obj="pos&gt;" inlet="outlet"/>
         <dest obj="read_1" inlet="pos"/>
      </net>
      <net>
         <source obj="length" outlet="inlet"/>
         <dest obj="length&gt;" inlet="outlet"/>
         <dest obj="read_1" inlet="length"/>
      </net>
      <net>
         <source obj="lp_1" outlet="out"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="out" inlet="outlet"/>
      </net>
      <net>
         <source obj="decay" outlet="inlet"/>
         <dest obj="decay&gt;" inlet="outlet"/>
         <dest obj="grain-env__" inlet="dcy"/>
      </net>
      <net>
         <source obj="attack" outlet="inlet"/>
         <dest obj="attack&gt;" inlet="outlet"/>
         <dest obj="grain-env__" inlet="atk"/>
      </net>
      <net>
         <source obj="grain-env__" outlet="env"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>0</NPresets>
      <NPresetEntries>0</NPresetEntries>
      <NModulationSources>0</NModulationSources>
      <NModulationTargetsPerSource>0</NModulationTargetsPerSource>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>411</x>
      <y>324</y>
      <width>1117</width>
      <height>736</height>
   </windowPos>
</patch-1.0>