<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="f" x="28" y="98">
      <params/>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="7ca123ac-9f47-4457-a9ca-e947b4bfa008" name="div_440Hz" x="196" y="98">
      <params/>
      <attribs/>
      <object id="patch/object" uuid="7ca123ac-9f47-4457-a9ca-e947b4bfa008">
         <sDescription></sDescription>
         <inlets>
            <frac32 name="in"/>
         </inlets>
         <outlets>
            <frac32 name="out"/>
         </outlets>
         <displays/>
         <params/>
         <attribs/>
         <includes/>
         <code.krate><![CDATA[outlet_out = ___SMMUL(inlet_in,28597532<<5);

//28597532 it's a magic number, basically the reciprocal of 440Hz but in axoloti frac format]]></code.krate>
      </object>
   </patchobj>
   <obj type="math/log" uuid="8145e73067e1e41ccdd725e99c4ca1361760c6ea" name="log_1" x="280" y="98">
      <params/>
      <attribs/>
   </obj>
   <patchobj type="patch/object" uuid="7ca123ac-9f47-4457-a9ca-e947b4bfa008" name="BFFFFFF" x="364" y="98">
      <params/>
      <attribs/>
      <object id="patch/object" uuid="7ca123ac-9f47-4457-a9ca-e947b4bfa008">
         <inlets>
            <frac32 name="in"/>
         </inlets>
         <outlets>
            <frac32 name="out"/>
         </outlets>
         <displays/>
         <params/>
         <attribs/>
         <includes/>
         <code.krate><![CDATA[outlet_out = ___SMMLA(inlet_in<<3,0xBFFFFFF<<2,5<<(27-6));

//BFFFFFF it's another magic number, i got it trying to minimize the pitch over the -64 , +64 range
//5 is the midi note corresponding to 440 Hz, which i've used as normalizing frequency in the logarithm:
//when input is 440Hz, then log(440/440) = log(1) = 0
//and the output should be midi note 5 (A4)]]></code.krate>
      </object>
   </patchobj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="m" x="798" y="98">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="f" outlet="inlet"/>
         <dest obj="div_440Hz" inlet="in"/>
      </net>
      <net>
         <source obj="log_1" outlet="result"/>
         <dest obj="BFFFFFF" inlet="in"/>
      </net>
      <net>
         <source obj="div_440Hz" outlet="out"/>
         <dest obj="log_1" inlet="a"/>
      </net>
      <net>
         <source obj="BFFFFFF" outlet="out"/>
         <dest obj="m" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
      <Author>Sputnki</Author>
      <License>BSD</License>
      <Attributions></Attributions>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-8</x>
      <y>-8</y>
      <width>1382</width>
      <height>784</height>
   </windowPos>
</patch-1.0>