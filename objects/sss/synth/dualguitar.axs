<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="scale" x="252" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="key" x="252" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="preset" x="252" y="504">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="inlet_1" x="252" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="midi/in/keyb mod" uuid="abcd509d15e7d13d5381203fd2b4d0ac6fe57bb3" name="keyb_1" x="98" y="616">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/latch" uuid="2a50e4657301542464c6a97931847b5e8e0e6d2b" name="latch_1" x="196" y="616">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/harmony/46Scales" uuid="04beb739-0fb8-4f93-ba92-fc4b22942182" name="46Scales_1" x="266" y="616">
      <params/>
      <attribs>
         <objref attributeName="scale" obj="../scalebank2_1"/>
      </attribs>
   </obj>
   <obj type="sss/env/ADSRcrv2" uuid="a8db6ba6-8f82-4340-8b13-d497823857b5" name="ADSRcrv2_1" x="392" y="616">
      <params>
         <frac32.u.map name="slope" onParent="true" value="3.5"/>
         <frac32.s.map name="time" onParent="true" value="-1.0"/>
         <frac32.u.map name="S" onParent="true" value="40.5"/>
         <frac32.s.map name="R" onParent="true" value="61.0"/>
         <frac32.s.map name="crvA" onParent="true" value="-24.0"/>
         <frac32.s.map name="crvD" onParent="true" value="-32.0"/>
         <frac32.s.map name="crvR" onParent="true" value="1.0"/>
         <frac32.s.map name="ScrvA" value="0.0"/>
         <frac32.s.map name="ScrvD" value="0.0"/>
         <frac32.s.map name="ScrvR" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_1" x="504" y="616">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_2" x="560" y="616">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/math/bipAmp" uuid="054d3d1f-4bbf-4622-b310-c2f4d89cb965" name="bipAmp_4" x="616" y="616">
      <params>
         <frac32.s.map name="amp" onParent="true" value="9.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/math/bipAmp" uuid="054d3d1f-4bbf-4622-b310-c2f4d89cb965" name="bipAmp_5" x="714" y="616">
      <params>
         <frac32.s.map name="amp" onParent="true" value="-6.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/math/bipAmp" uuid="054d3d1f-4bbf-4622-b310-c2f4d89cb965" name="bipAmp_6" x="812" y="616">
      <params>
         <frac32.s.map name="amp" onParent="true" value="1.0"/>
      </params>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="c27a29b3-feb9-47c9-a283-f49a4028a515" name="guitarDualOsc_1" x="910" y="616">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-27.0"/>
         <int32 name="harm2nd" onParent="true" value="1"/>
         <int32 name="rateM" onParent="true" value="1"/>
         <int32 name="rateD" onParent="true" value="3"/>
         <frac32.u.map name="pwm" onParent="true" value="14.0"/>
         <frac32.u.map name="mod" onParent="true" value="46.5"/>
         <frac32.u.map name="start" onParent="true" value="41.0"/>
         <int32 name="preset1" onParent="true" value="105"/>
         <int32 name="preset2" onParent="true" value="111"/>
         <bool32.tgl name="link" onParent="true" value="1"/>
      </params>
      <attribs>
         <objref attributeName="table" obj="../alloc_1"/>
      </attribs>
      <object id="patch/object" uuid="c27a29b3-feb9-47c9-a283-f49a4028a515">
         <sDescription>this is the module to use with the guitarTable module in a polyphonic synthesizer.
The guitarTable module will create a complex waveform and this module is able to play that waveform. This was needed, otherwise, in a polyphonic setting, each module would create it&apos;s own table, filling up the available memory really quickly.

