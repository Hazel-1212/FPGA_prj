
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:132

00:00:142	
484.0512	
181.754Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental {C:/03 Digital Lab/Lab06/Lab06_BCD_adder/Lab06_BCD_adder/Lab06_BCD_adder.srcs/utils_1/imports/synth_1/adder.dcp}Z12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2p
nC:/03 Digital Lab/Lab06/Lab06_BCD_adder/Lab06_BCD_adder/Lab06_BCD_adder.srcs/utils_1/imports/synth_1/adder.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
a
Command: %s
53*	vivadotcl20
.synth_design -top adder -part xc7a100tcsg324-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a100tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a100tZ17-349h px� 
E
Loading part %s157*device2
xc7a100tcsg324-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
14320Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1336.941 ; gain = 438.777
h px� 
�
synthesizing module '%s'%s4497*oasys2
adder2
 2f
bC:/03 Digital Lab/Lab06/Lab06_BCD_adder/Lab06_BCD_adder/Lab06_BCD_adder.srcs/sources_1/new/adder.v2
228@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
keypad2
 2g
cC:/03 Digital Lab/Lab06/Lab06_BCD_adder/Lab06_BCD_adder/Lab06_BCD_adder.srcs/sources_1/new/keypad.v2
228@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
keypad2
 2
02
12g
cC:/03 Digital Lab/Lab06/Lab06_BCD_adder/Lab06_BCD_adder/Lab06_BCD_adder.srcs/sources_1/new/keypad.v2
228@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
press_event_acknowledge2
keypad2
key2f
bC:/03 Digital Lab/Lab06/Lab06_BCD_adder/Lab06_BCD_adder/Lab06_BCD_adder.srcs/sources_1/new/adder.v2
568@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
key2
keypad2
72
62f
bC:/03 Digital Lab/Lab06/Lab06_BCD_adder/Lab06_BCD_adder/Lab06_BCD_adder.srcs/sources_1/new/adder.v2
568@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
summation_logic2
 2p
lC:/03 Digital Lab/Lab06/Lab06_BCD_adder/Lab06_BCD_adder/Lab06_BCD_adder.srcs/sources_1/new/summation_logic.v2
228@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
summation_logic2
 2
02
12p
lC:/03 Digital Lab/Lab06/Lab06_BCD_adder/Lab06_BCD_adder/Lab06_BCD_adder.srcs/sources_1/new/summation_logic.v2
228@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
concurrent_display2
 2s
oC:/03 Digital Lab/Lab06/Lab06_BCD_adder/Lab06_BCD_adder/Lab06_BCD_adder.srcs/sources_1/new/concurrent_display.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
concurrent_display2
 2
02
12s
oC:/03 Digital Lab/Lab06/Lab06_BCD_adder/Lab06_BCD_adder/Lab06_BCD_adder.srcs/sources_1/new/concurrent_display.v2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
adder2
 2
02
12f
bC:/03 Digital Lab/Lab06/Lab06_BCD_adder/Lab06_BCD_adder/Lab06_BCD_adder.srcs/sources_1/new/adder.v2
228@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2

temp_reg2g
cC:/03 Digital Lab/Lab06/Lab06_BCD_adder/Lab06_BCD_adder/Lab06_BCD_adder.srcs/sources_1/new/keypad.v2
598@Z8-6014h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
press_event_acknowledge2
summation_logic2p
lC:/03 Digital Lab/Lab06/Lab06_BCD_adder/Lab06_BCD_adder/Lab06_BCD_adder.srcs/sources_1/new/summation_logic.v2
368@Z8-3848h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
press_event_acknowledge2
summation_logicZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
press_event_acknowledge2
keypadZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1445.430 ; gain = 547.266
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1445.430 ; gain = 547.266
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1445.430 ; gain = 547.266
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0042

1445.4302
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2h
dC:/03 Digital Lab/Lab06/Lab06_BCD_adder/Lab06_BCD_adder/Lab06_BCD_adder.srcs/constrs_1/new/adder.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2h
dC:/03 Digital Lab/Lab06/Lab06_BCD_adder/Lab06_BCD_adder/Lab06_BCD_adder.srcs/constrs_1/new/adder.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2f
dC:/03 Digital Lab/Lab06/Lab06_BCD_adder/Lab06_BCD_adder/Lab06_BCD_adder.srcs/constrs_1/new/adder.xdc2
.Xil/adder_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1536.2232
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0042

