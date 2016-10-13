<patch-1.0 appVersion="1.0.10">
   <obj type="midi/in/keyb touch" uuid="edfcb4cfd5b2064e95f5a7ee644bca56252ec11f" name="keyb_1" x="322" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="scale" x="322" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="key" x="322" y="392">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="GlideOff" x="322" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Glidetime" x="322" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="Feed" x="322" y="518">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/adsr m" uuid="98bd39fb828c392b28126d259cb5175e6f6ea34b" name="adsr_1" x="700" y="546">
      <params>
         <frac32.s.map name="a" onParent="true" value="-64.0"/>
         <frac32.s.map name="d" onParent="true" value="-52.0"/>
         <frac32.u.map name="s" onParent="true" value="0.0"/>
         <frac32.s.map name="r" onParent="true" value="-57.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/math/expCurveK" uuid="bde45a1d-540b-4c33-b7b5-d733d42a1772" name="expCurveK_1" x="770" y="546">
      <params>
         <frac32.s.map name="exp" onParent="true" value="19.0"/>
         <int32 name="stack" onParent="true" value="3"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_1" x="882" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="938" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="A" x="322" y="560">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="D" x="322" y="602">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="S" x="322" y="644">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="R" x="322" y="686">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="exponential" x="322" y="728">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="position" x="322" y="770">
      <params/>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="11b26951-4d6e-4671-883c-52ec8a7b1ab8" name="mod2Karplus_1" x="700" y="798">
      <params/>
      <attribs/>
      <object id="patch/object" uuid="11b26951-4d6e-4671-883c-52ec8a7b1ab8">
         <sDescription>Module to attenuate the midi data to all the parameter inputs of the KarplusStrong2 module.
Also has attenuators for controlling a BP-filter to pre-filter the audio-in, feeding the delay.</sDescription>
         <author>Remco van der Most</author>
         <license>BSD</license>
         <helpPatch>math.axh</helpPatch>
         <inlets>
            <frac32 name="pitch" description="input"/>
            <frac32 name="velocity"/>
            <frac32 name="touch"/>
            <frac32 name="Position"/>
            <frac32 name="Tailtime"/>
            <frac32 name="Color"/>
            <frac32 name="Mode"/>
            <frac32 name="Strength"/>
            <frac32 name="Influence"/>
            <frac32 name="BPCut"/>
            <frac32 name="BPRes"/>
         </inlets>
         <outlets>
            <frac32 name="position" description="output"/>
            <frac32 name="tailtime"/>
            <frac32 name="color"/>
            <frac32 name="mode"/>
            <frac32 name="strength"/>
            <frac32 name="influence"/>
            <frac32 name="BPcut"/>
            <frac32 name="BPres"/>
         </outlets>
         <displays/>
         <params/>
         <attribs/>
         <includes/>
         <code.declaration><![CDATA[int select;]]></code.declaration>
         <code.krate><![CDATA[outlet_position	= ___SMMUL(9<<3,inlet_pitch<<2)+___SMMUL(-35<<3,inlet_velocity<<2)+___SMMUL(23<<3,inlet_touch<<2)+inlet_Position;
outlet_tailtime	= ___SMMUL(4<<3,inlet_pitch<<2)+___SMMUL(21<<3,inlet_velocity<<2)+___SMMUL(14<<3,inlet_touch<<2)+inlet_Tailtime;
outlet_color		= ___SMMUL(-9<<3,inlet_pitch<<2)+___SMMUL(31<<3,inlet_velocity<<2)+___SMMUL(-46<<3,inlet_touch<<2)+inlet_Color;
outlet_mode		= ___SMMUL(48<<3,inlet_pitch<<2)+___SMMUL(9<<3,inlet_velocity<<2)+___SMMUL(-8<<3,inlet_touch<<2)+inlet_Mode;
outlet_strength	= ___SMMUL(-4<<3,inlet_pitch<<2)+___SMMUL(-14<<3,inlet_velocity<<2)+___SMMUL(14<<3,inlet_touch<<2)+inlet_Strength;
outlet_influence	= ___SMMUL(2<<3,inlet_pitch<<2)+___SMMUL(21<<3,inlet_velocity<<2)+___SMMUL(3<<3,inlet_touch<<2)+inlet_Influence;
outlet_BPcut		= ___SMMUL(30<<3,inlet_pitch<<2)+___SMMUL(26<<3,inlet_velocity<<2)+___SMMUL(-13<<3,inlet_touch<<2)+inlet_BPCut;
outlet_BPres		= ___SMMUL(14<<3,inlet_pitch<<2)+___SMMUL(-45<<3,inlet_velocity<<2)+___SMMUL(21<<3,inlet_touch<<2)+inlet_BPRes;
]]></code.krate>
      </object>
   </patchobj>
   <obj type="filter/bp m" uuid="f26437572c3a1f6be883bb219c773a9906ff8296" name="bp_1" x="896" y="798">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-1.0"/>
         <frac32.u.map name="reso" onParent="true" value="20.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="tailtime" x="322" y="812">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="color" x="322" y="854">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="mode" x="322" y="896">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="strength" x="322" y="938">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/math/glideMultiExt" uuid="b0be6350-d9b7-4407-b6b5-70011ed760de" name="glideMultiExt_1" x="868" y="938">
      <params>
         <frac32.u.map name="glide" onParent="true" value="0.0"/>
         <int32.hradio name="mode" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="25084462-a717-48a1-8239-6132e89ace9b" name="46Scales_1" x="994" y="938">
      <params/>
      <attribs/>
      <object id="patch/object" uuid="25084462-a717-48a1-8239-6132e89ace9b">
         <sDescription>46-scale scaling module

