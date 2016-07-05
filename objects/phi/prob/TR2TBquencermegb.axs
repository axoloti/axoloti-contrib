<patch-1.0 appVersion="1.0.10">
   <obj type="patch/inlet b" sha="17c8e188371661163bfa55cea9974eecb785fb06" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="gateDrum" x="28" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="rand/uniform f trig" sha="926c3f305c1c8031d3cad3e29eb688cee124ab2e" uuid="223873125a332e3b8a82795a3eef167993adb086" name="uniform_9" x="154" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/&lt;" sha="1b9f991b3ee7bbd48190ada0fefa35b908dc982b" uuid="c624e28be64ac9dad61b6dcd4ae6f241d2879167" name="&lt;=." x="266" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" sha="fcf3c7b64624a2ee10ab0923e03af3f1e8e2a648" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_3" x="336" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="rand/uniform i" sha="c7045bb3734e4fdb272c379df8d5e3df8c06a0a1" uuid="9b1f945f346af0165ed99b8e19136cdbf744e594" name="DrumsRndSteps" x="406" y="14">
      <params>
         <int32 name="max" onParent="true" value="16">
            <presets>
               <preset index="2">
                  <i i="12"/>
               </preset>
               <preset index="1">
                  <i i="16"/>
               </preset>
            </presets>
         </int32>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" sha="28ceb9074fe632debd6b911fe5db57bd34f85878" uuid="16f90f81694766b0bc8187bfcba5a021e5701d81" name="mux_5" x="490" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="sel/sel 4l 16" sha="9e3ae6a7db1c66667238470702a780a5e2d5fdd0" uuid="350102b0d3f1ca0bbba1cde09aedae8345ffb21a" name="BD" x="602" y="14">
      <params>
         <int2x16 name="t1" onParent="true" value="0">
            <presets>
               <preset index="16">
                  <i i="1849591473"/>
               </preset>
            </presets>
         </int2x16>
      </params>
      <attribs/>
   </obj>
   <obj type="math/muls 32" sha="3db530b82b96e720e060079838b6600f3cf56563" uuid="1fa8aa6bacdd3d663273740e0c09c7e37c370df7" name="muls_3" x="798" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" sha="ec71f518aa0e133062e5a9d4828d3739865c99f" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_8" x="882" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" sha="ec71f518aa0e133062e5a9d4828d3739865c99f" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_7" x="952" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" sha="9c18b5ec0ea721bb98852ab326891478ca87a360" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="bdrum" x="1036" y="14">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="224" y="56" text="prob"/>
   <obj type="patch/inlet i" sha="525f64aba3d51dde5253cccedd116ec84bf5d5d1" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="countdrum" x="28" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="rand/uniform f trig" sha="926c3f305c1c8031d3cad3e29eb688cee124ab2e" uuid="223873125a332e3b8a82795a3eef167993adb086" name="uniform_1" x="154" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/&lt;" sha="1b9f991b3ee7bbd48190ada0fefa35b908dc982b" uuid="c624e28be64ac9dad61b6dcd4ae6f241d2879167" name="&gt;_2" x="266" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" sha="fcf3c7b64624a2ee10ab0923e03af3f1e8e2a648" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_5" x="490" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="sel/sel 4l 16" sha="9e3ae6a7db1c66667238470702a780a5e2d5fdd0" uuid="350102b0d3f1ca0bbba1cde09aedae8345ffb21a" name="SN" x="602" y="84">
      <params>
         <int2x16 name="t1" onParent="true" value="0">
            <presets>
               <preset index="16">
                  <i i="1849591473"/>
               </preset>
            </presets>
         </int2x16>
      </params>
      <attribs/>
   </obj>
   <obj type="math/muls 32" sha="3db530b82b96e720e060079838b6600f3cf56563" uuid="1fa8aa6bacdd3d663273740e0c09c7e37c370df7" name="muls_4" x="798" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" sha="ec71f518aa0e133062e5a9d4828d3739865c99f" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_6" x="882" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" sha="ec71f518aa0e133062e5a9d4828d3739865c99f" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_5" x="952" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" sha="9c18b5ec0ea721bb98852ab326891478ca87a360" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="snare" x="1036" y="84">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="196" y="112" text="Random Step"/>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="AccDrum" x="28" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="sel/sel 4l 16" sha="9e3ae6a7db1c66667238470702a780a5e2d5fdd0" uuid="350102b0d3f1ca0bbba1cde09aedae8345ffb21a" name="Clhh" x="602" y="154">
      <params>
         <int2x16 name="t1" onParent="true" value="0">
            <presets>
               <preset index="16">
                  <i i="1849591473"/>
               </preset>
            </presets>
         </int2x16>
      </params>
      <attribs/>
   </obj>
   <obj type="math/muls 32" sha="3db530b82b96e720e060079838b6600f3cf56563" uuid="1fa8aa6bacdd3d663273740e0c09c7e37c370df7" name="muls_2" x="798" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" sha="ec71f518aa0e133062e5a9d4828d3739865c99f" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_4" x="882" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" sha="ec71f518aa0e133062e5a9d4828d3739865c99f" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_3" x="952" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" sha="9c18b5ec0ea721bb98852ab326891478ca87a360" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="clhh" x="1036" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="ProbDrum" x="28" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="sel/sel 4l 16" sha="9e3ae6a7db1c66667238470702a780a5e2d5fdd0" uuid="350102b0d3f1ca0bbba1cde09aedae8345ffb21a" name="Ohh" x="602" y="224">
      <params>
         <int2x16 name="t1" onParent="true" value="0">
            <presets>
               <preset index="16">
                  <i i="1849591473"/>
               </preset>
            </presets>
         </int2x16>
      </params>
      <attribs/>
   </obj>
   <obj type="math/muls 32" sha="3db530b82b96e720e060079838b6600f3cf56563" uuid="1fa8aa6bacdd3d663273740e0c09c7e37c370df7" name="muls_1" x="798" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" sha="ec71f518aa0e133062e5a9d4828d3739865c99f" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_2" x="882" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" sha="ec71f518aa0e133062e5a9d4828d3739865c99f" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_1" x="952" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" sha="9c18b5ec0ea721bb98852ab326891478ca87a360" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="ohh" x="1036" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="RndStepbDrum" x="28" y="238">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" sha="9c18b5ec0ea721bb98852ab326891478ca87a360" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="DrumCount" x="1036" y="266">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" sha="17c8e188371661163bfa55cea9974eecb785fb06" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="gateinA" x="28" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="rand/uniform f trig" sha="926c3f305c1c8031d3cad3e29eb688cee124ab2e" uuid="223873125a332e3b8a82795a3eef167993adb086" name="uniform_10" x="154" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/&lt;" sha="1b9f991b3ee7bbd48190ada0fefa35b908dc982b" uuid="c624e28be64ac9dad61b6dcd4ae6f241d2879167" name="&lt;=" x="266" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" sha="fcf3c7b64624a2ee10ab0923e03af3f1e8e2a648" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_4" x="336" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="rand/uniform i" sha="c7045bb3734e4fdb272c379df8d5e3df8c06a0a1" uuid="9b1f945f346af0165ed99b8e19136cdbf744e594" name="RndStepsA" x="406" y="322">
      <params>
         <int32 name="max" onParent="true" value="16">
            <presets>
               <preset index="2">
                  <i i="12"/>
               </preset>
               <preset index="1">
                  <i i="16"/>
               </preset>
            </presets>
         </int32>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" sha="28ceb9074fe632debd6b911fe5db57bd34f85878" uuid="16f90f81694766b0bc8187bfcba5a021e5701d81" name="mux_6" x="490" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="sel/sel 4l 16" sha="9e3ae6a7db1c66667238470702a780a5e2d5fdd0" uuid="350102b0d3f1ca0bbba1cde09aedae8345ffb21a" name="OctA" x="602" y="322">
      <params>
         <int2x16 name="t1" onParent="true" value="0">
            <presets>
               <preset index="16">
                  <i i="1849591473"/>
               </preset>
            </presets>
         </int2x16>
      </params>
      <attribs/>
   </obj>
   <obj type="math/muls 12" sha="80114b7c423b3c152da58fcac4369ad9a91e05fe" uuid="d6b556443075484966ce9f99adf1bcc9662d0126" name="muls_6" x="798" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" sha="c0c4ce40c7dec73dfbb009fd86c9b89c068b137a" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="oct" x="882" y="322">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="224" y="364" text="prob"/>
   <obj type="patch/inlet i" sha="525f64aba3d51dde5253cccedd116ec84bf5d5d1" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="countA" x="28" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="rand/uniform f trig" sha="926c3f305c1c8031d3cad3e29eb688cee124ab2e" uuid="223873125a332e3b8a82795a3eef167993adb086" name="uniform_2" x="154" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/&lt;" sha="1b9f991b3ee7bbd48190ada0fefa35b908dc982b" uuid="c624e28be64ac9dad61b6dcd4ae6f241d2879167" name="&gt;_4" x="266" y="378">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="840" y="378" text=" if slide is on"/>
   <obj type="logic/and 2" sha="fcf3c7b64624a2ee10ab0923e03af3f1e8e2a648" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_1" x="490" y="392">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="840" y="392" text="Sustains the gate"/>
   <comment type="patch/comment" x="938" y="392" text="play"/>
   <comment type="patch/comment" x="1204" y="392" text="keeps Acc when Slide is on"/>
   <comment type="patch/comment" x="840" y="406" text="or halfs note gate"/>
   <comment type="patch/comment" x="938" y="406" text="only if gate is on"/>
   <comment type="patch/comment" x="1036" y="406" text="mul gate "/>
   <comment type="patch/comment" x="1554" y="406" text="adds acc"/>
   <comment type="patch/comment" x="196" y="420" text="Random Step"/>
   <obj type="sel/sel 4l 16" sha="9e3ae6a7db1c66667238470702a780a5e2d5fdd0" uuid="350102b0d3f1ca0bbba1cde09aedae8345ffb21a" name="GateA" x="602" y="420">
      <params>
         <int2x16 name="t1" onParent="true" value="0">
            <presets>
               <preset index="16">
                  <i i="1849591473"/>
               </preset>
            </presets>
         </int2x16>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" sha="39c64f8958b4334d9767864dde93394de4ba4fe3" uuid="e1c92bc92f4d191bfadf0efeae4503b458a4e440" name="mux_3" x="840" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" sha="fcf3c7b64624a2ee10ab0923e03af3f1e8e2a648" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="*_9" x="938" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" sha="7e319fe50a328b6a49ddfac92c641e987706dd39" uuid="13882852b58661ad012ffbe246470b5df4b6c5d1" name="*_11" x="1036" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/latch" sha="efe28fa4b70e8abfb7de3dff6cad26b8c6a8c95e" uuid="14750683752bd43205826430adb7168dae3cc2c" name="latch" x="1218" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" sha="ec71f518aa0e133062e5a9d4828d3739865c99f" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_16" x="1372" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/muls 32" sha="3db530b82b96e720e060079838b6600f3cf56563" uuid="1fa8aa6bacdd3d663273740e0c09c7e37c370df7" name="muls_5" x="1470" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" sha="ec71f518aa0e133062e5a9d4828d3739865c99f" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_10" x="1554" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" sha="9c18b5ec0ea721bb98852ab326891478ca87a360" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Gate/Acca" x="1610" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="AccA" x="28" y="434">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" sha="d53edf73b9c33108cbb6e5487759ac27b809cfcc" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="slidea" x="1610" y="462">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="1036" y="476" text="gatea"/>
   <obj type="logic/and 2" sha="fcf3c7b64624a2ee10ab0923e03af3f1e8e2a648" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and..." x="1078" y="476">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="1372" y="476" text="only when gate is on"/>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="ProbA" x="28" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" sha="73ba55fbf61b80b78dd5cb4f0c4bd5cbbdd54ea0" uuid="3bcb8a666381ed18b8962eda50b1aa679136f618" name="when slide on keep acc" x="1274" y="504">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" sha="9c18b5ec0ea721bb98852ab326891478ca87a360" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Counta" x="1610" y="504">
      <params/>
      <attribs/>
   </obj>
   <obj type="sel/sel b 16" sha="6682fc38e0107fe6e8000e4bb0fc4bab7c74a256" uuid="ee021bac36292c167fe475835603aac88a83b3fd" name="SlideA" x="602" y="518">
      <params>
         <bin16 name="b16" onParent="true" value="0">
            <presets>
               <preset index="16">
                  <i i="27201"/>
               </preset>
            </presets>
         </bin16>
      </params>
      <attribs/>
   </obj>
   <obj type="logic/inv" sha="a8bfe6f6bbfd2a76e25328c139315bc7aa2a6e18" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_1" x="840" y="532">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="1078" y="532" text="only when slide on"/>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="RndStepbA" x="28" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" sha="17c8e188371661163bfa55cea9974eecb785fb06" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="GateB" x="28" y="630">
      <params/>
      <attribs/>
   </obj>
   <obj type="rand/uniform f trig" sha="926c3f305c1c8031d3cad3e29eb688cee124ab2e" uuid="223873125a332e3b8a82795a3eef167993adb086" name="uniform_12" x="154" y="630">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/&lt;" sha="1b9f991b3ee7bbd48190ada0fefa35b908dc982b" uuid="c624e28be64ac9dad61b6dcd4ae6f241d2879167" name="&lt;= B" x="266" y="630">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" sha="fcf3c7b64624a2ee10ab0923e03af3f1e8e2a648" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_9" x="336" y="630">
      <params/>
      <attribs/>
   </obj>
   <obj type="rand/uniform i" sha="c7045bb3734e4fdb272c379df8d5e3df8c06a0a1" uuid="9b1f945f346af0165ed99b8e19136cdbf744e594" name="RndStepsB" x="406" y="630">
      <params>
         <int32 name="max" onParent="true" value="16">
            <presets>
               <preset index="2">
                  <i i="12"/>
               </preset>
               <preset index="1">
                  <i i="16"/>
               </preset>
            </presets>
         </int32>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" sha="28ceb9074fe632debd6b911fe5db57bd34f85878" uuid="16f90f81694766b0bc8187bfcba5a021e5701d81" name="mux_7" x="490" y="630">
      <params/>
      <attribs/>
   </obj>
   <obj type="sel/sel 4l 16" sha="9e3ae6a7db1c66667238470702a780a5e2d5fdd0" uuid="350102b0d3f1ca0bbba1cde09aedae8345ffb21a" name="OctB" x="602" y="630">
      <params>
         <int2x16 name="t1" onParent="true" value="0">
            <presets>
               <preset index="16">
                  <i i="1849591473"/>
               </preset>
            </presets>
         </int2x16>
      </params>
      <attribs/>
   </obj>
   <obj type="math/muls 12" sha="80114b7c423b3c152da58fcac4369ad9a91e05fe" uuid="d6b556443075484966ce9f99adf1bcc9662d0126" name="muls_8" x="798" y="630">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" sha="c0c4ce40c7dec73dfbb009fd86c9b89c068b137a" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="oct_" x="882" y="630">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="224" y="672" text="prob"/>
   <obj type="patch/inlet i" sha="525f64aba3d51dde5253cccedd116ec84bf5d5d1" uuid="f11927f00c59219df0c50f73056aa19f125540b7" name="countB" x="28" y="686">
      <params/>
      <attribs/>
   </obj>
   <obj type="rand/uniform f trig" sha="926c3f305c1c8031d3cad3e29eb688cee124ab2e" uuid="223873125a332e3b8a82795a3eef167993adb086" name="uniform_4" x="154" y="686">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/&lt;" sha="1b9f991b3ee7bbd48190ada0fefa35b908dc982b" uuid="c624e28be64ac9dad61b6dcd4ae6f241d2879167" name="&gt;_6" x="266" y="686">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="840" y="686" text=" if slide is on"/>
   <obj type="logic/and 2" sha="fcf3c7b64624a2ee10ab0923e03af3f1e8e2a648" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_2" x="490" y="700">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="840" y="700" text="Sustains the gate"/>
   <comment type="patch/comment" x="938" y="700" text="play"/>
   <comment type="patch/comment" x="840" y="714" text="or halfs note gate"/>
   <comment type="patch/comment" x="938" y="714" text="only if gate is on"/>
   <comment type="patch/comment" x="1036" y="714" text="mul gate "/>
   <comment type="patch/comment" x="196" y="728" text="Random Step"/>
   <obj type="sel/sel 4l 16" sha="9e3ae6a7db1c66667238470702a780a5e2d5fdd0" uuid="350102b0d3f1ca0bbba1cde09aedae8345ffb21a" name="Gate B" x="602" y="728">
      <params>
         <int2x16 name="t1" onParent="true" value="0">
            <presets>
               <preset index="16">
                  <i i="1849591473"/>
               </preset>
            </presets>
         </int2x16>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" sha="39c64f8958b4334d9767864dde93394de4ba4fe3" uuid="e1c92bc92f4d191bfadf0efeae4503b458a4e440" name="mux_4" x="840" y="728">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" sha="fcf3c7b64624a2ee10ab0923e03af3f1e8e2a648" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="*_13" x="938" y="728">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" sha="7e319fe50a328b6a49ddfac92c641e987706dd39" uuid="13882852b58661ad012ffbe246470b5df4b6c5d1" name="*_14" x="1036" y="728">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/latch" sha="efe28fa4b70e8abfb7de3dff6cad26b8c6a8c95e" uuid="14750683752bd43205826430adb7168dae3cc2c" name="latch_" x="1218" y="728">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" sha="ec71f518aa0e133062e5a9d4828d3739865c99f" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_17" x="1386" y="728">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/muls 32" sha="3db530b82b96e720e060079838b6600f3cf56563" uuid="1fa8aa6bacdd3d663273740e0c09c7e37c370df7" name="muls_7" x="1484" y="728">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" sha="ec71f518aa0e133062e5a9d4828d3739865c99f" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_12" x="1568" y="728">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" sha="9c18b5ec0ea721bb98852ab326891478ca87a360" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Gate/Accb" x="1624" y="728">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="AccB" x="28" y="742">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" sha="d53edf73b9c33108cbb6e5487759ac27b809cfcc" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="slideb" x="1624" y="770">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="1036" y="784" text="gateb"/>
   <obj type="logic/and 2" sha="fcf3c7b64624a2ee10ab0923e03af3f1e8e2a648" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="only when Slide is on_" x="1078" y="784">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="ProbB" x="28" y="798">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" sha="73ba55fbf61b80b78dd5cb4f0c4bd5cbbdd54ea0" uuid="3bcb8a666381ed18b8962eda50b1aa679136f618" name="when slide on keep acc_" x="1274" y="798">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" sha="9c18b5ec0ea721bb98852ab326891478ca87a360" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Countb" x="1624" y="812">
      <params/>
      <attribs/>
   </obj>
   <obj type="sel/sel b 16" sha="6682fc38e0107fe6e8000e4bb0fc4bab7c74a256" uuid="ee021bac36292c167fe475835603aac88a83b3fd" name="SlideB" x="602" y="826">
      <params>
         <bin16 name="b16" onParent="true" value="0">
            <presets>
               <preset index="16">
                  <i i="27201"/>
               </preset>
            </presets>
         </bin16>
      </params>
      <attribs/>
   </obj>
   <obj type="logic/inv" sha="a8bfe6f6bbfd2a76e25328c139315bc7aa2a6e18" uuid="2bd44b865d3b63ff9b80862242bf5be779e3ad5" name="inv_2" x="840" y="840">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="RndStepbB" x="28" y="854">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="DrumsRndSteps" outlet="v"/>
         <dest obj="mux_5" inlet="i2"/>
      </net>
      <net>
         <source obj="Ohh" outlet="o"/>
         <dest obj="muls_1" inlet="in"/>
      </net>
      <net>
         <source obj="Clhh" outlet="o"/>
         <dest obj="muls_2" inlet="in"/>
      </net>
      <net>
         <source obj="SN" outlet="o"/>
         <dest obj="muls_4" inlet="in"/>
      </net>
      <net>
         <source obj="BD" outlet="o"/>
         <dest obj="muls_3" inlet="in"/>
      </net>
      <net>
         <source obj="uniform_9" outlet="rand"/>
         <dest obj="&lt;=." inlet="in1"/>
      </net>
      <net>
         <source obj="gateDrum" outlet="inlet"/>
         <dest obj="and_3" inlet="i2"/>
         <dest obj="uniform_1" inlet="trig"/>
         <dest obj="uniform_9" inlet="trig"/>
         <dest obj="and_5" inlet="i2"/>
      </net>
      <net>
         <source obj="countdrum" outlet="inlet"/>
         <dest obj="mux_5" inlet="i1"/>
      </net>
      <net>
         <source obj="and_3" outlet="o"/>
         <dest obj="DrumsRndSteps" inlet="trig"/>
         <dest obj="and_5" inlet="i1"/>
      </net>
      <net>
         <source obj="OctA" outlet="o"/>
         <dest obj="muls_6" inlet="in"/>
      </net>
      <net>
         <source obj="SlideA" outlet="o"/>
         <dest obj="inv_1" inlet="i"/>
         <dest obj="slidea" inlet="outlet"/>
         <dest obj="when slide on keep acc" inlet="s"/>
         <dest obj="mux_3" inlet="i2"/>
         <dest obj="mux_3" inlet="s"/>
      </net>
      <net>
         <source obj="*_9" outlet="o"/>
         <dest obj="*_11" inlet="a"/>
      </net>
      <net>
         <source obj="RndStepsA" outlet="v"/>
         <dest obj="mux_6" inlet="i2"/>
      </net>
      <net>
         <source obj="and_4" outlet="o"/>
         <dest obj="RndStepsA" inlet="trig"/>
         <dest obj="and_1" inlet="i1"/>
         <dest obj="mux_3" inlet="i1"/>
      </net>
      <net>
         <source obj="GateA" outlet="o"/>
         <dest obj="*_9" inlet="i2"/>
         <dest obj="*_11" inlet="b"/>
      </net>
      <net>
         <source obj="uniform_10" outlet="rand"/>
         <dest obj="&lt;=" inlet="in1"/>
      </net>
      <net>
         <source obj="and..." outlet="o"/>
         <dest obj="latch" inlet="trig"/>
      </net>
      <net>
         <source obj="inv_1" outlet="o"/>
         <dest obj="and..." inlet="i2"/>
      </net>
      <net>
         <source obj="OctB" outlet="o"/>
         <dest obj="muls_8" inlet="in"/>
      </net>
      <net>
         <source obj="*_13" outlet="o"/>
         <dest obj="*_14" inlet="a"/>
      </net>
      <net>
         <source obj="Gate B" outlet="o"/>
         <dest obj="*_13" inlet="i2"/>
         <dest obj="*_14" inlet="b"/>
      </net>
      <net>
         <source obj="only when Slide is on_" outlet="o"/>
         <dest obj="latch_" inlet="trig"/>
      </net>
      <net>
         <source obj="inv_2" outlet="o"/>
         <dest obj="only when Slide is on_" inlet="i2"/>
      </net>
      <net>
         <source obj="gateinA" outlet="inlet"/>
         <dest obj="uniform_10" inlet="trig"/>
         <dest obj="and_4" inlet="i2"/>
         <dest obj="uniform_2" inlet="trig"/>
         <dest obj="and_1" inlet="i2"/>
      </net>
      <net>
         <source obj="ProbDrum" outlet="inlet"/>
         <dest obj="&lt;=." inlet="in2"/>
      </net>
      <net>
         <source obj="uniform_1" outlet="rand"/>
         <dest obj="&gt;_2" inlet="in1"/>
      </net>
      <net>
         <source obj="RndStepbDrum" outlet="inlet"/>
         <dest obj="&gt;_2" inlet="in2"/>
      </net>
      <net>
         <source obj="ProbA" outlet="inlet"/>
         <dest obj="&lt;=" inlet="in2"/>
      </net>
      <net>
         <source obj="AccA" outlet="inlet"/>
         <dest obj="*_10" inlet="b"/>
      </net>
      <net>
         <source obj="RndStepbA" outlet="inlet"/>
         <dest obj="&gt;_4" inlet="in2"/>
      </net>
      <net>
         <source obj="uniform_2" outlet="rand"/>
         <dest obj="&gt;_4" inlet="in1"/>
      </net>
      <net>
         <source obj="RndStepsB" outlet="v"/>
         <dest obj="mux_7" inlet="i2"/>
      </net>
      <net>
         <source obj="and_9" outlet="o"/>
         <dest obj="RndStepsB" inlet="trig"/>
         <dest obj="and_2" inlet="i1"/>
         <dest obj="mux_4" inlet="i1"/>
      </net>
      <net>
         <source obj="uniform_12" outlet="rand"/>
         <dest obj="&lt;= B" inlet="in1"/>
      </net>
      <net>
         <source obj="GateB" outlet="inlet"/>
         <dest obj="uniform_12" inlet="trig"/>
         <dest obj="and_9" inlet="i2"/>
         <dest obj="uniform_4" inlet="trig"/>
         <dest obj="and_2" inlet="i2"/>
      </net>
      <net>
         <source obj="ProbB" outlet="inlet"/>
         <dest obj="&lt;= B" inlet="in2"/>
      </net>
      <net>
         <source obj="RndStepbB" outlet="inlet"/>
         <dest obj="&gt;_6" inlet="in2"/>
      </net>
      <net>
         <source obj="uniform_4" outlet="rand"/>
         <dest obj="&gt;_6" inlet="in1"/>
      </net>
      <net>
         <source obj="AccB" outlet="inlet"/>
         <dest obj="*_12" inlet="b"/>
      </net>
      <net>
         <source obj="countB" outlet="inlet"/>
         <dest obj="mux_7" inlet="i1"/>
      </net>
      <net>
         <source obj="countA" outlet="inlet"/>
         <dest obj="mux_6" inlet="i1"/>
      </net>
      <net>
         <source obj="SlideB" outlet="o"/>
         <dest obj="inv_2" inlet="i"/>
         <dest obj="slideb" inlet="outlet"/>
         <dest obj="when slide on keep acc_" inlet="s"/>
         <dest obj="mux_4" inlet="i2"/>
         <dest obj="mux_4" inlet="s"/>
      </net>
      <net>
         <source obj="and_1" outlet="o"/>
         <dest obj="*_16" inlet="b"/>
      </net>
      <net>
         <source obj="and_2" outlet="o"/>
         <dest obj="*_17" inlet="b"/>
      </net>
      <net>
         <source obj="&lt;=." outlet="out"/>
         <dest obj="and_3" inlet="i1"/>
      </net>
      <net>
         <source obj="mux_5" outlet="o"/>
         <dest obj="DrumCount" inlet="outlet"/>
         <dest obj="Ohh" inlet="in"/>
         <dest obj="Clhh" inlet="in"/>
         <dest obj="BD" inlet="in"/>
         <dest obj="SN" inlet="in"/>
      </net>
      <net>
         <source obj="muls_4" outlet="out"/>
         <dest obj="*_6" inlet="a"/>
      </net>
      <net>
         <source obj="&gt;_2" outlet="out"/>
         <dest obj="mux_5" inlet="s"/>
      </net>
      <net>
         <source obj="muls_2" outlet="out"/>
         <dest obj="*_4" inlet="a"/>
      </net>
      <net>
         <source obj="muls_1" outlet="out"/>
         <dest obj="*_2" inlet="a"/>
      </net>
      <net>
         <source obj="&lt;=" outlet="out"/>
         <dest obj="and_4" inlet="i1"/>
      </net>
      <net>
         <source obj="mux_6" outlet="o"/>
         <dest obj="OctA" inlet="in"/>
         <dest obj="SlideA" inlet="in"/>
         <dest obj="GateA" inlet="in"/>
         <dest obj="Counta" inlet="outlet"/>
      </net>
      <net>
         <source obj="muls_6" outlet="out"/>
         <dest obj="oct" inlet="outlet"/>
      </net>
      <net>
         <source obj="&gt;_4" outlet="out"/>
         <dest obj="mux_6" inlet="s"/>
      </net>
      <net>
         <source obj="when slide on keep acc" outlet="o"/>
         <dest obj="*_16" inlet="a"/>
      </net>
      <net>
         <source obj="mux_3" outlet="o"/>
         <dest obj="*_9" inlet="i1"/>
      </net>
      <net>
         <source obj="*_11" outlet="result"/>
         <dest obj="and..." inlet="i1"/>
         <dest obj="when slide on keep acc" inlet="i1"/>
         <dest obj="latch" inlet="i"/>
      </net>
      <net>
         <source obj="latch" outlet="o"/>
         <dest obj="when slide on keep acc" inlet="i2"/>
      </net>
      <net>
         <source obj="*_16" outlet="result"/>
         <dest obj="muls_5" inlet="in"/>
      </net>
      <net>
         <source obj="muls_5" outlet="out"/>
         <dest obj="*_10" inlet="a"/>
      </net>
      <net>
         <source obj="*_10" outlet="result"/>
         <dest obj="Gate/Acca" inlet="outlet"/>
      </net>
      <net>
         <source obj="mux_7" outlet="o"/>
         <dest obj="OctB" inlet="in"/>
         <dest obj="Gate B" inlet="in"/>
         <dest obj="Countb" inlet="outlet"/>
         <dest obj="SlideB" inlet="in"/>
      </net>
      <net>
         <source obj="muls_8" outlet="out"/>
         <dest obj="oct_" inlet="outlet"/>
      </net>
      <net>
         <source obj="&gt;_6" outlet="out"/>
         <dest obj="mux_7" inlet="s"/>
      </net>
      <net>
         <source obj="mux_4" outlet="o"/>
         <dest obj="*_13" inlet="i1"/>
      </net>
      <net>
         <source obj="*_14" outlet="result"/>
         <dest obj="only when Slide is on_" inlet="i1"/>
         <dest obj="when slide on keep acc_" inlet="i1"/>
         <dest obj="latch_" inlet="i"/>
      </net>
      <net>
         <source obj="latch_" outlet="o"/>
         <dest obj="when slide on keep acc_" inlet="i2"/>
      </net>
      <net>
         <source obj="*_17" outlet="result"/>
         <dest obj="muls_7" inlet="in"/>
      </net>
      <net>
         <source obj="muls_7" outlet="out"/>
         <dest obj="*_12" inlet="a"/>
      </net>
      <net>
         <source obj="*_12" outlet="result"/>
         <dest obj="Gate/Accb" inlet="outlet"/>
      </net>
      <net>
         <source obj="AccDrum" outlet="inlet"/>
         <dest obj="*_8" inlet="b"/>
         <dest obj="*_6" inlet="b"/>
         <dest obj="*_4" inlet="b"/>
         <dest obj="*_2" inlet="b"/>
      </net>
      <net>
         <source obj="&lt;= B" outlet="out"/>
         <dest obj="and_9" inlet="i1"/>
      </net>
      <net>
         <source obj="muls_3" outlet="out"/>
         <dest obj="*_8" inlet="a"/>
      </net>
      <net>
         <source obj="*_8" outlet="result"/>
         <dest obj="*_7" inlet="b"/>
      </net>
      <net>
         <source obj="*_6" outlet="result"/>
         <dest obj="*_5" inlet="b"/>
      </net>
      <net>
         <source obj="*_4" outlet="result"/>
         <dest obj="*_3" inlet="b"/>
      </net>
      <net>
         <source obj="*_2" outlet="result"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="*_7" outlet="result"/>
         <dest obj="bdrum" inlet="outlet"/>
      </net>
      <net>
         <source obj="*_3" outlet="result"/>
         <dest obj="clhh" inlet="outlet"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="ohh" inlet="outlet"/>
      </net>
      <net>
         <source obj="*_5" outlet="result"/>
         <dest obj="snare" inlet="outlet"/>
      </net>
      <net>
         <source obj="and_5" outlet="o"/>
         <dest obj="*_7" inlet="a"/>
         <dest obj="*_5" inlet="a"/>
         <dest obj="*_3" inlet="a"/>
         <dest obj="*_1" inlet="a"/>
      </net>
      <net>
         <source obj="when slide on keep acc_" outlet="o"/>
         <dest obj="*_17" inlet="a"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <NPresets>0</NPresets>
      <NPresetEntries>0</NPresetEntries>
      <NModulationSources>0</NModulationSources>
      <NModulationTargetsPerSource>0</NModulationTargetsPerSource>
      <Author>Philoop</Author>
      <License>GPL</License>
      <Attributions> 303 gate Sequencer </Attributions>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-8</x>
      <y>-8</y>
      <width>1936</width>
      <height>1066</height>
   </windowPos>
</patch-1.0>