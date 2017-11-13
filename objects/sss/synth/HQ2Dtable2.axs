<patch-1.0 appVersion="1.0.11">
   <obj type="sss/osc/waveformGenerator" uuid="38134d65-c7f2-4fa0-9e5f-7b1ed8f862b2" name="waveformGenerator_1" x="504" y="0">
      <params>
         <bool32.mom name="save" onParent="true" value="0"/>
         <bool32.mom name="load" onParent="true" value="0"/>
      </params>
      <attribs>
         <combo attributeName="size" selection="4096"/>
         <spinner attributeName="harmonics" value="10"/>
         <spinner attributeName="waveforms" value="64"/>
         <spinner attributeName="minharm" value="4"/>
         <spinner attributeName="maxharm" value="15"/>
         <spinner attributeName="maxLvl" value="64"/>
      </attribs>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="mod1-form" x="1484" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="tempo sync" x="98" y="140">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet i" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="mod2-step" x="1484" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="sync LFOs" x="98" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="MODE1" x="1484" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="MODE2" x="1484" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="midi/in/keyb touch" uuid="edfcb4cfd5b2064e95f5a7ee644bca56252ec11f" name="keyb_1" x="56" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/env/ADSRcrv" uuid="3eed0831-c77a-4251-8abe-5019a165602d" name="VOLUME" x="168" y="350">
      <params>
         <frac32.s.map name="A" onParent="true" value="-64.0"/>
         <frac32.s.map name="crvA" onParent="true" value="32.0"/>
         <frac32.s.map name="D" onParent="true" value="8.0"/>
         <frac32.s.map name="crvD" onParent="true" value="27.0"/>
         <frac32.u.map name="S" onParent="true" value="31.5"/>
         <frac32.s.map name="R" onParent="true" value="-9.0"/>
         <frac32.s.map name="crvR" onParent="true" value="-25.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/lfo/qtsLFO4" uuid="2fe43c1b-c900-4e01-8b43-a677748a2e8f" name="LFOMORPH" x="280" y="350">
      <params>
         <bool32.tgl name="bip1" value="1"/>
         <int32.hradio name="s1" value="2"/>
         <int32 name="m1" onParent="true" value="1"/>
         <int32 name="d1" value="3"/>
         <int32 name="o1" onParent="true" value="-8"/>
         <frac32.s.map name="p1" value="0.0"/>
         <bool32.tgl name="bip2" value="1"/>
         <int32.hradio name="s2" value="2"/>
         <int32 name="m2" onParent="true" value="1"/>
         <int32 name="d2" value="10"/>
         <int32 name="o2" onParent="true" value="-8"/>
         <frac32.s.map name="p2" value="0.0"/>
         <bool32.tgl name="bip3" value="1"/>
         <int32.hradio name="s3" value="2"/>
         <int32 name="m3" onParent="true" value="1"/>
         <int32 name="d3" value="9"/>
         <int32 name="o3" onParent="true" value="-8"/>
         <frac32.s.map name="p3" value="0.0"/>
         <bool32.tgl name="bip4" value="1"/>
         <int32.hradio name="s4" value="2"/>
         <int32 name="m4" onParent="true" value="1"/>
         <int32 name="d4" value="14"/>
         <int32 name="o4" onParent="true" value="-8"/>
         <frac32.s.map name="p4" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/inv" uuid="4236d8dd952427e2aec6e830a48fddfba98dd4ad" name="inv_1" x="378" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/math/divScale" uuid="97ff2f3e-6eae-4065-90c7-0e2abde101ca" name="ENV2MIX1" x="434" y="350">
      <params>
         <frac32.s.map name="amp" onParent="true" value="30.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/math/divScale" uuid="97ff2f3e-6eae-4065-90c7-0e2abde101ca" name="ENV2MIX2" x="532" y="350">
      <params>
         <frac32.s.map name="amp" onParent="true" value="32.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/lfo/2DmorphLFO" uuid="0eb1d311-73aa-49a9-938c-39c46367f9a3" name="MIX1MORPH" x="630" y="350">
      <params>
         <int32 name="M" onParent="true" value="1"/>
         <int32 name="D" value="0"/>
         <int32 name="O" onParent="true" value="-8"/>
         <frac32.s.map name="FMW" value="0.0"/>
         <int32 name="waveform" onParent="true" value="4"/>
         <frac32.u.map name="mix1" value="0.0"/>
         <int32 name="quant1" onParent="true" value="64"/>
         <int32 name="start1" onParent="true" value="15"/>
         <int32 name="step1" onParent="true" value="14"/>
         <frac32.u.map name="mix2" value="0.0"/>
         <int32 name="quant2" onParent="true" value="64"/>
         <int32 name="start2" onParent="true" value="30"/>
         <int32 name="step2" onParent="true" value="13"/>
      </params>
      <attribs>
         <objref attributeName="table" obj="waveformGenerator_1"/>
      </attribs>
   </obj>
   <obj type="sss/lfo/2DmorphLFO" uuid="0eb1d311-73aa-49a9-938c-39c46367f9a3" name="MIX2MORPH" x="756" y="350">
      <params>
         <int32 name="M" onParent="true" value="1"/>
         <int32 name="D" value="0"/>
         <int32 name="O" onParent="true" value="-9"/>
         <frac32.s.map name="FMW" value="0.0"/>
         <int32 name="waveform" onParent="true" value="9"/>
         <frac32.u.map name="mix1" value="0.0"/>
         <int32 name="quant1" onParent="true" value="64"/>
         <int32 name="start1" onParent="true" value="21"/>
         <int32 name="step1" onParent="true" value="4"/>
         <frac32.u.map name="mix2" value="0.0"/>
         <int32 name="quant2" onParent="true" value="64"/>
         <int32 name="start2" onParent="true" value="39"/>
         <int32 name="step2" onParent="true" value="33"/>
      </params>
      <attribs>
         <objref attributeName="table" obj="waveformGenerator_1"/>
      </attribs>
   </obj>
   <obj type="sss/lfo/2DmorphLFO" uuid="0eb1d311-73aa-49a9-938c-39c46367f9a3" name="2DmorphLFO_1" x="882" y="350">
      <params>
         <int32 name="M" onParent="true" value="1"/>
         <int32 name="D" value="0"/>
         <int32 name="O" onParent="true" value="-5"/>
         <frac32.s.map name="FMW" value="0.0"/>
         <int32 name="waveform" onParent="true" value="9"/>
         <frac32.u.map name="mix1" value="0.0"/>
         <int32 name="quant1" onParent="true" value="64"/>
         <int32 name="start1" onParent="true" value="21"/>
         <int32 name="step1" onParent="true" value="4"/>
         <frac32.u.map name="mix2" onParent="true" value="0.0"/>
         <int32 name="quant2" onParent="true" value="64"/>
         <int32 name="start2" onParent="true" value="37"/>
         <int32 name="step2" value="33"/>
      </params>
      <attribs>
         <objref attributeName="table" obj="waveformGenerator_1"/>
      </attribs>
   </obj>
   <obj type="sss/math/bipAmp" uuid="054d3d1f-4bbf-4622-b310-c2f4d89cb965" name="LFO2LFORATE" x="1050" y="350">
      <params>
         <frac32.s.map name="amp" onParent="true" value="16.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="1162" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_2" x="1232" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/phasor" uuid="e5553f226015bf75f4fdc3faa39be1bee4f84044" name="SYNC OSC" x="1302" y="350">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="af48687c-f439-438e-bef0-3fb24c2a8b6d" name="MOD2PITCH" x="1400" y="350">
      <params>
         <frac32.s.map name="amp" onParent="true" value="9.0"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="af48687c-f439-438e-bef0-3fb24c2a8b6d">
         <sDescription>Multiply (attenuate) with a constant value</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>math.axh</helpPatch>
         <inlets>
            <frac32 name="in" description="input"/>
            <frac32 name="add2"/>
         </inlets>
         <outlets>
            <frac32 name="out" description="output"/>
         </outlets>
         <displays/>
         <params>
            <frac32.s.map name="amp" noLabel="true"/>
         </params>
         <attribs/>
         <includes/>
         <code.krate><![CDATA[outlet_out= ___SMMUL(param_amp<<3,inlet_in<<2)+inlet_add2;]]></code.krate>
      </object>
   </patchobj>
   <patchobj type="patch/object" uuid="6fca39aa-ae00-42f6-b940-e1d723fc2744" name="TABLE OSC" x="1484" y="350">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-24.499999523162842"/>
         <frac32.s.map name="FMW" onParent="true" value="-18.0"/>
         <int32 name="waveform" onParent="true" value="34"/>
         <frac32.s.map name="sinemix" onParent="true" value="0.0"/>
         <frac32.u.map name="mix1" onParent="true" value="22.5"/>
         <int32 name="quant1" onParent="true" value="4"/>
         <int32 name="start1" onParent="true" value="18"/>
         <int32 name="step1" onParent="true" value="23"/>
         <frac32.u.map name="mix2" onParent="true" value="7.5"/>
         <int32 name="quant2" onParent="true" value="4"/>
         <int32 name="start2" onParent="true" value="17"/>
         <int32 name="step2" onParent="true" value="7"/>
         <bool32.tgl name="AM" onParent="true" value="1"/>
         <int32.hradio name="mode" onParent="true" value="2"/>
         <int32 name="wave" onParent="true" value="3"/>
         <bool32.tgl name="sync" onParent="true" value="1"/>
         <frac32.s.map name="LFO" onParent="true" value="-19.0"/>
      </params>
      <attribs>
         <objref attributeName="table" obj="waveformGenerator_1"/>
      </attribs>
      <object id="patch/object" uuid="6fca39aa-ae00-42f6-b940-e1d723fc2744">
         <sDescription>2D wavetable morph oscillator.
