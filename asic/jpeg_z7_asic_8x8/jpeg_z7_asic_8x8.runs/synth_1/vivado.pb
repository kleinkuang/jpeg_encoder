
q
Command: %s
53*	vivadotcl2@
,synth_design -top jpeg -part xc7z020clg400-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349h px� 
�
%s*synth2�
sStarting Synthesize : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 508.102 ; gain = 187.820
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
jpeg2default:default2
 2default:default2G
1F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/jpeg.sv2default:default2
62default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
fdct2default:default2
 2default:default2G
1F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fdct.sv2default:default2
82default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
mcu_8x82default:default2
 2default:default2J
4F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/mcu_8x8.sv2default:default2
92default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
ram_8bx82default:default2
 2default:default2K
5F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/ram_8bx8.sv2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ram_8bx82default:default2
 2default:default2
12default:default2
12default:default2K
5F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/ram_8bx8.sv2default:default2
62default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mcu_8x82default:default2
 2default:default2
22default:default2
12default:default2J
4F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/mcu_8x8.sv2default:default2
92default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
level_shift2default:default2
 2default:default2N
8F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/level_shift.sv2default:default2
62default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2!
int8_to_float2default:default2
 2default:default2P
:F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/int8_to_float.sv2default:default2
62default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
lead_nz2default:default2
 2default:default2J
4F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/lead_nz.sv2default:default2
82default:default8@Z8-6157h px� 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
lead_nz2default:default2
 2default:default2
32default:default2
12default:default2J
4F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/lead_nz.sv2default:default2
82default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
int8_to_float2default:default2
 2default:default2
42default:default2
12default:default2P
:F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/int8_to_float.sv2default:default2
62default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
level_shift2default:default2
 2default:default2
52default:default2
12default:default2N
8F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/level_shift.sv2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
dct_lut2default:default2
 2default:default2J
4F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/dct_lut.sv2default:default2
182default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
dct_lut2default:default2
 2default:default2
62default:default2
12default:default2J
4F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/dct_lut.sv2default:default2
182default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
dot_pro2default:default2
 2default:default2J
4F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/dot_pro.sv2default:default2
282default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2 
float_mul_nb2default:default2
 2default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/float_mul_nb.sv2default:default2
362default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	shift_reg2default:default2
 2default:default2L
6F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/shift_reg.sv2default:default2
82default:default8@Z8-6157h px� 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter STAGE bound to: 14 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	shift_reg2default:default2
 2default:default2
72default:default2
12default:default2L
6F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/shift_reg.sv2default:default2
82default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2-
shift_reg__parameterized02default:default2
 2default:default2L
6F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/shift_reg.sv2default:default2
82default:default8@Z8-6157h px� 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter STAGE bound to: 15 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
shift_reg__parameterized02default:default2
 2default:default2
72default:default2
12default:default2L
6F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/shift_reg.sv2default:default2
82default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
fixed_mul_nb2default:default2
 2default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_mul_nb.sv2default:default2
82default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter WIDTH bound to: 26 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter STEPS bound to: 13 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2

booth_algo2default:default2
 2default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter WIDTH bound to: 26 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter BSTEP bound to: 0 - type: integer 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
582default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

booth_algo2default:default2
 2default:default2
82default:default2
12default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2.
booth_algo__parameterized02default:default2
 2default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter WIDTH bound to: 26 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter BSTEP bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
582default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
booth_algo__parameterized02default:default2
 2default:default2
82default:default2
12default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2.
booth_algo__parameterized12default:default2
 2default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter WIDTH bound to: 26 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter BSTEP bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
582default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
booth_algo__parameterized12default:default2
 2default:default2
82default:default2
12default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2.
booth_algo__parameterized22default:default2
 2default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter WIDTH bound to: 26 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter BSTEP bound to: 3 - type: integer 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
582default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
booth_algo__parameterized22default:default2
 2default:default2
82default:default2
12default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2.
booth_algo__parameterized32default:default2
 2default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter WIDTH bound to: 26 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter BSTEP bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
582default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
booth_algo__parameterized32default:default2
 2default:default2
82default:default2
12default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2.
booth_algo__parameterized42default:default2
 2default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter WIDTH bound to: 26 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter BSTEP bound to: 5 - type: integer 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
582default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
booth_algo__parameterized42default:default2
 2default:default2
82default:default2
12default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2.
booth_algo__parameterized52default:default2
 2default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter WIDTH bound to: 26 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter BSTEP bound to: 6 - type: integer 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
582default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
booth_algo__parameterized52default:default2
 2default:default2
82default:default2
12default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2.
booth_algo__parameterized62default:default2
 2default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter WIDTH bound to: 26 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter BSTEP bound to: 7 - type: integer 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
582default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
booth_algo__parameterized62default:default2
 2default:default2
82default:default2
12default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2.
booth_algo__parameterized72default:default2
 2default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter WIDTH bound to: 26 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter BSTEP bound to: 8 - type: integer 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
582default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
booth_algo__parameterized72default:default2
 2default:default2
82default:default2
12default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2.
booth_algo__parameterized82default:default2
 2default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter WIDTH bound to: 26 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter BSTEP bound to: 9 - type: integer 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
582default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
booth_algo__parameterized82default:default2
 2default:default2
82default:default2
12default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2.
booth_algo__parameterized92default:default2
 2default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter WIDTH bound to: 26 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter BSTEP bound to: 10 - type: integer 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
582default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
booth_algo__parameterized92default:default2
 2default:default2
82default:default2
12default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2/
booth_algo__parameterized102default:default2
 2default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter WIDTH bound to: 26 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter BSTEP bound to: 11 - type: integer 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
582default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
booth_algo__parameterized102default:default2
 2default:default2
82default:default2
12default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2/
booth_algo__parameterized112default:default2
 2default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter WIDTH bound to: 26 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter BSTEP bound to: 12 - type: integer 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
582default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
booth_algo__parameterized112default:default2
 2default:default2
82default:default2
12default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/booth_algo.sv2default:default2
82default:default8@Z8-6155h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2/
genblk1[11].product_reg[11]2default:default2
522default:default2
222default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_mul_nb.sv2default:default2
1092default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2/
genblk1[10].product_reg[10]2default:default2
522default:default2
202default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_mul_nb.sv2default:default2
1092default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2-
genblk1[9].product_reg[9]2default:default2
522default:default2
182default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_mul_nb.sv2default:default2
1092default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2-
genblk1[8].product_reg[8]2default:default2
522default:default2
162default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_mul_nb.sv2default:default2
1092default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2-
genblk1[7].product_reg[7]2default:default2
522default:default2
142default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_mul_nb.sv2default:default2
1092default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2-
genblk1[6].product_reg[6]2default:default2
522default:default2
122default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_mul_nb.sv2default:default2
1092default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2-
genblk1[5].product_reg[5]2default:default2
522default:default2
102default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_mul_nb.sv2default:default2
1092default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2-
genblk1[4].product_reg[4]2default:default2
522default:default2
82default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_mul_nb.sv2default:default2
1092default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2-
genblk1[3].product_reg[3]2default:default2
522default:default2
62default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_mul_nb.sv2default:default2
1092default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2-
genblk1[2].product_reg[2]2default:default2
522default:default2
42default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_mul_nb.sv2default:default2
1092default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2-
genblk1[1].product_reg[1]2default:default2
522default:default2
22default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_mul_nb.sv2default:default2
832default:default8@Z8-3936h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
fixed_mul_nb2default:default2
 2default:default2
92default:default2
12default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_mul_nb.sv2default:default2
82default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
float_mul_nb2default:default2
 2default:default2
102default:default2
12default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/float_mul_nb.sv2default:default2
362default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
float_add_nb2default:default2
 2default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/float_add_nb.sv2default:default2
362default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2+
lead_nz__parameterized02default:default2
 2default:default2J
4F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/lead_nz.sv2default:default2
82default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter WIDTH bound to: 28 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
lead_nz__parameterized02default:default2
 2default:default2
102default:default2
12default:default2J
4F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/lead_nz.sv2default:default2
82default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
float_add_nb2default:default2
 2default:default2
112default:default2
12default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/float_add_nb.sv2default:default2
362default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
dot_pro2default:default2
 2default:default2
122default:default2
12default:default2J
4F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/dot_pro.sv2default:default2
282default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
qnt2default:default2
 2default:default2F
0F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/qnt.sv2default:default2
192default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2 
float_div_nb2default:default2
 2default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/float_div_nb.sv2default:default2
362default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2-
shift_reg__parameterized12default:default2
 2default:default2L
6F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/shift_reg.sv2default:default2
82default:default8@Z8-6157h px� 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter STAGE bound to: 26 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
shift_reg__parameterized12default:default2
 2default:default2
122default:default2
12default:default2L
6F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/shift_reg.sv2default:default2
82default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2-
shift_reg__parameterized22default:default2
 2default:default2L
6F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/shift_reg.sv2default:default2
82default:default8@Z8-6157h px� 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter STAGE bound to: 26 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
shift_reg__parameterized22default:default2
 2default:default2
122default:default2
12default:default2L
6F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/shift_reg.sv2default:default2
82default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
fixed_div_nb2default:default2
 2default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
82default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter WIDTH bound to: 25 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter STEPS bound to: 25 - type: integer 
2default:defaulth p
x
� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2/
genblk1[23].div_quo_reg[23]2default:default2
252default:default2
242default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
652default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2/
genblk1[22].div_quo_reg[22]2default:default2
252default:default2
232default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
652default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2/
genblk1[21].div_quo_reg[21]2default:default2
252default:default2
222default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
652default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2/
genblk1[20].div_quo_reg[20]2default:default2
252default:default2
212default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
652default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2/
genblk1[19].div_quo_reg[19]2default:default2
252default:default2
202default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
652default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2/
genblk1[18].div_quo_reg[18]2default:default2
252default:default2
192default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
652default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2/
genblk1[17].div_quo_reg[17]2default:default2
252default:default2
182default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
652default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2/
genblk1[16].div_quo_reg[16]2default:default2
252default:default2
172default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
652default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2/
genblk1[15].div_quo_reg[15]2default:default2
252default:default2
162default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
652default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2/
genblk1[14].div_quo_reg[14]2default:default2
252default:default2
152default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
652default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2/
genblk1[13].div_quo_reg[13]2default:default2
252default:default2
142default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
652default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2/
genblk1[12].div_quo_reg[12]2default:default2
252default:default2
132default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
652default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2/
genblk1[11].div_quo_reg[11]2default:default2
252default:default2
122default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
652default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2/
genblk1[10].div_quo_reg[10]2default:default2
252default:default2
112default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
652default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2-
genblk1[9].div_quo_reg[9]2default:default2
252default:default2
102default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
652default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2-
genblk1[8].div_quo_reg[8]2default:default2
252default:default2
92default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
652default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2-
genblk1[7].div_quo_reg[7]2default:default2
252default:default2
82default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
652default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2-
genblk1[6].div_quo_reg[6]2default:default2
252default:default2
72default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
652default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2-
genblk1[5].div_quo_reg[5]2default:default2
252default:default2
62default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
652default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2-
genblk1[4].div_quo_reg[4]2default:default2
252default:default2
52default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
652default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2-
genblk1[3].div_quo_reg[3]2default:default2
252default:default2
42default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
652default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2-
genblk1[2].div_quo_reg[2]2default:default2
252default:default2
32default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
652default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2-
genblk1[1].div_quo_reg[1]2default:default2
252default:default2
22default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
652default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2-
genblk1[0].div_quo_reg[0]2default:default2
252default:default2
12default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
472default:default8@Z8-3936h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
fixed_div_nb2default:default2
 2default:default2
132default:default2
12default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_div_nb.sv2default:default2
82default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
float_div_nb2default:default2
 2default:default2
142default:default2
12default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/float_div_nb.sv2default:default2
362default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
float_to_int82default:default2
 2default:default2P
:F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/float_to_int8.sv2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
float_to_int82default:default2
 2default:default2
152default:default2
12default:default2P
:F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/float_to_int8.sv2default:default2
62default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
qnt2default:default2
 2default:default2
162default:default2
12default:default2F
0F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/qnt.sv2default:default2
192default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
fdct2default:default2
 2default:default2
172default:default2
12default:default2G
1F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fdct.sv2default:default2
82default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
zigzag2default:default2
 2default:default2I
3F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/zigzag.sv2default:default2
112default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	ram_8bx642default:default2
 2default:default2L
6F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/ram_8bx64.sv2default:default2
82default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	ram_8bx642default:default2
 2default:default2
182default:default2
12default:default2L
6F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/ram_8bx64.sv2default:default2
82default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
zigzag2default:default2
 2default:default2
192default:default2
12default:default2I
3F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/zigzag.sv2default:default2
112default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
encoder2default:default2
 2default:default2J
4F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/encoder.sv2default:default2
62default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
rle2default:default2
 2default:default2F
0F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/rle.sv2default:default2
82default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
rle2default:default2
 2default:default2
202default:default2
12default:default2F
0F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/rle.sv2default:default2
82default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
en_magn2default:default2
 2default:default2J
4F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/en_magn.sv2default:default2
82default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
en_magn2default:default2
 2default:default2
212default:default2
12default:default2J
4F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/en_magn.sv2default:default2
82default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
dc_lut2default:default2
 2default:default2I
3F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/dc_lut.sv2default:default2
92default:default8@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2I
3F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/dc_lut.sv2default:default2
182default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2I
3F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/dc_lut.sv2default:default2
362default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
dc_lut2default:default2
 2default:default2
222default:default2
12default:default2I
3F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/dc_lut.sv2default:default2
92default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ac_lut2default:default2
 2default:default2I
3F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/ac_lut.sv2default:default2
92default:default8@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2I
3F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/ac_lut.sv2default:default2
232default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2I
3F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/ac_lut.sv2default:default2
2062default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ac_lut2default:default2
 2default:default2
232default:default2
12default:default2I
3F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/ac_lut.sv2default:default2
92default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

conc_bytes2default:default2
 2default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/conc_bytes.sv2default:default2
102default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

conc_bytes2default:default2
 2default:default2
242default:default2
12default:default2M
7F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/conc_bytes.sv2default:default2
102default:default8@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2"
code_bin_s_reg2default:default2J
4F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/encoder.sv2default:default2
1602default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
encoder2default:default2
 2default:default2
252default:default2
12default:default2J
4F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/encoder.sv2default:default2
62default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
jpeg2default:default2
 2default:default2
