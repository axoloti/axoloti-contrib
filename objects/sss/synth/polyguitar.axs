<patch-1.0 appVersion="1.0.10">
   <patchobj type="patch/object" uuid="7749b97f-e8f4-4d45-be81-b39e5a643b15" name="guitar" x="280" y="42">
      <params>
         <int32 name="damp" onParent="true" value="4"/>
         <int32 name="harmonics" onParent="true" value="35"/>
         <int32 name="jump" onParent="true" value="1"/>
         <int32 name="max" onParent="true" value="52"/>
         <frac32.u.map name="position" onParent="true" value="44.0"/>
         <frac32.u.map name="strike" onParent="true" value="53.5"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="7749b97f-e8f4-4d45-be81-b39e5a643b15">
         <sDescription>&quot;guitarOsc&quot;
-features pulsewidth, start-shift (start) and pick-up (mod) modulation, all extern controllable. (though these are all only approximations, reshaping the wavetable)

below the continuous controls, we got &quot;fixed&quot; controls, even though you could change them live, this will create a bleep as it has to recalculate the waveform.
-damp: dampening-factor for each next added harmonic corresponding to harmonic number.
-harmonics: how many harmonics will be generated for the wavetable (low numbers reduce recalculation time!)
-jump: &quot;jump&quot; size for next added harmonic, skipping harmonics in-between
-max: sets maximum harmonic number that can be added, wraps when above the max.
-position: sets the read-out position of the guitar-element
-strike: sets the position where the string is struck</sDescription>
         <author>Remco van der Most</author>
         <license>BSD</license>
         <helpPatch>osc.axh</helpPatch>
         <inlets/>
         <outlets/>
         <displays/>
         <params>
            <int32 name="damp">
               <MinValue i="1"/>
               <MaxValue i="16"/>
            </int32>
            <int32 name="harmonics">
               <MinValue i="1"/>
               <MaxValue i="256"/>
            </int32>
            <int32 name="jump">
               <MinValue i="1"/>
               <MaxValue i="256"/>
            </int32>
            <int32 name="max">
               <MinValue i="1"/>
               <MaxValue i="256"/>
            </int32>
            <frac32.u.map name="position"/>
            <frac32.u.map name="strike"/>
         </params>
         <attribs/>
         <includes/>
         <code.declaration><![CDATA[static const uint32_t LENGTHPOW = 11;
static const uint32_t LENGTH = 2048;
static const uint32_t LENGTHMASK = 2047;
static const uint32_t BITS = 32;
static const uint32_t GAIN = 0;
int32_t *array;


uint32_t phase;
int i;
int j;
int32_t sum;
int32_t r;
int32_t posWidth;
int32_t position;
int32_t prev;
int ctrig;
int create;
int32_t Pos;
int k;
int32_t start;
float32_t A;
float32_t B;
uint32_t PM;]]></code.declaration>
         <code.init><![CDATA[static int32_t _array[LENGTH] __attribute__ ((section (".sdram")));
array = &_array[0];

{ 

}

	phase=0;

for(i;i<2048;i++){array[i]=0;}]]></code.init>
         <code.krate><![CDATA[int32_t update=param_position+param_strike+param_damp+param_harmonics+param_jump+param_max;


if((!(prev==(update)))&&!create)
	{create=1;
	Pos=param_position;
	start=param_strike;
	for(i=0;i<2048;i++){array[i]=0;}
	for(j=0;j<param_harmonics;j++){
		k=(j*param_jump-(j*param_jump/param_max)*param_max);
		position=((j+1)*Pos<<4);
		SINE2TINTERP(position,posWidth)
		for(i=0;i<2048;i++){
			SINE2TINTERP((i<<21)*(k+1)-(start<<3)*(k+1),r)
			array[i]+=___SMMUL(r>>3,posWidth>>3)/(1+k*param_damp);
			}
		}
	}
else if(prev==(update)){create=0;}

prev=update;







]]></code.krate>
      </object>
   </patchobj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="PWM" x="420" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="MOD" x="420" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="START" x="420" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="midi/in/keyb mod" uuid="abcd509d15e7d13d5381203fd2b4d0ac6fe57bb3" name="keyb_1" x="490" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/env/ADSRcrv" uuid="3eed0831-c77a-4251-8abe-5019a165602d" name="ADSRcrv_1" x="588" y="294">
      <params>
         <frac32.s.map name="A" onParent="true" value="-64.0"/>
         <frac32.s.map name="crvA" onParent="true" value="19.0"/>
         <frac32.s.map name="D" onParent="true" value="-9.0"/>
         <frac32.s.map name="crvD" onParent="true" value="-24.0"/>
         <frac32.u.map name="S" onParent="true" value="30.0"/>
         <frac32.s.map name="R" onParent="true" value="21.0"/>
         <frac32.s.map name="crvR" onParent="true" value="-25.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_1" x="700" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="rand/uniform f trig" uuid="223873125a332e3b8a82795a3eef167993adb086" name="uniform_1" x="756" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="mix/mix 1" uuid="26fb1fe4ed25d8bc2ac4a3f91ab6b80ed6d9d4fa" name="mix_1" x="868" y="294">
      <params>
         <frac32.u.map name="gain1" value="0.13999999999999996"/>
      </params>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="ff4cf96f-138d-40c1-b318-c6aad03c0c1c" name="guitarOsc_2" x="952" y="294">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="0.0"/>
         <frac32.u.map name="pwm" onParent="true" value="32.0"/>
         <frac32.u.map name="mod" onParent="true" value="32.0"/>
         <frac32.u.map name="start" onParent="true" value="32.0"/>
      </params>
      <attribs>
         <objref attributeName="table" obj="guitar"/>
      </attribs>
      <object id="patch/object" uuid="ff4cf96f-138d-40c1-b318-c6aad03c0c1c">
         <sDescription>&quot;guitarOsc&quot;
