<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.5.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="LPS22HBTR">
<packages>
<package name="PQFN50P200X200X80-10N">
<wire x1="-1" y1="1" x2="1" y2="1" width="0.127" layer="51"/>
<wire x1="1" y1="1" x2="1" y2="-1" width="0.127" layer="51"/>
<wire x1="1" y1="-1" x2="-1" y2="-1" width="0.127" layer="51"/>
<wire x1="-1" y1="-1" x2="-1" y2="1" width="0.127" layer="51"/>
<wire x1="-1" y1="0.75" x2="-1" y2="1" width="0.127" layer="21"/>
<wire x1="1" y1="1" x2="1" y2="0.75" width="0.127" layer="21"/>
<wire x1="1" y1="-1" x2="1" y2="-0.75" width="0.127" layer="21"/>
<wire x1="-1" y1="-1" x2="-1" y2="-0.75" width="0.127" layer="21"/>
<wire x1="-1.25" y1="1.25" x2="1.25" y2="1.25" width="0.05" layer="39"/>
<wire x1="1.25" y1="1.25" x2="1.25" y2="-1.25" width="0.05" layer="39"/>
<wire x1="1.25" y1="-1.25" x2="-1.25" y2="-1.25" width="0.05" layer="39"/>
<wire x1="-1.25" y1="-1.25" x2="-1.25" y2="1.25" width="0.05" layer="39"/>
<circle x="-1.5" y="0.3" radius="0.1" width="0.2" layer="21"/>
<circle x="-1.5" y="0.3" radius="0.1" width="0.2" layer="51"/>
<text x="-1.5" y="1.3" size="0.6096" layer="25">&gt;NAME</text>
<text x="-1.5" y="-1.3" size="0.6096" layer="27" align="top-left">&gt;VALUE</text>
<smd name="1" x="-0.745" y="0.25" dx="0.43" dy="0.35" layer="1"/>
<smd name="2" x="-0.745" y="-0.25" dx="0.43" dy="0.35" layer="1"/>
<smd name="3" x="-0.5" y="-0.745" dx="0.35" dy="0.43" layer="1"/>
<smd name="4" x="0" y="-0.745" dx="0.35" dy="0.43" layer="1"/>
<smd name="5" x="0.5" y="-0.745" dx="0.35" dy="0.43" layer="1"/>
<smd name="6" x="0.745" y="-0.25" dx="0.43" dy="0.35" layer="1"/>
<smd name="7" x="0.745" y="0.25" dx="0.43" dy="0.35" layer="1"/>
<smd name="8" x="0.5" y="0.745" dx="0.35" dy="0.43" layer="1"/>
<smd name="9" x="0" y="0.745" dx="0.35" dy="0.43" layer="1"/>
<smd name="10" x="-0.5" y="0.745" dx="0.35" dy="0.43" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="LPS22HBTR">
<wire x1="15.24" y1="17.78" x2="15.24" y2="-17.78" width="0.254" layer="94"/>
<wire x1="15.24" y1="-17.78" x2="-15.24" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-17.78" x2="-15.24" y2="17.78" width="0.254" layer="94"/>
<wire x1="-15.24" y1="17.78" x2="15.24" y2="17.78" width="0.254" layer="94"/>
<text x="-15.24" y="20.32" size="1.778" layer="95" align="top-left">&gt;NAME</text>
<text x="-15.24" y="-20.32" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VDD_IO" x="20.32" y="12.7" length="middle" direction="pwr" rot="R180"/>
<pin name="VDD" x="20.32" y="15.24" length="middle" direction="pwr" rot="R180"/>
<pin name="SCL/SPC" x="-20.32" y="0" length="middle" direction="in" function="clk"/>
<pin name="SDA/SDI/SDO" x="-20.32" y="-5.08" length="middle"/>
<pin name="SDO/SA0" x="-20.32" y="-7.62" length="middle"/>
<pin name="INT_DRDY" x="20.32" y="5.08" length="middle" direction="out" rot="R180"/>
<pin name="CS" x="-20.32" y="7.62" length="middle" direction="in"/>
<pin name="RESERVED" x="20.32" y="-12.7" length="middle" direction="pas" rot="R180"/>
<pin name="GND" x="20.32" y="-15.24" length="middle" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LPS22HBTR" prefix="A">
<description>Pressure Sensor 3.77PSI ~ 18.27PSI (26kPa ~ 126kPa) Absolute 24 b 10-WFLGA Exposed Pad </description>
<gates>
<gate name="G$1" symbol="LPS22HBTR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PQFN50P200X200X80-10N">
<connects>
<connect gate="G$1" pin="CS" pad="6"/>
<connect gate="G$1" pin="GND" pad="8 9"/>
<connect gate="G$1" pin="INT_DRDY" pad="7"/>
<connect gate="G$1" pin="RESERVED" pad="3"/>
<connect gate="G$1" pin="SCL/SPC" pad="2"/>
<connect gate="G$1" pin="SDA/SDI/SDO" pad="4"/>
<connect gate="G$1" pin="SDO/SA0" pad="5"/>
<connect gate="G$1" pin="VDD" pad="10"/>
<connect gate="G$1" pin="VDD_IO" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value=" Pressure Sensor 3.77PSI ~ 18.27PSI (26kPa ~ 126kPa) Absolute 24 b 10-WFLGA Exposed Pad "/>
<attribute name="DIGI-KEY_PART_NUMBER" value="497-16265-1-ND"/>
<attribute name="MF" value="STMicroelectronics"/>
<attribute name="MP" value="LPS22HBTR"/>
<attribute name="PACKAGE" value="WFLGA-10 STMicroelectronics"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/LPS22HBTR/?ref=eda"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="wirepad" urn="urn:adsk.eagle:library:412">
<description>&lt;b&gt;Single Pads&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1,6/0,8" urn="urn:adsk.eagle:footprint:30809/1" library_version="2">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="-0.762" y1="0.762" x2="-0.508" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="0.762" x2="-0.762" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0.762" y1="0.762" x2="0.762" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0.762" y1="0.762" x2="0.508" y2="0.762" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-0.508" x2="0.762" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-0.762" x2="0.508" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="-0.762" x2="-0.762" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-0.762" x2="-0.762" y2="-0.508" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.635" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-0.762" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0.6" size="0.0254" layer="27">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="1,6/0,8" urn="urn:adsk.eagle:package:30830/1" type="box" library_version="2">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="1,6/0,8"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PAD" urn="urn:adsk.eagle:symbol:30808/1" library_version="2">
<wire x1="-1.016" y1="1.016" x2="1.016" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-1.016" x2="1.016" y2="1.016" width="0.254" layer="94"/>
<text x="-1.143" y="1.8542" size="1.778" layer="95">&gt;NAME</text>
<text x="-1.143" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="1,6/0,8" urn="urn:adsk.eagle:component:30848/2" prefix="PAD" uservalue="yes" library_version="2">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<gates>
<gate name="P" symbol="PAD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1,6/0,8">
<connects>
<connect gate="P" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30830/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="15" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="A1" library="LPS22HBTR" deviceset="LPS22HBTR" device=""/>
<part name="PAD1" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="1,6/0,8" device="" package3d_urn="urn:adsk.eagle:package:30830/1"/>
<part name="PAD2" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="1,6/0,8" device="" package3d_urn="urn:adsk.eagle:package:30830/1"/>
<part name="PAD3" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="1,6/0,8" device="" package3d_urn="urn:adsk.eagle:package:30830/1"/>
<part name="PAD4" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="1,6/0,8" device="" package3d_urn="urn:adsk.eagle:package:30830/1"/>
<part name="PAD5" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="1,6/0,8" device="" package3d_urn="urn:adsk.eagle:package:30830/1"/>
<part name="PAD6" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="1,6/0,8" device="" package3d_urn="urn:adsk.eagle:package:30830/1"/>
<part name="PAD7" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="1,6/0,8" device="" package3d_urn="urn:adsk.eagle:package:30830/1"/>
<part name="PAD8" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="1,6/0,8" device="" package3d_urn="urn:adsk.eagle:package:30830/1"/>
<part name="PAD9" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="1,6/0,8" device="" package3d_urn="urn:adsk.eagle:package:30830/1"/>
<part name="PAD10" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="1,6/0,8" device="" package3d_urn="urn:adsk.eagle:package:30830/1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="A1" gate="G$1" x="25.4" y="25.4" smashed="yes">
<attribute name="NAME" x="10.16" y="45.72" size="1.778" layer="95" align="top-left"/>
<attribute name="VALUE" x="10.16" y="5.08" size="1.778" layer="96"/>
</instance>
<instance part="PAD1" gate="P" x="55.88" y="38.1" smashed="yes" rot="R180">
<attribute name="NAME" x="64.643" y="38.7858" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="57.023" y="41.402" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="PAD2" gate="P" x="-5.08" y="25.4" smashed="yes">
<attribute name="NAME" x="-13.843" y="24.7142" size="1.778" layer="95"/>
<attribute name="VALUE" x="-6.223" y="22.098" size="1.778" layer="96"/>
</instance>
<instance part="PAD3" gate="P" x="55.88" y="12.7" smashed="yes" rot="R180">
<attribute name="NAME" x="64.643" y="13.3858" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="57.023" y="16.002" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="PAD4" gate="P" x="-5.08" y="20.32" smashed="yes">
<attribute name="NAME" x="-13.843" y="19.6342" size="1.778" layer="95"/>
<attribute name="VALUE" x="-6.223" y="17.018" size="1.778" layer="96"/>
</instance>
<instance part="PAD5" gate="P" x="-5.08" y="17.78" smashed="yes">
<attribute name="NAME" x="-13.843" y="17.0942" size="1.778" layer="95"/>
<attribute name="VALUE" x="-6.223" y="14.478" size="1.778" layer="96"/>
</instance>
<instance part="PAD6" gate="P" x="-5.08" y="33.02" smashed="yes">
<attribute name="NAME" x="-13.843" y="32.3342" size="1.778" layer="95"/>
<attribute name="VALUE" x="-6.223" y="29.718" size="1.778" layer="96"/>
</instance>
<instance part="PAD7" gate="P" x="55.88" y="30.48" smashed="yes" rot="R180">
<attribute name="NAME" x="64.643" y="31.1658" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="57.023" y="33.782" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="PAD8" gate="P" x="55.88" y="10.16" smashed="yes" rot="R180">
<attribute name="NAME" x="64.643" y="10.8458" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="57.023" y="13.462" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="PAD9" gate="P" x="55.88" y="7.62" smashed="yes" rot="R180">
<attribute name="NAME" x="64.643" y="8.3058" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="57.023" y="10.922" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="PAD10" gate="P" x="55.88" y="40.64" smashed="yes" rot="R180">
<attribute name="NAME" x="64.643" y="41.3258" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="57.023" y="43.942" size="1.778" layer="96" rot="R180"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="A1" gate="G$1" pin="VDD_IO"/>
<pinref part="PAD1" gate="P" pin="P"/>
<wire x1="45.72" y1="38.1" x2="53.34" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="PAD2" gate="P" pin="P"/>
<pinref part="A1" gate="G$1" pin="SCL/SPC"/>
<wire x1="-2.54" y1="25.4" x2="5.08" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="A1" gate="G$1" pin="RESERVED"/>
<pinref part="PAD3" gate="P" pin="P"/>
<wire x1="45.72" y1="12.7" x2="53.34" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="A1" gate="G$1" pin="SDA/SDI/SDO"/>
<pinref part="PAD4" gate="P" pin="P"/>
<wire x1="5.08" y1="20.32" x2="-2.54" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="A1" gate="G$1" pin="SDO/SA0"/>
<pinref part="PAD5" gate="P" pin="P"/>
<wire x1="5.08" y1="17.78" x2="-2.54" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="A1" gate="G$1" pin="CS"/>
<pinref part="PAD6" gate="P" pin="P"/>
<wire x1="5.08" y1="33.02" x2="-2.54" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="A1" gate="G$1" pin="INT_DRDY"/>
<pinref part="PAD7" gate="P" pin="P"/>
<wire x1="45.72" y1="30.48" x2="53.34" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="A1" gate="G$1" pin="GND"/>
<pinref part="PAD8" gate="P" pin="P"/>
<wire x1="45.72" y1="10.16" x2="53.34" y2="10.16" width="0.1524" layer="91"/>
<pinref part="PAD9" gate="P" pin="P"/>
<wire x1="53.34" y1="7.62" x2="45.72" y2="7.62" width="0.1524" layer="91"/>
<wire x1="45.72" y1="7.62" x2="45.72" y2="10.16" width="0.1524" layer="91"/>
<junction x="45.72" y="10.16"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="A1" gate="G$1" pin="VDD"/>
<pinref part="PAD10" gate="P" pin="P"/>
<wire x1="45.72" y1="40.64" x2="53.34" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
