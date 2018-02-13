<patch-1.0 appVersion="1.0.12">
   <obj type="audio/inconfig l" uuid="7007d026acb7c3586f60a7f0898718d1ca7e0607" name="inconfig_1" x="882" y="154">
      <params/>
      <attribs>
         <combo attributeName="gain" selection="24dB"/>
         <combo attributeName="boost" selection="20dB"/>
      </attribs>
   </obj>
   <obj type="table/alloc 16b sdram" uuid="6d8eb0fd68f404cb5d14e7d4c8c146c8ccf09da1" name="rec" x="1190" y="210">
      <params/>
      <attribs>
         <combo attributeName="size" selection="1048576"/>
         <text attributeName="init">
            <sText><![CDATA[]]></sText>
         </text>
      </attribs>
   </obj>
   <obj type="audio/in stereo" uuid="99848ad6d90a8e615e83b2e619cfc806f28e7281" name="in_1" x="812" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_1" x="924" y="294">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="1078" y="364" text="rec will &apos;arm&apos; recording"/>
   <comment type="patch/comment" x="1078" y="392" text="next will start recording,"/>
   <comment type="patch/comment" x="1078" y="406" text="or when already recording,jump to the next slot"/>
   <patchobj type="patch/object" uuid="b4a06fed-49a3-4707-95c3-20c0f8ba2344" name="lrec_1" x="1106" y="420">
      <params/>
      <attribs>
         <objref attributeName="table" obj="rec"/>
      </attribs>
      <object id="patch/object" uuid="b4a06fed-49a3-4707-95c3-20c0f8ba2344">
         <sDescription></sDescription>
         <author>Robert Schirmer</author>
         <license>BSD</license>
         <helpPatch>loop_multi.axh</helpPatch>
         <inlets>
            <bool32.rising name="getend"/>
            <frac32buffer name="wave" description="audio in"/>
            <int32.positive name="slot"/>
            <bool32.risingfalling name="arm" description="record,set tempo"/>
            <bool32.rising name="rec"/>
            <bool32.rising name="delete"/>
            <bool32.rising name="compact"/>
            <bool32.rising name="clear"/>
         </inlets>
         <outlets>
            <bool32.pulse name="rec"/>
            <frac32.positive name="remain" description="remaining recording-time for the selected slot"/>
            <bool32 name="full"/>
         </outlets>
         <displays/>
         <params/>
         <attribs>
            <objref name="table" description="table to record to "/>
         </attribs>
         <includes/>
         <code.declaration><![CDATA[bool rec;
bool arm;
uint32_t recpos;
uint32_t rec_max;
uint8_t shift;

static const uint32_t LENGTHPOW = 9;
static const uint32_t LENGTH = 1<<9;
static const uint32_t LENGTHMASK = (1<<9)-1;
static const uint32_t BITS = 32;
static const uint32_t GAIN = 0;
int32_t array[LENGTH];

int8_t preslot;
int8_t chunks;
int8_t chunk [127];

bool rtrig;
bool ntrig;
bool full;
bool ctrig;
uint32_t sstart;
uint32_t send;
uint32_t slength;
uint32_t end;
bool dtrig;
bool gtrig;]]></code.declaration>
         <code.init><![CDATA[rec_max = attr_table.LENGTH ;
shift =     (27-attr_table.LENGTHPOW);
preslot = -1;]]></code.init>
         <code.krate><![CDATA[full = array [(inlet_slot << 2) + 3];

if (inlet_arm && !arm) arm = 1;
if (arm){
	if ((inlet_rec && !ntrig ) && !full) {	
			 ntrig = 1;	
			 array [(inlet_slot << 2)] = recpos;
	if (preslot > -1)   array [(preslot << 2) + 1] = recpos;
			 chunk [chunks] = inlet_slot;
			 preslot = inlet_slot;
			 chunks += 1;			
		      rec = 1;}
}
if (!inlet_rec) ntrig = 0;

if (!inlet_arm && arm) {
	arm = 0;
	if (rec) array [(preslot << 2) + 1] = recpos;
	rec = 0;
	preslot = -1;
	int i;
  for(i=0;i<chunks;i++) array [(chunk [i] << 2 ) + 3] = 1;
	chunks = 0;
	}

 // clear
if (inlet_clear && !rtrig) {rtrig = 1;recpos = 0;preslot = -1;
 int i;
 for(i=0;i<512;i++) array[i]=0;} 
if (!inlet_clear) rtrig = 0;

//delete
if (inlet_delete && !dtrig) {dtrig = 1;array[(inlet_slot << 2) + 3] = 0 ;} 
if (!inlet_delete) dtrig = 0;

//compact
if (inlet_compact && !ctrig) {
	ctrig = 1;end = 0;
int i;
 for(i=0;i<512;i+= 4) if (array[i + 1] > end) end = array[i + 1];
 int ii;
 for(ii=0;ii<512;ii+= 4) if (array[ii + 1] && (!array[ii + 3]))
 { 
 sstart = array[ii];
 send = array[ii + 1];
 slength = ( array[ii + 1] - array[ii] );
 array[ii] = 0;
 array[ii + 1] = 0;
 int iii;
for(iii=0;iii<512;iii+= 4) if (array[iii] >= send) {array[iii] = (array[iii] - slength) ;array[iii + 1] = (array[iii +1] - slength);}
int iiii;
for(iiii=send;iiii<end;iiii+= 1) attr_table.array [iiii - slength] = attr_table.array [iiii]; 
end -= slength;
recpos -= slength;
 } 
}
if (!inlet_compact) ctrig = 0;

// get end
if (inlet_getend && !gtrig) {
 end = 0;
 gtrig = 1;
 int i;
 for(i=0;i<512;i+= 4) if (array[i + 1] > end) end = array[i + 1];
 recpos = end;
 } 
if (!inlet_getend) gtrig = 0;

	outlet_rec = ntrig;
  	outlet_full = full;
  	outlet_remain = (rec_max - recpos )<< shift;]]></code.krate>
         <code.srate><![CDATA[//record   

if (rec) {
 attr_table.array[recpos] =  __SSAT(inlet_wave,28 )>>attr_table.GAIN;
 recpos ++;    
}]]></code.srate>
      </object>
   </patchobj>
   <obj type="disp/dial p" uuid="44fd18b562e434b3230441681132dbeabb15cdc5" name="dial_1" x="1330" y="476">
      <params/>
      <attribs/>
   </obj>
   <patcher type="patch/patcher" uuid="68d10db4-ccc4-43ea-9aaa-21b041d62354" name="patcher_1" x="1722" y="490">
      <params>
         <frac32.s.map name="ldrive_1:speed" value="0.0"/>
         <bool32.tgl name="ldrive_1:1shot" value="0"/>
      </params>
      <attribs>
         <combo attributeName="poly" selection="8"/>
         <combo attributeName="midichannel" selection="inherit"/>
         <combo attributeName="mididevice" selection="omni"/>
         <combo attributeName="midiport" selection="omni"/>
      </attribs>
      <subpatch appVersion="1.0.12">
         <obj type="rbrt/midi/in/keyb zone i" uuid="507b5da7-595d-46ab-808e-6b038d7fe2d1" name="keyb_1" x="224" y="112">
            <params/>
            <attribs>
               <spinner attributeName="startNote" value="0"/>
               <spinner attributeName="endNote" value="127"/>
            </attribs>
         </obj>
         <patchobj type="patch/object" uuid="fdfa91e9-7362-4fe1-a010-ad840f8bff5b" name="tableread_2" x="574" y="112">
            <params/>
            <attribs>
               <objref attributeName="data" obj="../lrec_1"/>
               <objref attributeName="wave" obj="../rec"/>
            </attribs>
            <object id="patch/object" uuid="fdfa91e9-7362-4fe1-a010-ad840f8bff5b">
               <sDescription>read 8 values from a table,starting from &apos;offset&apos;</sDescription>
               <author>robert schirmer</author>
               <license>who cares</license>
               <inlets>
                  <int32 name="slot" description="sets an offset for writing to the table"/>
               </inlets>
               <outlets>
                  <frac32.positive name="offset"/>
                  <frac32.positive name="range"/>
                  <frac32.positive name="startpoint"/>
               </outlets>
               <displays/>
               <params/>
               <attribs>
                  <objref name="data"/>
                  <objref name="wave"/>
               </attribs>
               <includes/>
               <code.declaration><![CDATA[bool full;
uint8_t shift;]]></code.declaration>
               <code.init><![CDATA[shift =     (27-attr_wave.LENGTHPOW);]]></code.init>
               <code.krate><![CDATA[full = attr_data.array [(inlet_slot << 2) + 3];
outlet_offset  = (full) ?  attr_data.array [inlet_slot << 2] << shift : 0;
outlet_range  = (full) ?  (attr_data.array [(inlet_slot << 2) + 1] - attr_data.array [inlet_slot << 2]) << shift : 0;
outlet_startpoint = (full) ?  attr_data.array [(inlet_slot << 2) + 2] << shift : 0;]]></code.krate>
            </object>
         </patchobj>
         <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="1624" y="154">
            <params/>
            <attribs/>
         </obj>
         <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="wave" x="1806" y="154">
            <params/>
            <attribs/>
         </obj>
         <obj type="rbrt/looper/ldrive flex" uuid="b2b61bd5-a26d-4c90-a68f-844c09672372" name="ldrive_1" x="1316" y="168">
            <params>
               <frac32.s.map name="speed" onParent="true" value="64.0"/>
               <bool32.tgl name="1shot" onParent="true" value="0"/>
            </params>
            <attribs>
               <objref attributeName="table" obj="../rec"/>
            </attribs>
         </obj>
         <obj type="table/read interp" uuid="42918ec2255011ae3787cc5488c9b29980d796a8" name="read_1" x="1456" y="168">
            <params/>
            <attribs>
               <objref attributeName="table" obj="../rec"/>
            </attribs>
         </obj>
         <nets>
            <net>
               <source obj="ldrive_1" outlet="pos"/>
               <dest obj="read_1" inlet="a"/>
            </net>
            <net>
               <source obj="read_1" outlet="o"/>
               <dest obj="vca_1" inlet="a"/>
            </net>
            <net>
               <source obj="keyb_1" outlet="gate"/>
               <dest obj="ldrive_1" inlet="play"/>
               <dest obj="ldrive_1" inlet="r2offset"/>
            </net>
            <net>
               <source obj="ldrive_1" outlet="play"/>
               <dest obj="vca_1" inlet="v"/>
            </net>
            <net>
               <source obj="keyb_1" outlet="note"/>
               <dest obj="tableread_2" inlet="slot"/>
            </net>
            <net>
               <source obj="tableread_2" outlet="offset"/>
               <dest obj="ldrive_1" inlet="offset"/>
            </net>
            <net>
               <source obj="tableread_2" outlet="range"/>
               <dest obj="ldrive_1" inlet="range"/>
            </net>
            <net>
               <source obj="vca_1" outlet="o"/>
               <dest obj="wave" inlet="outlet"/>
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
            <x>17</x>
            <y>94</y>
            <width>1580</width>
            <height>717</height>
         </windowPos>
      </subpatch>
   </patcher>
   <obj type="audio/out stereo" uuid="a1ca7a567f535acc21055669829101d3ee7f0189" name="out_1" x="2282" y="518">
      <params/>
      <attribs/>
   </obj>
   <obj type="disp/bool" uuid="a0ee71d48208b71752cbb8c05e55145106ef3946" name="has sample" x="1330" y="560">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_2" x="1974" y="560">
      <params/>
      <attribs/>
   </obj>
   <obj type="string/c" uuid="4aa90a90c435a742ddfa152d232883fc5b2f1b3" name="c_1" x="910" y="826">
      <params/>
      <attribs>
         <table attributeName="str" table="blurbs.raw"/>
      </attribs>
   </obj>
   <obj type="table/save" uuid="3e4108b607d56d9e1cd10abb898b58eea11e53b2" name="save_2" x="1106" y="826">
      <params/>
      <attribs>
         <objref attributeName="table" obj="rec"/>
      </attribs>
   </obj>
   <obj type="ctrl/button" uuid="ef3d13774349df85aa9bfecf30dbc91ab8488b3f" name="button_7" x="770" y="854">
      <params>
         <bool32.mom name="b" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="string/c" uuid="4aa90a90c435a742ddfa152d232883fc5b2f1b3" name="c_2" x="910" y="938">
      <params/>
      <attribs>
         <table attributeName="str" table="blurbs.txt"/>
      </attribs>
   </obj>
   <obj type="table/save" uuid="3e4108b607d56d9e1cd10abb898b58eea11e53b2" name="save_1" x="1120" y="938">
      <params/>
      <attribs>
         <objref attributeName="table" obj="lrec_1"/>
      </attribs>
   </obj>
   <obj type="rbrt/launchpad/top disp" uuid="53640b5e-2345-494e-9be6-6130e20986e2" name="top_3" x="658" y="966">
      <params/>
      <attribs>
         <combo attributeName="device" selection="usb host port / LP"/>
         <spinner attributeName="button" value="7"/>
         <combo attributeName="on" selection="red S"/>
         <combo attributeName="off" selection="red W"/>
      </attribs>
   </obj>
   <obj type="string/c" uuid="4aa90a90c435a742ddfa152d232883fc5b2f1b3" name="c_3" x="910" y="1036">
      <params/>
      <attribs>
         <table attributeName="str" table="blurbsmod.txt"/>
      </attribs>
   </obj>
   <obj type="table/save" uuid="3e4108b607d56d9e1cd10abb898b58eea11e53b2" name="save_3" x="1120" y="1036">
      <params/>
      <attribs>
         <objref attributeName="table" obj="fx"/>
      </attribs>
   </obj>
   <obj type="table/load" uuid="600cc22c6734d23a82620da1a14e78782a7e168e" name="load_1" x="770" y="1134">
      <params/>
      <attribs>
         <objref attributeName="table" obj="rec"/>
      </attribs>
   </obj>
   <obj type="ctrl/button" uuid="ef3d13774349df85aa9bfecf30dbc91ab8488b3f" name="button_8" x="644" y="1148">
      <params>
         <bool32.mom name="b" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_8" x="1778" y="1204">
      <params>
         <frac32.u.map name="value" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="table/load" uuid="600cc22c6734d23a82620da1a14e78782a7e168e" name="load_2" x="770" y="1218">
      <params/>
      <attribs>
         <objref attributeName="table" obj="lrec_1"/>
      </attribs>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="dial_9" x="1778" y="1288">
      <params>
         <frac32.u.map name="value" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="table/load" uuid="600cc22c6734d23a82620da1a14e78782a7e168e" name="load_3" x="770" y="1316">
      <params/>
      <attribs>
         <objref attributeName="table" obj="fx"/>
      </attribs>
   </obj>
   <nets>
      <net>
         <source obj="lrec_1" outlet="full"/>
         <dest obj="has sample" inlet="in"/>
      </net>
      <net>
         <source obj="lrec_1" outlet="remain"/>
         <dest obj="dial_1" inlet="in"/>
      </net>
      <net>
         <source obj="in_1" outlet="left"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="in_1" outlet="right"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="lrec_1" inlet="wave"/>
      </net>
      <net>
         <dest obj="top_3" inlet="on"/>
         <dest obj="lrec_1" inlet="clear"/>
      </net>
      <net>
         <dest obj="out_1" inlet="right"/>
         <dest obj="out_1" inlet="left"/>
      </net>
      <net>
         <source obj="c_1" outlet="out"/>
         <dest obj="load_1" inlet="filename"/>
         <dest obj="save_2" inlet="filename"/>
      </net>
      <net>
         <source obj="button_7" outlet="o"/>
         <dest obj="save_1" inlet="trig"/>
         <dest obj="save_3" inlet="trig"/>
         <dest obj="save_2" inlet="trig"/>
      </net>
      <net>
         <source obj="c_2" outlet="out"/>
         <dest obj="save_1" inlet="filename"/>
         <dest obj="load_2" inlet="filename"/>
      </net>
      <net>
         <source obj="button_8" outlet="o"/>
         <dest obj="load_1" inlet="trig"/>
         <dest obj="load_2" inlet="trig"/>
         <dest obj="load_3" inlet="trig"/>
         <dest obj="lrec_1" inlet="getend"/>
      </net>
      <net>
         <source obj="c_3" outlet="out"/>
         <dest obj="save_3" inlet="filename"/>
         <dest obj="load_3" inlet="filename"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-8</x>
      <y>-8</y>
      <width>1616</width>
      <height>876</height>
   </windowPos>
</patch-1.0>