This oscillator uses the waveformGenerator module for generating it&apos;s waveforms.
With the mix-inputs/knobs, you morph through the different waveforms.
-quant sets the amount of waveforms that will be morphed through when mix goes from minimum to maximum.
-start sets the start-position in the table when mix is at zero
-step sets the step-size through the table, skipping in-between waveforms (wrapping back to 0 when above maximum available waveforms)

For easy use, use my qtsLFO4 for controlling the mix. Connect the divide-output to the D-input (divide) of the qtsLFO4.
When using saw/ramp, set it to bipolar, as the input is wrapped up/back down again when the input is below 0 or above 64 (turning it into a triangle-shape)</sDescription>
         <author>Remco van der Most</author>
         <license>BSD</license>
         <helpPatch>table.axh</helpPatch>
         <inlets>
            <frac32 name="pitch"/>
            <frac32 name="LFO"/>
            <frac32 name="mix1"/>
            <frac32 name="mix2"/>
            <int32 name="waveform"/>
            <int32 name="step"/>
            <frac32 name="sinemix"/>
            <frac32buffer name="sync"/>
         </inlets>
         <outlets>
            <frac32buffer name="out"/>
            <int32 name="divide1"/>
            <int32 name="divide2"/>
         </outlets>
         <displays/>
         <params>
            <frac32.s.map.pitch name="pitch"/>
            <frac32.s.map name="FMW"/>
            <int32 name="waveform">
               <MinValue i="0"/>
               <MaxValue i="2048"/>
            </int32>
            <frac32.s.map name="sinemix"/>
            <frac32.u.map name="mix1"/>
            <int32 name="quant1">
               <MinValue i="1"/>
               <MaxValue i="64"/>
            </int32>
            <int32 name="start1">
               <MinValue i="0"/>
               <MaxValue i="64"/>
            </int32>
            <int32 name="step1">
               <MinValue i="1"/>
               <MaxValue i="64"/>
            </int32>
            <frac32.u.map name="mix2"/>
            <int32 name="quant2">
               <MinValue i="1"/>
               <MaxValue i="64"/>
            </int32>
            <int32 name="start2">
               <MinValue i="0"/>
               <MaxValue i="64"/>
            </int32>
            <int32 name="step2">
               <MinValue i="1"/>
               <MaxValue i="64"/>
            </int32>
            <bool32.tgl name="AM"/>
            <int32.hradio name="mode">
               <MaxValue i="4"/>
            </int32.hradio>
            <int32 name="wave">
               <MinValue i="0"/>
               <MaxValue i="64"/>
            </int32>
            <bool32.tgl name="sync"/>
            <frac32.s.map name="LFO"/>
         </params>
         <attribs>
            <objref name="table"/>
         </attribs>
         <includes/>
         <code.declaration><![CDATA[int32_t i;
int strig;

uint32_t phase;
uint32_t phise;
int trig;

int32_t MIX1a;
int32_t MIX1b;
int32_t MIX2a;
int32_t MIX2b;
int32_t smooth1;
int32_t smooth2;
uint32_t W[4];
uint32_t w[4];
int32_t F;
int32_t mix[2];
int32_t MX(int32_t T){
	T=T>0?T:-T;
	T=T&((1<<28)-1);
	F=T>(1<<27)?(1<<28)-T:T;
}

int32_t tablemix(int32_t inst,int32_t WaveA,int32_t WaveB,int32_t Mix){
	mix[inst]=___SMMUL(((1<<27)-Mix)<<3,WaveA<<2)+___SMMUL(Mix<<3,WaveB<<2);
}
int32_t M1step;
int32_t M1prv;
int32_t M2step;
int32_t M2prv;
int32_t val;
int32_t prev;
int32_t temp;

uint32_t Phase;]]></code.declaration>
         <code.init><![CDATA[prev=0;]]></code.init>
         <code.krate><![CDATA[int32_t freq;
MTOFEXTENDED(param_pitch+inlet_pitch,freq)
int32_t LFO;
MTOFEXTENDED(param_LFO+inlet_LFO,LFO)
LFO=LFO>>8;
int32_t FMW=___SMMUL((freq-LFO)<<5,param_FMW<<3);
int32_t MiX1=param_mix1+inlet_mix1;
MX(MiX1);
MiX1=F;
int32_t MiX2=param_mix2+inlet_mix2;
MX(MiX2);
MiX2=F;
smooth1+=(MiX1-smooth1)>>4;
MiX1=smooth1;
smooth2+=(MiX2-smooth2)>>4;
MiX2=smooth2;
M1step=(MiX1-M1prv)>>4;
int32_t MIX1b=M1prv;
M1prv=MiX1;
M2step=(MiX2-M2prv)>>4;
int32_t MIX2b=M2prv;
M2prv=MiX2;


outlet_divide1=param_quant1;
outlet_divide2=param_quant2;
int32_t step1=inlet_step+param_step1;
int32_t step2=inlet_step+param_step2;

int32_t SiNe=__USAT(inlet_sinemix+param_sinemix,27);
int32_t step=SiNe-prev>>4;
int32_t SINE=prev;
prev=SiNe;

float32_t ratio=(float32_t)(attr_table.maxLvl)/64;
int32_t Wave=param_wave;
Wave=Wave-(Wave/attr_table.Waveforms)*attr_table.Waveforms;
int32_t waveForm=param_waveform+inlet_waveform;]]></code.krate>
         <code.srate><![CDATA[Phase+=LFO;

SINE+=step;
if(param_sync>0){
if((inlet_sync<(1<<26))&&!strig){
	strig=1;
	phise=0;
}
else if(inlet_sync>(1<<26)){strig=0;}}
MIX1b+=M1step;
MIX1a=MIX1b;
MIX2b+=M2step;
MIX2a=MIX2b;

W[0]=((MIX1a>>4)*param_quant1)>>23;
MIX1a=(MIX1a-(W[0]<<27)/param_quant1)*param_quant1;
//W[0]+=param_start1;
W[0]=W[0]*step1+param_start1+waveForm;
W[1]=W[0]+step1;

W[2]=((MIX2a>>4)*param_quant2)>>23;
MIX2a=(MIX2a-(W[2]<<27)/param_quant2)*param_quant2;
//W[2]+=param_start2;
W[2]=W[2]*step2+param_start2+waveForm;
W[3]=W[2]+step2;

for(i=0;i<4;i++){
W[i]=(W[i]-(W[i]/attr_table.Waveforms)*attr_table.Waveforms);
W[i]=W[i]<0?W[i]+attr_table.Waveforms:W[i];
}

w[0]=W[0]+W[2];
w[1]=W[1]+W[2];
w[2]=W[0]+W[3];
w[3]=W[1]+W[3];

for(i=0;i<4;i++){
w[i]=(w[i]-(w[i]/attr_table.Waveforms)*attr_table.Waveforms);
w[i]=w[i]<0?w[i]+attr_table.Waveforms:w[i];
w[i]=w[i]*attr_table.LENGTH;
}



phise+=freq+___SMMUL(FMW<<3,temp<<2);
phase=Phase+phise;
uint32_t p1=(phase>>32-attr_table.LENGTHPOW);
uint32_t Mit=((phase<<attr_table.LENGTHPOW)>>2)&0x3FFFFFFF;
int32_t out1;
int32_t out2;
int32_t out3;
int32_t out4;
out1=___SMMUL(attr_table.array[p1+w[0]]<<2,(1<<30)-Mit);
out1+=___SMMUL(attr_table.array[((p1+1)&attr_table.LENGTHMASK)+w[0]]<<2,Mit);
out2=___SMMUL(attr_table.array[p1+w[1]]<<2,(1<<30)-Mit);
out2+=___SMMUL(attr_table.array[((p1+1)&attr_table.LENGTHMASK)+w[1]]<<2,Mit);
out3=___SMMUL(attr_table.array[p1+w[2]]<<2,(1<<30)-Mit);
out3+=___SMMUL(attr_table.array[((p1+1)&attr_table.LENGTHMASK)+w[2]]<<2,Mit);
out4=___SMMUL(attr_table.array[p1+w[3]]<<2,(1<<30)-Mit);
out4+=___SMMUL(attr_table.array[((p1+1)&attr_table.LENGTHMASK)+w[3]]<<2,Mit);


tablemix(0,out1,out2,MIX1a);
tablemix(1,out3,out4,MIX1a);
tablemix(0,mix[0],mix[1],MIX2a);
int32_t sine;
SINE2TINTERP(phase,sine)
mix[0]=___SMMUL(mix[0]<<3,SINE<<2)+___SMMUL(sine*ratio,(1<<27)-SINE);


temp=mix[0];
if(param_AM>0){
int32_t r;
if(param_mode==0){
HANNING2TINTERP(inlet_sync<<5,r)}
if(param_mode==1){
SINE2TINTERP(inlet_sync<<4,r)
}
if(param_mode==2){
SINE2TINTERP(inlet_sync<<5,r)}
if(param_mode==3){
r=attr_table.array[((inlet_sync>>27-attr_table.LENGTHPOW)&attr_table.LENGTHMASK)+(Wave*attr_table.LENGTH)]<<4;}
temp=___SMMUL(temp<<1,r);
}
val+=(temp-val)>>9;
temp=temp-val;
outlet_out=temp;]]></code.srate>
      </object>
   </patchobj>
   <obj type="sss/math/bipAmp" uuid="054d3d1f-4bbf-4622-b310-c2f4d89cb965" name="ENV2CUTOFF" x="1624" y="350">
      <params>
         <frac32.s.map name="amp" onParent="true" value="27.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/math/bipAmp" uuid="054d3d1f-4bbf-4622-b310-c2f4d89cb965" name="LFO2CUT2" x="1722" y="350">
      <params>
         <frac32.s.map name="amp" onParent="true" value="19.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/math/bipAmp" uuid="054d3d1f-4bbf-4622-b310-c2f4d89cb965" name="MOD1-CUTOFF" x="1820" y="350">
      <params>
         <frac32.s.map name="amp" onParent="true" value="14.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_3" x="1918" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_4" x="1988" y="350">
      <params/>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="a89fdeb9-836d-44ae-a283-1a0336cba54a" name="MOD-MODE1" x="2058" y="350">
      <params>
         <frac32.u.map name="amp" onParent="true" value="37.5"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="a89fdeb9-836d-44ae-a283-1a0336cba54a">
         <sDescription>amplify up to 16 times (saturated)</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>math.axh</helpPatch>
         <inlets>
            <frac32 name="in" description="input"/>
         </inlets>
         <outlets>
            <frac32 name="out" description="output"/>
         </outlets>
         <displays/>
         <params>
            <frac32.u.map.gain16 name="amp" noLabel="true"/>
         </params>
         <attribs/>
         <includes/>
         <code.krate><![CDATA[outlet_out= ___SMMUL(param_amp,inlet_in<<4)<<1;]]></code.krate>
      </object>
   </patchobj>
   <patchobj type="patch/object" uuid="a89fdeb9-836d-44ae-a283-1a0336cba54a" name="MOD-MODE2" x="2156" y="350">
      <params>
         <frac32.u.map name="amp" onParent="true" value="16.5"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="a89fdeb9-836d-44ae-a283-1a0336cba54a">
         <sDescription>amplify up to 16 times (saturated)</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>math.axh</helpPatch>
         <inlets>
            <frac32 name="in" description="input"/>
         </inlets>
         <outlets>
            <frac32 name="out" description="output"/>
         </outlets>
         <displays/>
         <params>
            <frac32.u.map.gain16 name="amp" noLabel="true"/>
         </params>
         <attribs/>
         <includes/>
         <code.krate><![CDATA[outlet_out= ___SMMUL(param_amp,inlet_in<<4)<<1;]]></code.krate>
      </object>
   </patchobj>
   <patchobj type="patch/object" uuid="06342a4c-c0c2-4649-8f06-7e1c5bfc97b1" name="DUALSVF" x="2254" y="350">
      <params>
         <frac32.s.map name="pitch1" onParent="true" value="-9.0"/>
         <frac32.s.map name="pitch2" onParent="true" value="7.0"/>
         <frac32.u.map name="reso1" onParent="true" value="21.0"/>
         <frac32.u.map name="reso2" onParent="true" value="23.5"/>
         <frac32.u.map name="mode1" onParent="true" value="46.0"/>
         <frac32.u.map name="mode2" onParent="true" value="15.0"/>
         <frac32.u.map name="SerPar" onParent="true" value="40.0"/>
         <frac32.u.map name="drive1" onParent="true" value="2.5"/>
         <frac32.u.map name="drive2" onParent="true" value="3.0"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="06342a4c-c0c2-4649-8f06-7e1c5bfc97b1">
         <sDescription>Dual Mode-morphing state-variable-filter.
