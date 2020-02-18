<patch-1.0 appVersion="1.0.11">
   <patchobj type="patch/object" uuid="7f4c175e-1aa5-4205-959d-a04b37ea366b" name="pattLength" x="938" y="126">
      <params>
         <int32 name="value" onParent="true" value="16"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="7f4c175e-1aa5-4205-959d-a04b37ea366b">
         <sDescription>positive integer control</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>ctrl.axh</helpPatch>
         <inlets/>
         <outlets>
            <int32.positive name="out" description="output"/>
         </outlets>
         <displays/>
         <params>
            <int32 name="value" noLabel="true">
               <MinValue i="1"/>
               <MaxValue i="32"/>
            </int32>
         </params>
         <attribs/>
         <includes/>
         <code.krate><![CDATA[outlet_out= param_value;
]]></code.krate>
      </object>
   </patchobj>
   <patchobj type="patch/object" uuid="7f4c175e-1aa5-4205-959d-a04b37ea366b" name="max" x="1064" y="126">
      <params>
         <int32 name="value" onParent="true" value="2"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="7f4c175e-1aa5-4205-959d-a04b37ea366b">
         <sDescription>positive integer control</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>ctrl.axh</helpPatch>
         <inlets/>
         <outlets>
            <int32.positive name="out" description="output"/>
         </outlets>
         <displays/>
         <params>
            <int32 name="value" noLabel="true">
               <MinValue i="1"/>
               <MaxValue i="32"/>
            </int32>
         </params>
         <attribs/>
         <includes/>
         <code.krate><![CDATA[outlet_out= param_value;
]]></code.krate>
      </object>
   </patchobj>
   <obj type="midi/in/clock" uuid="f1aa3a79d6de9bd6d38dc64c9d4bb5c9de4f4198" name="clock_1" x="84" y="210">
      <params/>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="7f4c175e-1aa5-4205-959d-a04b37ea366b" name="Count Divide" x="168" y="210">
      <params>
         <int32 name="value" onParent="true" value="1"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="7f4c175e-1aa5-4205-959d-a04b37ea366b">
         <sDescription>positive integer control</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>ctrl.axh</helpPatch>
         <inlets/>
         <outlets>
            <int32.positive name="out" description="output"/>
         </outlets>
         <displays/>
         <params>
            <int32 name="value" noLabel="true">
               <MinValue i="1"/>
               <MaxValue i="32"/>
            </int32>
         </params>
         <attribs/>
         <includes/>
         <code.krate><![CDATA[outlet_out= param_value;
]]></code.krate>
      </object>
   </patchobj>
   <obj type="math/divremc" uuid="21072e57-6602-4547-b1a7-9adab17a24af" name="divremc_1" x="238" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/change" uuid="96e39ae624c3f3c952cec4a95e1986ee0104f718" name="change_1" x="364" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="timer/pulselength" uuid="ca68725237d8ba8407773340801660a9fd9b0dba" name="pulselength_1" x="448" y="210">
      <params>
         <frac32.s.map name="delay" onParent="true" value="-5.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="Midi/8voiceMidiSplit" uuid="25e197d3-676b-439f-b799-cab82c72a4ae" name="8voice split" x="546" y="210">
      <params/>
      <attribs>
         <combo attributeName="poly" selection="8"/>
         <combo attributeName="midichannel" selection="2"/>
         <combo attributeName="mididevice" selection="internal"/>
         <combo attributeName="midiport" selection="omni"/>
      </attribs>
   </obj>
   <patchobj type="patch/object" uuid="9a334412-7a6e-4cb5-8b29-39fe3df377e0" name="8xSortMidiNotes_1" x="658" y="210">
      <params/>
      <attribs/>
      <object id="patch/object" uuid="9a334412-7a6e-4cb5-8b29-39fe3df377e0">
         <sDescription>8x Midi-note sorting:
The value of the note-inputs are cross-compared and determine how the notes are sorted out.

The destination determined by the note-inputs are also used to determine the outputs of the gate and velocity values (or any other signal for that matter, what counts is that the N01-&gt;N08 inputs determine sorting process!)

When a gate input is low, a high value is added to the respective unused note-pitch, to send it to one of the bottom outputs of the list (depending on how many gates are off).

