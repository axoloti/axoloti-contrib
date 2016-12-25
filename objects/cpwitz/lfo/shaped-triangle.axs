<patch-1.0 appVersion="1.0.11">
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="pitchmod" x="14" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="reset" x="126" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="shapemod" x="14" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_1" x="126" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/inv" uuid="565521d3699b36d8095aa1c79b9ad0046fb133ce" name="inv_1" x="210" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_1" x="280" y="84">
      <params/>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="8a8432e2-e020-40d3-9cdf-134a2928e03a" name="pitch" x="350" y="84">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="0.0"/>
      </params>
      <attribs/>
      <object id="patch/object" uuid="8a8432e2-e020-40d3-9cdf-134a2928e03a">
         <sDescription>Triangle wave LFO, unipolar, pitch, phase and reset inputs</sDescription>
         <author>Are Leistad</author>
         <license>BSD</license>
         <inlets>
            <frac32.bipolar name="pitch" description="Pitch Input"/>
            <frac32.bipolar name="phase" description="phase input"/>
            <bool32.rising name="reset" description="Reset phase"/>
         </inlets>
         <outlets>
            <frac32.positive name="tri" description="Triangle wave"/>
         </outlets>
         <displays/>
         <params>
            <frac32.s.map.lfopitch name="pitch" noLabel="true"/>
         </params>
         <attribs/>
         <includes/>
         <code.declaration><![CDATA[
      uint32_t phase;
      uint32_t old_reset;
      __attribute__( ( always_inline ) ) __STATIC_INLINE int32_t ___ABS (int32_t op1 )
      {
        int32_t result;
        __ASM volatile ( "movs  %0, %1\n"
                         "it    mi\n"
                         "rsbmi %0, %0, #0"
                         : "=r" (result)
                         : "r" (op1)
                       );
        return(result);
      };
    ]]></code.declaration>
         <code.init><![CDATA[
      phase = 0;
      old_reset = 0;
    ]]></code.init>
         <code.krate><![CDATA[

      if( inlet_reset && !old_reset )
        {
          phase = 0;
        }
      else
        {
          int32_t freq;
          MTOFEXTENDED( param_pitch + inlet_pitch, freq );
          phase += freq>>2;
        }
      old_reset = inlet_reset;

      int32_t saw = ((phase + (inlet_phase<<4))>>4) - (1<<27);
      outlet_tri  = (1<<27) - ___ABS( saw );

    ]]></code.krate>
      </object>
   </patchobj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="out" x="462" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="shape" x="14" y="154">
      <params>
         <frac32.s.map name="value" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="pitch" inlet="phase"/>
      </net>
      <net>
         <source obj="shape" outlet="out"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="pitch" outlet="tri"/>
         <dest obj="*_1" inlet="a"/>
         <dest obj="out" inlet="outlet"/>
      </net>
      <net>
         <source obj="inv_1" outlet="out"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="reset" outlet="inlet"/>
         <dest obj="pitch" inlet="reset"/>
      </net>
      <net>
         <source obj="pitchmod" outlet="inlet"/>
         <dest obj="pitch" inlet="pitch"/>
      </net>
      <net>
         <source obj="shapemod" outlet="inlet"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="inv_1" inlet="in"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>0</NPresets>
      <NPresetEntries>0</NPresetEntries>
      <NModulationSources>0</NModulationSources>
      <NModulationTargetsPerSource>0</NModulationTargetsPerSource>
      <Author>Peter Witzel</Author>
      <License>CC0</License>
      <Saturate>false</Saturate>
   </settings>
   <notes><![CDATA[Continuously shapeable lfo: ramp down/triangle/ramp up. Unipolar output.]]></notes>
   <windowPos>
      <x>584</x>
      <y>303</y>
      <width>1281</width>
      <height>859</height>
   </windowPos>
</patch-1.0>