1536.2232
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 1536.223 ; gain = 638.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7a100tcsg324-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 1536.223 ; gain = 638.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 1536.223 ; gain = 638.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
m
3inferred FSM for state register '%s' in module '%s'802*oasys2
row_scan_reg2
keypadZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                 iSTATE3 |                              000 |                             0000
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                              001 |                             0111
h p
x
� 
y
%s
*synth2a
_                 iSTATE0 |                              010 |                             1011
h p
x
� 
y
%s
*synth2a
_                 iSTATE1 |                              011 |                             1101
h p
x
� 
y
%s
*synth2a
_                 iSTATE2 |                              100 |                             1110
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
row_scan_reg2

sequential2
keypadZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:29 ; elapsed = 00:00:31 . Memory (MB): peak = 1536.223 ; gain = 638.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   11 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               11 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                7 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 5     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 5     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	  33 Input    7 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   5 Input    4 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 19    
h p
x
� 
F
%s
*synth2.
,	   5 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 2     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:34 ; elapsed = 00:00:36 . Memory (MB): peak = 1536.223 ; gain = 638.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:46 ; elapsed = 00:00:49 . Memory (MB): peak = 1536.223 ; gain = 638.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:46 ; elapsed = 00:00:49 . Memory (MB): peak = 1536.223 ; gain = 638.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:46 ; elapsed = 00:00:49 . Memory (MB): peak = 1536.223 ; gain = 638.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:55 ; elapsed = 00:00:58 . Memory (MB): peak = 1536.223 ; gain = 638.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:55 ; elapsed = 00:00:58 . Memory (MB): peak = 1536.223 ; gain = 638.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:55 ; elapsed = 00:00:58 . Memory (MB): peak = 1536.223 ; gain = 638.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:55 ; elapsed = 00:00:58 . Memory (MB): peak = 1536.223 ; gain = 638.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:55 ; elapsed = 00:00:58 . Memory (MB): peak = 1536.223 ; gain = 638.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:55 ; elapsed = 00:00:58 . Memory (MB): peak = 1536.223 ; gain = 638.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |BUFG   |     1|
h px� 
2
%s*synth2
|2     |CARRY4 |     8|
h px� 
2
%s*synth2
|3     |LUT1   |     7|
h px� 
2
%s*synth2
|4     |LUT2   |    14|
h px� 
2
%s*synth2
|5     |LUT3   |    10|
h px� 
2
%s*synth2
|6     |LUT4   |    16|
h px� 
2
%s*synth2
|7     |LUT5   |    13|
h px� 
2
%s*synth2
|8     |LUT6   |    27|
h px� 
2
%s*synth2
|9     |FDRE   |    78|
h px� 
2
%s*synth2
|10    |IBUF   |     7|
h px� 
2
%s*synth2
|11    |OBUF   |    15|
h px� 
2
%s*synth2
|12    |OBUFT  |     4|
h px� 
2
%s*synth2
+------+-------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:55 ; elapsed = 00:00:58 . Memory (MB): peak = 1536.223 ; gain = 638.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:38 ; elapsed = 00:00:54 . Memory (MB): peak = 1536.223 ; gain = 547.266
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:55 ; elapsed = 00:00:58 . Memory (MB): peak = 1536.223 ; gain = 638.059
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0032

1536.2232
0.000Z17-268h px� 
S
-Analyzing %s Unisim elements for replacement
17*netlist2
8Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1536.2232
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

1b2683caZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
312
72
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:01:042

00:01:102

1536.2232

1048.199Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0032

1536.2232
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2`
^C:/03 Digital Lab/Lab06/Lab06_BCD_adder/Lab06_BCD_adder/Lab06_BCD_adder.runs/synth_1/adder.dcpZ17-1381h px� 
~
%s4*runtcl2b
`Executing : report_utilization -file adder_utilization_synth.rpt -pb adder_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Wed Apr 23 14:16:22 2025Z17-206h px� 


End Record