All the generated notes will be scaled to the selected scale. 46! scales are included and each scale can be set to a key. See the Local Date for which scales are included. Scales are somewhat ordered on alphabetic orde (except the main major/minor scale variations which are the first ones). You can always set them to another order if you want, but keep the total at 46 as this selecting value gets wrapped above 46 in the code.</sDescription>
         <author>Remco van der Most</author>
         <license>BSD</license>
         <inlets>
            <int32 name="pitch"/>
            <int32 name="scale"/>
            <int32 name="key"/>
         </inlets>
         <outlets>
            <frac32 name="note"/>
         </outlets>
         <displays/>
         <params/>
         <attribs/>
         <includes/>
         <code.declaration><![CDATA[int note[552]={
0,0,2,2,4,5,5,7,7,9,9,11,	
0,0,2,2,4,5,5,7,8,8,11,11,	
0,0,2,2,4,5,6,6,8,8,10,10,	
0,0,2,2,4,5,5,7,7,9,9,10,	
0,0,2,2,4,4,7,7,9,9,11,11,	
0,0,0,3,3,5,5,7,7,7,10,10,	
0,0,2,3,3,5,5,7,8,8,10,10,	
0,1,1,3,3,5,6,6,8,8,10,10,	
0,0,2,3,3,5,5,7,8,8,11,11,	
0,0,2,3,3,5,5,7,7,9,9,11,	
0,0,2,3,3,5,5,7,7,8,8,10,	
0,0,2,3,3,5,6,6,8,9,9,11,	
0,0,0,3,4,4,4,7,8,8,8,11,	
0,0,2,2,4,4,6,6,8,9,9,11,	
0,1,1,4,5,5,7,7,8,8,10,10,	
0,1,1,3,3,5,5,7,8,8,10,10,	
0,0,2,2,4,4,6,6,9,9,10,10,	
0,0,2,2,4,4,6,7,7,9,10,10,			
0,1,1,3,4,4,6,6,8,8,10,10,	
0,0,2,2,4,5,5,7,8,9,9,11,		
0,0,2,2,4,5,5,7,7,9,10,11,	
0,0,0,4,4,5,6,7,7,7,10,10,	
0,0,2,3,3,5,5,7,7,9,10,10,	
0,0,2,3,3,3,6,7,7,9,10,10,	
0,1,1,1,4,5,5,7,8,8,8,11,	
0,1,1,1,4,4,6,6,8,9,10,11,	
0,1,1,1,4,5,5,7,8,8,8,10,	
0,0,2,3,3,3,6,7,8,8,10,10,	
0,0,2,3,3,5,6,6,8,8,10,10,				
0,0,3,3,4,5,5,7,7,9,9,9,		
0,0,0,4,4,4,6,6,7,7,11,11,	
0,0,2,3,3,6,6,7,8,8,11,11,	
0,0,2,3,3,6,6,7,8,8,10,10,	
0,0,1,1,1,5,5,5,7,7,8,8,		
0,0,1,1,5,5,5,7,7,7,10,10,	
0,0,1,1,3,3,4,4,6,6,7,7,		
0,0,1,1,1,5,5,6,6,6,10,10,	
0,1,1,3,3,5,5,7,8,8,11,11,	
0,1,1,3,4,4,6,7,7,9,10,10,	
0,0,2,3,3,5,6,6,8,9,9,10,	
0,1,1,3,3,3,6,7,8,8,10,10,	
0,1,1,1,4,5,6,6,8,8,10,10,	
0,0,2,2,2,5,5,7,7,7,9,9,		
0,1,1,4,4,6,6,7,7,7,10,10,	
0,0,2,2,4,4,6,6,8,8,10,10,	
0,0,0,3,3,5,5,7,7,7,10,10,	
};

]]></code.declaration>
         <code.krate><![CDATA[int key=inlet_key-(inlet_key/12)*12;
key=key<0?key+12:key;
int Scale=inlet_scale;
Scale=Scale-(Scale/46)*46;
Scale=Scale<0?Scale+46:Scale;

int octave=inlet_pitch/12-(inlet_pitch<0?1:0);
int semitone=inlet_pitch-octave*12;
outlet_note=(note[semitone+Scale*12]+octave*12+key)<<21;]]></code.krate>
      </object>
   </patchobj>
   <obj type="sss/delay/KarplusStrong2" uuid="e0ae375a-c621-4865-94d5-dd136330a55c" name="KarplusStrong2_1" x="1120" y="938">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-24.0"/>
         <frac32.u.map name="position" onParent="true" value="32.0"/>
         <frac32.u.map name="tailtime" onParent="true" value="10.0"/>
         <frac32.s.map name="color" onParent="true" value="20.0"/>
         <frac32.u.map name="mode" onParent="true" value="4.5"/>
         <frac32.u.map name="strength" onParent="true" value="14.0"/>
         <frac32.s.map name="influence" onParent="true" value="47.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1260" y="938">
      <params/>
      <attribs/>
   </obj>
   <obj type="audio/out stereo" uuid="a1ca7a567f535acc21055669829101d3ee7f0189" name="out_1" x="1358" y="938">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="influence" x="322" y="980">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="BPcut" x="322" y="1022">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="BPres" x="322" y="1064">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="keyb_1" outlet="gate2"/>
         <dest obj="adsr_1" inlet="gate"/>
      </net>
      <net>
         <source obj="adsr_1" outlet="env"/>
         <dest obj="expCurveK_1" inlet="in"/>
      </net>
      <net>
         <source obj="Feed" outlet="inlet"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="bp_1" inlet="in"/>
      </net>
      <net>
         <source obj="bp_1" outlet="out"/>
         <dest obj="KarplusStrong2_1" inlet="in"/>
      </net>
      <net>
         <source obj="KarplusStrong2_1" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
         <dest obj="out_1" inlet="left"/>
         <dest obj="out_1" inlet="right"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="mod2Karplus_1" inlet="pitch"/>
         <dest obj="glideMultiExt_1" inlet="in"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="velocity"/>
         <dest obj="mod2Karplus_1" inlet="velocity"/>
         <dest obj="*_1" inlet="a"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="touch"/>
         <dest obj="mod2Karplus_1" inlet="touch"/>
      </net>
      <net>
         <source obj="mod2Karplus_1" outlet="position"/>
         <dest obj="KarplusStrong2_1" inlet="position"/>
      </net>
      <net>
         <source obj="mod2Karplus_1" outlet="tailtime"/>
         <dest obj="KarplusStrong2_1" inlet="tailtime"/>
      </net>
      <net>
         <source obj="mod2Karplus_1" outlet="color"/>
         <dest obj="KarplusStrong2_1" inlet="color"/>
      </net>
      <net>
         <source obj="mod2Karplus_1" outlet="mode"/>
         <dest obj="KarplusStrong2_1" inlet="mode"/>
      </net>
      <net>
         <source obj="mod2Karplus_1" outlet="strength"/>
         <dest obj="KarplusStrong2_1" inlet="strength"/>
      </net>
      <net>
         <source obj="mod2Karplus_1" outlet="influence"/>
         <dest obj="KarplusStrong2_1" inlet="influence"/>
      </net>
      <net>
         <source obj="mod2Karplus_1" outlet="BPcut"/>
         <dest obj="bp_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="mod2Karplus_1" outlet="BPres"/>
         <dest obj="bp_1" inlet="reso"/>
      </net>
      <net>
         <source obj="A" outlet="inlet"/>
         <dest obj="adsr_1" inlet="a"/>
      </net>
      <net>
         <source obj="D" outlet="inlet"/>
         <dest obj="adsr_1" inlet="d"/>
      </net>
      <net>
         <source obj="S" outlet="inlet"/>
         <dest obj="adsr_1" inlet="s"/>
      </net>
      <net>
         <source obj="R" outlet="inlet"/>
         <dest obj="adsr_1" inlet="r"/>
      </net>
      <net>
         <source obj="position" outlet="inlet"/>
         <dest obj="mod2Karplus_1" inlet="Position"/>
      </net>
      <net>
         <source obj="tailtime" outlet="inlet"/>
         <dest obj="mod2Karplus_1" inlet="Tailtime"/>
      </net>
      <net>
         <source obj="color" outlet="inlet"/>
         <dest obj="mod2Karplus_1" inlet="Color"/>
      </net>
      <net>
         <source obj="mode" outlet="inlet"/>
         <dest obj="mod2Karplus_1" inlet="Mode"/>
      </net>
      <net>
         <source obj="strength" outlet="inlet"/>
         <dest obj="mod2Karplus_1" inlet="Strength"/>
      </net>
      <net>
         <source obj="influence" outlet="inlet"/>
         <dest obj="mod2Karplus_1" inlet="Influence"/>
      </net>
      <net>
         <source obj="BPcut" outlet="inlet"/>
         <dest obj="mod2Karplus_1" inlet="BPCut"/>
      </net>
      <net>
         <source obj="BPres" outlet="inlet"/>
         <dest obj="mod2Karplus_1" inlet="BPRes"/>
      </net>
      <net>
         <source obj="expCurveK_1" outlet="out"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="exponential" outlet="inlet"/>
         <dest obj="expCurveK_1" inlet="exp"/>
      </net>
      <net>
         <source obj="GlideOff" outlet="inlet"/>
         <dest obj="glideMultiExt_1" inlet="glideOFF"/>
      </net>
      <net>
         <source obj="Glidetime" outlet="inlet"/>
         <dest obj="glideMultiExt_1" inlet="Glide"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="glideMultiExt_1" outlet="out"/>
         <dest obj="46Scales_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="46Scales_1" outlet="note"/>
         <dest obj="KarplusStrong2_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="scale" outlet="inlet"/>
         <dest obj="46Scales_1" inlet="scale"/>
      </net>
      <net>
         <source obj="key" outlet="inlet"/>
         <dest obj="46Scales_1" inlet="key"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>polyphonic</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author>Remco van der Most</Author>
      <License>Secret</License>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-8</x>
      <y>-8</y>
      <width>1696</width>
      <height>1026</height>
   </windowPos>
</patch-1.0>