-Using a saw-wave LFO as input for the ModeX(1/2/A) creates a quadrature reading through:
LP-&gt;BP-&gt;HP-&gt;Notch-&gt;LP
ModeX1 and ModeX2 will control the modes of filters 1 and 2 respectively.
ModeXA controls both modes at the same time.
-depending in which input you send your audio, it will respond differently:
	-in1-&gt;normal response
	-in2-&gt;inversed filter response at filter 1, normal for filter 2
	-in3-&gt;only send to filter 2 as inverse filter response
-modeY1 controls the offset from the center, this control has an inversed response, meaning, a high input will force the mix to a centered mix of all filter modes. When above 64, it will inverse the filter responses, turning LP to HP, HP to LP, BP to Notch and Notch to BP.
-SerialSel controls the amount of each audio input to be send to filter2 input when serial mode is mixed in.
-SerPar mixes between serial and parallel mode for filter 1 and 2.
-drive controls the drive over the resonance (BP filter part that influences the other filters)</sDescription>
         <author>Remco van der Most</author>
         <license>BSD</license>
         <helpPatch>filter.axh</helpPatch>
         <inlets>
            <frac32buffer name="in1" description="filter input"/>
            <frac32 name="pitch1"/>
            <frac32 name="pitch2"/>
            <frac32 name="reso1"/>
            <frac32 name="reso2"/>
            <frac32 name="modeXA"/>
            <frac32 name="modeX1"/>
            <frac32 name="modeX2"/>
            <frac32 name="modeY1"/>
            <frac32 name="modeY2"/>
            <frac32 name="SerPar"/>
         </inlets>
         <outlets>
            <frac32buffer name="out" description="filter output"/>
         </outlets>
         <displays/>
         <params>
            <frac32.s.map.pitch name="pitch1"/>
            <frac32.s.map.pitch name="pitch2"/>
            <frac32.u.map.filterq name="reso1"/>
            <frac32.u.map.filterq name="reso2"/>
            <frac32.u.map name="mode1"/>
            <frac32.u.map name="mode2"/>
            <frac32.u.map name="SerPar"/>
            <frac32.u.map name="drive1"/>
            <frac32.u.map name="drive2"/>
         </params>
         <attribs/>
         <includes/>
         <code.declaration><![CDATA[int32_t low[2];
int32_t band[2];
int32_t OUT[2];
int32_t ModeA[2];
int32_t ModeB[2];
int32_t freq[2];
int32_t Damp[2];
int i;
int32_t config(int32_t pitch,int32_t reso,int32_t ModeX,int32_t ModeY,int Inst){
int32_t damp = (0x80<<24) - (reso<<4);
damp = ___SMMUL(damp,damp);
Damp[Inst]=damp;
int32_t alpha;
MTOFEXTENDED(pitch,alpha);
SINE2TINTERP(alpha,freq[Inst]);
int32_t modeA=(ModeX)<<2;
modeA=modeA&((1<<29)-1);
modeA=modeA>(1<<28)?(1<<29)-modeA:modeA;
modeA=__USAT(modeA-(1<<26),27);
int32_t modeB=(ModeX+(1<<25))<<2;
modeB=modeB&((1<<29)-1);
modeB=modeB>(1<<28)?(1<<29)-modeB:modeB;
modeB=__USAT(modeB-(1<<26),27);

int32_t modeY=ModeY;
modeY=modeY<0?-modeY:modeY;
int dir=modeY>(1<<27)?-1:1;
modeY=modeY>(1<<27)?(1<<28)-modeY:modeY;
int32_t modeX=((1<<27)-modeY)*dir;

ModeA[Inst]=___SMMUL(modeX<<3,modeA<<2)+___SMMUL(modeY<<3,(1<<28));
ModeB[Inst]=___SMMUL(modeX<<3,modeB<<2)+___SMMUL(modeY<<3,(1<<28));	
}


int32_t SVF(int32_t in1,int32_t Freq,int32_t damp,int32_t modeA,int32_t modeB,int32_t drive,int32_t Inst){
int32_t temp=__SSAT(___SMMUL(band[Inst]<<2,drive<<2),28);
band[Inst]=__SSAT(band[Inst]-(___SMMUL(___SMMUL(temp<<3,temp<<2)<<3,temp<<2)<<2),28);
band[Inst]+=___SMMUL(band[Inst]<<1,drive<<1);
int32_t notch = in1 - __SSAT((___SMMUL(damp,band[Inst])<<1),27);
low[Inst] = low[Inst] + __SSAT((___SMMUL(Freq,band[Inst])<<1),27);
int32_t high  = notch - low[Inst];

band[Inst] = (___SMMUL(Freq,high)<<1) + __SSAT(band[Inst],27);
int32_t out1;
out1=___SMMUL(modeA<<3,___SMMUL(modeB<<3,low[Inst]<<2)<<2);
out1+=___SMMUL((1<<27)-modeA<<3,___SMMUL(modeB<<3,band[Inst]<<2)<<2);
out1+=___SMMUL(modeA<<3,___SMMUL((1<<27)-modeB<<3,high<<2)<<2);
out1+=___SMMUL((1<<27)-modeA<<3,___SMMUL((1<<27)-modeB<<3,notch<<2)<<2);
OUT[Inst]=out1;}]]></code.declaration>
         <code.init><![CDATA[for(i=0;i<2;i++){
low[i] = 0;
band[i] = 0;}]]></code.init>
         <code.krate><![CDATA[int32_t PITCH=inlet_pitch1+param_pitch1;
config(PITCH,__USAT(param_reso1+inlet_reso1,27),param_mode1+inlet_modeX1+(1<<25)+inlet_modeXA,inlet_modeY1,0);
config(inlet_pitch2+param_pitch2+PITCH,__USAT(param_reso2+inlet_reso2,27),param_mode2+inlet_modeX2+(1<<25)+inlet_modeXA,inlet_modeY2,1);

int32_t SerPar2=(param_SerPar+inlet_SerPar)&((1<<28)-1);
SerPar2=SerPar2>(1<<27)?(1<<28)-SerPar2:SerPar2;]]></code.krate>
         <code.srate><![CDATA[int32_t IN1=inlet_in1;

SVF(IN1,freq[0],Damp[0],ModeA[0],ModeB[0],param_drive1>>4,0);
int32_t mix1=IN1;
mix1=___SMMUL(SerPar2<<3,mix1<<2)+___SMMUL((1<<27)-SerPar2<<3,OUT[0]<<2);
SVF(mix1,freq[1],Damp[1],ModeA[1],ModeB[1],param_drive2>>4,1);
outlet_out=(OUT[1]>>1)+___SMMUL(SerPar2<<3,OUT[0]<<1)+___SMMUL((1<<27)-SerPar2<<3,OUT[1]<<1);]]></code.srate>
      </object>
   </patchobj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="2352" y="350">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="2408" y="350">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="SYNC OSC" outlet="phasor"/>
         <dest obj="TABLE OSC" inlet="sync"/>
      </net>
      <net>
         <source obj="TABLE OSC" outlet="divide1"/>
         <dest obj="MIX1MORPH" inlet="D"/>
         <dest obj="ENV2MIX1" inlet="D"/>
         <dest obj="inv_1" inlet="in"/>
      </net>
      <net>
         <source obj="tempo sync" outlet="inlet"/>
         <dest obj="LFOMORPH" inlet="HS"/>
         <dest obj="MIX1MORPH" inlet="Tsync"/>
         <dest obj="MIX2MORPH" inlet="Tsync"/>
         <dest obj="2DmorphLFO_1" inlet="Tsync"/>
      </net>
      <net>
         <source obj="MIX2MORPH" outlet="out"/>
         <dest obj="+_2" inlet="in2"/>
      </net>
      <net>
         <source obj="TABLE OSC" outlet="divide2"/>
         <dest obj="MIX2MORPH" inlet="D"/>
         <dest obj="ENV2MIX2" inlet="D"/>
      </net>
      <net>
         <source obj="inv_1" outlet="out"/>
         <dest obj="MIX2MORPH" inlet="O"/>
      </net>
      <net>
         <source obj="LFOMORPH" outlet="w2"/>
         <dest obj="MIX1MORPH" inlet="mix2"/>
      </net>
      <net>
         <source obj="LFOMORPH" outlet="w3"/>
         <dest obj="MIX2MORPH" inlet="mix1"/>
      </net>
      <net>
         <source obj="LFOMORPH" outlet="w4"/>
         <dest obj="MIX2MORPH" inlet="mix2"/>
         <dest obj="2DmorphLFO_1" inlet="mix1"/>
      </net>
      <net>
         <source obj="MIX1MORPH" outlet="divide1"/>
         <dest obj="LFOMORPH" inlet="d1"/>
      </net>
      <net>
         <source obj="MIX1MORPH" outlet="divide2"/>
         <dest obj="LFOMORPH" inlet="d2"/>
      </net>
      <net>
         <source obj="MIX2MORPH" outlet="divide1"/>
         <dest obj="LFOMORPH" inlet="d3"/>
      </net>
      <net>
         <source obj="MIX2MORPH" outlet="divide2"/>
         <dest obj="LFOMORPH" inlet="d4"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="SYNC OSC" inlet="pitch"/>
         <dest obj="MOD2PITCH" inlet="add2"/>
         <dest obj="+_3" inlet="in2"/>
      </net>
      <net>
         <source obj="VOLUME" outlet="out"/>
         <dest obj="vca_1" inlet="v"/>
         <dest obj="ENV2CUTOFF" inlet="in"/>
         <dest obj="ENV2MIX1" inlet="in"/>
         <dest obj="TABLE OSC" inlet="sinemix"/>
         <dest obj="ENV2MIX2" inlet="in"/>
      </net>
      <net>
         <source obj="ENV2CUTOFF" outlet="out"/>
         <dest obj="+_3" inlet="in1"/>
      </net>
      <net>
         <source obj="LFO2CUT2" outlet="out"/>
         <dest obj="DUALSVF" inlet="pitch2"/>
      </net>
      <net>
         <source obj="TABLE OSC" outlet="out"/>
         <dest obj="DUALSVF" inlet="in1"/>
      </net>
      <net>
         <source obj="ENV2MIX1" outlet="out"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="MIX1MORPH" outlet="out"/>
         <dest obj="LFO2CUT2" inlet="in"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="TABLE OSC" inlet="mix1"/>
      </net>
      <net>
         <source obj="ENV2MIX2" outlet="out"/>
         <dest obj="+_2" inlet="in1"/>
      </net>
      <net>
         <source obj="+_2" outlet="out"/>
         <dest obj="TABLE OSC" inlet="mix2"/>
      </net>
      <net>
         <source obj="mod2-step" outlet="inlet"/>
         <dest obj="TABLE OSC" inlet="step"/>
      </net>
      <net>
         <source obj="+_3" outlet="out"/>
         <dest obj="+_4" inlet="in2"/>
      </net>
      <net>
         <source obj="mod1-form" outlet="inlet"/>
         <dest obj="MOD1-CUTOFF" inlet="in"/>
         <dest obj="TABLE OSC" inlet="waveform"/>
      </net>
      <net>
         <source obj="MOD1-CUTOFF" outlet="out"/>
         <dest obj="+_4" inlet="in1"/>
      </net>
      <net>
         <source obj="+_4" outlet="out"/>
         <dest obj="DUALSVF" inlet="pitch1"/>
      </net>
      <net>
         <source obj="MOD-MODE1" outlet="out"/>
         <dest obj="DUALSVF" inlet="modeXA"/>
      </net>
      <net>
         <source obj="MOD-MODE2" outlet="out"/>
         <dest obj="DUALSVF" inlet="modeX2"/>
      </net>
      <net>
         <source obj="MOD2PITCH" outlet="out"/>
         <dest obj="TABLE OSC" inlet="pitch"/>
      </net>
      <net>
         <source obj="2DmorphLFO_1" outlet="out"/>
         <dest obj="MOD2PITCH" inlet="in"/>
         <dest obj="LFO2LFORATE" inlet="in"/>
      </net>
      <net>
         <source obj="LFOMORPH" outlet="w1"/>
         <dest obj="MIX1MORPH" inlet="mix1"/>
         <dest obj="2DmorphLFO_1" inlet="mix2"/>
      </net>
      <net>
         <source obj="LFO2LFORATE" outlet="out"/>
         <dest obj="TABLE OSC" inlet="LFO"/>
      </net>
      <net>
         <source obj="sync LFOs" outlet="inlet"/>
         <dest obj="LFOMORPH" inlet="r"/>
         <dest obj="MIX1MORPH" inlet="reset"/>
         <dest obj="MIX2MORPH" inlet="reset"/>
         <dest obj="2DmorphLFO_1" inlet="reset"/>
      </net>
      <net>
         <source obj="DUALSVF" outlet="out"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="gate"/>
         <dest obj="VOLUME" inlet="gate"/>
      </net>
      <net>
         <source obj="MODE1" outlet="inlet"/>
         <dest obj="MOD-MODE1" inlet="in"/>
      </net>
      <net>
         <source obj="MODE2" outlet="inlet"/>
         <dest obj="MOD-MODE2" inlet="in"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="outlet_1" inlet="outlet"/>
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
      <Author></Author>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-8</x>
      <y>-8</y>
      <width>1296</width>
      <height>1000</height>
   </windowPos>
</patch-1.0>