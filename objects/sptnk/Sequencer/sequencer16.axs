<patch-1.0>
   <obj type="const/i" sha="15b9dce9232a04e8881936a6ea800e66ae8e0da9" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_2" x="336" y="0">
      <params/>
      <attribs>
         <spinner attributeName="value" value="15"/>
      </attribs>
   </obj>
   <obj type="ctrl/toggle" sha="f5742cc9eee76fae90a4e570c34596dd327b6c28" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="Manual step select" x="1008" y="0">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/-" sha="554de2692f3e366237f42785f5b0d75ff7823aa3" uuid="1643d55e6e7ce1c995a5e66db9f54fd969e6c9b7" name="-_2" x="336" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" sha="f5742cc9eee76fae90a4e570c34596dd327b6c28" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="Latch to trigger" x="1008" y="56">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="196" y="84" text="Feed the counter forward"/>
   <obj type="logic/counter2" sha="520bfefaef89b5ba4deb2a4d79b4236f0b321489" uuid="d9536f238ab92e53ac93d5927c3b43ceef998dc1" name="counter2_1" x="196" y="98">
      <params>
         <int32 name="maximum" value="16"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" sha="17c8e188371661163bfa55cea9974eecb785fb06" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Clock In" x="0" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="timer/pulselength" sha="86ef23ee0ae7cffc4c8ae0d9e258473d5dc57764" uuid="ca68725237d8ba8407773340801660a9fd9b0dba" name="Pulse" x="84" y="112">
      <params>
         <frac32.s.map name="delay" value="-64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" sha="f5742cc9eee76fae90a4e570c34596dd327b6c28" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="Backwards reset mode" x="1008" y="112">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" sha="28ceb9074fe632debd6b911fe5db57bd34f85878" uuid="16f90f81694766b0bc8187bfcba5a021e5701d81" name="mux_5" x="336" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" sha="17c8e188371661163bfa55cea9974eecb785fb06" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Reset" x="0" y="154">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet b" sha="17c8e188371661163bfa55cea9974eecb785fb06" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Backwards" x="0" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 16 h" sha="b27c95e316eef50efd132664e9d89de4cf21d19c" uuid="75b78d9270bc08741651a7b7acae0fb789172fca" name="Manual step" x="476" y="196">
      <params>
         <int32.hradio name="value" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="238" y="238" text="Allow reset only when synced to clock"/>
   <obj type="logic/and 2" sha="fcf3c7b64624a2ee10ab0923e03af3f1e8e2a648" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_1" x="238" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/or 2" sha="6941575503e8a946c74e5388ec4e6a97468ae3c5" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="or_1" x="322" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" sha="28ceb9074fe632debd6b911fe5db57bd34f85878" uuid="16f90f81694766b0bc8187bfcba5a021e5701d81" name="Select Between Sequencer mode and manual mode" x="476" y="252">
      <params/>
      <attribs/>
   </obj>
   <obj type="const/i" sha="15b9dce9232a04e8881936a6ea800e66ae8e0da9" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_3" x="140" y="308">
      <params/>
      <attribs>
         <spinner attributeName="value" value="15"/>
      </attribs>
   </obj>
   <obj type="math/&gt;" sha="6ce6ff4d125547d10653d4bac2820364d8297d6f" uuid="a459588d6498caeb4daf3a07f9d5e9b4a657262f" name="&gt;_2" x="238" y="308">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 2" sha="39c64f8958b4334d9767864dde93394de4ba4fe3" uuid="e1c92bc92f4d191bfadf0efeae4503b458a4e440" name="mux_4" x="322" y="308">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="476" y="322" text="Manual step select as an alternative for the main counter"/>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Value 1" x="0" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/-" sha="554de2692f3e366237f42785f5b0d75ff7823aa3" uuid="1643d55e6e7ce1c995a5e66db9f54fd969e6c9b7" name="-_3" x="140" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/&gt;" sha="6ce6ff4d125547d10653d4bac2820364d8297d6f" uuid="a459588d6498caeb4daf3a07f9d5e9b4a657262f" name="&gt;_3" x="238" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/and 2" sha="fcf3c7b64624a2ee10ab0923e03af3f1e8e2a648" uuid="c67031682f552aa0a80b23377495c51ea28a8c9c" name="and_2" x="322" y="378">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Value 2" x="0" y="406">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" sha="9c18b5ec0ea721bb98852ab326891478ca87a360" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Current Step" x="1022" y="420">
      <params/>
      <attribs/>
   </obj>
   <obj type="sel/sel b 16 pulse" sha="45e8caabeb8ef96796bb2633cb2d164cc41509f2" uuid="b52a026dd735305ac8ddf499e366883006aa2acf" name="Trigger sequencer" x="238" y="434">
      <params>
         <bin16 name="b16" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Value 3" x="0" y="448">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" sha="c0c4ce40c7dec73dfbb009fd86c9b89c068b137a" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="CV out" x="1022" y="462">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Value 4" x="0" y="490">
      <params/>
      <attribs/>
   </obj>
   <obj type="sel/sel b 16 old" sha="4b7c529b7fbaef1fe5021f1407986c598614ff70" uuid="92a0fdadbd955817214e2fc7345f6ceb7bb4ea36" name="Gate sequencer" x="238" y="504">
      <params>
         <bin16 name="b16" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" sha="d53edf73b9c33108cbb6e5487759ac27b809cfcc" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="Trigger out" x="1022" y="504">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Value 5" x="0" y="532">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet b" sha="d53edf73b9c33108cbb6e5487759ac27b809cfcc" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="Gate out" x="1022" y="546">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/i radio 16 h" sha="b27c95e316eef50efd132664e9d89de4cf21d19c" uuid="75b78d9270bc08741651a7b7acae0fb789172fca" name="Sequence length" x="238" y="560">
      <params>
         <int32.hradio name="value" onParent="true" value="15"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Value 6" x="0" y="574">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="504" y="588" text="I had to put this to compensate for"/>
   <obj type="patch/outlet b" sha="d53edf73b9c33108cbb6e5487759ac27b809cfcc" uuid="191792f616d4835dba0b55375474a12942e5bcbd" name="Restart" x="1022" y="588">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="504" y="602" text="a sequencer lag when using latch"/>
   <obj type="mux/mux 2" sha="73ba55fbf61b80b78dd5cb4f0c4bd5cbbdd54ea0" uuid="3bcb8a666381ed18b8962eda50b1aa679136f618" name="mux_6" x="784" y="602">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Value 7" x="0" y="616">
      <params/>
      <attribs/>
   </obj>
   <obj type="timer/delayedpulse" sha="5539e718df5cf366409d4957ce55598a2d1d1e9" uuid="3f05ee534ca67755fb20c7437f9e4de3d4c2f73d" name="delayedpulse_1" x="546" y="616">
      <params>
         <frac32.s.map name="delay" value="-64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="logic/latch" sha="efe28fa4b70e8abfb7de3dff6cad26b8c6a8c95e" uuid="14750683752bd43205826430adb7168dae3cc2c" name="latch_2" x="686" y="630">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Value 8" x="0" y="658">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 8" sha="8235eae55c039d753de98e786521870a1302ce53" uuid="de5167d9da39b04039376e8cc620ea2afc22e28a" name="mux_1" x="350" y="658">
      <params/>
      <attribs/>
   </obj>
   <obj type="logic/or 2" sha="6941575503e8a946c74e5388ec4e6a97468ae3c5" uuid="3805d3c84d30032a44fbdbe42d9a2988a1790a3e" name="or_2" x="1022" y="672">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Value 9" x="0" y="700">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Value 10" x="0" y="742">
      <params/>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="448" y="756" text="Multiplexing stuff"/>
   <obj type="mux/mux 2" sha="73ba55fbf61b80b78dd5cb4f0c4bd5cbbdd54ea0" uuid="3bcb8a666381ed18b8962eda50b1aa679136f618" name="mux_3" x="448" y="770">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Value 11" x="0" y="784">
      <params/>
      <attribs/>
   </obj>
   <obj type="mux/mux 8" sha="8235eae55c039d753de98e786521870a1302ce53" uuid="de5167d9da39b04039376e8cc620ea2afc22e28a" name="mux_2" x="350" y="812">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Value 12" x="0" y="826">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Value 13" x="0" y="868">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Value 14" x="0" y="910">
      <params/>
      <attribs/>
   </obj>
   <obj type="const/i" sha="15b9dce9232a04e8881936a6ea800e66ae8e0da9" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_1" x="98" y="924">
      <params/>
      <attribs>
         <spinner attributeName="value" value="7"/>
      </attribs>
   </obj>
   <obj type="math/-" sha="554de2692f3e366237f42785f5b0d75ff7823aa3" uuid="1643d55e6e7ce1c995a5e66db9f54fd969e6c9b7" name="-_1" x="196" y="924">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/-1" sha="88adb7a3d71999935940bb439df8ac9e05354a06" uuid="5fd46bab471bb6509ae83de702dea72933683a98" name="-1_1" x="280" y="924">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Value 15" x="0" y="952">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/&gt;" sha="6ce6ff4d125547d10653d4bac2820364d8297d6f" uuid="a459588d6498caeb4daf3a07f9d5e9b4a657262f" name="&gt;_1" x="378" y="980">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Value 16" x="0" y="994">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="i_1" outlet="out"/>
         <dest obj="&gt;_1" inlet="in2"/>
         <dest obj="-_1" inlet="in2"/>
      </net>
      <net>
         <source obj="mux_1" outlet="o"/>
         <dest obj="mux_3" inlet="i1"/>
      </net>
      <net>
         <source obj="mux_2" outlet="o"/>
         <dest obj="mux_3" inlet="i2"/>
      </net>
      <net>
         <source obj="&gt;_1" outlet="out"/>
         <dest obj="mux_3" inlet="s"/>
      </net>
      <net>
         <source obj="-_1" outlet="out"/>
         <dest obj="-1_1" inlet="a"/>
      </net>
      <net>
         <source obj="-1_1" outlet="result"/>
         <dest obj="mux_2" inlet="s"/>
      </net>
      <net>
         <source obj="Select Between Sequencer mode and manual mode" outlet="o"/>
         <dest obj="mux_1" inlet="s"/>
         <dest obj="-_1" inlet="in1"/>
         <dest obj="&gt;_1" inlet="in1"/>
         <dest obj="Trigger sequencer" inlet="in"/>
         <dest obj="Gate sequencer" inlet="in"/>
         <dest obj="Current Step" inlet="outlet"/>
      </net>
      <net>
         <source obj="Manual step select" outlet="o"/>
         <dest obj="Select Between Sequencer mode and manual mode" inlet="s"/>
      </net>
      <net>
         <source obj="Trigger sequencer" outlet="o"/>
         <dest obj="Trigger out" inlet="outlet"/>
         <dest obj="delayedpulse_1" inlet="trig"/>
      </net>
      <net>
         <source obj="Value 1" outlet="inlet"/>
         <dest obj="mux_1" inlet="i0"/>
      </net>
      <net>
         <source obj="Value 2" outlet="inlet"/>
         <dest obj="mux_1" inlet="i1"/>
      </net>
      <net>
         <source obj="Value 3" outlet="inlet"/>
         <dest obj="mux_1" inlet="i2"/>
      </net>
      <net>
         <source obj="Value 4" outlet="inlet"/>
         <dest obj="mux_1" inlet="i3"/>
      </net>
      <net>
         <source obj="Value 5" outlet="inlet"/>
         <dest obj="mux_1" inlet="i4"/>
      </net>
      <net>
         <source obj="Value 6" outlet="inlet"/>
         <dest obj="mux_1" inlet="i5"/>
      </net>
      <net>
         <source obj="Value 7" outlet="inlet"/>
         <dest obj="mux_1" inlet="i6"/>
      </net>
      <net>
         <source obj="Value 8" outlet="inlet"/>
         <dest obj="mux_1" inlet="i7"/>
      </net>
      <net>
         <source obj="Value 9" outlet="inlet"/>
         <dest obj="mux_2" inlet="i0"/>
      </net>
      <net>
         <source obj="Value 10" outlet="inlet"/>
         <dest obj="mux_2" inlet="i1"/>
      </net>
      <net>
         <source obj="Value 11" outlet="inlet"/>
         <dest obj="mux_2" inlet="i2"/>
      </net>
      <net>
         <source obj="Value 12" outlet="inlet"/>
         <dest obj="mux_2" inlet="i3"/>
      </net>
      <net>
         <source obj="Value 13" outlet="inlet"/>
         <dest obj="mux_2" inlet="i4"/>
      </net>
      <net>
         <source obj="Value 14" outlet="inlet"/>
         <dest obj="mux_2" inlet="i5"/>
      </net>
      <net>
         <source obj="Value 15" outlet="inlet"/>
         <dest obj="mux_2" inlet="i6"/>
      </net>
      <net>
         <source obj="Value 16" outlet="inlet"/>
         <dest obj="mux_2" inlet="i7"/>
      </net>
      <net>
         <source obj="Gate sequencer" outlet="o"/>
         <dest obj="Gate out" inlet="outlet"/>
      </net>
      <net>
         <source obj="Pulse" outlet="pulse"/>
         <dest obj="and_1" inlet="i1"/>
         <dest obj="counter2_1" inlet="inc"/>
      </net>
      <net>
         <source obj="Reset" outlet="inlet"/>
         <dest obj="and_1" inlet="i2"/>
      </net>
      <net>
         <source obj="Manual step" outlet="out"/>
         <dest obj="Select Between Sequencer mode and manual mode" inlet="i2"/>
      </net>
      <net>
         <source obj="and_1" outlet="o"/>
         <dest obj="or_1" inlet="i1"/>
      </net>
      <net>
         <source obj="or_1" outlet="o"/>
         <dest obj="counter2_1" inlet="r"/>
         <dest obj="or_2" inlet="i2"/>
      </net>
      <net>
         <source obj="counter2_1" outlet="o"/>
         <dest obj="&gt;_2" inlet="in1"/>
         <dest obj="mux_5" inlet="i1"/>
         <dest obj="-_2" inlet="in2"/>
         <dest obj="&gt;_3" inlet="in1"/>
      </net>
      <net>
         <source obj="counter2_1" outlet="c"/>
         <dest obj="or_2" inlet="i1"/>
      </net>
      <net>
         <source obj="or_2" outlet="o"/>
         <dest obj="Restart" inlet="outlet"/>
      </net>
      <net>
         <source obj="&gt;_2" outlet="out"/>
         <dest obj="mux_4" inlet="i1"/>
      </net>
      <net>
         <source obj="Sequence length" outlet="out"/>
         <dest obj="&gt;_2" inlet="in2"/>
         <dest obj="-_3" inlet="in2"/>
      </net>
      <net>
         <source obj="Backwards" outlet="inlet"/>
         <dest obj="and_2" inlet="i1"/>
         <dest obj="mux_5" inlet="s"/>
      </net>
      <net>
         <source obj="mux_4" outlet="o"/>
         <dest obj="or_1" inlet="i2"/>
      </net>
      <net>
         <source obj="-_2" outlet="out"/>
         <dest obj="mux_5" inlet="i2"/>
      </net>
      <net>
         <source obj="mux_5" outlet="o"/>
         <dest obj="Select Between Sequencer mode and manual mode" inlet="i1"/>
      </net>
      <net>
         <source obj="i_2" outlet="out"/>
         <dest obj="-_2" inlet="in1"/>
      </net>
      <net>
         <source obj="Clock In" outlet="inlet"/>
         <dest obj="Pulse" inlet="trig"/>
      </net>
      <net>
         <source obj="&gt;_3" outlet="out"/>
         <dest obj="mux_4" inlet="i2"/>
      </net>
      <net>
         <source obj="i_3" outlet="out"/>
         <dest obj="-_3" inlet="in1"/>
      </net>
      <net>
         <source obj="-_3" outlet="out"/>
         <dest obj="&gt;_3" inlet="in2"/>
      </net>
      <net>
         <source obj="Backwards reset mode" outlet="o"/>
         <dest obj="and_2" inlet="i2"/>
      </net>
      <net>
         <source obj="and_2" outlet="o"/>
         <dest obj="mux_4" inlet="s"/>
      </net>
      <net>
         <source obj="mux_3" outlet="o"/>
         <dest obj="latch_2" inlet="i"/>
         <dest obj="mux_6" inlet="i1"/>
      </net>
      <net>
         <source obj="Latch to trigger" outlet="o"/>
         <dest obj="mux_6" inlet="s"/>
      </net>
      <net>
         <source obj="latch_2" outlet="o"/>
         <dest obj="mux_6" inlet="i2"/>
      </net>
      <net>
         <source obj="mux_6" outlet="o"/>
         <dest obj="CV out" inlet="outlet"/>
      </net>
      <net>
         <source obj="delayedpulse_1" outlet="pulse"/>
         <dest obj="latch_2" inlet="trig"/>
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
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>0</x>
      <y>-4</y>
      <width>1366</width>
      <height>772</height>
   </windowPos>
</patch-1.0>