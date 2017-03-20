<patch-1.0 appVersion="1.0.12">
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="on" x="308" y="14">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="inL" x="28" y="24">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="inR" x="28" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_1" x="126" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/div 2" uuid="ad1e413d83e5edce017e3e9a4f30d86035cf637" name="div_1" x="210" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" uuid="539c246f4c360ac476e128cfbfa84348fb7f7e73" name="mux_1" x="308" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="*c_1" x="434" y="84">
      <params>
         <frac32.u.map name="amp" onParent="true" value="17.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="delay/write" uuid="bd73958e3830021807ee97a8cff4500a72a5710d" name="d1" x="546" y="84">
      <params/>
      <attribs>
         <combo attributeName="size" selection="2048 (42.66ms)"/>
      </attribs>
   </obj>
   <obj type="delay/read" uuid="9323a43569373145e559ad309eaf65a47b14cb54" name="read_1" x="140" y="224">
      <params>
         <frac32.u.map name="time" value="14.0"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="d1"/>
      </attribs>
   </obj>
   <obj type="delay/read" uuid="9323a43569373145e559ad309eaf65a47b14cb54" name="read_2" x="140" y="322">
      <params>
         <frac32.u.map name="time" value="21.5"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="d1"/>
      </attribs>
   </obj>
   <obj type="math/inv" uuid="7f4c6cf4dcf79f9b0aa81c2eaf540405875714a3" name="inv_1" x="294" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="delay/read" uuid="9323a43569373145e559ad309eaf65a47b14cb54" name="read_3" x="140" y="420">
      <params>
         <frac32.u.map name="time" value="31.5"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="d1"/>
      </attribs>
   </obj>
   <obj type="mix/mix 3 g" uuid="efc0bdb8ca0ec2184330951eff5203ff487e35a9" name="mix_1" x="364" y="420">
      <params>
         <frac32.u.map name="gain1" value="34.5"/>
         <frac32.u.map name="gain2" value="33.0"/>
         <frac32.u.map name="gain3" value="16.5"/>
      </params>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="b277c2df-b636-4235-855c-a8ee023568a7" name="decay" x="574" y="420">
      <params>
         <frac32.u.map name="size" onParent="true" value="0.0"/>
         <frac32.u.map name="decay" onParent="true" value="0.0"/>
      </params>
      <attribs>
         <spinner attributeName="d1" value="656"/>
         <spinner attributeName="d2" value="523"/>
         <spinner attributeName="d3" value="859"/>
         <spinner attributeName="d4" value="1289"/>
      </attribs>
      <object id="patch/object" uuid="b277c2df-b636-4235-855c-a8ee023568a7">
         <sDescription>Feedback delay network with 4 delay lines. High quality 32bit.</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>fdn4.axh</helpPatch>
         <inlets>
            <frac32buffer name="in1" description="in1"/>
            <frac32buffer name="in2" description="in2"/>
            <frac32buffer name="in3" description="in3"/>
            <frac32buffer name="in4" description="in4"/>
         </inlets>
         <outlets>
            <frac32buffer name="out1" description="out1"/>
            <frac32buffer name="out2" description="out2"/>
            <frac32buffer name="out3" description="out3"/>
            <frac32buffer name="out4" description="out4"/>
         </outlets>
         <displays/>
         <params>
            <frac32.u.map name="size"/>
            <frac32.u.map name="decay"/>
         </params>
         <attribs>
            <spinner name="d1" MinValue="0" MaxValue="606" DefaultValue="0"/>
            <spinner name="d2" MinValue="0" MaxValue="606" DefaultValue="0"/>
            <spinner name="d3" MinValue="0" MaxValue="606" DefaultValue="0"/>
            <spinner name="d4" MinValue="0" MaxValue="606" DefaultValue="0"/>
         </attribs>
         <includes/>
         <code.declaration><![CDATA[int32_t TIMES[607]={307,311,313,317,331,337,347,349,353,359,367,373,379,383,389,397,401,409,419,421,431,433,439,443,449,457,461,463,467,479,487,491,499,503,509,521,523,541,547,557,563,569,571,577,587,593,599,601,607,613,617,619,631,641,643,647,653,659,661,673,677,683,691,701,709,719,727,733,739,743,751,757,761,769,773,787,797,809,811,821,823,827,829,839,853,857,859,863,877,881,883,887,907,911,919,929,937,941,947,953,967,971,977,983,991,997,1009,1013,1019,1021,1031,1033,1039,1049,1051,1061,1063,1069,1087,1091,1093,1097,1103,1109,1117,1123,1129,1151,1153,1163,1171,1181,1187,1193,1201,1213,1217,1223,1229,1231,1237,1249,1259,1277,1279,1283,1289,1291,1297,1301,1303,1307,1319,1321,1327,1361,1367,1373,1381,1399,1409,1423,1427,1429,1433,1439,1447,1451,1453,1459,1471,1481,1483,1487,1489,1493,1499,1511,1523,1531,1543,1549,1553,1559,1567,1571,1579,1583,1597,1601,1607,1609,1613,1619,1621,1627,1637,1657,1663,1667,1669,1693,1697,1699,1709,1721,1723,1733,1741,1747,1753,1759,1777,1783,1787,1789,1801,1811,1823,1831,1847,1861,1867,1871,1873,1877,1879,1889,1901,1907,1913,1931,1933,1949,1951,1973,1979,1987,1993,1997,1999,2003,2011,2017,2027,2029,2039,2053,2063,2069,2081,2083,2087,2089,2099,2111,2113,2129,2131,2137,2141,2143,2153,2161,2179,2203,2207,2213,2221,2237,2239,2243,2251,2267,2269,2273,2281,2287,2293,2297,2309,2311,2333,2339,2341,2347,2351,2357,2371,2377,2381,2383,2389,2393,2399,2411,2417,2423,2437,2441,2447,2459,2467,2473,2477,2503,2521,2531,2539,2543,2549,2551,2557,2579,2591,2593,2609,2617,2621,2633,2647,2657,2659,2663,2671,2677,2683,2687,2689,2693,2699,2707,2711,2713,2719,2729,2731,2741,2749,2753,2767,2777,2789,2791,2797,2801,2803,2819,2833,2837,2843,2851,2857,2861,2879,2887,2897,2903,2909,2917,2927,2939,2953,2957,2963,2969,2971,2999,3001,3011,3019,3023,3037,3041,3049,3061,3067,3079,3083,3089,3109,3119,3121,3137,3163,3167,3169,3181,3187,3191,3203,3209,3217,3221,3229,3251,3253,3257,3259,3271,3299,3301,3307,3313,3319,3323,3329,3331,3343,3347,3359,3361,3371,3373,3389,3391,3407,3413,3433,3449,3457,3461,3463,3467,3469,3491,3499,3511,3517,3527,3529,3533,3539,3541,3547,3557,3559,3571,3581,3583,3593,3607,3613,3617,3623,3631,3637,3643,3659,3671,3673,3677,3691,3697,3701,3709,3719,3727,3733,3739,3761,3767,3769,3779,3793,3797,3803,3821,3823,3833,3847,3851,3853,3863,3877,3881,3889,3907,3911,3917,3919,3923,3929,3931,3943,3947,3967,3989,4001,4003,4007,4013,4019,4021,4027,4049,4051,4057,4073,4079,4091,4093,4099,4111,4127,4129,4133,4139,4153,4157,4159,4177,4201,4211,4217,4219,4229,4231,4241,4243,4253,4259,4261,4271,4273,4283,4289,4297,4327,4337,4339,4349,4357,4363,4373,4391,4397,4409,4421,4423,4441,4447,4451,4457,4463,4481,4483,4493,4507,4513,4517,4519,4523,4547,4549,4561,4567,4583,4591,4597,4603,4621,4637,4639,4643,4649,4651,4657,4663,4673,4679,4691,4703,4721,4723,4729,4733,4751,4759,4783,4787,4789,4793,4799,4801,4813,4817,4831,4861,4871,4877,4889,4903,4909,4919,4931,4933,4937,4943,4951,4957,4967,4969,4973,4987,4993,4999}
int32_t d1d[TIMES[attr_d1]];
int32_t d2d[TIMES[attr_d2]];
int32_t d3d[TIMES[attr_d3]];
int32_t d4d[TIMES[attr_d4]];
uint32_t d1p;
uint32_t d2p;
uint32_t d3p;
uint32_t d4p;]]></code.declaration>
         <code.init><![CDATA[int i;for(i=0;i<attr_d1;i++) d1d[i]=0;
for(i=0;i<attr_d2;i++) d2d[i]=0;
for(i=0;i<attr_d3;i++) d3d[i]=0;
for(i=0;i<attr_d4;i++) d4d[i]=0;
d1p = 0;
d2p = 0;
d3p = 0;
d4p = 0;]]></code.init>
         <code.krate><![CDATA[int32_t g2 = 755299123+param_decay;
int32_t D1=___SMMUL(TIMES[attr_d1]-1<<3,param_size<<2)+1;
int32_t D2=___SMMUL(TIMES[attr_d2]-1<<3,param_size<<2)+1;
int32_t D3=___SMMUL(TIMES[attr_d3]-1<<3,param_size<<2)+1;
int32_t D4=___SMMUL(TIMES[attr_d4]-1<<3,param_size<<2)+1;]]></code.krate>
         <code.srate><![CDATA[int32_t i1 = inlet_in1 + d1d[d1p];
int32_t i2 = inlet_in2 + d2d[d2p];
int32_t i3 = inlet_in3 + d3d[d3p];
int32_t i4 = inlet_in4 + d4d[d4p];
int32_t t1 = i2 + i3;
int32_t t2 = -i1 - i4;
int32_t t3 = i1 - i4;
int32_t t4 = i2 - i3;
int32_t o1 = ___SMMLA(t1,g2,t1>>1);
int32_t o2 = ___SMMLA(t2,g2,t2>>1);
int32_t o3 = ___SMMLA(t3,g2,t3>>1);
int32_t o4 = ___SMMLA(t4,g2,t4>>1);
d1d[d1p] = o1;
d2d[d2p] = o2;
d3d[d3p] = o3;
d4d[d4p] = o4;
d1p++;
d2p++;
d3p++;
d4p++;
if (d1p >= D1) d1p = 0;
if (d2p >= D2) d2p = 0;
if (d3p >= D3) d3p = 0;
if (d4p >= D4) d4p = 0;
outlet_out1 = o1;
outlet_out2 = o2;
outlet_out3 = o3;
outlet_out4 = o4;]]></code.srate>
      </object>
   </patchobj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_2" x="700" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outL" x="812" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_3" x="700" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outR" x="812" y="504">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="inL" outlet="inlet"/>
         <dest obj="+_1" inlet="in1"/>
         <dest obj="+_2" inlet="in1"/>
      </net>
      <net>
         <source obj="inR" outlet="inlet"/>
         <dest obj="+_1" inlet="in2"/>
         <dest obj="+_3" inlet="in2"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="div_1" inlet="in"/>
      </net>
      <net>
         <source obj="*c_1" outlet="out"/>
         <dest obj="d1" inlet="in"/>
         <dest obj="mix_1" inlet="bus_in"/>
      </net>
      <net>
         <source obj="read_1" outlet="out"/>
         <dest obj="mix_1" inlet="in1"/>
      </net>
      <net>
         <source obj="read_3" outlet="out"/>
         <dest obj="mix_1" inlet="in3"/>
      </net>
      <net>
         <source obj="read_2" outlet="out"/>
         <dest obj="inv_1" inlet="in"/>
      </net>
      <net>
         <source obj="inv_1" outlet="out"/>
         <dest obj="mix_1" inlet="in2"/>
      </net>
      <net>
         <source obj="mix_1" outlet="out"/>
         <dest obj="decay" inlet="in1"/>
      </net>
      <net>
         <source obj="decay" outlet="out4"/>
         <dest obj="+_2" inlet="in2"/>
      </net>
      <net>
         <source obj="decay" outlet="out3"/>
         <dest obj="+_3" inlet="in1"/>
      </net>
      <net>
         <source obj="div_1" outlet="out"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="*c_1" inlet="in"/>
      </net>
      <net>
         <source obj="on" outlet="o"/>
         <dest obj="mux_1" inlet="s"/>
      </net>
      <net>
         <source obj="+_2" outlet="out"/>
         <dest obj="outL" inlet="outlet"/>
      </net>
      <net>
         <source obj="+_3" outlet="out"/>
         <dest obj="outR" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>4</NPresetEntries>
      <NModulationSources>1</NModulationSources>
      <NModulationTargetsPerSource>4</NModulationTargetsPerSource>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>141</x>
      <y>0</y>
      <width>1122</width>
      <height>814</height>
   </windowPos>
</patch-1.0>