-features pulsewidth, start-shift (start) and pick-up (mod) modulation, all extern controllable. (though these are all only approximations to the changes made by the &quot;fixed settings&quot;, reshaping the wavetable)</sDescription>
         <author>Remco van der Most</author>
         <license>BSD</license>
         <helpPatch>osc.axh</helpPatch>
         <inlets>
            <frac32.bipolar name="pitch" description="pitch"/>
            <frac32 name="pwm"/>
            <frac32 name="mod"/>
            <frac32 name="start"/>
            <frac32 name="sync"/>
            <int32 name="rateM"/>
            <int32 name="rateD"/>
            <int32 name="preset1"/>
            <int32 name="preset2"/>
            <frac32 name="volEnv"/>
         </inlets>
         <outlets>
            <frac32buffer.bipolar name="wave" description="sine wave"/>
         </outlets>
         <displays/>
         <params>
            <frac32.s.map.pitch name="pitch" noLabel="true"/>
            <int32 name="harm2nd">
               <MinValue i="1"/>
               <MaxValue i="64"/>
            </int32>
            <int32 name="rateM">
               <MinValue i="0"/>
               <MaxValue i="64"/>
            </int32>
            <int32 name="rateD">
               <MinValue i="1"/>
               <MaxValue i="64"/>
            </int32>
            <frac32.u.map name="pwm"/>
            <frac32.u.map name="mod"/>
            <frac32.u.map name="start"/>
            <int32 name="preset1">
               <MinValue i="0"/>
               <MaxValue i="1024"/>
            </int32>
            <int32 name="preset2">
               <MinValue i="0"/>
               <MaxValue i="1024"/>
            </int32>
            <bool32.tgl name="link"/>
         </params>
         <attribs>
            <objref name="table"/>
         </attribs>
         <includes/>
         <code.declaration><![CDATA[uint32_t phase;
int i;
uint32_t LFO;
int32_t rate;
float32_t A;
float32_t B;
uint32_t PM;
uint32_t Pm;
   int32_t prev1;
   int32_t prev2;
   int32_t prev3;
   float32_t prev4;
   float32_t prev5;
   int32_t step1;
   int32_t step2;
   int32_t step3;
   float32_t step4;
   float32_t step5;
   int strig;
   uint32_t count;
   uint32_t timer;
   int32_t wave;
   int32_t Prev;
    int32_t Step;
    int32_t val;
    int32_t Freq;]]></code.declaration>
         <code.init><![CDATA[phase=0;]]></code.init>
         <code.krate><![CDATA[int32_t freq;
MTOFEXTENDED(param_pitch + inlet_pitch,freq)
PM=param_pwm+inlet_pwm;
PM=PM>0?PM:-PM;
PM=PM&((1<<28)-1);
PM=PM>(1<<27)?(2<<27)-PM:PM;
PM=__USAT(PM+1,27)<<4;
A=((float32_t)(1<<31))/((float32_t)(PM<<1));
B=((float32_t)(1<<31))/((float32_t)(((1<<31)-PM)<<1));
PM=PM<<1;
int32_t mod1=param_mod+inlet_mod;
mod1=mod1>0?mod1:-mod1;
mod1=mod1&((1<<28)-1);
mod1=mod1>(1<<27)?(2<<27)-mod1:mod1;
mod1=mod1<<4;
int32_t mod2;
mod2=mod1*3;

int32_t Start=param_start+inlet_start;
Start=Start>0?Start:-Start;
Start=Start&((1<<28)-1);
Start=Start>(1<<27)?(2<<27)-Start:Start;

   step1 = ((((int32_t)(PM))+(1<<31)) - prev1)>>4;
   int32_t i1 = prev1;
   prev1 = ((int32_t)(PM))+(1<<31);

   step2 = (mod1 - prev2)>>4;
   int32_t i2 = prev2;
   prev2 = mod1;

   step3 = (Start - prev3)>>4;
   int32_t i3 = prev3;
   prev3 = Start;

   step4 = (A - prev4)/(float32_t)16;
   float32_t i4 = prev4;
   prev4 = A;

   step5 = (B - prev5)/(float32_t)16;
   float32_t i5 = prev5;
   prev5 = B;

   int rateM=param_rateM+inlet_rateM;
   int rateD=param_rateD+inlet_rateD;
   int preset1=param_preset1+inlet_preset1;


   int preset2=param_preset2+inlet_preset2+preset1*param_link;
   preset2=preset2-(preset2/attr_table.presets)*attr_table.presets;
   preset2=preset2<0?preset2+attr_table.presets:preset2;
   preset2=preset2*attr_table.LENGTH;
   
   preset1=preset1-(preset1/attr_table.presets)*attr_table.presets;
   preset1=preset1<0?preset1+attr_table.presets:preset1;
   preset1=preset1*attr_table.LENGTH;

   Step = (inlet_volEnv - Prev)>>4;
   int32_t I = Prev;
   Prev = inlet_volEnv;]]></code.krate>
         <code.srate><![CDATA[if((inlet_sync>0)&&!strig){
	timer=((1<<31)/count)<<1;
	count=0;
	strig=1;
}
else if(inlet_sync<=0){strig=0;}
count+=1;

uint32_t Phase;
phase += freq;
LFO+=timer*rateM/rateD;
uint32_t PHase=phase;
if(phase<(1<<31)){
PHase=___SMMUL(phase,i3<<4)<<2;
}
else{
PHase=(___SMMUL(phase,((1<<27)-i3)<<4)<<2);

}

if(PHase<Pm){
Phase=(1<<31)+((int32_t)(PHase*i4))+i2;}
if(PHase>=Pm){Phase=((uint32_t)((PHase-Pm)*i5-(1<<31)))+i2+(1<<31);}

wave=attr_table.array[((Phase>>32-attr_table.LENGTHPOW)&attr_table.LENGTHMASK)+preset1];
wave+=attr_table.array[((((Phase*param_harm2nd)+LFO)>>32-attr_table.LENGTHPOW)&attr_table.LENGTHMASK)+preset2]/(1+(param_harm2nd-1)/2);
int32_t sine;
SINE2TINTERP(phase,sine)
sine=sine>>4;

MTOF(I-(1<<26)<<1,Freq)

int32_t out=___SMMUL(I<<3,wave-sine<<2)+sine;
val=___SMMLA((out-val)<<1,Freq,val);
outlet_wave =  ___SMMUL(val<<3,I<<2);
   I += Step;




   i1 += step1;
   i2 += step2;
   i3 += step3;
   i4 += step4;
   i5 += step5;

Pm=(uint32_t)(i1)+(1<<31);]]></code.srate>
      </object>
   </patchobj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1036" y="616">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="guitarDualOsc_1" outlet="wave"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="gate"/>
         <dest obj="ADSRcrv2_1" inlet="gate"/>
         <dest obj="latch_1" inlet="trig"/>
      </net>
      <net>
         <source obj="ADSRcrv2_1" outlet="out"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="bipAmp_4" outlet="out"/>
         <dest obj="guitarDualOsc_1" inlet="pwm"/>
      </net>
      <net>
         <source obj="bipAmp_5" outlet="out"/>
         <dest obj="guitarDualOsc_1" inlet="mod"/>
      </net>
      <net>
         <source obj="bipAmp_6" outlet="out"/>
         <dest obj="guitarDualOsc_1" inlet="start"/>
      </net>
      <net>
         <source obj="46Scales_1" outlet="note"/>
         <dest obj="guitarDualOsc_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="velocity"/>
         <dest obj="*_1" inlet="a"/>
         <dest obj="*_2" inlet="b"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="guitarDualOsc_1" inlet="volEnv"/>
      </net>
      <net>
         <source obj="ADSRcrv2_1" outlet="attack"/>
         <dest obj="*_2" inlet="a"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="46Scales_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="scale" outlet="inlet"/>
         <dest obj="46Scales_1" inlet="scale"/>
      </net>
      <net>
         <source obj="key" outlet="inlet"/>
         <dest obj="46Scales_1" inlet="key"/>
      </net>
      <net>
         <source obj="*_2" outlet="result"/>
         <dest obj="bipAmp_4" inlet="in"/>
         <dest obj="bipAmp_5" inlet="in"/>
         <dest obj="bipAmp_6" inlet="in"/>
      </net>
      <net>
         <source obj="preset" outlet="inlet"/>
         <dest obj="latch_1" inlet="i"/>
      </net>
      <net>
         <source obj="latch_1" outlet="o"/>
         <dest obj="guitarDualOsc_1" inlet="preset1"/>
         <dest obj="guitarDualOsc_1" inlet="preset2"/>
      </net>
      <net>
         <source obj="inlet_1" outlet="inlet"/>
         <dest obj="guitarDualOsc_1" inlet="sync"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>polyphonic</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <HasMidiChannelSelector>true</HasMidiChannelSelector>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <License>GPL</License>
      <Saturate>false</Saturate>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-8</x>
      <y>-8</y>
      <width>1296</width>
      <height>1000</height>
   </windowPos>
</patch-1.0>