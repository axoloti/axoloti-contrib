<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="A" x="406" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="D" x="406" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="S" x="406" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="midi/in/keyb mod" uuid="abcd509d15e7d13d5381203fd2b4d0ac6fe57bb3" name="keyb_1" x="560" y="392">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/adsr m" uuid="98bd39fb828c392b28126d259cb5175e6f6ea34b" name="adsr_1" x="658" y="392">
      <params>
         <frac32.s.map name="a" onParent="true" value="-64.0"/>
         <frac32.s.map name="d" onParent="true" value="32.0"/>
         <frac32.u.map name="s" onParent="true" value="29.5"/>
         <frac32.s.map name="r" onParent="true" value="18.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_1" x="728" y="392">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/math/bipAmp" uuid="054d3d1f-4bbf-4622-b310-c2f4d89cb965" name="ENV2PWM" x="784" y="392">
      <params>
         <frac32.s.map name="amp" onParent="true" value="12.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/math/bipAmp" uuid="054d3d1f-4bbf-4622-b310-c2f4d89cb965" name="ENV2MOD" x="882" y="392">
      <params>
         <frac32.s.map name="amp" onParent="true" value="12.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="sss/math/bipAmp" uuid="054d3d1f-4bbf-4622-b310-c2f4d89cb965" name="ENV2START" x="980" y="392">
      <params>
         <frac32.s.map name="amp" onParent="true" value="12.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="R" x="406" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="PWM" x="406" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="784" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_2" x="882" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_3" x="980" y="476">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="MOD" x="406" y="504">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="START" x="406" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="rand/uniform f trig" uuid="223873125a332e3b8a82795a3eef167993adb086" name="uniform_1" x="546" y="602">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/math/bipAmp" uuid="054d3d1f-4bbf-4622-b310-c2f4d89cb965" name="random freq" x="560" y="644">
      <params>
         <frac32.s.map name="amp" value="0.09999990463256836"/>
      </params>
      <attribs/>
   </obj>
   <obj type="conv/to i" uuid="305966430ee86b5c3b8e18cde0c721657c558a87" name="to_1" x="714" y="658">
      <params/>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="76c26af4-4d5a-4a30-8144-343f126262fb" name="note2preset" x="784" y="658">
      <params>
         <frac32.s.map name="amp" onParent="true" value="12.0"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="76c26af4-4d5a-4a30-8144-343f126262fb">
         <sDescription>Multiply (attenuate) with a constant value</sDescription>
         <author>Johannes Taelman</author>
         <license>BSD</license>
         <helpPatch>math.axh</helpPatch>
         <inlets>
            <int32 name="in"/>
         </inlets>
         <outlets>
            <int32 name="out"/>
         </outlets>
         <displays/>
         <params>
            <frac32.s.map name="amp" noLabel="true"/>
         </params>
         <attribs/>
         <includes/>
         <code.krate><![CDATA[outlet_out= ___SMMUL(param_amp<<4,inlet_in<<5);]]></code.krate>
      </object>
   </patchobj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_4" x="882" y="658">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/osc/guitarTableOsc" uuid="5ec444b9-5f52-4378-bfa7-305cef8d1d37" name="guitarTableOsc_1" x="952" y="658">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="0.0"/>
         <frac32.u.map name="pwm" onParent="true" value="23.0"/>
         <frac32.u.map name="mod" onParent="true" value="41.0"/>
         <frac32.u.map name="start" onParent="true" value="28.5"/>
         <frac32.u.map name="preset" onParent="true" value="0.0"/>
      </params>
      <attribs>
         <objref attributeName="table" obj="../waveformLoader_1"/>
      </attribs>
   </obj>
   <obj type="filter/lp1 m" uuid="18b561d14f9175f5380e6a1d9d55ca41e0e61974" name="lp1_1" x="1078" y="658">
      <params>
         <frac32.u.map name="freq" value="7.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="1176" y="658">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="*c_1" x="1232" y="658">
      <params>
         <frac32.u.map name="amp" onParent="true" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="1330" y="658">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="adsr_1" outlet="env"/>
         <dest obj="*_1" inlet="a"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="*c_1" inlet="in"/>
      </net>
      <net>
         <source obj="*c_1" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="velocity"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="vca_1" inlet="v"/>
         <dest obj="ENV2PWM" inlet="in"/>
         <dest obj="ENV2MOD" inlet="in"/>
         <dest obj="ENV2START" inlet="in"/>
         <dest obj="lp1_1" inlet="freq"/>
      </net>
      <net>
         <source obj="guitarTableOsc_1" outlet="wave"/>
         <dest obj="lp1_1" inlet="in"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="gate2"/>
         <dest obj="adsr_1" inlet="gate"/>
         <dest obj="uniform_1" inlet="trig"/>
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
         <source obj="+_1" outlet="out"/>
         <dest obj="guitarTableOsc_1" inlet="pwm"/>
      </net>
      <net>
         <source obj="+_2" outlet="out"/>
         <dest obj="guitarTableOsc_1" inlet="mod"/>
      </net>
      <net>
         <source obj="+_3" outlet="out"/>
         <dest obj="guitarTableOsc_1" inlet="start"/>
      </net>
      <net>
         <source obj="ENV2PWM" outlet="out"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="ENV2MOD" outlet="out"/>
         <dest obj="+_2" inlet="in1"/>
      </net>
      <net>
         <source obj="ENV2START" outlet="out"/>
         <dest obj="+_3" inlet="in1"/>
      </net>
      <net>
         <source obj="PWM" outlet="inlet"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="MOD" outlet="inlet"/>
         <dest obj="+_2" inlet="in2"/>
      </net>
      <net>
         <source obj="START" outlet="inlet"/>
         <dest obj="+_3" inlet="in2"/>
      </net>
      <net>
         <source obj="+_4" outlet="out"/>
         <dest obj="guitarTableOsc_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="keyb_1" outlet="note"/>
         <dest obj="to_1" inlet="i"/>
         <dest obj="+_4" inlet="in1"/>
      </net>
      <net>
         <source obj="uniform_1" outlet="rand"/>
         <dest obj="random freq" inlet="in"/>
      </net>
      <net>
         <source obj="random freq" outlet="out"/>
         <dest obj="+_4" inlet="in2"/>
      </net>
      <net>
         <source obj="lp1_1" outlet="out"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="to_1" outlet="o"/>
         <dest obj="note2preset" inlet="in"/>
      </net>
      <net>
         <source obj="note2preset" outlet="out"/>
         <dest obj="guitarTableOsc_1" inlet="preset"/>
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
      <Author>SirSickSik</Author>
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