The maxNotes output is the sum of all gates. To be used with a counter and multiplexer to set the max range for arpeggiators for example.</sDescription>
         <author>Remco van der Most</author>
         <license>BSD</license>
         <inlets>
            <bool32 name="G01"/>
            <bool32 name="G02"/>
            <bool32 name="G03"/>
            <bool32 name="G04"/>
            <bool32 name="G05"/>
            <bool32 name="G06"/>
            <bool32 name="G07"/>
            <bool32 name="G08"/>
            <frac32 name="N01"/>
            <frac32 name="N02"/>
            <frac32 name="N03"/>
            <frac32 name="N04"/>
            <frac32 name="N05"/>
            <frac32 name="N06"/>
            <frac32 name="N07"/>
            <frac32 name="N08"/>
            <frac32 name="V01"/>
            <frac32 name="V02"/>
            <frac32 name="V03"/>
            <frac32 name="V04"/>
            <frac32 name="V05"/>
            <frac32 name="V06"/>
            <frac32 name="V07"/>
            <frac32 name="V08"/>
         </inlets>
         <outlets>
            <bool32 name="Go01"/>
            <bool32 name="Go02"/>
            <bool32 name="Go03"/>
            <bool32 name="Go04"/>
            <bool32 name="Go05"/>
            <bool32 name="Go06"/>
            <bool32 name="Go07"/>
            <bool32 name="Go08"/>
            <frac32 name="No01"/>
            <frac32 name="No02"/>
            <frac32 name="No03"/>
            <frac32 name="No04"/>
            <frac32 name="No05"/>
            <frac32 name="No06"/>
            <frac32 name="No07"/>
            <frac32 name="No08"/>
            <frac32 name="Vo01"/>
            <frac32 name="Vo02"/>
            <frac32 name="Vo03"/>
            <frac32 name="Vo04"/>
            <frac32 name="Vo05"/>
            <frac32 name="Vo06"/>
            <frac32 name="Vo07"/>
            <frac32 name="Vo08"/>
            <int32 name="maxNotes"/>
         </outlets>
         <displays/>
         <params/>
         <attribs/>
         <includes/>
         <code.declaration><![CDATA[int32_t a1;
int32_t b1;
int32_t c1;
int32_t d1;
int32_t e1;
int32_t f1;
int32_t g1;
int32_t h1;

uint8_t a2;
uint8_t b2;
uint8_t c2;
uint8_t d2;
uint8_t e2;
uint8_t f2;
uint8_t g2;
uint8_t h2;
int i;
uint32_t _position[8];
int _gate[8];
uint32_t _velocity[8];]]></code.declaration>
         <code.krate><![CDATA[a1=inlet_N01+(1<<27)+(inlet_G01<1?(1<<27):0);
b1=inlet_N02+(1<<27)+(inlet_G02<1?(1<<27):0);
c1=inlet_N03+(1<<27)+(inlet_G03<1?(1<<27):0);
d1=inlet_N04+(1<<27)+(inlet_G04<1?(1<<27):0);
e1=inlet_N05+(1<<27)+(inlet_G05<1?(1<<27):0);
f1=inlet_N06+(1<<27)+(inlet_G06<1?(1<<27):0);
g1=inlet_N07+(1<<27)+(inlet_G07<1?(1<<27):0);
h1=inlet_N08+(1<<27)+(inlet_G08<1?(1<<27):0);

a2=(a1>b1?1:0)+(a1>c1?1:0)+(a1>d1?1:0)+(a1>e1?1:0)+(a1>f1?1:0)+(a1>g1?1:0)+(a1>h1?1:0);
b2=(b1>a1?1:0)+(b1>c1?1:0)+(b1>d1?1:0)+(b1>e1?1:0)+(b1>f1?1:0)+(b1>g1?1:0)+(b1>h1?1:0);
c2=(c1>a1?1:0)+(c1>b1?1:0)+(c1>d1?1:0)+(c1>e1?1:0)+(c1>f1?1:0)+(c1>g1?1:0)+(c1>h1?1:0);
d2=(d1>a1?1:0)+(d1>b1?1:0)+(d1>c1?1:0)+(d1>e1?1:0)+(d1>f1?1:0)+(d1>g1?1:0)+(d1>h1?1:0);
e2=(e1>a1?1:0)+(e1>b1?1:0)+(e1>c1?1:0)+(e1>d1?1:0)+(e1>f1?1:0)+(e1>g1?1:0)+(e1>h1?1:0);
f2=(f1>a1?1:0)+(f1>b1?1:0)+(f1>c1?1:0)+(f1>d1?1:0)+(f1>e1?1:0)+(f1>g1?1:0)+(f1>h1?1:0);
g2=(g1>a1?1:0)+(g1>b1?1:0)+(g1>c1?1:0)+(g1>d1?1:0)+(g1>e1?1:0)+(g1>f1?1:0)+(g1>h1?1:0);
h2=(h1>a1?1:0)+(h1>b1?1:0)+(h1>c1?1:0)+(h1>d1?1:0)+(h1>e1?1:0)+(h1>f1?1:0)+(h1>g1?1:0);


int G01=inlet_G01>0?1:0;
int G02=inlet_G02>0?1:0;
int G03=inlet_G03>0?1:0;
int G04=inlet_G04>0?1:0;
int G05=inlet_G05>0?1:0;
int G06=inlet_G06>0?1:0;
int G07=inlet_G07>0?1:0;
int G08=inlet_G08>0?1:0;

outlet_maxNotes=G01+G02+G03+G04+G05+G06+G07+G08;

_gate[a2]=inlet_G01;
_gate[b2]=inlet_G02;
_gate[c2]=inlet_G03;
_gate[d2]=inlet_G04;
_gate[e2]=inlet_G05;
_gate[f2]=inlet_G06;
_gate[g2]=inlet_G07;
_gate[h2]=inlet_G08;

_position[a2]=inlet_N01;
_position[b2]=inlet_N02;
_position[c2]=inlet_N03;
_position[d2]=inlet_N04;
_position[e2]=inlet_N05;
_position[f2]=inlet_N06;
_position[g2]=inlet_N07;
_position[h2]=inlet_N08;

_velocity[a2]=inlet_V01;
_velocity[b2]=inlet_V02;
_velocity[c2]=inlet_V03;
_velocity[d2]=inlet_V04;
_velocity[e2]=inlet_V05;
_velocity[f2]=inlet_V06;
_velocity[g2]=inlet_V07;
_velocity[h2]=inlet_V08;

outlet_Go01=_gate[0];
outlet_Go02=_gate[1];
outlet_Go03=_gate[2];
outlet_Go04=_gate[3];
outlet_Go05=_gate[4];
outlet_Go06=_gate[5];
outlet_Go07=_gate[6];
outlet_Go08=_gate[7];

outlet_No01=_position[0];
outlet_No02=_position[1];
outlet_No03=_position[2];
outlet_No04=_position[3];
outlet_No05=_position[4];
outlet_No06=_position[5];
outlet_No07=_position[6];
outlet_No08=_position[7];

outlet_Vo01=_velocity[0];
outlet_Vo02=_velocity[1];
outlet_Vo03=_velocity[2];
outlet_Vo04=_velocity[3];
outlet_Vo05=_velocity[4];
outlet_Vo06=_velocity[5];
outlet_Vo07=_velocity[6];
outlet_Vo08=_velocity[7];]]></code.krate>
      </object>
   </patchobj>
   <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_1" x="784" y="210">
      <params/>
      <attribs>
         <spinner attributeName="value" value="1"/>
      </attribs>
   </obj>
   <obj type="math/max" uuid="7d8a1d11e17a67ee6b57ddc6a20b35d748558c22" name="max_1" x="868" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/logic/countExt" uuid="44ed9668-63af-48f8-a018-99db931c5e37" name="countExt_1" x="938" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/patt/rndWeightNote" uuid="b749a200-6f22-40f8-a0a8-aa506b0766b1" name="rndWeightNote_1" x="1064" y="210">
      <params>
         <frac32.u.mapvsl name="C" onParent="true" value="58.5"/>
         <frac32.u.mapvsl name="cis" onParent="true" value="56.0"/>
         <frac32.u.mapvsl name="D" onParent="true" value="51.0"/>
         <frac32.u.mapvsl name="dis" onParent="true" value="44.0"/>
         <frac32.u.mapvsl name="E" onParent="true" value="41.0"/>
         <frac32.u.mapvsl name="F" onParent="true" value="35.5"/>
         <frac32.u.mapvsl name="fis" onParent="true" value="28.0"/>
         <frac32.u.mapvsl name="G" onParent="true" value="22.5"/>
         <frac32.u.mapvsl name="gis" onParent="true" value="18.0"/>
         <frac32.u.mapvsl name="A" onParent="true" value="11.5"/>
         <frac32.u.mapvsl name="ais" onParent="true" value="6.0"/>
         <frac32.u.mapvsl name="B" onParent="true" value="4.0"/>
      </params>
      <attribs>
         <spinner attributeName="maxlength" value="16"/>
         <spinner attributeName="maxpatterns" value="1"/>
      </attribs>
   </obj>
   <obj type="math/divremc" uuid="21072e57-6602-4547-b1a7-9adab17a24af" name="divremc_2" x="1218" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 8" uuid="39db4571d158ce2c2bc895f16048aee73f12d315" name="mux_3" x="1414" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_1" x="1484" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 8" uuid="de5167d9da39b04039376e8cc620ea2afc22e28a" name="mux_1" x="1554" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 8" uuid="de5167d9da39b04039376e8cc620ea2afc22e28a" name="mux_2" x="1624" y="210">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="gate" x="1624" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="gatesOn" x="1624" y="504">
      <params/>
      <attribs/>
   </obj>
   <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_2" x="1288" y="546">
      <params/>
      <attribs>
         <spinner attributeName="value" value="12"/>
      </attribs>
   </obj>
   <obj type="math/divremc" uuid="21072e57-6602-4547-b1a7-9adab17a24af" name="divremc_3" x="1372" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="6a31299e3a491edd8c4df0e809a519a35cc08a3b" name="*_1" x="1498" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="1554" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="note" x="1624" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="touch" x="1624" y="588">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="lownote" x="1624" y="644">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="divremc_2" outlet="rem"/>
         <dest obj="mux_3" inlet="s"/>
         <dest obj="mux_1" inlet="s"/>
         <dest obj="mux_2" inlet="s"/>
      </net>
      <net>
         <source obj="divremc_1" outlet="div"/>
         <dest obj="change_1" inlet="in"/>
      </net>
      <net>
         <source obj="clock_1" outlet="pos4ppq"/>
         <dest obj="divremc_1" inlet="a"/>
      </net>
      <net>
         <source obj="Count Divide" outlet="out"/>
         <dest obj="divremc_1" inlet="denominator"/>
      </net>
      <net>
         <source obj="mux_3" outlet="o"/>
         <dest obj="and_1" inlet="i2"/>
      </net>
      <net>
         <source obj="8xSortMidiNotes_1" outlet="Go01"/>
         <dest obj="mux_3" inlet="i0"/>
      </net>
      <net>
         <source obj="8xSortMidiNotes_1" outlet="Go02"/>
         <dest obj="mux_3" inlet="i1"/>
      </net>
      <net>
         <source obj="8xSortMidiNotes_1" outlet="Go03"/>
         <dest obj="mux_3" inlet="i2"/>
      </net>
      <net>
         <source obj="8xSortMidiNotes_1" outlet="Go05"/>
         <dest obj="mux_3" inlet="i4"/>
      </net>
      <net>
         <source obj="8xSortMidiNotes_1" outlet="Go04"/>
         <dest obj="mux_3" inlet="i3"/>
      </net>
      <net>
         <source obj="8xSortMidiNotes_1" outlet="Go06"/>
         <dest obj="mux_3" inlet="i5"/>
      </net>
      <net>
         <source obj="8xSortMidiNotes_1" outlet="Go07"/>
         <dest obj="mux_3" inlet="i6"/>
      </net>
      <net>
         <source obj="8xSortMidiNotes_1" outlet="Go08"/>
         <dest obj="mux_3" inlet="i7"/>
      </net>
      <net>
         <source obj="8xSortMidiNotes_1" outlet="No01"/>
         <dest obj="mux_1" inlet="i0"/>
         <dest obj="lownote" inlet="outlet"/>
      </net>
      <net>
         <source obj="8xSortMidiNotes_1" outlet="No02"/>
         <dest obj="mux_1" inlet="i1"/>
      </net>
      <net>
         <source obj="8xSortMidiNotes_1" outlet="No03"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="8xSortMidiNotes_1" outlet="No04"/>
         <dest obj="mux_1" inlet="i3"/>
      </net>
      <net>
         <source obj="8xSortMidiNotes_1" outlet="No05"/>
         <dest obj="mux_1" inlet="i4"/>
      </net>
      <net>
         <source obj="8xSortMidiNotes_1" outlet="No07"/>
         <dest obj="mux_1" inlet="i6"/>
      </net>
      <net>
         <source obj="8xSortMidiNotes_1" outlet="No08"/>
         <dest obj="mux_1" inlet="i7"/>
      </net>
      <net>
         <source obj="8xSortMidiNotes_1" outlet="Vo01"/>
         <dest obj="mux_2" inlet="i0"/>
      </net>
      <net>
         <source obj="8xSortMidiNotes_1" outlet="Vo02"/>
         <dest obj="mux_2" inlet="i1"/>
      </net>
      <net>
         <source obj="8xSortMidiNotes_1" outlet="Vo03"/>
         <dest obj="mux_2" inlet="i2"/>
      </net>
      <net>
         <source obj="8xSortMidiNotes_1" outlet="Vo04"/>
         <dest obj="mux_2" inlet="i3"/>
      </net>
      <net>
         <source obj="8xSortMidiNotes_1" outlet="Vo05"/>
         <dest obj="mux_2" inlet="i4"/>
      </net>
      <net>
         <source obj="8xSortMidiNotes_1" outlet="Vo06"/>
         <dest obj="mux_2" inlet="i5"/>
      </net>
      <net>
         <source obj="8xSortMidiNotes_1" outlet="Vo07"/>
         <dest obj="mux_2" inlet="i6"/>
      </net>
      <net>
         <source obj="8xSortMidiNotes_1" outlet="Vo08"/>
         <dest obj="mux_2" inlet="i7"/>
      </net>
      <net>
         <source obj="change_1" outlet="trig"/>
         <dest obj="pulselength_1" inlet="trig"/>
         <dest obj="countExt_1" inlet="trig"/>
      </net>
      <net>
         <source obj="i_1" outlet="out"/>
         <dest obj="max_1" inlet="in2"/>
      </net>
      <net>
         <source obj="and_1" outlet="o"/>
         <dest obj="gate" inlet="outlet"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="mux_2" outlet="o"/>
         <dest obj="touch" inlet="outlet"/>
      </net>
      <net>
         <source obj="pulselength_1" outlet="pulse"/>
         <dest obj="and_1" inlet="i1"/>
         <dest obj="rndWeightNote_1" inlet="trig"/>
      </net>
      <net>
         <source obj="8xSortMidiNotes_1" outlet="No06"/>
         <dest obj="mux_1" inlet="i5"/>
      </net>
      <net>
         <source obj="8voice split" outlet="gate1"/>
         <dest obj="8xSortMidiNotes_1" inlet="G01"/>
      </net>
      <net>
         <source obj="8voice split" outlet="gate2"/>
         <dest obj="8xSortMidiNotes_1" inlet="G02"/>
      </net>
      <net>
         <source obj="8voice split" outlet="gate3"/>
         <dest obj="8xSortMidiNotes_1" inlet="G03"/>
      </net>
      <net>
         <source obj="8voice split" outlet="gate4"/>
         <dest obj="8xSortMidiNotes_1" inlet="G04"/>
      </net>
      <net>
         <source obj="8voice split" outlet="gate5"/>
         <dest obj="8xSortMidiNotes_1" inlet="G05"/>
      </net>
      <net>
         <source obj="8voice split" outlet="gate6"/>
         <dest obj="8xSortMidiNotes_1" inlet="G06"/>
      </net>
      <net>
         <source obj="8voice split" outlet="gate7"/>
         <dest obj="8xSortMidiNotes_1" inlet="G07"/>
      </net>
      <net>
         <source obj="8voice split" outlet="gate8"/>
         <dest obj="8xSortMidiNotes_1" inlet="G08"/>
      </net>
      <net>
         <source obj="8voice split" outlet="note1"/>
         <dest obj="8xSortMidiNotes_1" inlet="N01"/>
      </net>
      <net>
         <source obj="8voice split" outlet="note2"/>
         <dest obj="8xSortMidiNotes_1" inlet="N02"/>
      </net>
      <net>
         <source obj="8voice split" outlet="note3"/>
         <dest obj="8xSortMidiNotes_1" inlet="N03"/>
      </net>
      <net>
         <source obj="8voice split" outlet="note4"/>
         <dest obj="8xSortMidiNotes_1" inlet="N04"/>
      </net>
      <net>
         <source obj="8voice split" outlet="note5"/>
         <dest obj="8xSortMidiNotes_1" inlet="N05"/>
      </net>
      <net>
         <source obj="8voice split" outlet="note6"/>
         <dest obj="8xSortMidiNotes_1" inlet="N06"/>
      </net>
      <net>
         <source obj="8voice split" outlet="note7"/>
         <dest obj="8xSortMidiNotes_1" inlet="N07"/>
      </net>
      <net>
         <source obj="8voice split" outlet="note8"/>
         <dest obj="8xSortMidiNotes_1" inlet="N08"/>
      </net>
      <net>
         <source obj="8voice split" outlet="touch1"/>
         <dest obj="8xSortMidiNotes_1" inlet="V01"/>
      </net>
      <net>
         <source obj="8voice split" outlet="touch2"/>
         <dest obj="8xSortMidiNotes_1" inlet="V02"/>
      </net>
      <net>
         <source obj="8voice split" outlet="touch3"/>
         <dest obj="8xSortMidiNotes_1" inlet="V03"/>
      </net>
      <net>
         <source obj="8voice split" outlet="touch4"/>
         <dest obj="8xSortMidiNotes_1" inlet="V04"/>
      </net>
      <net>
         <source obj="8voice split" outlet="touch5"/>
         <dest obj="8xSortMidiNotes_1" inlet="V05"/>
      </net>
      <net>
         <source obj="8voice split" outlet="touch6"/>
         <dest obj="8xSortMidiNotes_1" inlet="V06"/>
      </net>
      <net>
         <source obj="8voice split" outlet="touch7"/>
         <dest obj="8xSortMidiNotes_1" inlet="V07"/>
      </net>
      <net>
         <source obj="8voice split" outlet="touch8"/>
         <dest obj="8xSortMidiNotes_1" inlet="V08"/>
      </net>
      <net>
         <source obj="8xSortMidiNotes_1" outlet="maxNotes"/>
         <dest obj="max_1" inlet="in1"/>
      </net>
      <net>
         <source obj="max_1" outlet="out"/>
         <dest obj="divremc_2" inlet="denominator"/>
      </net>
      <net>
         <source obj="pattLength" outlet="out"/>
         <dest obj="rndWeightNote_1" inlet="length"/>
         <dest obj="countExt_1" inlet="MaxCount"/>
      </net>
      <net>
         <source obj="divremc_2" outlet="div"/>
         <dest obj="divremc_3" inlet="a"/>
      </net>
      <net>
         <source obj="i_2" outlet="out"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="note" inlet="outlet"/>
      </net>
      <net>
         <source obj="max" outlet="out"/>
         <dest obj="rndWeightNote_1" inlet="maxOct"/>
         <dest obj="divremc_3" inlet="denominator"/>
      </net>
      <net>
         <source obj="divremc_3" outlet="rem"/>
         <dest obj="*_1" inlet="a"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="rndWeightNote_1" outlet="repeating"/>
         <dest obj="divremc_2" inlet="a"/>
      </net>
      <net>
         <source obj="8voice split" outlet="GatesOn"/>
         <dest obj="countExt_1" inlet="r"/>
         <dest obj="rndWeightNote_1" inlet="rnd"/>
         <dest obj="gatesOn" inlet="outlet"/>
      </net>
      <net>
         <source obj="countExt_1" outlet="o"/>
         <dest obj="rndWeightNote_1" inlet="count"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>normal</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author>Remco van der Most</Author>
      <License>undefined</License>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-8</x>
      <y>-8</y>
      <width>1296</width>
      <height>1000</height>
   </windowPos>
</patch-1.0>