262default:default2
12default:default2G
1F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/jpeg.sv2default:default2
62default:default8@Z8-6155h px� 
�
%s*synth2�
sFinished Synthesize : Time (s): cpu = 00:00:05 ; elapsed = 00:00:04 . Memory (MB): peak = 571.289 ; gain = 251.008
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 571.289 ; gain = 251.008
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7z020clg400-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 571.289 ; gain = 251.008
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
Loading part %s157*device2#
xc7z020clg400-12default:defaultZ21-403h px� 
�
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/float_add_nb.sv2default:default2
872default:default8@Z8-5818h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:06 . Memory (MB): peak = 671.262 ; gain = 350.980
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
� 
\
%s
*synth2D
0|      |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
� 
\
%s
*synth2D
0|1     |float_mul_nb  |           8|      5649|
2default:defaulth p
x
� 
\
%s
*synth2D
0|2     |dot_pro__GCM0 |           1|     12705|
2default:defaulth p
x
� 
\
%s
*synth2D
0|3     |fdct__GC0     |           1|     10717|
2default:defaulth p
x
� 
\
%s
*synth2D
0|4     |jpeg__GC0     |           1|      2560|
2default:defaulth p
x
� 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     29 Bit       Adders := 42    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit       Adders := 432   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     25 Bit       Adders := 25    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     24 Bit       Adders := 30    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      9 Bit       Adders := 14    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 78    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 47    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      6 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 24    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      3 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 46    
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               52 Bit    Registers := 16    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 27    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               29 Bit    Registers := 56    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               28 Bit    Registers := 416   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               27 Bit    Registers := 14    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               26 Bit    Registers := 416   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               25 Bit    Registers := 74    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               24 Bit    Registers := 47    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               23 Bit    Registers := 62    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               22 Bit    Registers := 17    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               21 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               20 Bit    Registers := 17    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               19 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               18 Bit    Registers := 17    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               17 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 18    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               15 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               14 Bit    Registers := 21    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               13 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               12 Bit    Registers := 17    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               11 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 17    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 436   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 23    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 23    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 18    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 853   
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              512 Bit         RAMs := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               64 Bit         RAMs := 16    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 12    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     31 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     29 Bit        Muxes := 42    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit        Muxes := 208   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     25 Bit        Muxes := 24    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     24 Bit        Muxes := 29    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 65    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  29 Input      5 Bit        Muxes := 14    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	 163 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      4 Bit        Muxes := 10    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 18    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 624   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 86    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
>
%s
*synth2&
Module shift_reg 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 14    
2default:defaulth p
x
� 
N
%s
*synth26
"Module shift_reg__parameterized0 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 15    
2default:defaulth p
x
� 
?
%s
*synth2'
Module booth_algo 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               28 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               26 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
O
%s
*synth27
#Module booth_algo__parameterized0 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               28 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               26 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
O
%s
*synth27
#Module booth_algo__parameterized1 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               28 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               26 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
O
%s
*synth27
#Module booth_algo__parameterized2 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               28 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               26 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
O
%s
*synth27
#Module booth_algo__parameterized3 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               28 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               26 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
O
%s
*synth27
#Module booth_algo__parameterized4 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               28 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               26 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
O
%s
*synth27
#Module booth_algo__parameterized5 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               28 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               26 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
O
%s
*synth27
#Module booth_algo__parameterized6 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               28 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               26 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
O
%s
*synth27
#Module booth_algo__parameterized7 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               28 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               26 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
O
%s
*synth27
#Module booth_algo__parameterized8 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               28 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               26 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
O
%s
*synth27
#Module booth_algo__parameterized9 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               28 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               26 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
P
%s
*synth28
$Module booth_algo__parameterized10 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               28 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               26 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
P
%s
*synth28
$Module booth_algo__parameterized11 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               28 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               26 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
A
%s
*synth2)
Module fixed_mul_nb 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               52 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               22 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               20 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               18 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               14 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module float_mul_nb 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     24 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               23 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 5     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
O
%s
*synth27
#Module lead_nz__parameterized0__1 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  29 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
D
%s
*synth2,
Module float_add_nb__1 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     29 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     24 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      9 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               29 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               27 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               24 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               23 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 18    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     29 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     24 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
O
%s
*synth27
#Module lead_nz__parameterized0__2 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  29 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
D
%s
*synth2,
Module float_add_nb__2 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     29 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     24 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      9 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               29 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               27 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               24 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               23 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 18    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     29 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     24 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
O
%s
*synth27
#Module lead_nz__parameterized0__3 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  29 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
D
%s
*synth2,
Module float_add_nb__3 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     29 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     24 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      9 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               29 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               27 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               24 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               23 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 18    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     29 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     24 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
O
%s
*synth27
#Module lead_nz__parameterized0__4 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  29 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
D
%s
*synth2,
Module float_add_nb__4 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     29 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     24 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      9 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               29 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               27 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               24 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               23 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 18    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     29 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     24 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
O
%s
*synth27
#Module lead_nz__parameterized0__5 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  29 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
D
%s
*synth2,
Module float_add_nb__5 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     29 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     24 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      9 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               29 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               27 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               24 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               23 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 18    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     29 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     24 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
O
%s
*synth27
#Module lead_nz__parameterized0__6 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  29 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
D
%s
*synth2,
Module float_add_nb__6 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     29 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     24 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      9 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               29 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               27 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               24 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               23 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 18    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     29 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     24 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
L
%s
*synth24
 Module lead_nz__parameterized0 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  29 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module float_add_nb 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     29 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     24 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      9 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               29 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               27 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               24 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               23 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 18    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     29 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     24 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
