<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="sync" x="182" y="0">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="toggle_1" x="0" y="84">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="775cd0b7-29a1-49ac-951b-de82b2faa0ba" name="QuNeoMIDI2CV_1" x="70" y="84">
      <params/>
      <attribs/>
      <object id="patch/object" uuid="775cd0b7-29a1-49ac-951b-de82b2faa0ba">
         <sDescription>Monophonic MIDI keyboard note input, gate, velocity and release velocity to use with the QuNeo midicontroller.
The module sorts out the 2 extra X/Y midicontrols that are send with each note and outputs these a 2 extra polyphonic controls next to the pressure output.</sDescription>
         <author>Remco van der Most</author>
         <license>BSD</license>
         <helpPatch>midi_in.axh</helpPatch>
         <inlets/>
         <outlets>
            <frac32.bipolar name="note" description="midi note number (-64..63)"/>
            <bool32 name="gate" description="key pressed, no retrigger legato"/>
            <bool32 name="gate2" description="key pressed, retrigger on legato"/>
            <frac32.positive name="velocity" description="note-on velocity"/>
            <frac32.positive name="releaseVelocity" description="note-off velocity"/>
            <frac32 name="pressure"/>
            <frac32 name="CV1"/>
            <frac32 name="CV2"/>
            <int32 name="polyindex"/>
         </outlets>
         <displays/>
         <params/>
         <attribs/>
         <includes/>
         <code.declaration><![CDATA[int8_t _note;
int32_t _gate;
int32_t _gate2;
uint8_t _velo;
uint8_t _rvelo;
int32_t ccv0[128];
int32_t ccv1[128];
int32_t ccv2[128];
int8_t _tmp;]]></code.declaration>
         <code.init><![CDATA[_gate = 0;
_note = 0;]]></code.init>
         <code.krate><![CDATA[outlet_note= _note<<21;
outlet_gate= _gate;
outlet_gate2= _gate2;
_gate2 = _gate;
outlet_velocity= _velo<<20;
outlet_releaseVelocity= _rvelo<<20;
outlet_pressure=ccv0[_tmp];
outlet_CV1=ccv1[_tmp+1];
outlet_CV2=ccv2[_tmp+2];
outlet_polyindex=parent->polyIndex;]]></code.krate>
         <code.midihandler><![CDATA[if ((status == MIDI_NOTE_ON + attr_midichannel) && (data2)) {
  _velo = data2;
  _note = data1-64;
  _gate = 1<<27;
  _gate2 = 0;
  //_tmp=((data1-36)&15)*3;
_tmp=(data1-36);
_tmp=(_tmp-_tmp/12*12)*3;
} else if (((status == MIDI_NOTE_ON + attr_midichannel) && (!data2))||
          (status == MIDI_NOTE_OFF + attr_midichannel)) {
  if (_note == data1-64) {
    _rvelo = data2;
    _gate = 0;
  }
} else if ((status == attr_midichannel + MIDI_CONTROL_CHANGE)&&(data1 == MIDI_C_ALL_NOTES_OFF)) {
  _gate = 0;
}

 if ((status == attr_midichannel + MIDI_CONTROL_CHANGE)&&(data1 == (_tmp+23))&&(_gate)) { ccv0[_tmp] = data2<<20;}
 if ((status == attr_midichannel + MIDI_CONTROL_CHANGE)&&(data1 == (_tmp+24))&&(_gate)) { ccv1[_tmp+1] = data2<<20;}
 if ((status == attr_midichannel + MIDI_CONTROL_CHANGE)&&(data1 == (_tmp+25))&&(_gate)) { ccv2[_tmp+2] = data2<<20;}]]></code.midihandler>
      </object>
   </patchobj>
   <obj type="sel/sel dial 4" uuid="2bf0aa0779d8476013c6151d55fa9452b204d852" name="sel_1" x="210" y="112">
      <params>
         <frac32.u.map name="v0" onParent="true" value="0.0"/>
         <frac32.u.map name="v1" onParent="true" value="0.0"/>
         <frac32.u.map name="v2" onParent="true" value="0.0"/>
         <frac32.u.map name="v3" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/logic/countExt" uuid="44ed9668-63af-48f8-a018-99db931c5e37" name="countExt_1" x="294" y="112">
      <params>
         <int32 name="max" value="0"/>
      </params>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="9d883db3-8e80-41f2-a039-3123b7a1a70f" name="write_8" x="210" y="364">
      <params/>
      <attribs>
         <combo attributeName="size" selection="262144 (5.46s)"/>
      </attribs>
      <object id="patch/object" uuid="9d883db3-8e80-41f2-a039-3123b7a1a70f">
         <sDescription>delayline definition, read it with &quot;delay/read&quot; objects referencing the instance name of this object</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>delay.axh</helpPatch>
         <inlets>
            <bool32 name="in"/>
            <bool32 name="rec"/>
            <bool32 name="whipe"/>
            <bool32 name="sync"/>
         </inlets>
         <outlets>
            <bool32 name="out"/>
         </outlets>
         <displays/>
         <params/>
         <attribs>
            <combo name="size">
               <MenuEntries>
                  <string>256 (5.33ms)</string>
                  <string>512 (10.66ms)</string>
                  <string>1024 (21.33ms)</string>
                  <string>2048 (42.66ms)</string>
                  <string>4096 (85.33ms)</string>
                  <string>8192 (170ms)</string>
                  <string>16384 (341ms)</string>
                  <string>32768 (682ms)</string>
                  <string>65536 (1.36s)</string>
                  <string>131072 (2.73s)</string>
                  <string>262144 (5.46s)</string>
                  <string>524288 (10.9s)</string>
                  <string>1048576 (21.8s)</string>
                  <string>2097152 (43.7s)</string>
               </MenuEntries>
               <CEntries>
                  <string>8</string>
                  <string>9</string>
                  <string>10</string>
                  <string>11</string>
                  <string>12</string>
                  <string>13</string>
                  <string>14</string>
                  <string>15</string>
                  <string>16</string>
                  <string>17</string>
                  <string>18</string>
                  <string>19</string>
                  <string>20</string>
                  <string>21</string>
               </CEntries>
            </combo>
         </attribs>
         <includes/>
         <code.declaration><![CDATA[static const uint32_t LENGTHPOW = (attr_size);
static const uint32_t LENGTH = (1<<attr_size);
static const uint32_t LENGTHMASK = ((1<<attr_size)-1);
bool *array;
uint32_t writepos;
int g1;
int trig;]]></code.declaration>
         <code.init><![CDATA[static bool _array[attr_poly][1<<attr_size]  __attribute__ ((section (".sdram")));
array = &_array[parent->polyIndex][0];
   int i;
   writepos = 0;
   for(i=0;i<LENGTH;i++) array[i] = 0;]]></code.init>
         <code.krate><![CDATA[if((inlet_sync>0)&&!trig){
trig=1;
writepos=0;}
else if(inlet_sync==0){trig=0;}

writepos = (writepos + 1)&LENGTHMASK;

if(inlet_whipe>0){
	array[writepos]=0;
}
if(inlet_rec>0){
array[writepos] =g1;}

outlet_out=array[writepos];
g1=inlet_in;]]></code.krate>
      </object>
   </patchobj>
   <patchobj type="patch/object" uuid="9d883db3-8e80-41f2-a039-3123b7a1a70f" name="write_9" x="322" y="364">
      <params/>
      <attribs>
         <combo attributeName="size" selection="262144 (5.46s)"/>
      </attribs>
      <object id="patch/object" uuid="9d883db3-8e80-41f2-a039-3123b7a1a70f">
         <sDescription>delayline definition, read it with &quot;delay/read&quot; objects referencing the instance name of this object</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>delay.axh</helpPatch>
         <inlets>
            <frac32 name="in"/>
            <bool32 name="gate"/>
            <bool32 name="rec"/>
            <bool32 name="whipe"/>
            <bool32 name="sync"/>
         </inlets>
         <outlets>
            <frac32 name="out"/>
         </outlets>
         <displays/>
         <params/>
         <attribs>
            <combo name="size">
               <MenuEntries>
                  <string>256 (5.33ms)</string>
                  <string>512 (10.66ms)</string>
                  <string>1024 (21.33ms)</string>
                  <string>2048 (42.66ms)</string>
                  <string>4096 (85.33ms)</string>
                  <string>8192 (170ms)</string>
                  <string>16384 (341ms)</string>
                  <string>32768 (682ms)</string>
                  <string>65536 (1.36s)</string>
                  <string>131072 (2.73s)</string>
                  <string>262144 (5.46s)</string>
                  <string>524288 (10.9s)</string>
                  <string>1048576 (21.8s)</string>
                  <string>2097152 (43.7s)</string>
               </MenuEntries>
               <CEntries>
                  <string>8</string>
                  <string>9</string>
                  <string>10</string>
                  <string>11</string>
                  <string>12</string>
                  <string>13</string>
                  <string>14</string>
                  <string>15</string>
                  <string>16</string>
                  <string>17</string>
                  <string>18</string>
                  <string>19</string>
                  <string>20</string>
                  <string>21</string>
               </CEntries>
            </combo>
         </attribs>
         <includes/>
         <code.declaration><![CDATA[static const uint32_t LENGTHPOW = (attr_size);
static const uint32_t LENGTH = (1<<attr_size);
static const uint32_t LENGTHMASK = ((1<<attr_size)-1);
int8_t *array;
uint32_t writepos;
int32_t mix;
int32_t val;
int trig;]]></code.declaration>
         <code.init><![CDATA[static int8_t _array[attr_poly][1<<attr_size]  __attribute__ ((section (".sdram")));
array = &_array[parent->polyIndex][0];
   int i;
   writepos = 0;
   for(i=0;i<LENGTH;i++) array[i] = 0;
   val=0;]]></code.init>
         <code.krate><![CDATA[if((inlet_sync>0)&&!trig){
trig=1;
writepos=0;}
else if(inlet_sync==0){trig=0;}

writepos = (writepos + 1)&LENGTHMASK;

if(inlet_whipe>0){
	array[writepos]=0;
}
if(inlet_rec>0)
array[writepos] = __SSAT(inlet_in>>19,8);
if(inlet_gate>0){
val=array[writepos]<<19;}
outlet_out=val;]]></code.krate>
      </object>
   </patchobj>
   <patchobj type="patch/object" uuid="9d883db3-8e80-41f2-a039-3123b7a1a70f" name="write_6" x="434" y="364">
      <params>
         <frac32.s.map name="fade" onParent="true" value="0.0"/>
      </params>
      <attribs>
         <combo attributeName="size" selection="262144 (5.46s)"/>
      </attribs>
      <object id="patch/object" uuid="9d883db3-8e80-41f2-a039-3123b7a1a70f">
         <sDescription>delayline definition, read it with &quot;delay/read&quot; objects referencing the instance name of this object</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>delay.axh</helpPatch>
         <inlets>
            <frac32 name="in"/>
            <bool32 name="gate"/>
            <bool32 name="rec"/>
            <bool32 name="whipe"/>
            <bool32 name="sync"/>
         </inlets>
         <outlets>
            <frac32 name="out"/>
         </outlets>
         <displays/>
         <params>
            <frac32.s.map.kpitch name="fade"/>
         </params>
         <attribs>
            <combo name="size">
               <MenuEntries>
                  <string>256 (5.33ms)</string>
                  <string>512 (10.66ms)</string>
                  <string>1024 (21.33ms)</string>
                  <string>2048 (42.66ms)</string>
                  <string>4096 (85.33ms)</string>
                  <string>8192 (170ms)</string>
                  <string>16384 (341ms)</string>
                  <string>32768 (682ms)</string>
                  <string>65536 (1.36s)</string>
                  <string>131072 (2.73s)</string>
                  <string>262144 (5.46s)</string>
                  <string>524288 (10.9s)</string>
                  <string>1048576 (21.8s)</string>
                  <string>2097152 (43.7s)</string>
               </MenuEntries>
               <CEntries>
                  <string>8</string>
                  <string>9</string>
                  <string>10</string>
                  <string>11</string>
                  <string>12</string>
                  <string>13</string>
                  <string>14</string>
                  <string>15</string>
                  <string>16</string>
                  <string>17</string>
                  <string>18</string>
                  <string>19</string>
                  <string>20</string>
                  <string>21</string>
               </CEntries>
            </combo>
         </attribs>
         <includes/>
         <code.declaration><![CDATA[static const uint32_t LENGTHPOW = (attr_size);
static const uint32_t LENGTH = (1<<attr_size);
static const uint32_t LENGTHMASK = ((1<<attr_size)-1);
int16_t *array;
uint32_t writepos;
int32_t mix;
int32_t val;
int trig;]]></code.declaration>
         <code.init><![CDATA[static int16_t _array[attr_poly][1<<attr_size]  __attribute__ ((section (".sdram")));
array = &_array[parent->polyIndex][0];
   int i;
   writepos = 0;
   for(i=0;i<LENGTH;i++) array[i] = 0;
   val=0;]]></code.init>
         <code.krate><![CDATA[if((inlet_sync>0)&&!trig){
trig=1;
writepos=0;}
else if(inlet_sync==0){trig=0;}


writepos = (writepos + 1)&LENGTHMASK;
int32_t fade;
MTOF(param_fade,fade)
mix=___SMMLA(((inlet_rec<<27)-mix)<<1,fade,mix);
if(inlet_whipe>0){
	array[writepos]=0;
}
array[writepos] = (___SMMUL(inlet_in<<2,mix<<3)+___SMMUL(array[writepos]<<16,(1<<27)-mix<<3))>>14;
if(inlet_gate>0){
val=array[writepos]<<14;}
outlet_out=val;]]></code.krate>
      </object>
   </patchobj>
   <obj type="math/smooth2" uuid="9ba3ddec912512e6b63211080e89cb25b6d84834" name="smooth2_3" x="546" y="364">
      <params>
         <frac32.u.map name="risetime" value="9.0"/>
         <frac32.u.map name="falltime" value="25.5"/>
      </params>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="9d883db3-8e80-41f2-a039-3123b7a1a70f" name="write_7" x="630" y="364">
      <params>
         <frac32.s.map name="fade" onParent="true" value="0.0"/>
      </params>
      <attribs>
         <combo attributeName="size" selection="262144 (5.46s)"/>
      </attribs>
      <object id="patch/object" uuid="9d883db3-8e80-41f2-a039-3123b7a1a70f">
         <sDescription>delayline definition, read it with &quot;delay/read&quot; objects referencing the instance name of this object</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>delay.axh</helpPatch>
         <inlets>
            <frac32 name="in"/>
            <bool32 name="gate"/>
            <bool32 name="rec"/>
            <bool32 name="whipe"/>
            <bool32 name="sync"/>
         </inlets>
         <outlets>
            <frac32 name="out"/>
         </outlets>
         <displays/>
         <params>
            <frac32.s.map.kpitch name="fade"/>
         </params>
         <attribs>
            <combo name="size">
               <MenuEntries>
                  <string>256 (5.33ms)</string>
                  <string>512 (10.66ms)</string>
                  <string>1024 (21.33ms)</string>
                  <string>2048 (42.66ms)</string>
                  <string>4096 (85.33ms)</string>
                  <string>8192 (170ms)</string>
                  <string>16384 (341ms)</string>
                  <string>32768 (682ms)</string>
                  <string>65536 (1.36s)</string>
                  <string>131072 (2.73s)</string>
                  <string>262144 (5.46s)</string>
                  <string>524288 (10.9s)</string>
                  <string>1048576 (21.8s)</string>
                  <string>2097152 (43.7s)</string>
               </MenuEntries>
               <CEntries>
                  <string>8</string>
                  <string>9</string>
                  <string>10</string>
                  <string>11</string>
                  <string>12</string>
                  <string>13</string>
                  <string>14</string>
                  <string>15</string>
                  <string>16</string>
                  <string>17</string>
                  <string>18</string>
                  <string>19</string>
                  <string>20</string>
                  <string>21</string>
               </CEntries>
            </combo>
         </attribs>
         <includes/>
         <code.declaration><![CDATA[static const uint32_t LENGTHPOW = (attr_size);
static const uint32_t LENGTH = (1<<attr_size);
static const uint32_t LENGTHMASK = ((1<<attr_size)-1);
int16_t *array;
uint32_t writepos;
int32_t mix;
int32_t val;
int trig;]]></code.declaration>
         <code.init><![CDATA[static int16_t _array[attr_poly][1<<attr_size]  __attribute__ ((section (".sdram")));
array = &_array[parent->polyIndex][0];
   int i;
   writepos = 0;
   for(i=0;i<LENGTH;i++) array[i] = 0;
   val=0;]]></code.init>
         <code.krate><![CDATA[if((inlet_sync>0)&&!trig){
trig=1;
writepos=0;}
else if(inlet_sync==0){trig=0;}


writepos = (writepos + 1)&LENGTHMASK;
int32_t fade;
MTOF(param_fade,fade)
mix=___SMMLA(((inlet_rec<<27)-mix)<<1,fade,mix);
if(inlet_whipe>0){
	array[writepos]=0;
}
array[writepos] = (___SMMUL(inlet_in<<2,mix<<3)+___SMMUL(array[writepos]<<16,(1<<27)-mix<<3))>>14;
if(inlet_gate>0){
val=array[writepos]<<14;}
outlet_out=val;]]></code.krate>
      </object>
   </patchobj>
   <obj type="math/smooth2" uuid="9ba3ddec912512e6b63211080e89cb25b6d84834" name="smooth2_2" x="742" y="364">
      <params>
         <frac32.u.map name="risetime" value="9.0"/>
         <frac32.u.map name="falltime" value="25.5"/>
      </params>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="5e1d6c35-8b9b-483f-be63-8afd7da5938d" name="modwidth1" x="826" y="364">
      <params>
         <frac32.s.map name="mod" onParent="true" value="0.0"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="5e1d6c35-8b9b-483f-be63-8afd7da5938d">
         <sDescription>Copies the input to the output at the rising edge of the trigger input. Keeps the output otherwise.</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>logic.axh</helpPatch>
         <inlets>
            <frac32 name="i" description="input"/>
            <bool32.rising name="trig" description="trigger"/>
         </inlets>
         <outlets>
            <frac32 name="o" description="output"/>
            <frac32 name="latch"/>
            <frac32 name="bend"/>
         </outlets>
         <displays/>
         <params>
            <frac32.s.map name="mod"/>
         </params>
         <attribs/>
         <includes/>
         <code.declaration><![CDATA[int ntrig;   int latch;]]></code.declaration>
         <code.krate><![CDATA[if ((inlet_trig>0) && !ntrig) {latch = inlet_i; ntrig=1;}
if (!(inlet_trig>0)) ntrig=0;
outlet_bend=___SMMUL(param_mod<<3,inlet_i-latch<<2);
outlet_o= latch+outlet_bend;
outlet_latch=latch;]]></code.krate>
      </object>
   </patchobj>
   <patchobj type="patch/object" uuid="9d883db3-8e80-41f2-a039-3123b7a1a70f" name="write_10" x="924" y="364">
      <params>
         <frac32.s.map name="fade" onParent="true" value="0.0"/>
      </params>
      <attribs>
         <combo attributeName="size" selection="262144 (5.46s)"/>
      </attribs>
      <object id="patch/object" uuid="9d883db3-8e80-41f2-a039-3123b7a1a70f">
         <sDescription>delayline definition, read it with &quot;delay/read&quot; objects referencing the instance name of this object</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>delay.axh</helpPatch>
         <inlets>
            <frac32 name="in"/>
            <bool32 name="gate"/>
            <bool32 name="rec"/>
            <bool32 name="whipe"/>
            <bool32 name="sync"/>
         </inlets>
         <outlets>
            <frac32 name="out"/>
         </outlets>
         <displays/>
         <params>
            <frac32.s.map.kpitch name="fade"/>
         </params>
         <attribs>
            <combo name="size">
               <MenuEntries>
                  <string>256 (5.33ms)</string>
                  <string>512 (10.66ms)</string>
                  <string>1024 (21.33ms)</string>
                  <string>2048 (42.66ms)</string>
                  <string>4096 (85.33ms)</string>
                  <string>8192 (170ms)</string>
                  <string>16384 (341ms)</string>
                  <string>32768 (682ms)</string>
                  <string>65536 (1.36s)</string>
                  <string>131072 (2.73s)</string>
                  <string>262144 (5.46s)</string>
                  <string>524288 (10.9s)</string>
                  <string>1048576 (21.8s)</string>
                  <string>2097152 (43.7s)</string>
               </MenuEntries>
               <CEntries>
                  <string>8</string>
                  <string>9</string>
                  <string>10</string>
                  <string>11</string>
                  <string>12</string>
                  <string>13</string>
                  <string>14</string>
                  <string>15</string>
                  <string>16</string>
                  <string>17</string>
                  <string>18</string>
                  <string>19</string>
                  <string>20</string>
                  <string>21</string>
               </CEntries>
            </combo>
         </attribs>
         <includes/>
         <code.declaration><![CDATA[static const uint32_t LENGTHPOW = (attr_size);
static const uint32_t LENGTH = (1<<attr_size);
static const uint32_t LENGTHMASK = ((1<<attr_size)-1);
int16_t *array;
uint32_t writepos;
int32_t mix;
int32_t val;
int trig;]]></code.declaration>
         <code.init><![CDATA[static int16_t _array[attr_poly][1<<attr_size]  __attribute__ ((section (".sdram")));
array = &_array[parent->polyIndex][0];
   int i;
   writepos = 0;
   for(i=0;i<LENGTH;i++) array[i] = 0;
   val=0;]]></code.init>
         <code.krate><![CDATA[if((inlet_sync>0)&&!trig){
trig=1;
writepos=0;}
else if(inlet_sync==0){trig=0;}


writepos = (writepos + 1)&LENGTHMASK;
int32_t fade;
MTOF(param_fade,fade)
mix=___SMMLA(((inlet_rec<<27)-mix)<<1,fade,mix);
if(inlet_whipe>0){
	array[writepos]=0;
}
array[writepos] = (___SMMUL(inlet_in<<2,mix<<3)+___SMMUL(array[writepos]<<16,(1<<27)-mix<<3))>>14;
if(inlet_gate>0){
val=array[writepos]<<14;}
outlet_out=val;]]></code.krate>
      </object>
   </patchobj>
   <obj type="math/smooth2" uuid="9ba3ddec912512e6b63211080e89cb25b6d84834" name="smooth2_4" x="1036" y="364">
      <params>
         <frac32.u.map name="risetime" value="9.0"/>
         <frac32.u.map name="falltime" value="25.5"/>
      </params>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="5e1d6c35-8b9b-483f-be63-8afd7da5938d" name="modwidth2" x="1120" y="364">
      <params>
         <frac32.s.map name="mod" onParent="true" value="0.0"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="5e1d6c35-8b9b-483f-be63-8afd7da5938d">
         <sDescription>Copies the input to the output at the rising edge of the trigger input. Keeps the output otherwise.</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>logic.axh</helpPatch>
         <inlets>
            <frac32 name="i" description="input"/>
            <bool32.rising name="trig" description="trigger"/>
         </inlets>
         <outlets>
            <frac32 name="o" description="output"/>
            <frac32 name="latch"/>
            <frac32 name="bend"/>
         </outlets>
         <displays/>
         <params>
            <frac32.s.map name="mod"/>
         </params>
         <attribs/>
         <includes/>
         <code.declaration><![CDATA[int ntrig;   int latch;]]></code.declaration>
         <code.krate><![CDATA[if ((inlet_trig>0) && !ntrig) {latch = inlet_i; ntrig=1;}
if (!(inlet_trig>0)) ntrig=0;
outlet_bend=___SMMUL(param_mod<<3,inlet_i-latch<<2);
outlet_o= latch+outlet_bend;
outlet_latch=latch;]]></code.krate>
      </object>
   </patchobj>
   <obj type="sss/osc/tabletrainOS" uuid="9ad123e3-a4cb-4cf3-ae77-072caec02b93" name="tabletrainOS_1" x="210" y="630">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="0.0"/>
         <bool32.tgl name="mult" onParent="true" value="0"/>
         <int32 name="harm" onParent="true" value="1"/>
         <int32 name="preset" onParent="true" value="0"/>
         <int32 name="train" onParent="true" value="1"/>
         <int32 name="stepTrain" onParent="true" value="1"/>
         <frac32.u.map name="mixWave" onParent="true" value="0.0"/>
         <frac32.u.map name="stepWave" onParent="true" value="27.0"/>
         <frac32.u.map name="startWave" onParent="true" value="11.5"/>
         <frac32.u.map name="quant" onParent="true" value="45.0"/>
         <int32 name="OS" onParent="true" value="2"/>
      </params>
      <attribs>
         <objref attributeName="table" obj="../waveformLoader_1"/>
      </attribs>
   </obj>
   <obj type="math/*c" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="*c_1" x="336" y="630">
      <params>
         <frac32.u.map name="amp" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/filter/BPstack" uuid="627b57a0-1b9e-43d3-9518-6ac8ff05e2e3" name="BPstack_1" x="434" y="630">
      <params>
         <frac32.s.map name="pitch1" onParent="true" value="0.0"/>
         <frac32.s.map name="Pspread" onParent="true" value="0.0"/>
         <frac32.u.map name="reso1" onParent="true" value="0.0"/>
         <frac32.s.map name="rate" onParent="true" value="0.0"/>
         <frac32.s.map name="spread" onParent="true" value="0.0"/>
         <frac32.s.map name="depth" onParent="true" value="0.0"/>
         <int32.hradio name="mode" onParent="true" value="0"/>
         <int32 name="stack" onParent="true" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/env/ADSRcrv2" uuid="a8db6ba6-8f82-4340-8b13-d497823857b5" name="ADSRcrv2_1" x="532" y="630">
      <params>
         <frac32.u.map name="slope" onParent="true" value="0.0"/>
         <frac32.s.map name="time" onParent="true" value="0.0"/>
         <frac32.u.map name="S" onParent="true" value="0.0"/>
         <frac32.s.map name="R" onParent="true" value="0.0"/>
         <frac32.s.map name="crvA" onParent="true" value="0.0"/>
         <frac32.s.map name="crvD" onParent="true" value="0.0"/>
         <frac32.s.map name="crvR" onParent="true" value="0.0"/>
         <frac32.s.map name="ScrvA" onParent="true" value="15.0"/>
         <frac32.s.map name="ScrvD" onParent="true" value="0.0"/>
         <frac32.s.map name="ScrvR" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="644" y="630">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="700" y="630">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="QuNeoMIDI2CV_1" outlet="gate2"/>
         <dest obj="modwidth2" inlet="trig"/>
         <dest obj="modwidth1" inlet="trig"/>
         <dest obj="write_8" inlet="in"/>
         <dest obj="write_8" inlet="rec"/>
         <dest obj="write_9" inlet="rec"/>
         <dest obj="write_6" inlet="rec"/>
         <dest obj="write_7" inlet="rec"/>
         <dest obj="write_10" inlet="rec"/>
      </net>
      <net>
         <source obj="QuNeoMIDI2CV_1" outlet="note"/>
         <dest obj="write_9" inlet="in"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="ADSRcrv2_1" outlet="out"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="tabletrainOS_1" outlet="out"/>
         <dest obj="*c_1" inlet="in"/>
      </net>
      <net>
         <source obj="toggle_1" outlet="o"/>
         <dest obj="write_8" inlet="whipe"/>
         <dest obj="write_9" inlet="whipe"/>
         <dest obj="write_6" inlet="whipe"/>
         <dest obj="write_7" inlet="whipe"/>
         <dest obj="write_10" inlet="whipe"/>
      </net>
      <net>
         <source obj="QuNeoMIDI2CV_1" outlet="pressure"/>
         <dest obj="write_6" inlet="in"/>
      </net>
      <net>
         <source obj="smooth2_2" outlet="out"/>
         <dest obj="modwidth1" inlet="i"/>
      </net>
      <net>
         <source obj="smooth2_3" outlet="out"/>
         <dest obj="ADSRcrv2_1" inlet="S"/>
         <dest obj="BPstack_1" inlet="rate"/>
      </net>
      <net>
         <source obj="smooth2_4" outlet="out"/>
         <dest obj="modwidth2" inlet="i"/>
      </net>
      <net>
         <source obj="modwidth1" outlet="latch"/>
         <dest obj="tabletrainOS_1" inlet="harm"/>
         <dest obj="tabletrainOS_1" inlet="startWave"/>
         <dest obj="tabletrainOS_1" inlet="stepTrain"/>
      </net>
      <net>
         <source obj="write_8" outlet="out"/>
         <dest obj="ADSRcrv2_1" inlet="gate"/>
         <dest obj="write_9" inlet="gate"/>
         <dest obj="write_6" inlet="gate"/>
         <dest obj="write_7" inlet="gate"/>
         <dest obj="write_10" inlet="gate"/>
      </net>
      <net>
         <source obj="modwidth2" outlet="latch"/>
         <dest obj="tabletrainOS_1" inlet="train"/>
         <dest obj="tabletrainOS_1" inlet="stepWave"/>
      </net>
      <net>
         <source obj="QuNeoMIDI2CV_1" outlet="CV1"/>
         <dest obj="write_7" inlet="in"/>
      </net>
      <net>
         <source obj="QuNeoMIDI2CV_1" outlet="CV2"/>
         <dest obj="write_10" inlet="in"/>
      </net>
      <net>
         <source obj="BPstack_1" outlet="out"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="*c_1" outlet="out"/>
         <dest obj="BPstack_1" inlet="in1"/>
      </net>
      <net>
         <source obj="modwidth1" outlet="o"/>
         <dest obj="tabletrainOS_1" inlet="mixWave"/>
      </net>
      <net>
         <source obj="modwidth1" outlet="bend"/>
         <dest obj="BPstack_1" inlet="Pspread"/>
      </net>
      <net>
         <source obj="modwidth2" outlet="bend"/>
         <dest obj="BPstack_1" inlet="spread"/>
      </net>
      <net>
         <source obj="sync" outlet="inlet"/>
         <dest obj="countExt_1" inlet="trig"/>
      </net>
      <net>
         <source obj="write_9" outlet="out"/>
         <dest obj="tabletrainOS_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="write_6" outlet="out"/>
         <dest obj="smooth2_3" inlet="in"/>
      </net>
      <net>
         <source obj="write_7" outlet="out"/>
         <dest obj="smooth2_2" inlet="in"/>
      </net>
      <net>
         <source obj="write_10" outlet="out"/>
         <dest obj="smooth2_4" inlet="in"/>
      </net>
      <net>
         <source obj="sel_1" outlet="o"/>
         <dest obj="countExt_1" inlet="MaxCount"/>
      </net>
      <net>
         <source obj="QuNeoMIDI2CV_1" outlet="polyindex"/>
         <dest obj="sel_1" inlet="s"/>
      </net>
      <net>
         <source obj="countExt_1" outlet="c"/>
         <dest obj="write_8" inlet="sync"/>
         <dest obj="write_9" inlet="sync"/>
         <dest obj="write_6" inlet="syc"/>
         <dest obj="write_7" inlet="syc"/>
         <dest obj="write_10" inlet="syc"/>
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
      <x>0</x>
      <y>0</y>
      <width>1281</width>
      <height>986</height>
   </windowPos>
</patch-1.0>