-features pulsewidth, start-shift (start) and pick-up (mod) modulation, all extern controllable. (though these are all only approximations, reshaping the wavetable)

below the continuous controls, we got &quot;fixed&quot; controls, even though you could change them live, this will create a bleep as it has to recalculate the waveform.
-damp: dampening-factor for each next added harmonic corresponding to harmonic number.
-harmonics: how many harmonics will be generated for the wavetable (low numbers reduce recalculation time!)
-jump: &quot;jump&quot; size for next added harmonic, skipping harmonics in-between
-max: sets maximum harmonic number that can be added, wraps when above the max.
-position: sets the read-out position of the guitar-element
-strike: sets the position where the string is struck</sDescription>
         <author>Remco van der Most</author>
         <license>BSD</license>
         <helpPatch>osc.axh</helpPatch>
         <inlets>
            <frac32.bipolar name="pitch" description="pitch"/>
            <frac32 name="pwm"/>
            <frac32 name="mod"/>
            <frac32 name="start"/>
         </inlets>
         <outlets>
            <frac32buffer.bipolar name="wave" description="sine wave"/>
         </outlets>
         <displays/>
         <params>
            <frac32.s.map.pitch name="pitch" noLabel="true"/>
            <frac32.u.map name="pwm"/>
            <frac32.u.map name="mod"/>
            <frac32.u.map name="start"/>
         </params>
         <attribs>
            <objref name="table"/>
         </attribs>
         <includes/>
         <code.declaration><![CDATA[uint32_t phase;
int i;


float32_t A;
float32_t B;
uint32_t PM;]]></code.declaration>
         <code.init><![CDATA[
	phase=0;
]]></code.init>
         <code.krate><![CDATA[

int32_t freq;
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
]]></code.krate>
         <code.srate><![CDATA[

uint32_t Phase;
phase += freq;

uint32_t PHase=phase;
if(phase<(1<<31)){
PHase=___SMMUL(phase,Start<<4)<<2;
}
else{
PHase=(___SMMUL(phase,((1<<27)-Start)<<4)<<2);
}

if(PHase<PM){
Phase=(1<<31)+((int32_t)(PHase*A))+mod1;}
if(PHase>=PM){Phase=((uint32_t)((PHase-PM)*B-(1<<31)))+mod1+(1<<31);}

outlet_wave=attr_table.array[(Phase>>21)&2047];
]]></code.srate>
      </object>
   </patchobj>
   <obj type="sss/gain/expLPG" uuid="cd53740f-3538-46e5-b8f8-a4b6c06a3b6b" name="expLPG_1" x="1078" y="294">
      <params>
         <frac32.s.map name="expVCA" onParent="true" value="0.0"/>
         <frac32.s.map name="expLPG" onParent="true" value="0.0"/>
         <frac32.u.map name="cutoff" onParent="true" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1176" y="294">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="mix_1" inlet="bus_in"/>
      </net>
      <net>
         <source obj="guitarOsc_2" outlet="wave"/>
         <dest obj="expLPG_1" inlet="a"/>
      </net>
      <net>
         <source obj="ADSRcrv_1" outlet="out"/>
         <dest obj="*_1" inlet="a"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="gate2"/>
         <dest obj="ADSRcrv_1" inlet="gate"/>
         <dest obj="uniform_1" inlet="trig"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="velocity"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="expLPG_1" inlet="env"/>
      </net>
      <net>
         <source obj="expLPG_1" outlet="o"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="PWM" outlet="inlet"/>
         <dest obj="guitarOsc_2" inlet="pwm"/>
      </net>
      <net>
         <source obj="MOD" outlet="inlet"/>
         <dest obj="guitarOsc_2" inlet="mod"/>
      </net>
      <net>
         <source obj="START" outlet="inlet"/>
         <dest obj="guitarOsc_2" inlet="start"/>
      </net>
      <net>
         <source obj="uniform_1" outlet="rand"/>
         <dest obj="mix_1" inlet="in1"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="guitarOsc_2" inlet="pitch"/>
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
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-8</x>
      <y>-8</y>
      <width>1696</width>
      <height>1026</height>
   </windowPos>
</patch-1.0>