@
%s
*synth2(
Module ram_8bx8__1 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               64 Bit         RAMs := 1     
2default:defaulth p
x
� 
@
%s
*synth2(
Module ram_8bx8__2 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               64 Bit         RAMs := 1     
2default:defaulth p
x
� 
@
%s
*synth2(
Module ram_8bx8__3 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               64 Bit         RAMs := 1     
2default:defaulth p
x
� 
@
%s
*synth2(
Module ram_8bx8__4 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               64 Bit         RAMs := 1     
2default:defaulth p
x
� 
@
%s
*synth2(
Module ram_8bx8__5 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               64 Bit         RAMs := 1     
2default:defaulth p
x
� 
@
%s
*synth2(
Module ram_8bx8__6 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               64 Bit         RAMs := 1     
2default:defaulth p
x
� 
@
%s
*synth2(
Module ram_8bx8__7 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               64 Bit         RAMs := 1     
2default:defaulth p
x
� 
@
%s
*synth2(
Module ram_8bx8__8 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               64 Bit         RAMs := 1     
2default:defaulth p
x
� 
@
%s
*synth2(
Module ram_8bx8__9 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               64 Bit         RAMs := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module ram_8bx8__10 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               64 Bit         RAMs := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module ram_8bx8__11 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               64 Bit         RAMs := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module ram_8bx8__12 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               64 Bit         RAMs := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module ram_8bx8__13 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               64 Bit         RAMs := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module ram_8bx8__14 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               64 Bit         RAMs := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module ram_8bx8__15 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               64 Bit         RAMs := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
Module ram_8bx8 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               64 Bit         RAMs := 1     
2default:defaulth p
x
� 
<
%s
*synth2$
Module mcu_8x8 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
?
%s
*synth2'
Module lead_nz__2 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
E
%s
*synth2-
Module int8_to_float__2 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
?
%s
*synth2'
Module lead_nz__3 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
E
%s
*synth2-
Module int8_to_float__3 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
?
%s
*synth2'
Module lead_nz__4 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
E
%s
*synth2-
Module int8_to_float__4 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
?
%s
*synth2'
Module lead_nz__5 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
E
%s
*synth2-
Module int8_to_float__5 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
?
%s
*synth2'
Module lead_nz__6 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
E
%s
*synth2-
Module int8_to_float__6 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
?
%s
*synth2'
Module lead_nz__7 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
E
%s
*synth2-
Module int8_to_float__7 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
?
%s
*synth2'
Module lead_nz__8 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
E
%s
*synth2-
Module int8_to_float__8 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
?
%s
*synth2'
Module lead_nz__9 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
B
%s
*synth2*
Module int8_to_float 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
@
%s
*synth2(
Module level_shift 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 8     
2default:defaulth p
x
� 
?
%s
*synth2'
Module lead_nz__1 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
E
%s
*synth2-
Module int8_to_float__1 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
N
%s
*synth26
"Module shift_reg__parameterized1 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 26    
2default:defaulth p
x
� 
N
%s
*synth26
"Module shift_reg__parameterized2 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 26    
2default:defaulth p
x
� 
A
%s
*synth2)
Module fixed_div_nb 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     25 Bit       Adders := 25    
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               25 Bit    Registers := 74    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               24 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               23 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               22 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               21 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               20 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               19 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               18 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               17 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               15 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               14 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               13 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               11 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     25 Bit        Muxes := 24    
2default:defaulth p
x
� 
A
%s
*synth2)
Module float_div_nb 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               24 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               23 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
B
%s
*synth2*
Module float_to_int8 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     31 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
� 
8
%s
*synth2 
Module qnt 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
Module fdct 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 3     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 16    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
A
%s
*synth2)
Module ram_8bx64__1 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              512 Bit         RAMs := 1     
2default:defaulth p
x
� 
>
%s
*synth2&
Module ram_8bx64 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              512 Bit         RAMs := 1     
2default:defaulth p
x
� 
;
%s
*synth2#
Module zigzag 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 3     
2default:defaulth p
x
� 
8
%s
*synth2 
Module rle 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               14 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
<
%s
*synth2$
Module lead_nz 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
<
%s
*synth2$
Module en_magn 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
;
%s
*synth2#
Module ac_lut 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	 163 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
?
%s
*synth2'
Module conc_bytes 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      6 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               24 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     24 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
<
%s
*synth2$
Module encoder 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               24 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 7     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2 
mul/dout_reg2default:default2
522default:default2
482default:default2O
9F:/jpeg_encoder/asic/jpeg_z7_asic_8x8/src/fixed_mul_nb.sv2default:default2
1322default:default8@Z8-3936h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[0].bm/dout_addend_reg[25]2default:default2
FDR2default:default2G
3float_mul_nb:/mul/genblk1[0].bm/dout_addend_reg[27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[0].bm/dout_addend_reg[26]2default:default2
FDR2default:default2G
3float_mul_nb:/mul/genblk1[0].bm/dout_addend_reg[27]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;float_mul_nb:/\mul/genblk1[0].bm/dout_multiplicand_reg[25] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;float_mul_nb:/\mul/genblk1[0].bm/dout_multiplicand_reg[24] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2N
:float_mul_nb:/\mul/genblk1[0].bm/dout_multilplier_reg[24] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2N
:float_mul_nb:/\mul/genblk1[0].bm/dout_multilplier_reg[25] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[1].bm/dout_augend_reg[25]2default:default2
FD2default:default2G
3float_mul_nb:/mul/genblk1[1].bm/dout_augend_reg[26]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[1].bm/dout_augend_reg[26]2default:default2
FD2default:default2G
3float_mul_nb:/mul/genblk1[1].bm/dout_augend_reg[27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[1].bm/dout_addend_reg[25]2default:default2
FDR2default:default2G
3float_mul_nb:/mul/genblk1[1].bm/dout_addend_reg[27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[1].bm/dout_addend_reg[26]2default:default2
FDR2default:default2G
3float_mul_nb:/mul/genblk1[1].bm/dout_addend_reg[27]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;float_mul_nb:/\mul/genblk1[1].bm/dout_multiplicand_reg[25] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;float_mul_nb:/\mul/genblk1[1].bm/dout_multiplicand_reg[24] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2N
:float_mul_nb:/\mul/genblk1[1].bm/dout_multilplier_reg[24] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2N
:float_mul_nb:/\mul/genblk1[1].bm/dout_multilplier_reg[25] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[2].bm/dout_augend_reg[26]2default:default2
FD2default:default2G
3float_mul_nb:/mul/genblk1[2].bm/dout_augend_reg[27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[2].bm/dout_addend_reg[25]2default:default2
FDR2default:default2G
3float_mul_nb:/mul/genblk1[2].bm/dout_addend_reg[27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[2].bm/dout_addend_reg[26]2default:default2
FDR2default:default2G
3float_mul_nb:/mul/genblk1[2].bm/dout_addend_reg[27]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;float_mul_nb:/\mul/genblk1[2].bm/dout_multiplicand_reg[25] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;float_mul_nb:/\mul/genblk1[2].bm/dout_multiplicand_reg[24] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2N
:float_mul_nb:/\mul/genblk1[2].bm/dout_multilplier_reg[24] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2N
:float_mul_nb:/\mul/genblk1[2].bm/dout_multilplier_reg[25] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[3].bm/dout_augend_reg[26]2default:default2
FD2default:default2G
3float_mul_nb:/mul/genblk1[3].bm/dout_augend_reg[27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[3].bm/dout_addend_reg[25]2default:default2
FDR2default:default2G
3float_mul_nb:/mul/genblk1[3].bm/dout_addend_reg[27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[3].bm/dout_addend_reg[26]2default:default2
FDR2default:default2G
3float_mul_nb:/mul/genblk1[3].bm/dout_addend_reg[27]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;float_mul_nb:/\mul/genblk1[3].bm/dout_multiplicand_reg[25] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;float_mul_nb:/\mul/genblk1[3].bm/dout_multiplicand_reg[24] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2N
:float_mul_nb:/\mul/genblk1[3].bm/dout_multilplier_reg[24] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2N
:float_mul_nb:/\mul/genblk1[3].bm/dout_multilplier_reg[25] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[4].bm/dout_augend_reg[26]2default:default2
FD2default:default2G
3float_mul_nb:/mul/genblk1[4].bm/dout_augend_reg[27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[4].bm/dout_addend_reg[25]2default:default2
FDR2default:default2G
3float_mul_nb:/mul/genblk1[4].bm/dout_addend_reg[27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[4].bm/dout_addend_reg[26]2default:default2
FDR2default:default2G
3float_mul_nb:/mul/genblk1[4].bm/dout_addend_reg[27]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;float_mul_nb:/\mul/genblk1[4].bm/dout_multiplicand_reg[25] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;float_mul_nb:/\mul/genblk1[4].bm/dout_multiplicand_reg[24] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2N
:float_mul_nb:/\mul/genblk1[4].bm/dout_multilplier_reg[24] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2N
:float_mul_nb:/\mul/genblk1[4].bm/dout_multilplier_reg[25] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[5].bm/dout_augend_reg[26]2default:default2
FD2default:default2G
3float_mul_nb:/mul/genblk1[5].bm/dout_augend_reg[27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[5].bm/dout_addend_reg[25]2default:default2
FDR2default:default2G
3float_mul_nb:/mul/genblk1[5].bm/dout_addend_reg[27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[5].bm/dout_addend_reg[26]2default:default2
FDR2default:default2G
3float_mul_nb:/mul/genblk1[5].bm/dout_addend_reg[27]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;float_mul_nb:/\mul/genblk1[5].bm/dout_multiplicand_reg[25] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;float_mul_nb:/\mul/genblk1[5].bm/dout_multiplicand_reg[24] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2N
:float_mul_nb:/\mul/genblk1[5].bm/dout_multilplier_reg[24] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2N
:float_mul_nb:/\mul/genblk1[5].bm/dout_multilplier_reg[25] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[6].bm/dout_augend_reg[26]2default:default2
FD2default:default2G
3float_mul_nb:/mul/genblk1[6].bm/dout_augend_reg[27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[6].bm/dout_addend_reg[25]2default:default2
FDR2default:default2G
3float_mul_nb:/mul/genblk1[6].bm/dout_addend_reg[27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[6].bm/dout_addend_reg[26]2default:default2
FDR2default:default2G
3float_mul_nb:/mul/genblk1[6].bm/dout_addend_reg[27]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;float_mul_nb:/\mul/genblk1[6].bm/dout_multiplicand_reg[25] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;float_mul_nb:/\mul/genblk1[6].bm/dout_multiplicand_reg[24] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2N
:float_mul_nb:/\mul/genblk1[6].bm/dout_multilplier_reg[24] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2N
:float_mul_nb:/\mul/genblk1[6].bm/dout_multilplier_reg[25] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[7].bm/dout_augend_reg[26]2default:default2
FD2default:default2G
3float_mul_nb:/mul/genblk1[7].bm/dout_augend_reg[27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[7].bm/dout_addend_reg[25]2default:default2
FDR2default:default2G
3float_mul_nb:/mul/genblk1[7].bm/dout_addend_reg[27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[7].bm/dout_addend_reg[26]2default:default2
FDR2default:default2G
3float_mul_nb:/mul/genblk1[7].bm/dout_addend_reg[27]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;float_mul_nb:/\mul/genblk1[7].bm/dout_multiplicand_reg[25] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;float_mul_nb:/\mul/genblk1[7].bm/dout_multiplicand_reg[24] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2N
:float_mul_nb:/\mul/genblk1[7].bm/dout_multilplier_reg[24] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2N
:float_mul_nb:/\mul/genblk1[7].bm/dout_multilplier_reg[25] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[8].bm/dout_addend_reg[27]2default:default2
FDR2default:default2G
3float_mul_nb:/mul/genblk1[8].bm/dout_addend_reg[26]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;float_mul_nb:/\mul/genblk1[8].bm/dout_multiplicand_reg[25] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[8].bm/dout_augend_reg[26]2default:default2
FD2default:default2G
3float_mul_nb:/mul/genblk1[8].bm/dout_augend_reg[27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[8].bm/dout_addend_reg[25]2default:default2
FDR2default:default2G
3float_mul_nb:/mul/genblk1[8].bm/dout_addend_reg[26]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;float_mul_nb:/\mul/genblk1[8].bm/dout_multiplicand_reg[24] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2N
:float_mul_nb:/\mul/genblk1[8].bm/dout_multilplier_reg[24] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2N
:float_mul_nb:/\mul/genblk1[8].bm/dout_multilplier_reg[25] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;float_mul_nb:/\mul/genblk1[9].bm/dout_multiplicand_reg[25] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[9].bm/dout_addend_reg[27]2default:default2
FDR2default:default2G
3float_mul_nb:/mul/genblk1[9].bm/dout_addend_reg[26]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[9].bm/dout_augend_reg[27]2default:default2
FD2default:default2G
3float_mul_nb:/mul/genblk1[9].bm/dout_augend_reg[26]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3float_mul_nb:/mul/genblk1[9].bm/dout_addend_reg[25]2default:default2
FDR2default:default2G
3float_mul_nb:/mul/genblk1[9].bm/dout_addend_reg[26]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;float_mul_nb:/\mul/genblk1[9].bm/dout_multiplicand_reg[24] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2N
:float_mul_nb:/\mul/genblk1[9].bm/dout_multilplier_reg[24] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2N
:float_mul_nb:/\mul/genblk1[9].bm/dout_multilplier_reg[25] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2P
<float_mul_nb:/\mul/genblk1[10].bm/dout_multiplicand_reg[25] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4float_mul_nb:/mul/genblk1[10].bm/dout_addend_reg[27]2default:default2
FDR2default:default2H
4float_mul_nb:/mul/genblk1[10].bm/dout_addend_reg[26]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4float_mul_nb:/mul/genblk1[10].bm/dout_addend_reg[26]2default:default2
FDR2default:default2H
4float_mul_nb:/mul/genblk1[10].bm/dout_addend_reg[25]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2P
<float_mul_nb:/\mul/genblk1[10].bm/dout_multiplicand_reg[24] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4float_mul_nb:/mul/genblk1[10].bm/dout_augend_reg[27]2default:default2
FD2default:default2H
4float_mul_nb:/mul/genblk1[10].bm/dout_augend_reg[26]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;float_mul_nb:/\mul/genblk1[10].bm/dout_multilplier_reg[24] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;float_mul_nb:/\mul/genblk1[10].bm/dout_multilplier_reg[25] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4float_mul_nb:/mul/genblk1[11].bm/dout_augend_reg[27]2default:default2
FD2default:default2H
4float_mul_nb:/mul/genblk1[11].bm/dout_augend_reg[26]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;float_mul_nb:/\mul/genblk1[11].bm/dout_multilplier_reg[24] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2O
;float_mul_nb:/\mul/genblk1[11].bm/dout_multilplier_reg[25] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0dot_pro__GCM0:/genblk2[3].inst/pre_augend_reg[0]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk2[3].inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0dot_pro__GCM0:/genblk2[3].inst/pre_augend_reg[1]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk2[3].inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0dot_pro__GCM0:/genblk2[3].inst/pre_augend_reg[2]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk2[3].inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2E
1dot_pro__GCM0:/genblk2[3].inst/pre_augend_reg[27]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk2[3].inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2E
1dot_pro__GCM0:/genblk2[3].inst/pre_addend_reg[27]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk2[3].inst/pre_addend_reg[28]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2I
5dot_pro__GCM0:/\genblk2[3].inst /\pre_augend_reg[28] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0dot_pro__GCM0:/genblk2[2].inst/pre_augend_reg[0]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk2[2].inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0dot_pro__GCM0:/genblk2[2].inst/pre_augend_reg[1]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk2[2].inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0dot_pro__GCM0:/genblk2[2].inst/pre_augend_reg[2]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk2[2].inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2E
1dot_pro__GCM0:/genblk2[2].inst/pre_augend_reg[27]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk2[2].inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2E
1dot_pro__GCM0:/genblk2[2].inst/pre_addend_reg[27]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk2[2].inst/pre_addend_reg[28]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2I
5dot_pro__GCM0:/\genblk2[2].inst /\pre_augend_reg[28] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0dot_pro__GCM0:/genblk2[1].inst/pre_augend_reg[0]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk2[1].inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0dot_pro__GCM0:/genblk2[1].inst/pre_augend_reg[1]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk2[1].inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0dot_pro__GCM0:/genblk2[1].inst/pre_augend_reg[2]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk2[1].inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2E
1dot_pro__GCM0:/genblk2[1].inst/pre_augend_reg[27]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk2[1].inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2E
1dot_pro__GCM0:/genblk2[1].inst/pre_addend_reg[27]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk2[1].inst/pre_addend_reg[28]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2I
5dot_pro__GCM0:/\genblk2[1].inst /\pre_augend_reg[28] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0dot_pro__GCM0:/genblk2[0].inst/pre_augend_reg[0]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk2[0].inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0dot_pro__GCM0:/genblk2[0].inst/pre_augend_reg[1]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk2[0].inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0dot_pro__GCM0:/genblk2[0].inst/pre_augend_reg[2]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk2[0].inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2E
1dot_pro__GCM0:/genblk2[0].inst/pre_augend_reg[27]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk2[0].inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2E
1dot_pro__GCM0:/genblk2[0].inst/pre_addend_reg[27]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk2[0].inst/pre_addend_reg[28]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2I
5dot_pro__GCM0:/\genblk2[0].inst /\pre_augend_reg[28] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0dot_pro__GCM0:/genblk3[1].inst/pre_augend_reg[0]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk3[1].inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0dot_pro__GCM0:/genblk3[1].inst/pre_augend_reg[1]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk3[1].inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0dot_pro__GCM0:/genblk3[1].inst/pre_augend_reg[2]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk3[1].inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2E
1dot_pro__GCM0:/genblk3[1].inst/pre_augend_reg[27]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk3[1].inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2E
1dot_pro__GCM0:/genblk3[1].inst/pre_addend_reg[27]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk3[1].inst/pre_addend_reg[28]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2I
5dot_pro__GCM0:/\genblk3[1].inst /\pre_augend_reg[28] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0dot_pro__GCM0:/genblk3[0].inst/pre_augend_reg[0]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk3[0].inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0dot_pro__GCM0:/genblk3[0].inst/pre_augend_reg[1]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk3[0].inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0dot_pro__GCM0:/genblk3[0].inst/pre_augend_reg[2]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk3[0].inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2E
1dot_pro__GCM0:/genblk3[0].inst/pre_augend_reg[27]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk3[0].inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2E
1dot_pro__GCM0:/genblk3[0].inst/pre_addend_reg[27]2default:default2
FDR2default:default2E
1dot_pro__GCM0:/genblk3[0].inst/pre_addend_reg[28]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2I
5dot_pro__GCM0:/\genblk3[0].inst /\pre_augend_reg[28] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/dot_pro__GCM0:/float_add_inst/pre_augend_reg[0]2default:default2
FDR2default:default2D
0dot_pro__GCM0:/float_add_inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/dot_pro__GCM0:/float_add_inst/pre_augend_reg[1]2default:default2
FDR2default:default2D
0dot_pro__GCM0:/float_add_inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/dot_pro__GCM0:/float_add_inst/pre_augend_reg[2]2default:default2
FDR2default:default2D
0dot_pro__GCM0:/float_add_inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0dot_pro__GCM0:/float_add_inst/pre_augend_reg[27]2default:default2
FDR2default:default2D
0dot_pro__GCM0:/float_add_inst/pre_augend_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2D
0dot_pro__GCM0:/float_add_inst/pre_addend_reg[27]2default:default2
FDR2default:default2D
0dot_pro__GCM0:/float_add_inst/pre_addend_reg[28]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2dot_pro__GCM0:/float_add_inst/\pre_augend_reg[28] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default23
\qnt_inst/i2f_inst/dout_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default24
 \qnt_inst/i2f_inst/dout_reg[31] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default23
\qnt_inst/i2f_inst/dout_reg[1] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default23
\qnt_inst/i2f_inst/dout_reg[2] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default23
\qnt_inst/i2f_inst/dout_reg[3] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default23
\qnt_inst/i2f_inst/dout_reg[4] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default23
\qnt_inst/i2f_inst/dout_reg[5] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default23
\qnt_inst/i2f_inst/dout_reg[6] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default23
\qnt_inst/i2f_inst/dout_reg[7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default23
\qnt_inst/i2f_inst/dout_reg[8] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default23
\qnt_inst/i2f_inst/dout_reg[9] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default24
 \qnt_inst/i2f_inst/dout_reg[10] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default24
 \qnt_inst/i2f_inst/dout_reg[11] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default24
 \qnt_inst/i2f_inst/dout_reg[12] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default24
 \qnt_inst/i2f_inst/dout_reg[13] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default24
 \qnt_inst/i2f_inst/dout_reg[14] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2?
+fdct_insti_3/qnt_inst/i2f_inst/dout_reg[29]2default:default2
FDR2default:default2?
+fdct_insti_3/qnt_inst/i2f_inst/dout_reg[27]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2?
+fdct_insti_3/qnt_inst/i2f_inst/dout_reg[27]2default:default2
FDR2default:default2?
+fdct_insti_3/qnt_inst/i2f_inst/dout_reg[28]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2H
4\qnt_inst/div_inst/div/genblk1[0].div_end_reg[1][0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2I
5\qnt_inst/div_inst/div/genblk1[0].div_sor_reg[1][24] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2H
4\qnt_inst/div_inst/div/genblk1[1].div_end_reg[2][0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2H
4\qnt_inst/div_inst/div/genblk1[2].div_end_reg[3][0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2H
4\qnt_inst/div_inst/div/genblk1[3].div_end_reg[4][0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2H
4\qnt_inst/div_inst/div/genblk1[4].div_end_reg[5][0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2H
4\qnt_inst/div_inst/div/genblk1[5].div_end_reg[6][0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2H
4\qnt_inst/div_inst/div/genblk1[6].div_end_reg[7][0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2H
4\qnt_inst/div_inst/div/genblk1[7].div_end_reg[8][0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2H
4\qnt_inst/div_inst/div/genblk1[8].div_end_reg[9][0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2I
5\qnt_inst/div_inst/div/genblk1[9].div_end_reg[10][0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2J
6\qnt_inst/div_inst/div/genblk1[10].div_end_reg[11][0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2J
6\qnt_inst/div_inst/div/genblk1[11].div_end_reg[12][0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2J
6\qnt_inst/div_inst/div/genblk1[12].div_end_reg[13][0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2J
6\qnt_inst/div_inst/div/genblk1[13].div_end_reg[14][0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2J
6\qnt_inst/div_inst/div/genblk1[14].div_end_reg[15][0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2J
6\qnt_inst/div_inst/div/genblk1[15].div_end_reg[16][0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2J
6\qnt_inst/div_inst/div/genblk1[16].div_end_reg[17][0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2J
6\qnt_inst/div_inst/div/genblk1[17].div_end_reg[18][0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2J
6\qnt_inst/div_inst/div/genblk1[18].div_end_reg[19][0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2J
6\qnt_inst/div_inst/div/genblk1[19].div_end_reg[20][0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2J
6\qnt_inst/div_inst/div/genblk1[20].div_end_reg[21][0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2J
6\qnt_inst/div_inst/div/genblk1[21].div_end_reg[22][0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2J
6\qnt_inst/div_inst/div/genblk1[23].div_end_reg[24][0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2J
6\qnt_inst/div_inst/div/genblk1[22].div_end_reg[23][0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2B
.\level_shift_inst/genblk1[0].inst/dout_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2B
.\level_shift_inst/genblk1[0].inst/dout_reg[1] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2B
.\level_shift_inst/genblk1[0].inst/dout_reg[2] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2B
.\level_shift_inst/genblk1[0].inst/dout_reg[3] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2B
.\level_shift_inst/genblk1[0].inst/dout_reg[4] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2B
.\level_shift_inst/genblk1[0].inst/dout_reg[5] 2default:defaultZ8-3333h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33332default:default2
1002default:defaultZ17-14h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2N
:fdct_insti_3/level_shift_inst/genblk1[0].inst/dout_reg[27]2default:default2
FDR2default:default2N
:fdct_insti_3/level_shift_inst/genblk1[0].inst/dout_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2N
:fdct_insti_3/level_shift_inst/genblk1[0].inst/dout_reg[28]2default:default2
FDR2default:default2N
:fdct_insti_3/level_shift_inst/genblk1[0].inst/dout_reg[29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2N
:fdct_insti_3/level_shift_inst/genblk1[1].inst/dout_reg[27]2default:default2
FDR2default:default2N
:fdct_insti_3/level_shift_inst/genblk1[1].inst/dout_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2N
:fdct_insti_3/level_shift_inst/genblk1[1].inst/dout_reg[28]2default:default2
FDR2default:default2N
:fdct_insti_3/level_shift_inst/genblk1[1].inst/dout_reg[29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2N
:fdct_insti_3/level_shift_inst/genblk1[2].inst/dout_reg[27]2default:default2
FDR2default:default2N
:fdct_insti_3/level_shift_inst/genblk1[2].inst/dout_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2N
:fdct_insti_3/level_shift_inst/genblk1[2].inst/dout_reg[28]2default:default2
FDR2default:default2N
:fdct_insti_3/level_shift_inst/genblk1[2].inst/dout_reg[29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2N
:fdct_insti_3/level_shift_inst/genblk1[3].inst/dout_reg[27]2default:default2
FDR2default:default2N
:fdct_insti_3/level_shift_inst/genblk1[3].inst/dout_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2N
:fdct_insti_3/level_shift_inst/genblk1[3].inst/dout_reg[28]2default:default2
FDR2default:default2N
:fdct_insti_3/level_shift_inst/genblk1[3].inst/dout_reg[29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2N
:fdct_insti_3/level_shift_inst/genblk1[4].inst/dout_reg[27]2default:default2
FDR2default:default2N
:fdct_insti_3/level_shift_inst/genblk1[4].inst/dout_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2N
:fdct_insti_3/level_shift_inst/genblk1[4].inst/dout_reg[28]2default:default2
FDR2default:default2N
:fdct_insti_3/level_shift_inst/genblk1[4].inst/dout_reg[29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2N
:fdct_insti_3/level_shift_inst/genblk1[5].inst/dout_reg[27]2default:default2
FDR2default:default2N
:fdct_insti_3/level_shift_inst/genblk1[5].inst/dout_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2N
:fdct_insti_3/level_shift_inst/genblk1[5].inst/dout_reg[28]2default:default2
FDR2default:default2N
:fdct_insti_3/level_shift_inst/genblk1[5].inst/dout_reg[29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2N
:fdct_insti_3/level_shift_inst/genblk1[6].inst/dout_reg[27]2default:default2
FDR2default:default2N
:fdct_insti_3/level_shift_inst/genblk1[6].inst/dout_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2N
:fdct_insti_3/level_shift_inst/genblk1[6].inst/dout_reg[28]2default:default2
FDR2default:default2N
:fdct_insti_3/level_shift_inst/genblk1[6].inst/dout_reg[29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2N
:fdct_insti_3/level_shift_inst/genblk1[7].inst/dout_reg[27]2default:default2
FDR2default:default2N
:fdct_insti_3/level_shift_inst/genblk1[7].inst/dout_reg[28]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2N
:fdct_insti_3/level_shift_inst/genblk1[7].inst/dout_reg[28]2default:default2
FDR2default:default2N
:fdct_insti_3/level_shift_inst/genblk1[7].inst/dout_reg[29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!i_0/encoder_inst/size_bin_reg[14]2default:default2
FD2default:default25
!i_0/encoder_inst/size_bin_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!i_0/encoder_inst/size_bin_reg[12]2default:default2
FD2default:default25
!i_0/encoder_inst/size_bin_reg[13]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2e
Qfdct_inst/dot_pro_afat/genblk1[0].inst/mul/genblk1[0].bm/dout_multilplier_reg[16]2default:default2
FD2default:default2e
Qfdct_inst/dot_pro_afat/genblk1[0].inst/mul/genblk1[0].bm/dout_multilplier_reg[10]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2d
Pfdct_inst/dot_pro_afat/genblk1[0].inst/mul/genblk1[0].bm/dout_multilplier_reg[5]2default:default2
FD2default:default2e
Qfdct_inst/dot_pro_afat/genblk1[0].inst/mul/genblk1[0].bm/dout_multilplier_reg[20]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2d
Pfdct_inst/dot_pro_afat/genblk1[0].inst/mul/genblk1[0].bm/dout_multilplier_reg[3]2default:default2
FD2default:default2e
Qfdct_inst/dot_pro_afat/genblk1[0].inst/mul/genblk1[0].bm/dout_multilplier_reg[19]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2e
Qfdct_inst/dot_pro_afat/genblk1[0].inst/mul/genblk1[1].bm/dout_multilplier_reg[16]2default:default2
FD2default:default2e
Qfdct_inst/dot_pro_afat/genblk1[0].inst/mul/genblk1[1].bm/dout_multilplier_reg[10]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2d
Pfdct_inst/dot_pro_afat/genblk1[0].inst/mul/genblk1[1].bm/dout_multilplier_reg[3]2default:default2
FD2default:default2e
Qfdct_inst/dot_pro_afat/genblk1[0].inst/mul/genblk1[1].bm/dout_multilplier_reg[19]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2d
Pfdct_inst/dot_pro_afat/genblk1[0].inst/mul/genblk1[1].bm/dout_multilplier_reg[5]2default:default2
FD2default:default2e
Qfdct_inst/dot_pro_afat/genblk1[0].inst/mul/genblk1[1].bm/dout_multilplier_reg[20]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2e
Qfdct_inst/dot_pro_afat/genblk1[0].inst/mul/genblk1[2].bm/dout_multilplier_reg[16]2default:default2
FD2default:default2e
Qfdct_inst/dot_pro_afat/genblk1[0].inst/mul/genblk1[2].bm/dout_multilplier_reg[10]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2d
Pfdct_inst/dot_pro_afat/genblk1[0].inst/mul/genblk1[2].bm/dout_multilplier_reg[5]2default:default2
FD2default:default2e
Qfdct_inst/dot_pro_afat/genblk1[0].inst/mul/genblk1[2].bm/dout_multilplier_reg[20]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2e
Qfdct_inst/dot_pro_afat/genblk1[0].inst/mul/genblk1[3].bm/dout_multilplier_reg[16]2default:default2
FD2default:default2e
Qfdct_inst/dot_pro_afat/genblk1[0].inst/mul/genblk1[3].bm/dout_multilplier_reg[10]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2e
Qfdct_inst/dot_pro_afat/genblk1[0].inst/mul/genblk1[4].bm/dout_multilplier_reg[16]2default:default2
FD2default:default2e
Qfdct_inst/dot_pro_afat/genblk1[0].inst/mul/genblk1[4].bm/dout_multilplier_reg[10]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2O
;float_mul_nb__1:/mul/genblk1[0].bm/dout_multilplier_reg[16]2default:default2
FD2default:default2O
;float_mul_nb__1:/mul/genblk1[0].bm/dout_multilplier_reg[10]2default:defaultZ8-3886h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-38862default:default2
1002default:defaultZ17-14h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:43 ; elapsed = 00:00:42 . Memory (MB): peak = 866.168 ; gain = 545.887
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
2
%s*synth2

ROM:
2default:defaulth px� 
{
%s*synth2c
O+------------+------------------------------+---------------+----------------+
2default:defaulth px� 
|
%s*synth2d
P|Module Name | RTL Object                   | Depth x Width | Implemented As | 
2default:defaulth px� 
{
%s*synth2c
O+------------+------------------------------+---------------+----------------+
2default:defaulth px� 
|
%s*synth2d
P|dct_lut     | rom_int                      | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|dct_lut     | rom_int                      | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|dct_lut     | rom_int                      | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|dct_lut     | rom_int                      | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|dct_lut     | rom_int                      | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|dct_lut     | rom_int                      | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|dct_lut     | rom_int                      | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|dct_lut     | rom_int                      | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|dct_lut     | rom_int                      | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|dct_lut     | rom_int                      | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|dct_lut     | rom_int                      | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|dct_lut     | rom_int                      | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|dct_lut     | rom_int                      | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|dct_lut     | rom_int                      | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|dct_lut     | rom_int                      | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|dct_lut     | rom_int                      | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|qnt         | Q50                          | 64x7          | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|ac_lut      | bin                          | 256x14        | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|jpeg        | qnt_inst/Q50                 | 64x7          | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|jpeg        | dct_lut_inst/rom_int         | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|jpeg        | dct_lut_inst/rom_int         | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|jpeg        | dct_lut_inst/rom_int         | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|jpeg        | dct_lut_inst/rom_int         | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|jpeg        | dct_lut_inst/rom_int         | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|jpeg        | dct_lut_inst/rom_int         | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|jpeg        | dct_lut_inst/rom_int         | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|jpeg        | dct_lut_inst/rom_int         | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|jpeg        | dct_lut_inst/rom_int         | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|jpeg        | dct_lut_inst/rom_int         | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|jpeg        | dct_lut_inst/rom_int         | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|jpeg        | dct_lut_inst/rom_int         | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|jpeg        | dct_lut_inst/rom_int         | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|jpeg        | dct_lut_inst/rom_int         | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|jpeg        | dct_lut_inst/rom_int         | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|jpeg        | dct_lut_inst/rom_int         | 64x25         | LUT            | 
2default:defaulth px� 
|
%s*synth2d
P|jpeg        | encoder_inst/ac_lut_inst/bin | 256x14        | Block RAM      | 
2default:defaulth px� 
|
%s*synth2d
P+------------+------------------------------+---------------+----------------+

2default:defaulth px� 
k
%s*synth2S
?
Distributed RAM: Preliminary Mapping  Report (see note below)
2default:defaulth px� 
�
%s*synth2
k+------------+---------------------------------------+-----------+----------------------+----------------+
2default:defaulth px� 
�
%s*synth2�
l|Module Name | RTL Object                            | Inference | Size (Depth x Width) | Primitives     | 
2default:defaulth px� 
�
%s*synth2
k+------------+---------------------------------------+-----------+----------------------+----------------+
2default:defaulth px� 
�
%s*synth2�
l|jpeg        | mcu_inst/genblk1[0].ram_1/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth px� 
�
%s*synth2�
l|jpeg        | mcu_inst/genblk1[0].ram_0/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth px� 
�
%s*synth2�
l|jpeg        | mcu_inst/genblk1[1].ram_1/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth px� 
�
%s*synth2�
l|jpeg        | mcu_inst/genblk1[1].ram_0/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth px� 
�
%s*synth2�
l|jpeg        | mcu_inst/genblk1[2].ram_1/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth px� 
�
%s*synth2�
l|jpeg        | mcu_inst/genblk1[2].ram_0/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth px� 
�
%s*synth2�
l|jpeg        | mcu_inst/genblk1[3].ram_1/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth px� 
�
%s*synth2�
l|jpeg        | mcu_inst/genblk1[3].ram_0/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth px� 
�
%s*synth2�
l|jpeg        | mcu_inst/genblk1[4].ram_1/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth px� 
�
%s*synth2�
l|jpeg        | mcu_inst/genblk1[4].ram_0/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth px� 
�
%s*synth2�
l|jpeg        | mcu_inst/genblk1[5].ram_1/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth px� 
�
%s*synth2�
l|jpeg        | mcu_inst/genblk1[5].ram_0/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth px� 
�
%s*synth2�
l|jpeg        | mcu_inst/genblk1[6].ram_1/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth px� 
�
%s*synth2�
l|jpeg        | mcu_inst/genblk1[6].ram_0/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth px� 
�
%s*synth2�
l|jpeg        | mcu_inst/genblk1[7].ram_1/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth px� 
�
%s*synth2�
l|jpeg        | mcu_inst/genblk1[7].ram_0/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth px� 
�
%s*synth2�
l|jpeg        | zigzag_inst/ram_0/mem_int_reg         | Implied   | 64 x 8               | RAM64X1S x 8   | 
2default:defaulth px� 
�
%s*synth2�
l|jpeg        | zigzag_inst/ram_1/mem_int_reg         | Implied   | 64 x 8               | RAM64X1S x 8   | 
2default:defaulth px� 
�
%s*synth2�
l+------------+---------------------------------------+-----------+----------------------+----------------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys2 
i_0/i_18/i_02default:default2
Block2default:defaultZ8-6837h px� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
^
%s
*synth2F
2+------+----------------+------------+----------+
2default:defaulth p
x
� 
^
%s
*synth2F
2|      |RTL Partition   |Replication |Instances |
2default:defaulth p
x
� 
^
%s
*synth2F
2+------+----------------+------------+----------+
2default:defaulth p
x
� 
^
%s
*synth2F
2|1     |float_mul_nb    |           1|      3142|
2default:defaulth p
x
� 
^
%s
*synth2F
2|2     |dot_pro__GCM0   |           2|      9915|
2default:defaulth p
x
� 
^
%s
*synth2F
2|3     |fdct__GC0       |           1|      6829|
2default:defaulth p
x
� 
^
%s
*synth2F
2|4     |jpeg__GC0       |           1|      1849|
2default:defaulth p
x
� 
^
%s
*synth2F
2|5     |float_mul_nb__1 |           5|      3143|
2default:defaulth p
x
� 
^
%s
*synth2F
2|6     |float_mul_nb__2 |           1|      3160|
2default:defaulth p
x
� 
^
%s
*synth2F
2|7     |float_mul_nb__3 |           1|      3143|
2default:defaulth p
x
� 
^
%s
*synth2F
2|8     |float_mul_nb__4 |           1|      1578|
2default:defaulth p
x
� 
^
%s
*synth2F
2|9     |float_mul_nb__5 |           5|      1579|
2default:defaulth p
x
� 
^
%s
*synth2F
2|10    |float_mul_nb__6 |           1|      1596|
2default:defaulth p
x
� 
^
%s
*synth2F
2|11    |float_mul_nb__7 |           1|      1579|
2default:defaulth p
x
� 
^
%s
*synth2F
2+------+----------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Timing Optimization : Time (s): cpu = 00:00:45 ; elapsed = 00:00:43 . Memory (MB): peak = 866.168 ; gain = 545.887
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(
Distributed RAM: Final Mapping  Report
2default:defaulth p
x
� 
�
%s
*synth2
k+------------+---------------------------------------+-----------+----------------------+----------------+
2default:defaulth p
x
� 
�
%s
*synth2�
l|Module Name | RTL Object                            | Inference | Size (Depth x Width) | Primitives     | 
2default:defaulth p
x
� 
�
%s
*synth2
k+------------+---------------------------------------+-----------+----------------------+----------------+
2default:defaulth p
x
� 
�
%s
*synth2�
l|jpeg        | mcu_inst/genblk1[0].ram_1/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth p
x
� 
�
%s
*synth2�
l|jpeg        | mcu_inst/genblk1[0].ram_0/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth p
x
� 
�
%s
*synth2�
l|jpeg        | mcu_inst/genblk1[1].ram_1/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth p
x
� 
�
%s
*synth2�
l|jpeg        | mcu_inst/genblk1[1].ram_0/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth p
x
� 
�
%s
*synth2�
l|jpeg        | mcu_inst/genblk1[2].ram_1/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth p
x
� 
�
%s
*synth2�
l|jpeg        | mcu_inst/genblk1[2].ram_0/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth p
x
� 
�
%s
*synth2�
l|jpeg        | mcu_inst/genblk1[3].ram_1/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth p
x
� 
�
%s
*synth2�
l|jpeg        | mcu_inst/genblk1[3].ram_0/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth p
x
� 
�
%s
*synth2�
l|jpeg        | mcu_inst/genblk1[4].ram_1/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth p
x
� 
�
%s
*synth2�
l|jpeg        | mcu_inst/genblk1[4].ram_0/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth p
x
� 
�
%s
*synth2�
l|jpeg        | mcu_inst/genblk1[5].ram_1/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth p
x
� 
�
%s
*synth2�
l|jpeg        | mcu_inst/genblk1[5].ram_0/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth p
x
� 
�
%s
*synth2�
l|jpeg        | mcu_inst/genblk1[6].ram_1/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth p
x
� 
�
%s
*synth2�
l|jpeg        | mcu_inst/genblk1[6].ram_0/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth p
x
� 
�
%s
*synth2�
l|jpeg        | mcu_inst/genblk1[7].ram_1/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth p
x
� 
�
%s
*synth2�
l|jpeg        | mcu_inst/genblk1[7].ram_0/ram_int_reg | Implied   | 8 x 8                | RAM16X1S x 8   | 
2default:defaulth p
x
� 
�
%s
*synth2�
l|jpeg        | zigzag_inst/ram_0/mem_int_reg         | Implied   | 64 x 8               | RAM64X1S x 8   | 
2default:defaulth p
x
� 
�
%s
*synth2�
l|jpeg        | zigzag_inst/ram_1/mem_int_reg         | Implied   | 64 x 8               | RAM64X1S x 8   | 
2default:defaulth p
x
� 
�
%s
*synth2�
l+------------+---------------------------------------+-----------+----------------------+----------------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
^
%s
*synth2F
2+------+----------------+------------+----------+
2default:defaulth p
x
� 
^
%s
*synth2F
2|      |RTL Partition   |Replication |Instances |
2default:defaulth p
x
� 
^
%s
*synth2F
2+------+----------------+------------+----------+
2default:defaulth p
x
� 
^
%s
*synth2F
2|1     |float_mul_nb    |           1|      3142|
2default:defaulth p
x
� 
^
%s
*synth2F
2|2     |dot_pro__GCM0   |           2|      9915|
2default:defaulth p
x
� 
^
%s
*synth2F
2|3     |fdct__GC0       |           1|      6719|
2default:defaulth p
x
� 
^
%s
*synth2F
2|4     |jpeg__GC0       |           1|      1849|
2default:defaulth p
x
� 
^
%s
*synth2F
2|5     |float_mul_nb__1 |           5|      3143|
2default:defaulth p
x
� 
^
%s
*synth2F
2|6     |float_mul_nb__2 |           1|      3160|
2default:defaulth p
x
� 
^
%s
*synth2F
2|7     |float_mul_nb__3 |           1|      3143|
2default:defaulth p
x
� 
^
%s
*synth2F
2|8     |float_mul_nb__4 |           1|      1387|
2default:defaulth p
x
� 
^
%s
*synth2F
2|9     |float_mul_nb__5 |           5|      1388|
2default:defaulth p
x
� 
^
%s
*synth2F
2|10    |float_mul_nb__6 |           1|      1405|
2default:defaulth p
x
� 
^
%s
*synth2F
2|11    |float_mul_nb__7 |           1|      1388|
2default:defaulth p
x
� 
^
%s
*synth2F
2+------+----------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys2
i_202932default:default2
Block2default:defaultZ8-6837h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
{Finished Technology Mapping : Time (s): cpu = 00:00:50 ; elapsed = 00:00:49 . Memory (MB): peak = 879.016 ; gain = 558.734
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
,Flop %s is being inverted and renamed to %s.3906*oasys2Q
=fdct_inst/qnt_inst/div_inst/div/genblk1[0].div_end_reg[1][24]2default:default2U
Afdct_inst/qnt_inst/div_inst/div/genblk1[0].div_end_reg[1][24]_inv2default:defaultZ8-5365h px� 
�
,Flop %s is being inverted and renamed to %s.3906*oasys2Q
=fdct_inst/qnt_inst/div_inst/div/genblk1[1].div_end_reg[2][24]2default:default2U
Afdct_inst/qnt_inst/div_inst/div/genblk1[1].div_end_reg[2][24]_inv2default:defaultZ8-5365h px� 
�
,Flop %s is being inverted and renamed to %s.3906*oasys2Q
=fdct_inst/qnt_inst/div_inst/div/genblk1[2].div_end_reg[3][24]2default:default2U
Afdct_inst/qnt_inst/div_inst/div/genblk1[2].div_end_reg[3][24]_inv2default:defaultZ8-5365h px� 
�
,Flop %s is being inverted and renamed to %s.3906*oasys2Q
=fdct_inst/qnt_inst/div_inst/div/genblk1[3].div_end_reg[4][24]2default:default2U
Afdct_inst/qnt_inst/div_inst/div/genblk1[3].div_end_reg[4][24]_inv2default:defaultZ8-5365h px� 
�
,Flop %s is being inverted and renamed to %s.3906*oasys2Q
=fdct_inst/qnt_inst/div_inst/div/genblk1[4].div_end_reg[5][24]2default:default2U
Afdct_inst/qnt_inst/div_inst/div/genblk1[4].div_end_reg[5][24]_inv2default:defaultZ8-5365h px� 
�
,Flop %s is being inverted and renamed to %s.3906*oasys2Q
=fdct_inst/qnt_inst/div_inst/div/genblk1[5].div_end_reg[6][24]2default:default2U
Afdct_inst/qnt_inst/div_inst/div/genblk1[5].div_end_reg[6][24]_inv2default:defaultZ8-5365h px� 
�
,Flop %s is being inverted and renamed to %s.3906*oasys2Q
=fdct_inst/qnt_inst/div_inst/div/genblk1[6].div_end_reg[7][24]2default:default2U
Afdct_inst/qnt_inst/div_inst/div/genblk1[6].div_end_reg[7][24]_inv2default:defaultZ8-5365h px� 
�
,Flop %s is being inverted and renamed to %s.3906*oasys2Q
=fdct_inst/qnt_inst/div_inst/div/genblk1[7].div_end_reg[8][24]2default:default2U
Afdct_inst/qnt_inst/div_inst/div/genblk1[7].div_end_reg[8][24]_inv2default:defaultZ8-5365h px� 
�
,Flop %s is being inverted and renamed to %s.3906*oasys2Q
=fdct_inst/qnt_inst/div_inst/div/genblk1[8].div_end_reg[9][24]2default:default2U
Afdct_inst/qnt_inst/div_inst/div/genblk1[8].div_end_reg[9][24]_inv2default:defaultZ8-5365h px� 
�
,Flop %s is being inverted and renamed to %s.3906*oasys2R
>fdct_inst/qnt_inst/div_inst/div/genblk1[9].div_end_reg[10][24]2default:default2V
Bfdct_inst/qnt_inst/div_inst/div/genblk1[9].div_end_reg[10][24]_inv2default:defaultZ8-5365h px� 
�
,Flop %s is being inverted and renamed to %s.3906*oasys2S
?fdct_inst/qnt_inst/div_inst/div/genblk1[10].div_end_reg[11][24]2default:default2W
Cfdct_inst/qnt_inst/div_inst/div/genblk1[10].div_end_reg[11][24]_inv2default:defaultZ8-5365h px� 
�
,Flop %s is being inverted and renamed to %s.3906*oasys2S
?fdct_inst/qnt_inst/div_inst/div/genblk1[11].div_end_reg[12][24]2default:default2W
Cfdct_inst/qnt_inst/div_inst/div/genblk1[11].div_end_reg[12][24]_inv2default:defaultZ8-5365h px� 
�
,Flop %s is being inverted and renamed to %s.3906*oasys2S
?fdct_inst/qnt_inst/div_inst/div/genblk1[12].div_end_reg[13][24]2default:default2W
Cfdct_inst/qnt_inst/div_inst/div/genblk1[12].div_end_reg[13][24]_inv2default:defaultZ8-5365h px� 
�
,Flop %s is being inverted and renamed to %s.3906*oasys2S
?fdct_inst/qnt_inst/div_inst/div/genblk1[13].div_end_reg[14][24]2default:default2W
Cfdct_inst/qnt_inst/div_inst/div/genblk1[13].div_end_reg[14][24]_inv2default:defaultZ8-5365h px� 
�
,Flop %s is being inverted and renamed to %s.3906*oasys2S
?fdct_inst/qnt_inst/div_inst/div/genblk1[14].div_end_reg[15][24]2default:default2W
Cfdct_inst/qnt_inst/div_inst/div/genblk1[14].div_end_reg[15][24]_inv2default:defaultZ8-5365h px� 
�
,Flop %s is being inverted and renamed to %s.3906*oasys2S
?fdct_inst/qnt_inst/div_inst/div/genblk1[15].div_end_reg[16][24]2default:default2W
Cfdct_inst/qnt_inst/div_inst/div/genblk1[15].div_end_reg[16][24]_inv2default:defaultZ8-5365h px� 
�
,Flop %s is being inverted and renamed to %s.3906*oasys2S
?fdct_inst/qnt_inst/div_inst/div/genblk1[16].div_end_reg[17][24]2default:default2W
Cfdct_inst/qnt_inst/div_inst/div/genblk1[16].div_end_reg[17][24]_inv2default:defaultZ8-5365h px� 
�
,Flop %s is being inverted and renamed to %s.3906*oasys2S
?fdct_inst/qnt_inst/div_inst/div/genblk1[17].div_end_reg[18][24]2default:default2W
Cfdct_inst/qnt_inst/div_inst/div/genblk1[17].div_end_reg[18][24]_inv2default:defaultZ8-5365h px� 
�
,Flop %s is being inverted and renamed to %s.3906*oasys2S
?fdct_inst/qnt_inst/div_inst/div/genblk1[18].div_end_reg[19][24]2default:default2W
Cfdct_inst/qnt_inst/div_inst/div/genblk1[18].div_end_reg[19][24]_inv2default:defaultZ8-5365h px� 
�
,Flop %s is being inverted and renamed to %s.3906*oasys2S
?fdct_inst/qnt_inst/div_inst/div/genblk1[19].div_end_reg[20][24]2default:default2W
Cfdct_inst/qnt_inst/div_inst/div/genblk1[19].div_end_reg[20][24]_inv2default:defaultZ8-5365h px� 
�
,Flop %s is being inverted and renamed to %s.3906*oasys2S
?fdct_inst/qnt_inst/div_inst/div/genblk1[20].div_end_reg[21][24]2default:default2W
Cfdct_inst/qnt_inst/div_inst/div/genblk1[20].div_end_reg[21][24]_inv2default:defaultZ8-5365h px� 
�
,Flop %s is being inverted and renamed to %s.3906*oasys2S
?fdct_inst/qnt_inst/div_inst/div/genblk1[21].div_end_reg[22][24]2default:default2W
Cfdct_inst/qnt_inst/div_inst/div/genblk1[21].div_end_reg[22][24]_inv2default:defaultZ8-5365h px� 
�
,Flop %s is being inverted and renamed to %s.3906*oasys2S
?fdct_inst/qnt_inst/div_inst/div/genblk1[22].div_end_reg[23][24]2default:default2W
Cfdct_inst/qnt_inst/div_inst/div/genblk1[22].div_end_reg[23][24]_inv2default:defaultZ8-5365h px� 
�
,Flop %s is being inverted and renamed to %s.3906*oasys2S
?fdct_inst/qnt_inst/div_inst/div/genblk1[23].div_end_reg[24][24]2default:default2W
Cfdct_inst/qnt_inst/div_inst/div/genblk1[23].div_end_reg[24][24]_inv2default:defaultZ8-5365h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
uFinished IO Insertion : Time (s): cpu = 00:00:53 ; elapsed = 00:00:52 . Memory (MB): peak = 879.016 ; gain = 558.734
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:53 ; elapsed = 00:00:52 . Memory (MB): peak = 879.016 ; gain = 558.734
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:55 ; elapsed = 00:00:54 . Memory (MB): peak = 879.016 ; gain = 558.734
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:56 ; elapsed = 00:00:54 . Memory (MB): peak = 879.016 ; gain = 558.734
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:56 ; elapsed = 00:00:55 . Memory (MB): peak = 879.016 ; gain = 558.734
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:56 ; elapsed = 00:00:55 . Memory (MB): peak = 879.016 ; gain = 558.734
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23

Static Shift Register Report:
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|Module Name | RTL Name                                                                           | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_af/genblk1[0].inst/mul/genblk1[7].bm/dout_multilplier_reg[17]    | 8      | 72    | NO           | NO                 | YES               | 72     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_af/genblk1[0].inst/mul/genblk1[8].bm/dout_multilplier_reg[19]    | 9      | 16    | NO           | NO                 | YES               | 16     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_af/genblk1[0].inst/mul/genblk1[9].bm/dout_multilplier_reg[21]    | 10     | 16    | NO           | NO                 | YES               | 16     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_af/genblk1[0].inst/mul/genblk1[10].bm/dout_multilplier_reg[23]   | 11     | 16    | NO           | NO                 | YES               | 16     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_af/genblk1[0].inst/mul/dout_reg[19]                              | 4      | 16    | NO           | YES                | YES               | 16     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_af/genblk1[0].inst/mul/dout_reg[17]                              | 5      | 16    | NO           | YES                | YES               | 16     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_af/genblk1[0].inst/exp_sf/genblk1[14].shift_reg_int_reg[14][7]   | 14     | 64    | NO           | YES                | YES               | 64     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_af/genblk1[0].inst/sig_sf/genblk1[15].shift_reg_int_reg[15][0]   | 15     | 8     | NO           | NO                 | NO                | 8      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_af/float_add_inst/pre_augend_reg[26]                             | 3      | 24    | NO           | NO                 | YES               | 24     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_af/float_add_inst/post_exp_reg[7]                                | 5      | 8     | NO           | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_af/float_add_inst/add_sig_reg                                    | 4      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_af/genblk2[0].inst/pre_augend_reg[26]                            | 3      | 96    | NO           | NO                 | YES               | 96     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_af/genblk2[0].inst/post_exp_reg[7]                               | 5      | 32    | NO           | NO                 | YES               | 32     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_af/genblk2[0].inst/add_sig_reg                                   | 4      | 4     | NO           | NO                 | YES               | 4      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_af/genblk3[0].inst/pre_augend_reg[26]                            | 3      | 48    | NO           | NO                 | YES               | 48     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_af/genblk3[0].inst/post_exp_reg[7]                               | 5      | 16    | NO           | NO                 | YES               | 16     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_af/genblk3[0].inst/add_sig_reg                                   | 4      | 2     | NO           | NO                 | YES               | 2      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk1[0].inst/mul/dout_reg[19]                            | 4      | 16    | NO           | YES                | YES               | 16     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk1[0].inst/mul/dout_reg[17]                            | 5      | 16    | NO           | YES                | YES               | 16     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk1[0].inst/mul/dout_reg[15]                            | 6      | 16    | NO           | YES                | YES               | 16     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk1[0].inst/mul/dout_reg[13]                            | 7      | 16    | NO           | YES                | YES               | 16     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk1[0].inst/mul/dout_reg[11]                            | 8      | 16    | NO           | YES                | YES               | 16     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk1[0].inst/mul/dout_reg[9]                             | 9      | 16    | NO           | YES                | YES               | 16     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk1[0].inst/mul/dout_reg[7]                             | 10     | 16    | NO           | YES                | YES               | 16     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk1[0].inst/mul/dout_reg[5]                             | 11     | 16    | NO           | YES                | YES               | 16     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk1[0].inst/mul/dout_reg[3]                             | 12     | 16    | NO           | YES                | YES               | 16     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk1[0].inst/mul/dout_reg[1]                             | 13     | 16    | NO           | NO                 | YES               | 16     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk1[0].inst/exp_sf/genblk1[14].shift_reg_int_reg[14][7] | 14     | 64    | NO           | YES                | YES               | 64     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk1[0].inst/sig_sf/genblk1[15].shift_reg_int_reg[15][0] | 15     | 8     | NO           | NO                 | NO                | 8      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/float_add_inst/pre_augend_reg[26]                           | 3      | 24    | NO           | NO                 | YES               | 24     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/float_add_inst/post_exp_reg[7]                              | 5      | 8     | NO           | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/float_add_inst/add_sig_reg                                  | 4      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk2[0].inst/pre_augend_reg[26]                          | 3      | 96    | NO           | NO                 | YES               | 96     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk2[0].inst/post_exp_reg[7]                             | 5      | 32    | NO           | NO                 | YES               | 32     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk2[0].inst/add_sig_reg                                 | 4      | 4     | NO           | NO                 | YES               | 4      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk3[0].inst/pre_augend_reg[26]                          | 3      | 48    | NO           | NO                 | YES               | 48     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk3[0].inst/post_exp_reg[7]                             | 5      | 16    | NO           | NO                 | YES               | 16     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk3[0].inst/add_sig_reg                                 | 4      | 2     | NO           | NO                 | YES               | 2      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk1[7].inst/mul/genblk1[2].bm/dout_multilplier_reg[6]   | 3      | 14    | NO           | NO                 | YES               | 14     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk1[7].inst/mul/genblk1[3].bm/dout_multilplier_reg[22]  | 4      | 4     | NO           | NO                 | YES               | 4      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk1[7].inst/mul/genblk1[4].bm/dout_multilplier_reg[10]  | 5      | 4     | NO           | NO                 | YES               | 4      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk1[7].inst/mul/genblk1[5].bm/dout_multilplier_reg[12]  | 6      | 8     | NO           | NO                 | YES               | 8      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk1[7].inst/mul/genblk1[6].bm/dout_multilplier_reg[14]  | 7      | 20    | NO           | NO                 | YES               | 20     | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk1[7].inst/mul/genblk1[7].bm/dout_multilplier_reg[17]  | 8      | 4     | NO           | NO                 | YES               | 4      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk1[7].inst/mul/genblk1[8].bm/dout_multilplier_reg[18]  | 9      | 4     | NO           | NO                 | YES               | 4      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/genblk1[7].inst/mul/genblk1[9].bm/dout_multilplier_reg[21]  | 10     | 4     | NO           | NO                 | YES               | 4      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/div_inst/div/genblk1[24].div_quo_reg[24][24]                    | 25     | 1     | NO           | NO                 | YES               | 0      | 1       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/div_inst/div/genblk1[24].div_quo_reg[24][23]                    | 24     | 1     | NO           | NO                 | YES               | 0      | 1       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/div_inst/div/genblk1[24].div_quo_reg[24][22]                    | 23     | 1     | NO           | NO                 | YES               | 0      | 1       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/div_inst/div/genblk1[24].div_quo_reg[24][21]                    | 22     | 1     | NO           | NO                 | YES               | 0      | 1       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/div_inst/div/genblk1[24].div_quo_reg[24][20]                    | 21     | 1     | NO           | NO                 | YES               | 0      | 1       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/div_inst/div/genblk1[24].div_quo_reg[24][19]                    | 20     | 1     | NO           | NO                 | YES               | 0      | 1       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/div_inst/div/genblk1[24].div_quo_reg[24][18]                    | 19     | 1     | NO           | NO                 | YES               | 0      | 1       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/div_inst/div/genblk1[24].div_quo_reg[24][17]                    | 18     | 1     | NO           | NO                 | YES               | 0      | 1       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/div_inst/div/genblk1[24].div_quo_reg[24][16]                    | 17     | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/div_inst/div/genblk1[24].div_quo_reg[24][15]                    | 16     | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/div_inst/div/genblk1[24].div_quo_reg[24][14]                    | 15     | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/div_inst/div/genblk1[24].div_quo_reg[24][13]                    | 14     | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/div_inst/div/genblk1[24].div_quo_reg[24][12]                    | 13     | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/div_inst/div/genblk1[24].div_quo_reg[24][11]                    | 12     | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/div_inst/div/genblk1[24].div_quo_reg[24][10]                    | 11     | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/div_inst/div/genblk1[24].div_quo_reg[24][9]                     | 10     | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/div_inst/div/genblk1[24].div_quo_reg[24][8]                     | 9      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/div_inst/div/genblk1[24].div_quo_reg[24][7]                     | 8      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/div_inst/div/genblk1[24].div_quo_reg[24][6]                     | 7      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/div_inst/div/genblk1[24].div_quo_reg[24][5]                     | 6      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/div_inst/div/genblk1[24].div_quo_reg[24][4]                     | 5      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/div_inst/div/genblk1[24].div_quo_reg[24][3]                     | 4      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/div_inst/div/genblk1[24].div_quo_reg[24][2]                     | 3      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/div_inst/exp_sf/genblk1[26].shift_reg_int_reg[26][7]            | 26     | 8     | NO           | YES                | YES               | 0      | 8       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/div_inst/sig_sf/genblk1[26].shift_reg_int_reg[26][0]            | 26     | 1     | NO           | NO                 | NO                | 0      | 1       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | encoder_inst/conc_eoi_reg                                                          | 3      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_af/float_add_inst/dout_valid_reg                                 | 37     | 1     | YES          | NO                 | YES               | 0      | 2       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/dot_pro_afat/float_add_inst/dout_valid_reg                               | 37     | 1     | YES          | NO                 | YES               | 0      | 2       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | fdct_inst/qnt_inst/f2i_inst/dout_valid_reg                                         | 29     | 1     | YES          | NO                 | YES               | 0      | 1       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|jpeg        | encoder_inst/rle_inst/ram[3].rrmg_ram_reg[3][13]                                   | 4      | 2     | YES          | NO                 | YES               | 2      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+------------------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|      |Cell     |Count |
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|1     |BUFG     |     1|
2default:defaulth px� 
F
%s*synth2.
|2     |CARRY4   |  2480|
2default:defaulth px� 
F
%s*synth2.
|3     |LUT1     |  4020|
2default:defaulth px� 
F
%s*synth2.
|4     |LUT2     |  4967|
2default:defaulth px� 
F
%s*synth2.
|5     |LUT3     |  3147|
2default:defaulth px� 
F
%s*synth2.
|6     |LUT4     |  1150|
2default:defaulth px� 
F
%s*synth2.
|7     |LUT5     |  1265|
2default:defaulth px� 
F
%s*synth2.
|8     |LUT6     |  4927|
2default:defaulth px� 
F
%s*synth2.
|9     |MUXF7    |    99|
2default:defaulth px� 
F
%s*synth2.
|10    |MUXF8    |     8|
2default:defaulth px� 
F
%s*synth2.
|11    |RAM16X1S |   128|
2default:defaulth px� 
F
%s*synth2.
|12    |RAM64X1S |    16|
2default:defaulth px� 
F
%s*synth2.
|13    |RAMB18E1 |     1|
2default:defaulth px� 
F
%s*synth2.
|14    |SRL16E   |   998|
2default:defaulth px� 
F
%s*synth2.
|15    |SRLC32E  |    22|
2default:defaulth px� 
F
%s*synth2.
|16    |FDCE     |   245|
2default:defaulth px� 
F
%s*synth2.
|17    |FDRE     | 17051|
2default:defaulth px� 
F
%s*synth2.
|18    |IBUF     |    11|
2default:defaulth px� 
F
%s*synth2.
|19    |OBUF     |    33|
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
y
%s
*synth2a
M+------+---------------------------+--------------------------------+------+
2default:defaulth p
x
� 
y
%s
*synth2a
M|      |Instance                   |Module                          |Cells |
2default:defaulth p
x
� 
y
%s
*synth2a
M+------+---------------------------+--------------------------------+------+
2default:defaulth p
x
� 
y
%s
*synth2a
M|1     |top                        |                                | 40569|
2default:defaulth p
x
� 
y
%s
*synth2a
M|2     |  encoder_inst             |encoder                         |   793|
2default:defaulth p
x
� 
y
%s
*synth2a
M|3     |    conc_inst              |conc_bytes                      |   415|
2default:defaulth p
x
� 
y
%s
*synth2a
M|4     |    rle_inst               |rle                             |   149|
2default:defaulth p
x
� 
y
%s
*synth2a
M|5     |  fdct_inst                |fdct                            | 39627|
2default:defaulth p
x
� 
y
%s
*synth2a
M|6     |    dot_pro_af             |dot_pro                         | 11977|
2default:defaulth p
x
� 
y
%s
*synth2a
M|7     |      float_add_inst       |float_add_nb_150                |   683|
2default:defaulth p
x
� 
y
%s
*synth2a
M|8     |      \genblk1[0].inst     |float_mul_nb_151                |   708|
2default:defaulth p
x
� 
y
%s
*synth2a
M|9     |        exp_sf             |shift_reg_235                   |    24|
2default:defaulth p
x
� 
y
%s
*synth2a
M|10    |        mul                |fixed_mul_nb_236                |   432|
2default:defaulth p
x
� 
y
%s
*synth2a
M|11    |          \genblk1[10].bm  |booth_algo__parameterized9_238  |    92|
2default:defaulth p
x
� 
y
%s
*synth2a
M|12    |          \genblk1[11].bm  |booth_algo__parameterized10_239 |    87|
2default:defaulth p
x
� 
y
%s
*synth2a
M|13    |          \genblk1[12].bm  |booth_algo__parameterized11_240 |    79|
2default:defaulth p
x
� 
y
%s
*synth2a
M|14    |          \genblk1[6].bm   |booth_algo__parameterized5_241  |     1|
2default:defaulth p
x
� 
y
%s
*synth2a
M|15    |          \genblk1[7].bm   |booth_algo__parameterized6_242  |     3|
2default:defaulth p
x
� 
y
%s
*synth2a
M|16    |          \genblk1[8].bm   |booth_algo__parameterized7_243  |    33|
2default:defaulth p
x
� 
y
%s
*synth2a
M|17    |          \genblk1[9].bm   |booth_algo__parameterized8_244  |    69|
2default:defaulth p
x
� 
y
%s
*synth2a
M|18    |        sig_sf             |shift_reg__parameterized0_237   |     1|
2default:defaulth p
x
� 
y
%s
*synth2a
M|19    |      \genblk1[1].inst     |float_mul_nb_152                |   628|
2default:defaulth p
x
� 
y
%s
*synth2a
M|20    |        exp_sf             |shift_reg_225                   |    24|
2default:defaulth p
x
� 
y
%s
*synth2a
M|21    |        mul                |fixed_mul_nb_226                |   435|
2default:defaulth p
x
� 
y
%s
*synth2a
M|22    |          \genblk1[10].bm  |booth_algo__parameterized9_228  |    93|
2default:defaulth p
x
� 
y
%s
*synth2a
M|23    |          \genblk1[11].bm  |booth_algo__parameterized10_229 |    87|
2default:defaulth p
x
� 
y
%s
*synth2a
M|24    |          \genblk1[12].bm  |booth_algo__parameterized11_230 |    79|
2default:defaulth p
x
� 
y
%s
*synth2a
M|25    |          \genblk1[6].bm   |booth_algo__parameterized5_231  |     1|
2default:defaulth p
x
� 
y
%s
*synth2a
M|26    |          \genblk1[7].bm   |booth_algo__parameterized6_232  |     3|
2default:defaulth p
x
� 
y
%s
*synth2a
M|27    |          \genblk1[8].bm   |booth_algo__parameterized7_233  |    34|
2default:defaulth p
x
� 
y
%s
*synth2a
M|28    |          \genblk1[9].bm   |booth_algo__parameterized8_234  |    70|
2default:defaulth p
x
� 
y
%s
*synth2a
M|29    |        sig_sf             |shift_reg__parameterized0_227   |     1|
2default:defaulth p
x
� 
y
%s
*synth2a
M|30    |      \genblk1[2].inst     |float_mul_nb_153                |   710|
2default:defaulth p
x
� 
y
%s
*synth2a
M|31    |        exp_sf             |shift_reg_215                   |    24|
2default:defaulth p
x
� 
y
%s
*synth2a
M|32    |        mul                |fixed_mul_nb_216                |   432|
2default:defaulth p
x
� 
y
%s
*synth2a
M|33    |          \genblk1[10].bm  |booth_algo__parameterized9_218  |    92|
2default:defaulth p
x
� 
y
%s
*synth2a
M|34    |          \genblk1[11].bm  |booth_algo__parameterized10_219 |    87|
2default:defaulth p
x
� 
y
%s
*synth2a
M|35    |          \genblk1[12].bm  |booth_algo__parameterized11_220 |    79|
2default:defaulth p
x
� 
y
%s
*synth2a
M|36    |          \genblk1[6].bm   |booth_algo__parameterized5_221  |     1|
2default:defaulth p
x
� 
y
%s
*synth2a
M|37    |          \genblk1[7].bm   |booth_algo__parameterized6_222  |     3|
2default:defaulth p
x
� 
y
%s
*synth2a
M|38    |          \genblk1[8].bm   |booth_algo__parameterized7_223  |    33|
2default:defaulth p
x
� 
y
%s
*synth2a
M|39    |          \genblk1[9].bm   |booth_algo__parameterized8_224  |    69|
2default:defaulth p
x
� 
y
%s
*synth2a
M|40    |        sig_sf             |shift_reg__parameterized0_217   |     1|
2default:defaulth p
x
� 
y
%s
*synth2a
M|41    |      \genblk1[3].inst     |float_mul_nb_154                |   628|
2default:defaulth p
x
� 
y
%s
*synth2a
M|42    |        exp_sf             |shift_reg_205                   |    24|
2default:defaulth p
x
� 
y
%s
*synth2a
M|43    |        mul                |fixed_mul_nb_206                |   435|
2default:defaulth p
x
� 
y
%s
*synth2a
M|44    |          \genblk1[10].bm  |booth_algo__parameterized9_208  |    93|
2default:defaulth p
x
� 
y
%s
*synth2a
M|45    |          \genblk1[11].bm  |booth_algo__parameterized10_209 |    87|
2default:defaulth p
x
� 
y
%s
*synth2a
M|46    |          \genblk1[12].bm  |booth_algo__parameterized11_210 |    79|
2default:defaulth p
x
� 
y
%s
*synth2a
M|47    |          \genblk1[6].bm   |booth_algo__parameterized5_211  |     1|
2default:defaulth p
x
� 
y
%s
*synth2a
M|48    |          \genblk1[7].bm   |booth_algo__parameterized6_212  |     3|
2default:defaulth p
x
� 
y
%s
*synth2a
M|49    |          \genblk1[8].bm   |booth_algo__parameterized7_213  |    34|
2default:defaulth p
x
� 
y
%s
*synth2a
M|50    |          \genblk1[9].bm   |booth_algo__parameterized8_214  |    70|
2default:defaulth p
x
� 
y
%s
*synth2a
M|51    |        sig_sf             |shift_reg__parameterized0_207   |     1|
2default:defaulth p
x
� 
y
%s
*synth2a
M|52    |      \genblk1[4].inst     |float_mul_nb_155                |  1021|
2default:defaulth p
x
� 
y
%s
*synth2a
M|53    |        exp_sf             |shift_reg_195                   |    24|
2default:defaulth p
x
� 
y
%s
*synth2a
M|54    |        mul                |fixed_mul_nb_196                |   744|
2default:defaulth p
x
� 
y
%s
*synth2a
M|55    |          \genblk1[10].bm  |booth_algo__parameterized9_198  |   173|
2default:defaulth p
x
� 
y
%s
*synth2a
M|56    |          \genblk1[11].bm  |booth_algo__parameterized10_199 |    99|
2default:defaulth p
x
� 
y
%s
*synth2a
M|57    |          \genblk1[12].bm  |booth_algo__parameterized11_200 |    79|
2default:defaulth p
x
� 
y
%s
*synth2a
M|58    |          \genblk1[6].bm   |booth_algo__parameterized5_201  |    14|
2default:defaulth p
x
� 
y
%s
*synth2a
M|59    |          \genblk1[7].bm   |booth_algo__parameterized6_202  |    47|
2default:defaulth p
x
� 
y
%s
*synth2a
M|60    |          \genblk1[8].bm   |booth_algo__parameterized7_203  |   114|
2default:defaulth p
x
� 
y
%s
*synth2a
M|61    |          \genblk1[9].bm   |booth_algo__parameterized8_204  |   150|
2default:defaulth p
x
� 
y
%s
*synth2a
M|62    |        sig_sf             |shift_reg__parameterized0_197   |     1|
2default:defaulth p
x
� 
y
%s
*synth2a
M|63    |      \genblk1[5].inst     |float_mul_nb_156                |  1009|
2default:defaulth p
x
� 
y
%s
*synth2a
M|64    |        exp_sf             |shift_reg_185                   |    24|
2default:defaulth p
x
� 
y
%s
*synth2a
M|65    |        mul                |fixed_mul_nb_186                |   816|
2default:defaulth p
x
� 
y
%s
*synth2a
M|66    |          \genblk1[10].bm  |booth_algo__parameterized9_188  |   192|
2default:defaulth p
x
� 
y
%s
*synth2a
M|67    |          \genblk1[11].bm  |booth_algo__parameterized10_189 |   102|
2default:defaulth p
x
� 
y
%s
*synth2a
M|68    |          \genblk1[12].bm  |booth_algo__parameterized11_190 |    79|
2default:defaulth p
x
� 
y
%s
*synth2a
M|69    |          \genblk1[6].bm   |booth_algo__parameterized5_191  |    16|
2default:defaulth p
x
� 
y
%s
*synth2a
M|70    |          \genblk1[7].bm   |booth_algo__parameterized6_192  |    57|
2default:defaulth p
x
� 
y
%s
*synth2a
M|71    |          \genblk1[8].bm   |booth_algo__parameterized7_193  |   133|
2default:defaulth p
x
� 
y
%s
*synth2a
M|72    |          \genblk1[9].bm   |booth_algo__parameterized8_194  |   169|
2default:defaulth p
x
� 
y
%s
*synth2a
M|73    |        sig_sf             |shift_reg__parameterized0_187   |     1|
2default:defaulth p
x
� 
y
%s
*synth2a
M|74    |      \genblk1[6].inst     |float_mul_nb_157                |  1150|
2default:defaulth p
x
� 
y
%s
*synth2a
M|75    |        exp_sf             |shift_reg_175                   |    24|
2default:defaulth p
x
� 
y
%s
*synth2a
M|76    |        mul                |fixed_mul_nb_176                |   873|
2default:defaulth p
x
� 
y
%s
*synth2a
M|77    |          \genblk1[10].bm  |booth_algo__parameterized9_178  |   205|
2default:defaulth p
x
� 
y
%s
*synth2a
M|78    |          \genblk1[11].bm  |booth_algo__parameterized10_179 |   104|
2default:defaulth p
x
� 
y
%s
*synth2a
M|79    |          \genblk1[12].bm  |booth_algo__parameterized11_180 |    79|
2default:defaulth p
x
� 
y
%s
*synth2a
M|80    |          \genblk1[6].bm   |booth_algo__parameterized5_181  |    18|
2default:defaulth p
x
� 
y
%s
*synth2a
M|81    |          \genblk1[7].bm   |booth_algo__parameterized6_182  |    71|
2default:defaulth p
x
� 
y
%s
*synth2a
M|82    |          \genblk1[8].bm   |booth_algo__parameterized7_183  |   146|
2default:defaulth p
x
� 
y
%s
*synth2a
M|83    |          \genblk1[9].bm   |booth_algo__parameterized8_184  |   182|
2default:defaulth p
x
� 
y
%s
*synth2a
M|84    |        sig_sf             |shift_reg__parameterized0_177   |     1|
2default:defaulth p
x
� 
y
%s
*synth2a
M|85    |      \genblk1[7].inst     |float_mul_nb_158                |  1138|
2default:defaulth p
x
� 
y
%s
*synth2a
M|86    |        exp_sf             |shift_reg_165                   |    24|
2default:defaulth p
x
� 
y
%s
*synth2a
M|87    |        mul                |fixed_mul_nb_166                |   945|
2default:defaulth p
x
� 
y
%s
*synth2a
M|88    |          \genblk1[10].bm  |booth_algo__parameterized9_168  |   224|
2default:defaulth p
x
� 
y
%s
*synth2a
M|89    |          \genblk1[11].bm  |booth_algo__parameterized10_169 |   107|
2default:defaulth p
x
� 
y
%s
*synth2a
M|90    |          \genblk1[12].bm  |booth_algo__parameterized11_170 |    79|
2default:defaulth p
x
� 
y
%s
*synth2a
M|91    |          \genblk1[6].bm   |booth_algo__parameterized5_171  |    20|
2default:defaulth p
x
� 
y
%s
*synth2a
M|92    |          \genblk1[7].bm   |booth_algo__parameterized6_172  |    81|
2default:defaulth p
x
� 
y
%s
*synth2a
M|93    |          \genblk1[8].bm   |booth_algo__parameterized7_173  |   165|
2default:defaulth p
x
� 
y
%s
*synth2a
M|94    |          \genblk1[9].bm   |booth_algo__parameterized8_174  |   201|
2default:defaulth p
x
� 
y
%s
*synth2a
M|95    |        sig_sf             |shift_reg__parameterized0_167   |     1|
2default:defaulth p
x
� 
y
%s
*synth2a
M|96    |      \genblk2[0].inst     |float_add_nb_159                |   754|
2default:defaulth p
x
� 
y
%s
*synth2a
M|97    |      \genblk2[1].inst     |float_add_nb_160                |   670|
2default:defaulth p
x
� 
y
%s
*synth2a
M|98    |      \genblk2[2].inst     |float_add_nb_161                |   754|
2default:defaulth p
x
� 
y
%s
*synth2a
M|99    |      \genblk2[3].inst     |float_add_nb_162                |   670|
2default:defaulth p
x
� 
y
%s
*synth2a
M|100   |      \genblk3[0].inst     |float_add_nb_163                |   754|
2default:defaulth p
x
� 
y
%s
*synth2a
M|101   |      \genblk3[1].inst     |float_add_nb_164                |   670|
2default:defaulth p
x
� 
y
%s
*synth2a
M|102   |    dot_pro_afat           |dot_pro_1                       | 23624|
2default:defaulth p
x
� 
y
%s
*synth2a
M|103   |      float_add_inst       |float_add_nb                    |   682|
2default:defaulth p
x
� 
y
%s
*synth2a
M|104   |      \genblk1[0].inst     |float_mul_nb                    |  2336|
2default:defaulth p
x
� 
y
%s
*synth2a
M|105   |        exp_sf             |shift_reg_134                   |    29|
2default:defaulth p
x
� 
y
%s
*synth2a
M|106   |        mul                |fixed_mul_nb_135                |  2059|
2default:defaulth p
x
� 
y
%s
*synth2a
M|107   |          \genblk1[0].bm   |booth_algo_137                  |   135|
2default:defaulth p
x
� 
y
%s
*synth2a
M|108   |          \genblk1[10].bm  |booth_algo__parameterized9_138  |   138|
2default:defaulth p
x
� 
y
%s
*synth2a
M|109   |          \genblk1[11].bm  |booth_algo__parameterized10_139 |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|110   |          \genblk1[12].bm  |booth_algo__parameterized11_140 |    82|
2default:defaulth p
x
� 
y
%s
*synth2a
M|111   |          \genblk1[1].bm   |booth_algo__parameterized0_141  |   128|
2default:defaulth p
x
� 
y
%s
*synth2a
M|112   |          \genblk1[2].bm   |booth_algo__parameterized1_142  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|113   |          \genblk1[3].bm   |booth_algo__parameterized2_143  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|114   |          \genblk1[4].bm   |booth_algo__parameterized3_144  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|115   |          \genblk1[5].bm   |booth_algo__parameterized4_145  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|116   |          \genblk1[6].bm   |booth_algo__parameterized5_146  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|117   |          \genblk1[7].bm   |booth_algo__parameterized6_147  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|118   |          \genblk1[8].bm   |booth_algo__parameterized7_148  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|119   |          \genblk1[9].bm   |booth_algo__parameterized8_149  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|120   |        sig_sf             |shift_reg__parameterized0_136   |     1|
2default:defaulth p
x
� 
y
%s
*synth2a
M|121   |      \genblk1[1].inst     |float_mul_nb_25                 |  2253|
2default:defaulth p
x
� 
y
%s
*synth2a
M|122   |        exp_sf             |shift_reg_118                   |    29|
2default:defaulth p
x
� 
y
%s
*synth2a
M|123   |        mul                |fixed_mul_nb_119                |  2059|
2default:defaulth p
x
� 
y
%s
*synth2a
M|124   |          \genblk1[0].bm   |booth_algo_121                  |   135|
2default:defaulth p
x
� 
y
%s
*synth2a
M|125   |          \genblk1[10].bm  |booth_algo__parameterized9_122  |   138|
2default:defaulth p
x
� 
y
%s
*synth2a
M|126   |          \genblk1[11].bm  |booth_algo__parameterized10_123 |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|127   |          \genblk1[12].bm  |booth_algo__parameterized11_124 |    82|
2default:defaulth p
x
� 
y
%s
*synth2a
M|128   |          \genblk1[1].bm   |booth_algo__parameterized0_125  |   128|
2default:defaulth p
x
� 
y
%s
*synth2a
M|129   |          \genblk1[2].bm   |booth_algo__parameterized1_126  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|130   |          \genblk1[3].bm   |booth_algo__parameterized2_127  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|131   |          \genblk1[4].bm   |booth_algo__parameterized3_128  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|132   |          \genblk1[5].bm   |booth_algo__parameterized4_129  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|133   |          \genblk1[6].bm   |booth_algo__parameterized5_130  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|134   |          \genblk1[7].bm   |booth_algo__parameterized6_131  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|135   |          \genblk1[8].bm   |booth_algo__parameterized7_132  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|136   |          \genblk1[9].bm   |booth_algo__parameterized8_133  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|137   |        sig_sf             |shift_reg__parameterized0_120   |     1|
2default:defaulth p
x
� 
y
%s
*synth2a
M|138   |      \genblk1[2].inst     |float_mul_nb_26                 |  2337|
2default:defaulth p
x
� 
y
%s
*synth2a
M|139   |        exp_sf             |shift_reg_102                   |    29|
2default:defaulth p
x
� 
y
%s
*synth2a
M|140   |        mul                |fixed_mul_nb_103                |  2059|
2default:defaulth p
x
� 
y
%s
*synth2a
M|141   |          \genblk1[0].bm   |booth_algo_105                  |   135|
2default:defaulth p
x
� 
y
%s
*synth2a
M|142   |          \genblk1[10].bm  |booth_algo__parameterized9_106  |   138|
2default:defaulth p
x
� 
y
%s
*synth2a
M|143   |          \genblk1[11].bm  |booth_algo__parameterized10_107 |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|144   |          \genblk1[12].bm  |booth_algo__parameterized11_108 |    82|
2default:defaulth p
x
� 
y
%s
*synth2a
M|145   |          \genblk1[1].bm   |booth_algo__parameterized0_109  |   128|
2default:defaulth p
x
� 
y
%s
*synth2a
M|146   |          \genblk1[2].bm   |booth_algo__parameterized1_110  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|147   |          \genblk1[3].bm   |booth_algo__parameterized2_111  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|148   |          \genblk1[4].bm   |booth_algo__parameterized3_112  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|149   |          \genblk1[5].bm   |booth_algo__parameterized4_113  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|150   |          \genblk1[6].bm   |booth_algo__parameterized5_114  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|151   |          \genblk1[7].bm   |booth_algo__parameterized6_115  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|152   |          \genblk1[8].bm   |booth_algo__parameterized7_116  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|153   |          \genblk1[9].bm   |booth_algo__parameterized8_117  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|154   |        sig_sf             |shift_reg__parameterized0_104   |     1|
2default:defaulth p
x
� 
y
%s
*synth2a
M|155   |      \genblk1[3].inst     |float_mul_nb_27                 |  2253|
2default:defaulth p
x
� 
y
%s
*synth2a
M|156   |        exp_sf             |shift_reg_86                    |    29|
2default:defaulth p
x
� 
y
%s
*synth2a
M|157   |        mul                |fixed_mul_nb_87                 |  2059|
2default:defaulth p
x
� 
y
%s
*synth2a
M|158   |          \genblk1[0].bm   |booth_algo_89                   |   135|
2default:defaulth p
x
� 
y
%s
*synth2a
M|159   |          \genblk1[10].bm  |booth_algo__parameterized9_90   |   138|
2default:defaulth p
x
� 
y
%s
*synth2a
M|160   |          \genblk1[11].bm  |booth_algo__parameterized10_91  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|161   |          \genblk1[12].bm  |booth_algo__parameterized11_92  |    82|
2default:defaulth p
x
� 
y
%s
*synth2a
M|162   |          \genblk1[1].bm   |booth_algo__parameterized0_93   |   128|
2default:defaulth p
x
� 
y
%s
*synth2a
M|163   |          \genblk1[2].bm   |booth_algo__parameterized1_94   |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|164   |          \genblk1[3].bm   |booth_algo__parameterized2_95   |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|165   |          \genblk1[4].bm   |booth_algo__parameterized3_96   |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|166   |          \genblk1[5].bm   |booth_algo__parameterized4_97   |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|167   |          \genblk1[6].bm   |booth_algo__parameterized5_98   |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|168   |          \genblk1[7].bm   |booth_algo__parameterized6_99   |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|169   |          \genblk1[8].bm   |booth_algo__parameterized7_100  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|170   |          \genblk1[9].bm   |booth_algo__parameterized8_101  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|171   |        sig_sf             |shift_reg__parameterized0_88    |     1|
2default:defaulth p
x
� 
y
%s
*synth2a
M|172   |      \genblk1[4].inst     |float_mul_nb_28                 |  2410|
2default:defaulth p
x
� 
y
%s
*synth2a
M|173   |        exp_sf             |shift_reg_70                    |    29|
2default:defaulth p
x
� 
y
%s
*synth2a
M|174   |        mul                |fixed_mul_nb_71                 |  2121|
2default:defaulth p
x
� 
y
%s
*synth2a
M|175   |          \genblk1[0].bm   |booth_algo_73                   |   163|
2default:defaulth p
x
� 
y
%s
*synth2a
M|176   |          \genblk1[10].bm  |booth_algo__parameterized9_74   |   118|
2default:defaulth p
x
� 
y
%s
*synth2a
M|177   |          \genblk1[11].bm  |booth_algo__parameterized10_75  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|178   |          \genblk1[12].bm  |booth_algo__parameterized11_76  |    82|
2default:defaulth p
x
� 
y
%s
*synth2a
M|179   |          \genblk1[1].bm   |booth_algo__parameterized0_77   |   135|
2default:defaulth p
x
� 
y
%s
*synth2a
M|180   |          \genblk1[2].bm   |booth_algo__parameterized1_78   |   171|
2default:defaulth p
x
� 
y
%s
*synth2a
M|181   |          \genblk1[3].bm   |booth_algo__parameterized2_79   |   169|
2default:defaulth p
x
� 
y
%s
*synth2a
M|182   |          \genblk1[4].bm   |booth_algo__parameterized3_80   |   145|
2default:defaulth p
x
� 
y
%s
*synth2a
M|183   |          \genblk1[5].bm   |booth_algo__parameterized4_81   |   193|
2default:defaulth p
x
� 
y
%s
*synth2a
M|184   |          \genblk1[6].bm   |booth_algo__parameterized5_82   |   170|
2default:defaulth p
x
� 
y
%s
*synth2a
M|185   |          \genblk1[7].bm   |booth_algo__parameterized6_83   |   170|
2default:defaulth p
x
� 
y
%s
*synth2a
M|186   |          \genblk1[8].bm   |booth_algo__parameterized7_84   |   171|
2default:defaulth p
x
� 
y
%s
*synth2a
M|187   |          \genblk1[9].bm   |booth_algo__parameterized8_85   |   170|
2default:defaulth p
x
� 
y
%s
*synth2a
M|188   |        sig_sf             |shift_reg__parameterized0_72    |     1|
2default:defaulth p
x
� 
y
%s
*synth2a
M|189   |      \genblk1[5].inst     |float_mul_nb_29                 |  2325|
2default:defaulth p
x
� 
y
%s
*synth2a
M|190   |        exp_sf             |shift_reg_54                    |    29|
2default:defaulth p
x
� 
y
%s
*synth2a
M|191   |        mul                |fixed_mul_nb_55                 |  2120|
2default:defaulth p
x
� 
y
%s
*synth2a
M|192   |          \genblk1[0].bm   |booth_algo_57                   |   163|
2default:defaulth p
x
� 
y
%s
*synth2a
M|193   |          \genblk1[10].bm  |booth_algo__parameterized9_58   |   118|
2default:defaulth p
x
� 
y
%s
*synth2a
M|194   |          \genblk1[11].bm  |booth_algo__parameterized10_59  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|195   |          \genblk1[12].bm  |booth_algo__parameterized11_60  |    82|
2default:defaulth p
x
� 
y
%s
*synth2a
M|196   |          \genblk1[1].bm   |booth_algo__parameterized0_61   |   135|
2default:defaulth p
x
� 
y
%s
*synth2a
M|197   |          \genblk1[2].bm   |booth_algo__parameterized1_62   |   171|
2default:defaulth p
x
� 
y
%s
*synth2a
M|198   |          \genblk1[3].bm   |booth_algo__parameterized2_63   |   169|
2default:defaulth p
x
� 
y
%s
*synth2a
M|199   |          \genblk1[4].bm   |booth_algo__parameterized3_64   |   145|
2default:defaulth p
x
� 
y
%s
*synth2a
M|200   |          \genblk1[5].bm   |booth_algo__parameterized4_65   |   192|
2default:defaulth p
x
� 
y
%s
*synth2a
M|201   |          \genblk1[6].bm   |booth_algo__parameterized5_66   |   170|
2default:defaulth p
x
� 
y
%s
*synth2a
M|202   |          \genblk1[7].bm   |booth_algo__parameterized6_67   |   170|
2default:defaulth p
x
� 
y
%s
*synth2a
M|203   |          \genblk1[8].bm   |booth_algo__parameterized7_68   |   171|
2default:defaulth p
x
� 
y
%s
*synth2a
M|204   |          \genblk1[9].bm   |booth_algo__parameterized8_69   |   170|
2default:defaulth p
x
� 
y
%s
*synth2a
M|205   |        sig_sf             |shift_reg__parameterized0_56    |     1|
2default:defaulth p
x
� 
y
%s
*synth2a
M|206   |      \genblk1[6].inst     |float_mul_nb_30                 |  2420|
2default:defaulth p
x
� 
y
%s
*synth2a
M|207   |        exp_sf             |shift_reg_38                    |    29|
2default:defaulth p
x
� 
y
%s
*synth2a
M|208   |        mul                |fixed_mul_nb_39                 |  2131|
2default:defaulth p
x
� 
y
%s
*synth2a
M|209   |          \genblk1[0].bm   |booth_algo_41                   |   163|
2default:defaulth p
x
� 
y
%s
*synth2a
M|210   |          \genblk1[10].bm  |booth_algo__parameterized9_42   |   118|
2default:defaulth p
x
� 
y
%s
*synth2a
M|211   |          \genblk1[11].bm  |booth_algo__parameterized10_43  |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|212   |          \genblk1[12].bm  |booth_algo__parameterized11_44  |    82|
2default:defaulth p
x
� 
y
%s
*synth2a
M|213   |          \genblk1[1].bm   |booth_algo__parameterized0_45   |   135|
2default:defaulth p
x
� 
y
%s
*synth2a
M|214   |          \genblk1[2].bm   |booth_algo__parameterized1_46   |   171|
2default:defaulth p
x
� 
y
%s
*synth2a
M|215   |          \genblk1[3].bm   |booth_algo__parameterized2_47   |   171|
2default:defaulth p
x
� 
y
%s
*synth2a
M|216   |          \genblk1[4].bm   |booth_algo__parameterized3_48   |   173|
2default:defaulth p
x
� 
y
%s
*synth2a
M|217   |          \genblk1[5].bm   |booth_algo__parameterized4_49   |   171|
2default:defaulth p
x
� 
y
%s
*synth2a
M|218   |          \genblk1[6].bm   |booth_algo__parameterized5_50   |   171|
2default:defaulth p
x
� 
y
%s
*synth2a
M|219   |          \genblk1[7].bm   |booth_algo__parameterized6_51   |   171|
2default:defaulth p
x
� 
y
%s
*synth2a
M|220   |          \genblk1[8].bm   |booth_algo__parameterized7_52   |   171|
2default:defaulth p
x
� 
y
%s
*synth2a
M|221   |          \genblk1[9].bm   |booth_algo__parameterized8_53   |   170|
2default:defaulth p
x
� 
y
%s
*synth2a
M|222   |        sig_sf             |shift_reg__parameterized0_40    |     1|
2default:defaulth p
x
� 
y
%s
*synth2a
M|223   |      \genblk1[7].inst     |float_mul_nb_31                 |  2336|
2default:defaulth p
x
� 
y
%s
*synth2a
M|224   |        exp_sf             |shift_reg                       |    29|
2default:defaulth p
x
� 
y
%s
*synth2a
M|225   |        mul                |fixed_mul_nb                    |  2131|
2default:defaulth p
x
� 
y
%s
*synth2a
M|226   |          \genblk1[0].bm   |booth_algo                      |   163|
2default:defaulth p
x
� 
y
%s
*synth2a
M|227   |          \genblk1[10].bm  |booth_algo__parameterized9      |   118|
2default:defaulth p
x
� 
y
%s
*synth2a
M|228   |          \genblk1[11].bm  |booth_algo__parameterized10     |   164|
2default:defaulth p
x
� 
y
%s
*synth2a
M|229   |          \genblk1[12].bm  |booth_algo__parameterized11     |    82|
2default:defaulth p
x
� 
y
%s
*synth2a
M|230   |          \genblk1[1].bm   |booth_algo__parameterized0      |   135|
2default:defaulth p
x
� 
y
%s
*synth2a
M|231   |          \genblk1[2].bm   |booth_algo__parameterized1      |   171|
2default:defaulth p
x
� 
y
%s
*synth2a
M|232   |          \genblk1[3].bm   |booth_algo__parameterized2      |   171|
2default:defaulth p
x
� 
y
%s
*synth2a
M|233   |          \genblk1[4].bm   |booth_algo__parameterized3      |   173|
2default:defaulth p
x
� 
y
%s
*synth2a
M|234   |          \genblk1[5].bm   |booth_algo__parameterized4      |   171|
2default:defaulth p
x
� 
y
%s
*synth2a
M|235   |          \genblk1[6].bm   |booth_algo__parameterized5      |   171|
2default:defaulth p
x
� 
y
%s
*synth2a
M|236   |          \genblk1[7].bm   |booth_algo__parameterized6      |   171|
2default:defaulth p
x
� 
y
%s
*synth2a
M|237   |          \genblk1[8].bm   |booth_algo__parameterized7      |   171|
2default:defaulth p
x
� 
y
%s
*synth2a
M|238   |          \genblk1[9].bm   |booth_algo__parameterized8      |   170|
2default:defaulth p
x
� 
y
%s
*synth2a
M|239   |        sig_sf             |shift_reg__parameterized0       |     1|
2default:defaulth p
x
� 
y
%s
*synth2a
M|240   |      \genblk2[0].inst     |float_add_nb_32                 |   754|
2default:defaulth p
x
� 
y
%s
*synth2a
M|241   |      \genblk2[1].inst     |float_add_nb_33                 |   670|
2default:defaulth p
x
� 
y
%s
*synth2a
M|242   |      \genblk2[2].inst     |float_add_nb_34                 |   754|
2default:defaulth p
x
� 
y
%s
*synth2a
M|243   |      \genblk2[3].inst     |float_add_nb_35                 |   670|
2default:defaulth p
x
� 
y
%s
*synth2a
M|244   |      \genblk3[0].inst     |float_add_nb_36                 |   754|
2default:defaulth p
x
� 
y
%s
*synth2a
M|245   |      \genblk3[1].inst     |float_add_nb_37                 |   670|
2default:defaulth p
x
� 
y
%s
*synth2a
M|246   |    level_shift_inst       |level_shift                     |   104|
2default:defaulth p
x
� 
y
%s
*synth2a
M|247   |      \genblk1[0].inst     |int8_to_float_17                |    20|
2default:defaulth p
x
� 
y
%s
*synth2a
M|248   |      \genblk1[1].inst     |int8_to_float_18                |    12|
2default:defaulth p
x
� 
y
%s
*synth2a
M|249   |      \genblk1[2].inst     |int8_to_float_19                |    12|
2default:defaulth p
x
� 
y
%s
*synth2a
M|250   |      \genblk1[3].inst     |int8_to_float_20                |    12|
2default:defaulth p
x
� 
y
%s
*synth2a
M|251   |      \genblk1[4].inst     |int8_to_float_21                |    12|
2default:defaulth p
x
� 
y
%s
*synth2a
M|252   |      \genblk1[5].inst     |int8_to_float_22                |    12|
2default:defaulth p
x
� 
y
%s
*synth2a
M|253   |      \genblk1[6].inst     |int8_to_float_23                |    12|
2default:defaulth p
x
� 
y
%s
*synth2a
M|254   |      \genblk1[7].inst     |int8_to_float_24                |    12|
2default:defaulth p
x
� 
y
%s
*synth2a
M|255   |    mcu_inst               |mcu_8x8                         |   918|
2default:defaulth p
x
� 
y
%s
*synth2a
M|256   |      \genblk1[0].ram_0    |ram_8bx8                        |    52|
2default:defaulth p
x
� 
y
%s
*synth2a
M|257   |      \genblk1[0].ram_1    |ram_8bx8_2                      |    60|
2default:defaulth p
x
� 
y
%s
*synth2a
M|258   |      \genblk1[1].ram_0    |ram_8bx8_3                      |    52|
2default:defaulth p
x
� 
y
%s
*synth2a
M|259   |      \genblk1[1].ram_1    |ram_8bx8_4                      |    60|
2default:defaulth p
x
� 
y
%s
*synth2a
M|260   |      \genblk1[2].ram_0    |ram_8bx8_5                      |    52|
2default:defaulth p
x
� 
y
%s
*synth2a
M|261   |      \genblk1[2].ram_1    |ram_8bx8_6                      |    60|
2default:defaulth p
x
� 
y
%s
*synth2a
M|262   |      \genblk1[3].ram_0    |ram_8bx8_7                      |    52|
2default:defaulth p
x
� 
y
%s
*synth2a
M|263   |      \genblk1[3].ram_1    |ram_8bx8_8                      |    60|
2default:defaulth p
x
� 
y
%s
*synth2a
M|264   |      \genblk1[4].ram_0    |ram_8bx8_9                      |    52|
2default:defaulth p
x
� 
y
%s
*synth2a
M|265   |      \genblk1[4].ram_1    |ram_8bx8_10                     |    60|
2default:defaulth p
x
� 
y
%s
*synth2a
M|266   |      \genblk1[5].ram_0    |ram_8bx8_11                     |    52|
2default:defaulth p
x
� 
y
%s
*synth2a
M|267   |      \genblk1[5].ram_1    |ram_8bx8_12                     |    60|
2default:defaulth p
x
� 
y
%s
*synth2a
M|268   |      \genblk1[6].ram_0    |ram_8bx8_13                     |    52|
2default:defaulth p
x
� 
y
%s
*synth2a
M|269   |      \genblk1[6].ram_1    |ram_8bx8_14                     |    60|
2default:defaulth p
x
� 
y
%s
*synth2a
M|270   |      \genblk1[7].ram_0    |ram_8bx8_15                     |    52|
2default:defaulth p
x
� 
y
%s
*synth2a
M|271   |      \genblk1[7].ram_1    |ram_8bx8_16                     |    60|
2default:defaulth p
x
� 
y
%s
*synth2a
M|272   |    qnt_inst               |qnt                             |  2271|
2default:defaulth p
x
� 
y
%s
*synth2a
M|273   |      div_inst             |float_div_nb                    |  2217|
2default:defaulth p
x
� 
y
%s
*synth2a
M|274   |        div                |fixed_div_nb                    |  2016|
2default:defaulth p
x
� 
y
%s
*synth2a
M|275   |        exp_sf             |shift_reg__parameterized1       |    32|
2default:defaulth p
x
� 
y
%s
*synth2a
M|276   |        sig_sf             |shift_reg__parameterized2       |     1|
2default:defaulth p
x
� 
y
%s
*synth2a
M|277   |      f2i_inst             |float_to_int8                   |    12|
2default:defaulth p
x
� 
y
%s
*synth2a
M|278   |      i2f_inst             |int8_to_float                   |    30|
2default:defaulth p
x
� 
y
%s
*synth2a
M|279   |  zigzag_inst              |zigzag                          |   103|
2default:defaulth p
x
� 
y
%s
*synth2a
M|280   |    ram_0                  |ram_8bx64                       |    34|
2default:defaulth p
x
� 
y
%s
*synth2a
M|281   |    ram_1                  |ram_8bx64_0                     |    32|
2default:defaulth p
x
� 
y
%s
*synth2a
M+------+---------------------------+--------------------------------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:56 ; elapsed = 00:00:55 . Memory (MB): peak = 879.016 ; gain = 558.734
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 37 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:56 ; elapsed = 00:00:55 . Memory (MB): peak = 879.016 ; gain = 558.734
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Complete : Time (s): cpu = 00:00:56 ; elapsed = 00:00:55 . Memory (MB): peak = 879.016 ; gain = 558.734
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
27322default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0102default:default2
991.3362default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 144 instances were transformed.
  RAM16X1S => RAM32X1S (RAMS32): 128 instances
  RAM64X1S => RAM64X1S (RAMS64E): 16 instances
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
3392default:default2
372default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:01:082default:default2
00:01:082default:default2
991.3362default:default2
690.7382default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0132default:default2
991.3362default:default2
0.0002default:defaultZ17-268h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2`
LF:/jpeg_encoder/asic/jpeg_z7_asic_8x8/jpeg_z7_asic_8x8.runs/synth_1/jpeg.dcp2default:defaultZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:072default:default2
00:00:052default:default2
991.3362default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2r
^Executing : report_utilization -file jpeg_utilization_synth.rpt -pb jpeg_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Nov 22 20:23:13 20202default:defaultZ17-206h px� 


End Record