
C
global_step/initial_valueConst*
dtype0*
value	B : 
W
global_step
VariableV2*
dtype0*
	container *
shape: *
shared_name 

global_step/AssignAssignglobal_stepglobal_step/initial_value*
validate_shape(*
use_locking(*
T0*
_class
loc:@global_step
R
global_step/readIdentityglobal_step*
T0*
_class
loc:@global_step
;
steps_to_incrementPlaceholder*
dtype0*
shape: 
9
AddAddglobal_step/readsteps_to_increment*
T0
t
AssignAssignglobal_stepAdd*
validate_shape(*
use_locking(*
T0*
_class
loc:@global_step
5

batch_sizePlaceholder*
dtype0*
shape:
:
sequence_lengthPlaceholder*
shape:*
dtype0
;
masksPlaceholder*
shape:’’’’’’’’’*
dtype0
;
CastCastmasks*

SrcT0*
Truncate( *

DstT0
M
#is_continuous_control/initial_valueConst*
value	B : *
dtype0
a
is_continuous_control
VariableV2*
shared_name *
dtype0*
	container *
shape: 
¾
is_continuous_control/AssignAssignis_continuous_control#is_continuous_control/initial_value*
T0*(
_class
loc:@is_continuous_control*
validate_shape(*
use_locking(
p
is_continuous_control/readIdentityis_continuous_control*
T0*(
_class
loc:@is_continuous_control
F
version_number/initial_valueConst*
value	B :*
dtype0
Z
version_number
VariableV2*
dtype0*
	container *
shape: *
shared_name 
¢
version_number/AssignAssignversion_numberversion_number/initial_value*
T0*!
_class
loc:@version_number*
validate_shape(*
use_locking(
[
version_number/readIdentityversion_number*
T0*!
_class
loc:@version_number
C
memory_size/initial_valueConst*
value	B : *
dtype0
W
memory_size
VariableV2*
shared_name *
dtype0*
	container *
shape: 

memory_size/AssignAssignmemory_sizememory_size/initial_value*
validate_shape(*
use_locking(*
T0*
_class
loc:@memory_size
R
memory_size/readIdentitymemory_size*
T0*
_class
loc:@memory_size
K
!action_output_shape/initial_valueConst*
dtype0*
value	B :
_
action_output_shape
VariableV2*
shape: *
shared_name *
dtype0*
	container 
¶
action_output_shape/AssignAssignaction_output_shape!action_output_shape/initial_value*
use_locking(*
T0*&
_class
loc:@action_output_shape*
validate_shape(
j
action_output_shape/readIdentityaction_output_shape*
T0*&
_class
loc:@action_output_shape
M
vector_observationPlaceholder*
dtype0*
shape:’’’’’’’’’¼
„
?main_graph_0/hidden_0/kernel/Initializer/truncated_normal/shapeConst*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
valueB"¼     *
dtype0

>main_graph_0/hidden_0/kernel/Initializer/truncated_normal/meanConst*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
valueB
 *    *
dtype0

@main_graph_0/hidden_0/kernel/Initializer/truncated_normal/stddevConst*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
valueB
 *,ż\=*
dtype0
ž
Imain_graph_0/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?main_graph_0/hidden_0/kernel/Initializer/truncated_normal/shape*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0*
seed2*
seedŚ=

=main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mulMulImain_graph_0/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormal@main_graph_0/hidden_0/kernel/Initializer/truncated_normal/stddev*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
ł
9main_graph_0/hidden_0/kernel/Initializer/truncated_normalAdd=main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mul>main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
£
main_graph_0/hidden_0/kernel
VariableV2*
shape:
¼*
shared_name */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0*
	container 
é
#main_graph_0/hidden_0/kernel/AssignAssignmain_graph_0/hidden_0/kernel9main_graph_0/hidden_0/kernel/Initializer/truncated_normal*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(*
use_locking(

!main_graph_0/hidden_0/kernel/readIdentitymain_graph_0/hidden_0/kernel*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

,main_graph_0/hidden_0/bias/Initializer/zerosConst*-
_class#
!loc:@main_graph_0/hidden_0/bias*
valueB*    *
dtype0

main_graph_0/hidden_0/bias
VariableV2*
dtype0*
	container *
shape:*
shared_name *-
_class#
!loc:@main_graph_0/hidden_0/bias
Ö
!main_graph_0/hidden_0/bias/AssignAssignmain_graph_0/hidden_0/bias,main_graph_0/hidden_0/bias/Initializer/zeros*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
validate_shape(*
use_locking(

main_graph_0/hidden_0/bias/readIdentitymain_graph_0/hidden_0/bias*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias

main_graph_0/hidden_0/MatMulMatMulvector_observation!main_graph_0/hidden_0/kernel/read*
transpose_b( *
T0*
transpose_a( 

main_graph_0/hidden_0/BiasAddBiasAddmain_graph_0/hidden_0/MatMulmain_graph_0/hidden_0/bias/read*
data_formatNHWC*
T0
P
main_graph_0/hidden_0/SigmoidSigmoidmain_graph_0/hidden_0/BiasAdd*
T0
g
main_graph_0/hidden_0/MulMulmain_graph_0/hidden_0/BiasAddmain_graph_0/hidden_0/Sigmoid*
T0
„
?main_graph_0/hidden_1/kernel/Initializer/truncated_normal/shapeConst*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
valueB"      *
dtype0

>main_graph_0/hidden_1/kernel/Initializer/truncated_normal/meanConst*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
valueB
 *    *
dtype0

@main_graph_0/hidden_1/kernel/Initializer/truncated_normal/stddevConst*
dtype0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
valueB
 *6=
ž
Imain_graph_0/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?main_graph_0/hidden_1/kernel/Initializer/truncated_normal/shape*
seedŚ=*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0*
seed20

=main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mulMulImain_graph_0/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormal@main_graph_0/hidden_1/kernel/Initializer/truncated_normal/stddev*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
ł
9main_graph_0/hidden_1/kernel/Initializer/truncated_normalAdd=main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mul>main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
£
main_graph_0/hidden_1/kernel
VariableV2*
shared_name */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0*
	container *
shape:

é
#main_graph_0/hidden_1/kernel/AssignAssignmain_graph_0/hidden_1/kernel9main_graph_0/hidden_1/kernel/Initializer/truncated_normal*
validate_shape(*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

!main_graph_0/hidden_1/kernel/readIdentitymain_graph_0/hidden_1/kernel*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

,main_graph_0/hidden_1/bias/Initializer/zerosConst*-
_class#
!loc:@main_graph_0/hidden_1/bias*
valueB*    *
dtype0

main_graph_0/hidden_1/bias
VariableV2*
shared_name *-
_class#
!loc:@main_graph_0/hidden_1/bias*
dtype0*
	container *
shape:
Ö
!main_graph_0/hidden_1/bias/AssignAssignmain_graph_0/hidden_1/bias,main_graph_0/hidden_1/bias/Initializer/zeros*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias

main_graph_0/hidden_1/bias/readIdentitymain_graph_0/hidden_1/bias*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias

main_graph_0/hidden_1/MatMulMatMulmain_graph_0/hidden_0/Mul!main_graph_0/hidden_1/kernel/read*
transpose_b( *
T0*
transpose_a( 

main_graph_0/hidden_1/BiasAddBiasAddmain_graph_0/hidden_1/MatMulmain_graph_0/hidden_1/bias/read*
T0*
data_formatNHWC
P
main_graph_0/hidden_1/SigmoidSigmoidmain_graph_0/hidden_1/BiasAdd*
T0
g
main_graph_0/hidden_1/MulMulmain_graph_0/hidden_1/BiasAddmain_graph_0/hidden_1/Sigmoid*
T0

/dense/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_class
loc:@dense/kernel*
valueB"      
|
.dense/kernel/Initializer/truncated_normal/meanConst*
_class
loc:@dense/kernel*
valueB
 *    *
dtype0
~
0dense/kernel/Initializer/truncated_normal/stddevConst*
_class
loc:@dense/kernel*
valueB
 *Óč;*
dtype0
Ī
9dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal/dense/kernel/Initializer/truncated_normal/shape*
T0*
_class
loc:@dense/kernel*
dtype0*
seed2A*
seedŚ=
Ė
-dense/kernel/Initializer/truncated_normal/mulMul9dense/kernel/Initializer/truncated_normal/TruncatedNormal0dense/kernel/Initializer/truncated_normal/stddev*
T0*
_class
loc:@dense/kernel
¹
)dense/kernel/Initializer/truncated_normalAdd-dense/kernel/Initializer/truncated_normal/mul.dense/kernel/Initializer/truncated_normal/mean*
T0*
_class
loc:@dense/kernel

dense/kernel
VariableV2*
dtype0*
	container *
shape:	*
shared_name *
_class
loc:@dense/kernel
©
dense/kernel/AssignAssigndense/kernel)dense/kernel/Initializer/truncated_normal*
T0*
_class
loc:@dense/kernel*
validate_shape(*
use_locking(
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
s
dense/MatMulMatMulmain_graph_0/hidden_1/Muldense/kernel/read*
transpose_a( *
transpose_b( *
T0

1dense_1/kernel/Initializer/truncated_normal/shapeConst*!
_class
loc:@dense_1/kernel*
valueB"      *
dtype0

0dense_1/kernel/Initializer/truncated_normal/meanConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB
 *    

2dense_1/kernel/Initializer/truncated_normal/stddevConst*!
_class
loc:@dense_1/kernel*
valueB
 *Óč;*
dtype0
Ō
;dense_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1dense_1/kernel/Initializer/truncated_normal/shape*
seedŚ=*
T0*!
_class
loc:@dense_1/kernel*
dtype0*
seed2K
Ó
/dense_1/kernel/Initializer/truncated_normal/mulMul;dense_1/kernel/Initializer/truncated_normal/TruncatedNormal2dense_1/kernel/Initializer/truncated_normal/stddev*
T0*!
_class
loc:@dense_1/kernel
Į
+dense_1/kernel/Initializer/truncated_normalAdd/dense_1/kernel/Initializer/truncated_normal/mul0dense_1/kernel/Initializer/truncated_normal/mean*
T0*!
_class
loc:@dense_1/kernel

dense_1/kernel
VariableV2*
shape:	*
shared_name *!
_class
loc:@dense_1/kernel*
dtype0*
	container 
±
dense_1/kernel/AssignAssigndense_1/kernel+dense_1/kernel/Initializer/truncated_normal*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
use_locking(
[
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel
w
dense_1/MatMulMatMulmain_graph_0/hidden_1/Muldense_1/kernel/read*
transpose_b( *
T0*
transpose_a( 

1dense_2/kernel/Initializer/truncated_normal/shapeConst*!
_class
loc:@dense_2/kernel*
valueB"      *
dtype0

0dense_2/kernel/Initializer/truncated_normal/meanConst*!
_class
loc:@dense_2/kernel*
valueB
 *    *
dtype0

2dense_2/kernel/Initializer/truncated_normal/stddevConst*!
_class
loc:@dense_2/kernel*
valueB
 *Óč;*
dtype0
Ō
;dense_2/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1dense_2/kernel/Initializer/truncated_normal/shape*
T0*!
_class
loc:@dense_2/kernel*
dtype0*
seed2U*
seedŚ=
Ó
/dense_2/kernel/Initializer/truncated_normal/mulMul;dense_2/kernel/Initializer/truncated_normal/TruncatedNormal2dense_2/kernel/Initializer/truncated_normal/stddev*
T0*!
_class
loc:@dense_2/kernel
Į
+dense_2/kernel/Initializer/truncated_normalAdd/dense_2/kernel/Initializer/truncated_normal/mul0dense_2/kernel/Initializer/truncated_normal/mean*
T0*!
_class
loc:@dense_2/kernel

dense_2/kernel
VariableV2*!
_class
loc:@dense_2/kernel*
dtype0*
	container *
shape:	*
shared_name 
±
dense_2/kernel/AssignAssigndense_2/kernel+dense_2/kernel/Initializer/truncated_normal*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_2/kernel
[
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel
w
dense_2/MatMulMatMulmain_graph_0/hidden_1/Muldense_2/kernel/read*
transpose_a( *
transpose_b( *
T0

1dense_3/kernel/Initializer/truncated_normal/shapeConst*!
_class
loc:@dense_3/kernel*
valueB"      *
dtype0

0dense_3/kernel/Initializer/truncated_normal/meanConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB
 *    

2dense_3/kernel/Initializer/truncated_normal/stddevConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB
 *Óč;
Ō
;dense_3/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1dense_3/kernel/Initializer/truncated_normal/shape*
T0*!
_class
loc:@dense_3/kernel*
dtype0*
seed2_*
seedŚ=
Ó
/dense_3/kernel/Initializer/truncated_normal/mulMul;dense_3/kernel/Initializer/truncated_normal/TruncatedNormal2dense_3/kernel/Initializer/truncated_normal/stddev*
T0*!
_class
loc:@dense_3/kernel
Į
+dense_3/kernel/Initializer/truncated_normalAdd/dense_3/kernel/Initializer/truncated_normal/mul0dense_3/kernel/Initializer/truncated_normal/mean*
T0*!
_class
loc:@dense_3/kernel

dense_3/kernel
VariableV2*
dtype0*
	container *
shape:	*
shared_name *!
_class
loc:@dense_3/kernel
±
dense_3/kernel/AssignAssigndense_3/kernel+dense_3/kernel/Initializer/truncated_normal*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(*
use_locking(
[
dense_3/kernel/readIdentitydense_3/kernel*
T0*!
_class
loc:@dense_3/kernel
w
dense_3/MatMulMatMulmain_graph_0/hidden_1/Muldense_3/kernel/read*
transpose_a( *
transpose_b( *
T0
;
action_probs/axisConst*
dtype0*
value	B :

action_probsConcatV2dense/MatMuldense_1/MatMuldense_2/MatMuldense_3/MatMulaction_probs/axis*
T0*
N*

Tidx0
F
action_masksPlaceholder*
shape:’’’’’’’’’*
dtype0
H
strided_slice/stackConst*
dtype0*
valueB"        
J
strided_slice/stack_1Const*
valueB"       *
dtype0
J
strided_slice/stack_2Const*
valueB"      *
dtype0
č
strided_sliceStridedSliceaction_probsstrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
end_mask*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask 
J
strided_slice_1/stackConst*
dtype0*
valueB"       
L
strided_slice_1/stack_1Const*
valueB"       *
dtype0
L
strided_slice_1/stack_2Const*
dtype0*
valueB"      
š
strided_slice_1StridedSliceaction_probsstrided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
J
strided_slice_2/stackConst*
valueB"       *
dtype0
L
strided_slice_2/stack_1Const*
valueB"    	   *
dtype0
L
strided_slice_2/stack_2Const*
valueB"      *
dtype0
š
strided_slice_2StridedSliceaction_probsstrided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
J
strided_slice_3/stackConst*
dtype0*
valueB"    	   
L
strided_slice_3/stack_1Const*
valueB"       *
dtype0
L
strided_slice_3/stack_2Const*
dtype0*
valueB"      
š
strided_slice_3StridedSliceaction_probsstrided_slice_3/stackstrided_slice_3/stack_1strided_slice_3/stack_2*
end_mask*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask 
J
strided_slice_4/stackConst*
valueB"        *
dtype0
L
strided_slice_4/stack_1Const*
valueB"       *
dtype0
L
strided_slice_4/stack_2Const*
valueB"      *
dtype0
š
strided_slice_4StridedSliceaction_masksstrided_slice_4/stackstrided_slice_4/stack_1strided_slice_4/stack_2*
end_mask*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask 
J
strided_slice_5/stackConst*
valueB"       *
dtype0
L
strided_slice_5/stack_1Const*
valueB"       *
dtype0
L
strided_slice_5/stack_2Const*
valueB"      *
dtype0
š
strided_slice_5StridedSliceaction_masksstrided_slice_5/stackstrided_slice_5/stack_1strided_slice_5/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0
J
strided_slice_6/stackConst*
valueB"       *
dtype0
L
strided_slice_6/stack_1Const*
valueB"    	   *
dtype0
L
strided_slice_6/stack_2Const*
valueB"      *
dtype0
š
strided_slice_6StridedSliceaction_masksstrided_slice_6/stackstrided_slice_6/stack_1strided_slice_6/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
J
strided_slice_7/stackConst*
valueB"    	   *
dtype0
L
strided_slice_7/stack_1Const*
dtype0*
valueB"       
L
strided_slice_7/stack_2Const*
valueB"      *
dtype0
š
strided_slice_7StridedSliceaction_masksstrided_slice_7/stackstrided_slice_7/stack_1strided_slice_7/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0*
shrink_axis_mask 
*
SoftmaxSoftmaxstrided_slice*
T0
4
add_1/yConst*
valueB
 *æÖ3*
dtype0
)
add_1AddV2Softmaxadd_1/y*
T0
+
MulMuladd_1strided_slice_4*
T0
.
	Softmax_1Softmaxstrided_slice_1*
T0
4
add_2/yConst*
valueB
 *æÖ3*
dtype0
+
add_2AddV2	Softmax_1add_2/y*
T0
-
Mul_1Muladd_2strided_slice_5*
T0
.
	Softmax_2Softmaxstrided_slice_2*
T0
4
add_3/yConst*
valueB
 *æÖ3*
dtype0
+
add_3AddV2	Softmax_2add_3/y*
T0
-
Mul_2Muladd_3strided_slice_6*
T0
.
	Softmax_3Softmaxstrided_slice_3*
T0
4
add_4/yConst*
valueB
 *æÖ3*
dtype0
+
add_4AddV2	Softmax_3add_4/y*
T0
-
Mul_3Muladd_4strided_slice_7*
T0
?
Sum/reduction_indicesConst*
dtype0*
value	B :
L
SumSumMulSum/reduction_indices*
T0*

Tidx0*
	keep_dims(
%
truedivRealDivMulSum*
T0
A
Sum_1/reduction_indicesConst*
value	B :*
dtype0
R
Sum_1SumMul_1Sum_1/reduction_indices*

Tidx0*
	keep_dims(*
T0
+
	truediv_1RealDivMul_1Sum_1*
T0
A
Sum_2/reduction_indicesConst*
value	B :*
dtype0
R
Sum_2SumMul_2Sum_2/reduction_indices*
T0*

Tidx0*
	keep_dims(
+
	truediv_2RealDivMul_2Sum_2*
T0
A
Sum_3/reduction_indicesConst*
dtype0*
value	B :
R
Sum_3SumMul_3Sum_3/reduction_indices*
T0*

Tidx0*
	keep_dims(
+
	truediv_3RealDivMul_3Sum_3*
T0
4
add_5/yConst*
valueB
 *æÖ3*
dtype0
)
add_5AddV2truedivadd_5/y*
T0

LogLogadd_5*
T0
M
#multinomial/Multinomial/num_samplesConst*
dtype0*
value	B :

multinomial/MultinomialMultinomialLog#multinomial/Multinomial/num_samples*
seedŚ=*
output_dtype0	*
T0*
seed2Ø
4
add_6/yConst*
valueB
 *æÖ3*
dtype0
+
add_6AddV2	truediv_1add_6/y*
T0

Log_1Logadd_6*
T0
O
%multinomial_1/Multinomial/num_samplesConst*
value	B :*
dtype0

multinomial_1/MultinomialMultinomialLog_1%multinomial_1/Multinomial/num_samples*
seed2­*
seedŚ=*
output_dtype0	*
T0
4
add_7/yConst*
dtype0*
valueB
 *æÖ3
+
add_7AddV2	truediv_2add_7/y*
T0

Log_2Logadd_7*
T0
O
%multinomial_2/Multinomial/num_samplesConst*
dtype0*
value	B :

multinomial_2/MultinomialMultinomialLog_2%multinomial_2/Multinomial/num_samples*
seed2²*
seedŚ=*
output_dtype0	*
T0
4
add_8/yConst*
valueB
 *æÖ3*
dtype0
+
add_8AddV2	truediv_3add_8/y*
T0

Log_3Logadd_8*
T0
O
%multinomial_3/Multinomial/num_samplesConst*
value	B :*
dtype0

multinomial_3/MultinomialMultinomialLog_3%multinomial_3/Multinomial/num_samples*
seedŚ=*
output_dtype0	*
T0*
seed2·
5
concat/axisConst*
value	B :*
dtype0
§
concatConcatV2multinomial/Multinomialmultinomial_1/Multinomialmultinomial_2/Multinomialmultinomial_3/Multinomialconcat/axis*
N*

Tidx0*
T0	
7
concat_1/axisConst*
dtype0*
value	B :
k
concat_1ConcatV2truediv	truediv_1	truediv_2	truediv_3concat_1/axis*
T0*
N*

Tidx0
4
add_9/yConst*
valueB
 *æÖ3*
dtype0
)
add_9AddV2truedivadd_9/y*
T0

Log_4Logadd_9*
T0
5
add_10/yConst*
valueB
 *æÖ3*
dtype0
-
add_10AddV2	truediv_1add_10/y*
T0

Log_5Logadd_10*
T0
5
add_11/yConst*
valueB
 *æÖ3*
dtype0
-
add_11AddV2	truediv_2add_11/y*
T0

Log_6Logadd_11*
T0
5
add_12/yConst*
valueB
 *æÖ3*
dtype0
-
add_12AddV2	truediv_3add_12/y*
T0

Log_7Logadd_12*
T0
7
concat_2/axisConst*
value	B :*
dtype0
]
concat_2ConcatV2Log_4Log_5Log_6Log_7concat_2/axis*
T0*
N*

Tidx0
%
IdentityIdentityconcat*
T0	
%
actionIdentityconcat_2*
T0

7extrinsic_value/kernel/Initializer/random_uniform/shapeConst*)
_class
loc:@extrinsic_value/kernel*
valueB"      *
dtype0

5extrinsic_value/kernel/Initializer/random_uniform/minConst*)
_class
loc:@extrinsic_value/kernel*
valueB
 *Iv¾*
dtype0

5extrinsic_value/kernel/Initializer/random_uniform/maxConst*)
_class
loc:@extrinsic_value/kernel*
valueB
 *Iv>*
dtype0
å
?extrinsic_value/kernel/Initializer/random_uniform/RandomUniformRandomUniform7extrinsic_value/kernel/Initializer/random_uniform/shape*
dtype0*
seed2Š*
seedŚ=*
T0*)
_class
loc:@extrinsic_value/kernel
Ž
5extrinsic_value/kernel/Initializer/random_uniform/subSub5extrinsic_value/kernel/Initializer/random_uniform/max5extrinsic_value/kernel/Initializer/random_uniform/min*
T0*)
_class
loc:@extrinsic_value/kernel
č
5extrinsic_value/kernel/Initializer/random_uniform/mulMul?extrinsic_value/kernel/Initializer/random_uniform/RandomUniform5extrinsic_value/kernel/Initializer/random_uniform/sub*
T0*)
_class
loc:@extrinsic_value/kernel
Ś
1extrinsic_value/kernel/Initializer/random_uniformAdd5extrinsic_value/kernel/Initializer/random_uniform/mul5extrinsic_value/kernel/Initializer/random_uniform/min*
T0*)
_class
loc:@extrinsic_value/kernel

extrinsic_value/kernel
VariableV2*
dtype0*
	container *
shape:	*
shared_name *)
_class
loc:@extrinsic_value/kernel
Ļ
extrinsic_value/kernel/AssignAssignextrinsic_value/kernel1extrinsic_value/kernel/Initializer/random_uniform*
use_locking(*
T0*)
_class
loc:@extrinsic_value/kernel*
validate_shape(
s
extrinsic_value/kernel/readIdentityextrinsic_value/kernel*
T0*)
_class
loc:@extrinsic_value/kernel

&extrinsic_value/bias/Initializer/zerosConst*'
_class
loc:@extrinsic_value/bias*
valueB*    *
dtype0

extrinsic_value/bias
VariableV2*
shape:*
shared_name *'
_class
loc:@extrinsic_value/bias*
dtype0*
	container 
¾
extrinsic_value/bias/AssignAssignextrinsic_value/bias&extrinsic_value/bias/Initializer/zeros*
validate_shape(*
use_locking(*
T0*'
_class
loc:@extrinsic_value/bias
m
extrinsic_value/bias/readIdentityextrinsic_value/bias*
T0*'
_class
loc:@extrinsic_value/bias

extrinsic_value/MatMulMatMulmain_graph_0/hidden_1/Mulextrinsic_value/kernel/read*
transpose_b( *
T0*
transpose_a( 
u
extrinsic_value/BiasAddBiasAddextrinsic_value/MatMulextrinsic_value/bias/read*
T0*
data_formatNHWC
I

Mean/inputPackextrinsic_value/BiasAdd*
T0*

axis *
N
@
Mean/reduction_indicesConst*
value	B : *
dtype0
V
MeanMean
Mean/inputMean/reduction_indices*
T0*

Tidx0*
	keep_dims( 
G
action_holderPlaceholder*
dtype0*
shape:’’’’’’’’’
J
strided_slice_8/stackConst*
valueB"        *
dtype0
L
strided_slice_8/stack_1Const*
valueB"       *
dtype0
L
strided_slice_8/stack_2Const*
valueB"      *
dtype0
ń
strided_slice_8StridedSliceaction_holderstrided_slice_8/stackstrided_slice_8/stack_1strided_slice_8/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
=
one_hot/on_valueConst*
dtype0*
valueB
 *  ?
>
one_hot/off_valueConst*
valueB
 *    *
dtype0
7
one_hot/depthConst*
dtype0*
value	B :
~
one_hotOneHotstrided_slice_8one_hot/depthone_hot/on_valueone_hot/off_value*
T0*
TI0*
axis’’’’’’’’’
J
strided_slice_9/stackConst*
valueB"       *
dtype0
L
strided_slice_9/stack_1Const*
dtype0*
valueB"       
L
strided_slice_9/stack_2Const*
dtype0*
valueB"      
ń
strided_slice_9StridedSliceaction_holderstrided_slice_9/stackstrided_slice_9/stack_1strided_slice_9/stack_2*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0
?
one_hot_1/on_valueConst*
valueB
 *  ?*
dtype0
@
one_hot_1/off_valueConst*
valueB
 *    *
dtype0
9
one_hot_1/depthConst*
value	B :*
dtype0

	one_hot_1OneHotstrided_slice_9one_hot_1/depthone_hot_1/on_valueone_hot_1/off_value*
T0*
TI0*
axis’’’’’’’’’
K
strided_slice_10/stackConst*
valueB"       *
dtype0
M
strided_slice_10/stack_1Const*
valueB"       *
dtype0
M
strided_slice_10/stack_2Const*
valueB"      *
dtype0
õ
strided_slice_10StridedSliceaction_holderstrided_slice_10/stackstrided_slice_10/stack_1strided_slice_10/stack_2*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0
?
one_hot_2/on_valueConst*
valueB
 *  ?*
dtype0
@
one_hot_2/off_valueConst*
valueB
 *    *
dtype0
9
one_hot_2/depthConst*
value	B :*
dtype0

	one_hot_2OneHotstrided_slice_10one_hot_2/depthone_hot_2/on_valueone_hot_2/off_value*
T0*
TI0*
axis’’’’’’’’’
K
strided_slice_11/stackConst*
valueB"       *
dtype0
M
strided_slice_11/stack_1Const*
valueB"       *
dtype0
M
strided_slice_11/stack_2Const*
dtype0*
valueB"      
õ
strided_slice_11StridedSliceaction_holderstrided_slice_11/stackstrided_slice_11/stack_1strided_slice_11/stack_2*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0
?
one_hot_3/on_valueConst*
valueB
 *  ?*
dtype0
@
one_hot_3/off_valueConst*
valueB
 *    *
dtype0
9
one_hot_3/depthConst*
value	B :*
dtype0

	one_hot_3OneHotstrided_slice_11one_hot_3/depthone_hot_3/on_valueone_hot_3/off_value*
T0*
TI0*
axis’’’’’’’’’
7
concat_3/axisConst*
value	B :*
dtype0
k
concat_3ConcatV2one_hot	one_hot_1	one_hot_2	one_hot_3concat_3/axis*
N*

Tidx0*
T0
/
StopGradientStopGradientconcat_3*
T0
K
old_probabilitiesPlaceholder*
dtype0*
shape:’’’’’’’’’
K
strided_slice_12/stackConst*
valueB"        *
dtype0
M
strided_slice_12/stack_1Const*
dtype0*
valueB"       
M
strided_slice_12/stack_2Const*
valueB"      *
dtype0
ł
strided_slice_12StridedSliceold_probabilitiesstrided_slice_12/stackstrided_slice_12/stack_1strided_slice_12/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
T0*
Index0
K
strided_slice_13/stackConst*
valueB"       *
dtype0
M
strided_slice_13/stack_1Const*
dtype0*
valueB"       
M
strided_slice_13/stack_2Const*
valueB"      *
dtype0
ł
strided_slice_13StridedSliceold_probabilitiesstrided_slice_13/stackstrided_slice_13/stack_1strided_slice_13/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0*
shrink_axis_mask 
K
strided_slice_14/stackConst*
dtype0*
valueB"       
M
strided_slice_14/stack_1Const*
dtype0*
valueB"    	   
M
strided_slice_14/stack_2Const*
valueB"      *
dtype0
ł
strided_slice_14StridedSliceold_probabilitiesstrided_slice_14/stackstrided_slice_14/stack_1strided_slice_14/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0
K
strided_slice_15/stackConst*
dtype0*
valueB"    	   
M
strided_slice_15/stack_1Const*
dtype0*
valueB"       
M
strided_slice_15/stack_2Const*
valueB"      *
dtype0
ł
strided_slice_15StridedSliceold_probabilitiesstrided_slice_15/stackstrided_slice_15/stack_1strided_slice_15/stack_2*
end_mask*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask 
K
strided_slice_16/stackConst*
dtype0*
valueB"        
M
strided_slice_16/stack_1Const*
valueB"       *
dtype0
M
strided_slice_16/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_16StridedSliceaction_masksstrided_slice_16/stackstrided_slice_16/stack_1strided_slice_16/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
T0*
Index0
K
strided_slice_17/stackConst*
valueB"       *
dtype0
M
strided_slice_17/stack_1Const*
dtype0*
valueB"       
M
strided_slice_17/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_17StridedSliceaction_masksstrided_slice_17/stackstrided_slice_17/stack_1strided_slice_17/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0
K
strided_slice_18/stackConst*
dtype0*
valueB"       
M
strided_slice_18/stack_1Const*
valueB"    	   *
dtype0
M
strided_slice_18/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_18StridedSliceaction_masksstrided_slice_18/stackstrided_slice_18/stack_1strided_slice_18/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
K
strided_slice_19/stackConst*
valueB"    	   *
dtype0
M
strided_slice_19/stack_1Const*
valueB"       *
dtype0
M
strided_slice_19/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_19StridedSliceaction_masksstrided_slice_19/stackstrided_slice_19/stack_1strided_slice_19/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0
/
	Softmax_4Softmaxstrided_slice_12*
T0
5
add_13/yConst*
valueB
 *æÖ3*
dtype0
-
add_13AddV2	Softmax_4add_13/y*
T0
/
Mul_4Muladd_13strided_slice_16*
T0
/
	Softmax_5Softmaxstrided_slice_13*
T0
5
add_14/yConst*
dtype0*
valueB
 *æÖ3
-
add_14AddV2	Softmax_5add_14/y*
T0
/
Mul_5Muladd_14strided_slice_17*
T0
/
	Softmax_6Softmaxstrided_slice_14*
T0
5
add_15/yConst*
valueB
 *æÖ3*
dtype0
-
add_15AddV2	Softmax_6add_15/y*
T0
/
Mul_6Muladd_15strided_slice_18*
T0
/
	Softmax_7Softmaxstrided_slice_15*
T0
5
add_16/yConst*
valueB
 *æÖ3*
dtype0
-
add_16AddV2	Softmax_7add_16/y*
T0
/
Mul_7Muladd_16strided_slice_19*
T0
A
Sum_4/reduction_indicesConst*
dtype0*
value	B :
R
Sum_4SumMul_4Sum_4/reduction_indices*

Tidx0*
	keep_dims(*
T0
+
	truediv_4RealDivMul_4Sum_4*
T0
A
Sum_5/reduction_indicesConst*
dtype0*
value	B :
R
Sum_5SumMul_5Sum_5/reduction_indices*

Tidx0*
	keep_dims(*
T0
+
	truediv_5RealDivMul_5Sum_5*
T0
A
Sum_6/reduction_indicesConst*
value	B :*
dtype0
R
Sum_6SumMul_6Sum_6/reduction_indices*

Tidx0*
	keep_dims(*
T0
+
	truediv_6RealDivMul_6Sum_6*
T0
A
Sum_7/reduction_indicesConst*
value	B :*
dtype0
R
Sum_7SumMul_7Sum_7/reduction_indices*

Tidx0*
	keep_dims(*
T0
+
	truediv_7RealDivMul_7Sum_7*
T0
5
add_17/yConst*
valueB
 *æÖ3*
dtype0
-
add_17AddV2	truediv_4add_17/y*
T0

Log_8Logadd_17*
T0
O
%multinomial_4/Multinomial/num_samplesConst*
value	B :*
dtype0

multinomial_4/MultinomialMultinomialLog_8%multinomial_4/Multinomial/num_samples*
seedŚ=*
output_dtype0	*
T0*
seed2Ä
5
add_18/yConst*
valueB
 *æÖ3*
dtype0
-
add_18AddV2	truediv_5add_18/y*
T0

Log_9Logadd_18*
T0
O
%multinomial_5/Multinomial/num_samplesConst*
value	B :*
dtype0

multinomial_5/MultinomialMultinomialLog_9%multinomial_5/Multinomial/num_samples*
T0*
seed2É*
seedŚ=*
output_dtype0	
5
add_19/yConst*
dtype0*
valueB
 *æÖ3
-
add_19AddV2	truediv_6add_19/y*
T0

Log_10Logadd_19*
T0
O
%multinomial_6/Multinomial/num_samplesConst*
value	B :*
dtype0

multinomial_6/MultinomialMultinomialLog_10%multinomial_6/Multinomial/num_samples*
T0*
seed2Ī*
seedŚ=*
output_dtype0	
5
add_20/yConst*
valueB
 *æÖ3*
dtype0
-
add_20AddV2	truediv_7add_20/y*
T0

Log_11Logadd_20*
T0
O
%multinomial_7/Multinomial/num_samplesConst*
value	B :*
dtype0

multinomial_7/MultinomialMultinomialLog_11%multinomial_7/Multinomial/num_samples*
output_dtype0	*
T0*
seed2Ó*
seedŚ=
7
concat_4/axisConst*
dtype0*
value	B :
­
concat_4ConcatV2multinomial_4/Multinomialmultinomial_5/Multinomialmultinomial_6/Multinomialmultinomial_7/Multinomialconcat_4/axis*
T0	*
N*

Tidx0
7
concat_5/axisConst*
value	B :*
dtype0
m
concat_5ConcatV2	truediv_4	truediv_5	truediv_6	truediv_7concat_5/axis*
N*

Tidx0*
T0
5
add_21/yConst*
dtype0*
valueB
 *æÖ3
-
add_21AddV2	truediv_4add_21/y*
T0

Log_12Logadd_21*
T0
5
add_22/yConst*
valueB
 *æÖ3*
dtype0
-
add_22AddV2	truediv_5add_22/y*
T0

Log_13Logadd_22*
T0
5
add_23/yConst*
dtype0*
valueB
 *æÖ3
-
add_23AddV2	truediv_6add_23/y*
T0

Log_14Logadd_23*
T0
5
add_24/yConst*
valueB
 *æÖ3*
dtype0
-
add_24AddV2	truediv_7add_24/y*
T0

Log_15Logadd_24*
T0
7
concat_6/axisConst*
value	B :*
dtype0
a
concat_6ConcatV2Log_12Log_13Log_14Log_15concat_6/axis*
T0*
N*

Tidx0
K
strided_slice_20/stackConst*
valueB"        *
dtype0
M
strided_slice_20/stack_1Const*
dtype0*
valueB"       
M
strided_slice_20/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_20StridedSliceaction_probsstrided_slice_20/stackstrided_slice_20/stack_1strided_slice_20/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
/
	Softmax_8Softmaxstrided_slice_20*
T0
K
strided_slice_21/stackConst*
valueB"        *
dtype0
M
strided_slice_21/stack_1Const*
valueB"       *
dtype0
M
strided_slice_21/stack_2Const*
dtype0*
valueB"      
ō
strided_slice_21StridedSliceaction_probsstrided_slice_21/stackstrided_slice_21/stack_1strided_slice_21/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
P
&softmax_cross_entropy_with_logits/RankConst*
value	B :*
dtype0
[
'softmax_cross_entropy_with_logits/ShapeShapestrided_slice_21*
T0*
out_type0
R
(softmax_cross_entropy_with_logits/Rank_1Const*
dtype0*
value	B :
]
)softmax_cross_entropy_with_logits/Shape_1Shapestrided_slice_21*
T0*
out_type0
Q
'softmax_cross_entropy_with_logits/Sub/yConst*
value	B :*
dtype0

%softmax_cross_entropy_with_logits/SubSub(softmax_cross_entropy_with_logits/Rank_1'softmax_cross_entropy_with_logits/Sub/y*
T0
z
-softmax_cross_entropy_with_logits/Slice/beginPack%softmax_cross_entropy_with_logits/Sub*
N*
T0*

axis 
Z
,softmax_cross_entropy_with_logits/Slice/sizeConst*
valueB:*
dtype0
Ī
'softmax_cross_entropy_with_logits/SliceSlice)softmax_cross_entropy_with_logits/Shape_1-softmax_cross_entropy_with_logits/Slice/begin,softmax_cross_entropy_with_logits/Slice/size*
T0*
Index0
h
1softmax_cross_entropy_with_logits/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
W
-softmax_cross_entropy_with_logits/concat/axisConst*
value	B : *
dtype0
Ż
(softmax_cross_entropy_with_logits/concatConcatV21softmax_cross_entropy_with_logits/concat/values_0'softmax_cross_entropy_with_logits/Slice-softmax_cross_entropy_with_logits/concat/axis*
N*

Tidx0*
T0

)softmax_cross_entropy_with_logits/ReshapeReshapestrided_slice_21(softmax_cross_entropy_with_logits/concat*
T0*
Tshape0
R
(softmax_cross_entropy_with_logits/Rank_2Const*
dtype0*
value	B :
V
)softmax_cross_entropy_with_logits/Shape_2Shape	Softmax_8*
T0*
out_type0
S
)softmax_cross_entropy_with_logits/Sub_1/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits/Sub_1Sub(softmax_cross_entropy_with_logits/Rank_2)softmax_cross_entropy_with_logits/Sub_1/y*
T0
~
/softmax_cross_entropy_with_logits/Slice_1/beginPack'softmax_cross_entropy_with_logits/Sub_1*
N*
T0*

axis 
\
.softmax_cross_entropy_with_logits/Slice_1/sizeConst*
valueB:*
dtype0
Ō
)softmax_cross_entropy_with_logits/Slice_1Slice)softmax_cross_entropy_with_logits/Shape_2/softmax_cross_entropy_with_logits/Slice_1/begin.softmax_cross_entropy_with_logits/Slice_1/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits/concat_1/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits/concat_1ConcatV23softmax_cross_entropy_with_logits/concat_1/values_0)softmax_cross_entropy_with_logits/Slice_1/softmax_cross_entropy_with_logits/concat_1/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits/Reshape_1Reshape	Softmax_8*softmax_cross_entropy_with_logits/concat_1*
T0*
Tshape0
£
!softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits)softmax_cross_entropy_with_logits/Reshape+softmax_cross_entropy_with_logits/Reshape_1*
T0
S
)softmax_cross_entropy_with_logits/Sub_2/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits/Sub_2Sub&softmax_cross_entropy_with_logits/Rank)softmax_cross_entropy_with_logits/Sub_2/y*
T0
]
/softmax_cross_entropy_with_logits/Slice_2/beginConst*
valueB: *
dtype0
}
.softmax_cross_entropy_with_logits/Slice_2/sizePack'softmax_cross_entropy_with_logits/Sub_2*
T0*

axis *
N
Ņ
)softmax_cross_entropy_with_logits/Slice_2Slice'softmax_cross_entropy_with_logits/Shape/softmax_cross_entropy_with_logits/Slice_2/begin.softmax_cross_entropy_with_logits/Slice_2/size*
T0*
Index0

+softmax_cross_entropy_with_logits/Reshape_2Reshape!softmax_cross_entropy_with_logits)softmax_cross_entropy_with_logits/Slice_2*
T0*
Tshape0
K
strided_slice_22/stackConst*
valueB"       *
dtype0
M
strided_slice_22/stack_1Const*
valueB"       *
dtype0
M
strided_slice_22/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_22StridedSliceaction_probsstrided_slice_22/stackstrided_slice_22/stack_1strided_slice_22/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
/
	Softmax_9Softmaxstrided_slice_22*
T0
K
strided_slice_23/stackConst*
valueB"       *
dtype0
M
strided_slice_23/stack_1Const*
valueB"       *
dtype0
M
strided_slice_23/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_23StridedSliceaction_probsstrided_slice_23/stackstrided_slice_23/stack_1strided_slice_23/stack_2*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
T0*
Index0*
shrink_axis_mask 
R
(softmax_cross_entropy_with_logits_1/RankConst*
dtype0*
value	B :
]
)softmax_cross_entropy_with_logits_1/ShapeShapestrided_slice_23*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_1/Rank_1Const*
dtype0*
value	B :
_
+softmax_cross_entropy_with_logits_1/Shape_1Shapestrided_slice_23*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_1/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_1/SubSub*softmax_cross_entropy_with_logits_1/Rank_1)softmax_cross_entropy_with_logits_1/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_1/Slice/beginPack'softmax_cross_entropy_with_logits_1/Sub*
T0*

axis *
N
\
.softmax_cross_entropy_with_logits_1/Slice/sizeConst*
dtype0*
valueB:
Ö
)softmax_cross_entropy_with_logits_1/SliceSlice+softmax_cross_entropy_with_logits_1/Shape_1/softmax_cross_entropy_with_logits_1/Slice/begin.softmax_cross_entropy_with_logits_1/Slice/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits_1/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits_1/concat/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits_1/concatConcatV23softmax_cross_entropy_with_logits_1/concat/values_0)softmax_cross_entropy_with_logits_1/Slice/softmax_cross_entropy_with_logits_1/concat/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits_1/ReshapeReshapestrided_slice_23*softmax_cross_entropy_with_logits_1/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_1/Rank_2Const*
value	B :*
dtype0
X
+softmax_cross_entropy_with_logits_1/Shape_2Shape	Softmax_9*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_1/Sub_1/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_1/Sub_1Sub*softmax_cross_entropy_with_logits_1/Rank_2+softmax_cross_entropy_with_logits_1/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_1/Slice_1/beginPack)softmax_cross_entropy_with_logits_1/Sub_1*
T0*

axis *
N
^
0softmax_cross_entropy_with_logits_1/Slice_1/sizeConst*
dtype0*
valueB:
Ü
+softmax_cross_entropy_with_logits_1/Slice_1Slice+softmax_cross_entropy_with_logits_1/Shape_21softmax_cross_entropy_with_logits_1/Slice_1/begin0softmax_cross_entropy_with_logits_1/Slice_1/size*
T0*
Index0
l
5softmax_cross_entropy_with_logits_1/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
[
1softmax_cross_entropy_with_logits_1/concat_1/axisConst*
value	B : *
dtype0
ķ
,softmax_cross_entropy_with_logits_1/concat_1ConcatV25softmax_cross_entropy_with_logits_1/concat_1/values_0+softmax_cross_entropy_with_logits_1/Slice_11softmax_cross_entropy_with_logits_1/concat_1/axis*
N*

Tidx0*
T0

-softmax_cross_entropy_with_logits_1/Reshape_1Reshape	Softmax_9,softmax_cross_entropy_with_logits_1/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_1SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_1/Reshape-softmax_cross_entropy_with_logits_1/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_1/Sub_2/yConst*
dtype0*
value	B :

)softmax_cross_entropy_with_logits_1/Sub_2Sub(softmax_cross_entropy_with_logits_1/Rank+softmax_cross_entropy_with_logits_1/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_1/Slice_2/beginConst*
dtype0*
valueB: 

0softmax_cross_entropy_with_logits_1/Slice_2/sizePack)softmax_cross_entropy_with_logits_1/Sub_2*
T0*

axis *
N
Ś
+softmax_cross_entropy_with_logits_1/Slice_2Slice)softmax_cross_entropy_with_logits_1/Shape1softmax_cross_entropy_with_logits_1/Slice_2/begin0softmax_cross_entropy_with_logits_1/Slice_2/size*
T0*
Index0
”
-softmax_cross_entropy_with_logits_1/Reshape_2Reshape#softmax_cross_entropy_with_logits_1+softmax_cross_entropy_with_logits_1/Slice_2*
T0*
Tshape0
K
strided_slice_24/stackConst*
valueB"       *
dtype0
M
strided_slice_24/stack_1Const*
valueB"    	   *
dtype0
M
strided_slice_24/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_24StridedSliceaction_probsstrided_slice_24/stackstrided_slice_24/stack_1strided_slice_24/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0*
shrink_axis_mask 
0

Softmax_10Softmaxstrided_slice_24*
T0
K
strided_slice_25/stackConst*
dtype0*
valueB"       
M
strided_slice_25/stack_1Const*
valueB"    	   *
dtype0
M
strided_slice_25/stack_2Const*
dtype0*
valueB"      
ō
strided_slice_25StridedSliceaction_probsstrided_slice_25/stackstrided_slice_25/stack_1strided_slice_25/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
R
(softmax_cross_entropy_with_logits_2/RankConst*
dtype0*
value	B :
]
)softmax_cross_entropy_with_logits_2/ShapeShapestrided_slice_25*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_2/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_2/Shape_1Shapestrided_slice_25*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_2/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_2/SubSub*softmax_cross_entropy_with_logits_2/Rank_1)softmax_cross_entropy_with_logits_2/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_2/Slice/beginPack'softmax_cross_entropy_with_logits_2/Sub*
N*
T0*

axis 
\
.softmax_cross_entropy_with_logits_2/Slice/sizeConst*
valueB:*
dtype0
Ö
)softmax_cross_entropy_with_logits_2/SliceSlice+softmax_cross_entropy_with_logits_2/Shape_1/softmax_cross_entropy_with_logits_2/Slice/begin.softmax_cross_entropy_with_logits_2/Slice/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits_2/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits_2/concat/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits_2/concatConcatV23softmax_cross_entropy_with_logits_2/concat/values_0)softmax_cross_entropy_with_logits_2/Slice/softmax_cross_entropy_with_logits_2/concat/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits_2/ReshapeReshapestrided_slice_25*softmax_cross_entropy_with_logits_2/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_2/Rank_2Const*
value	B :*
dtype0
Y
+softmax_cross_entropy_with_logits_2/Shape_2Shape
Softmax_10*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_2/Sub_1/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_2/Sub_1Sub*softmax_cross_entropy_with_logits_2/Rank_2+softmax_cross_entropy_with_logits_2/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_2/Slice_1/beginPack)softmax_cross_entropy_with_logits_2/Sub_1*
T0*

axis *
N
^
0softmax_cross_entropy_with_logits_2/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_2/Slice_1Slice+softmax_cross_entropy_with_logits_2/Shape_21softmax_cross_entropy_with_logits_2/Slice_1/begin0softmax_cross_entropy_with_logits_2/Slice_1/size*
T0*
Index0
l
5softmax_cross_entropy_with_logits_2/concat_1/values_0Const*
dtype0*
valueB:
’’’’’’’’’
[
1softmax_cross_entropy_with_logits_2/concat_1/axisConst*
value	B : *
dtype0
ķ
,softmax_cross_entropy_with_logits_2/concat_1ConcatV25softmax_cross_entropy_with_logits_2/concat_1/values_0+softmax_cross_entropy_with_logits_2/Slice_11softmax_cross_entropy_with_logits_2/concat_1/axis*
T0*
N*

Tidx0

-softmax_cross_entropy_with_logits_2/Reshape_1Reshape
Softmax_10,softmax_cross_entropy_with_logits_2/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_2SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_2/Reshape-softmax_cross_entropy_with_logits_2/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_2/Sub_2/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_2/Sub_2Sub(softmax_cross_entropy_with_logits_2/Rank+softmax_cross_entropy_with_logits_2/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_2/Slice_2/beginConst*
dtype0*
valueB: 

0softmax_cross_entropy_with_logits_2/Slice_2/sizePack)softmax_cross_entropy_with_logits_2/Sub_2*
T0*

axis *
N
Ś
+softmax_cross_entropy_with_logits_2/Slice_2Slice)softmax_cross_entropy_with_logits_2/Shape1softmax_cross_entropy_with_logits_2/Slice_2/begin0softmax_cross_entropy_with_logits_2/Slice_2/size*
T0*
Index0
”
-softmax_cross_entropy_with_logits_2/Reshape_2Reshape#softmax_cross_entropy_with_logits_2+softmax_cross_entropy_with_logits_2/Slice_2*
T0*
Tshape0
K
strided_slice_26/stackConst*
valueB"    	   *
dtype0
M
strided_slice_26/stack_1Const*
dtype0*
valueB"       
M
strided_slice_26/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_26StridedSliceaction_probsstrided_slice_26/stackstrided_slice_26/stack_1strided_slice_26/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0
0

Softmax_11Softmaxstrided_slice_26*
T0
K
strided_slice_27/stackConst*
valueB"    	   *
dtype0
M
strided_slice_27/stack_1Const*
valueB"       *
dtype0
M
strided_slice_27/stack_2Const*
valueB"      *
dtype0
ō
strided_slice_27StridedSliceaction_probsstrided_slice_27/stackstrided_slice_27/stack_1strided_slice_27/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0*
shrink_axis_mask 
R
(softmax_cross_entropy_with_logits_3/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_3/ShapeShapestrided_slice_27*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_3/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_3/Shape_1Shapestrided_slice_27*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_3/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_3/SubSub*softmax_cross_entropy_with_logits_3/Rank_1)softmax_cross_entropy_with_logits_3/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_3/Slice/beginPack'softmax_cross_entropy_with_logits_3/Sub*
T0*

axis *
N
\
.softmax_cross_entropy_with_logits_3/Slice/sizeConst*
valueB:*
dtype0
Ö
)softmax_cross_entropy_with_logits_3/SliceSlice+softmax_cross_entropy_with_logits_3/Shape_1/softmax_cross_entropy_with_logits_3/Slice/begin.softmax_cross_entropy_with_logits_3/Slice/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits_3/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits_3/concat/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits_3/concatConcatV23softmax_cross_entropy_with_logits_3/concat/values_0)softmax_cross_entropy_with_logits_3/Slice/softmax_cross_entropy_with_logits_3/concat/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits_3/ReshapeReshapestrided_slice_27*softmax_cross_entropy_with_logits_3/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_3/Rank_2Const*
value	B :*
dtype0
Y
+softmax_cross_entropy_with_logits_3/Shape_2Shape
Softmax_11*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_3/Sub_1/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_3/Sub_1Sub*softmax_cross_entropy_with_logits_3/Rank_2+softmax_cross_entropy_with_logits_3/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_3/Slice_1/beginPack)softmax_cross_entropy_with_logits_3/Sub_1*
T0*

axis *
N
^
0softmax_cross_entropy_with_logits_3/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_3/Slice_1Slice+softmax_cross_entropy_with_logits_3/Shape_21softmax_cross_entropy_with_logits_3/Slice_1/begin0softmax_cross_entropy_with_logits_3/Slice_1/size*
T0*
Index0
l
5softmax_cross_entropy_with_logits_3/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
[
1softmax_cross_entropy_with_logits_3/concat_1/axisConst*
dtype0*
value	B : 
ķ
,softmax_cross_entropy_with_logits_3/concat_1ConcatV25softmax_cross_entropy_with_logits_3/concat_1/values_0+softmax_cross_entropy_with_logits_3/Slice_11softmax_cross_entropy_with_logits_3/concat_1/axis*
T0*
N*

Tidx0

-softmax_cross_entropy_with_logits_3/Reshape_1Reshape
Softmax_11,softmax_cross_entropy_with_logits_3/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_3SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_3/Reshape-softmax_cross_entropy_with_logits_3/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_3/Sub_2/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_3/Sub_2Sub(softmax_cross_entropy_with_logits_3/Rank+softmax_cross_entropy_with_logits_3/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_3/Slice_2/beginConst*
valueB: *
dtype0

0softmax_cross_entropy_with_logits_3/Slice_2/sizePack)softmax_cross_entropy_with_logits_3/Sub_2*
T0*

axis *
N
Ś
+softmax_cross_entropy_with_logits_3/Slice_2Slice)softmax_cross_entropy_with_logits_3/Shape1softmax_cross_entropy_with_logits_3/Slice_2/begin0softmax_cross_entropy_with_logits_3/Slice_2/size*
T0*
Index0
”
-softmax_cross_entropy_with_logits_3/Reshape_2Reshape#softmax_cross_entropy_with_logits_3+softmax_cross_entropy_with_logits_3/Slice_2*
T0*
Tshape0
å
stackPack+softmax_cross_entropy_with_logits/Reshape_2-softmax_cross_entropy_with_logits_1/Reshape_2-softmax_cross_entropy_with_logits_2/Reshape_2-softmax_cross_entropy_with_logits_3/Reshape_2*
T0*

axis*
N
A
Sum_8/reduction_indicesConst*
dtype0*
value	B :
R
Sum_8SumstackSum_8/reduction_indices*

Tidx0*
	keep_dims( *
T0
K
strided_slice_28/stackConst*
dtype0*
valueB"        
M
strided_slice_28/stack_1Const*
valueB"       *
dtype0
M
strided_slice_28/stack_2Const*
valueB"      *
dtype0
š
strided_slice_28StridedSliceconcat_3strided_slice_28/stackstrided_slice_28/stack_1strided_slice_28/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
K
strided_slice_29/stackConst*
dtype0*
valueB"        
M
strided_slice_29/stack_1Const*
dtype0*
valueB"       
M
strided_slice_29/stack_2Const*
valueB"      *
dtype0
š
strided_slice_29StridedSliceconcat_2strided_slice_29/stackstrided_slice_29/stack_1strided_slice_29/stack_2*
end_mask*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask 
R
(softmax_cross_entropy_with_logits_4/RankConst*
dtype0*
value	B :
]
)softmax_cross_entropy_with_logits_4/ShapeShapestrided_slice_29*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_4/Rank_1Const*
dtype0*
value	B :
_
+softmax_cross_entropy_with_logits_4/Shape_1Shapestrided_slice_29*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_4/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_4/SubSub*softmax_cross_entropy_with_logits_4/Rank_1)softmax_cross_entropy_with_logits_4/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_4/Slice/beginPack'softmax_cross_entropy_with_logits_4/Sub*
T0*

axis *
N
\
.softmax_cross_entropy_with_logits_4/Slice/sizeConst*
dtype0*
valueB:
Ö
)softmax_cross_entropy_with_logits_4/SliceSlice+softmax_cross_entropy_with_logits_4/Shape_1/softmax_cross_entropy_with_logits_4/Slice/begin.softmax_cross_entropy_with_logits_4/Slice/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits_4/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits_4/concat/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits_4/concatConcatV23softmax_cross_entropy_with_logits_4/concat/values_0)softmax_cross_entropy_with_logits_4/Slice/softmax_cross_entropy_with_logits_4/concat/axis*

Tidx0*
T0*
N

+softmax_cross_entropy_with_logits_4/ReshapeReshapestrided_slice_29*softmax_cross_entropy_with_logits_4/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_4/Rank_2Const*
dtype0*
value	B :
_
+softmax_cross_entropy_with_logits_4/Shape_2Shapestrided_slice_28*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_4/Sub_1/yConst*
dtype0*
value	B :

)softmax_cross_entropy_with_logits_4/Sub_1Sub*softmax_cross_entropy_with_logits_4/Rank_2+softmax_cross_entropy_with_logits_4/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_4/Slice_1/beginPack)softmax_cross_entropy_with_logits_4/Sub_1*
T0*

axis *
N
^
0softmax_cross_entropy_with_logits_4/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_4/Slice_1Slice+softmax_cross_entropy_with_logits_4/Shape_21softmax_cross_entropy_with_logits_4/Slice_1/begin0softmax_cross_entropy_with_logits_4/Slice_1/size*
T0*
Index0
l
5softmax_cross_entropy_with_logits_4/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
[
1softmax_cross_entropy_with_logits_4/concat_1/axisConst*
value	B : *
dtype0
ķ
,softmax_cross_entropy_with_logits_4/concat_1ConcatV25softmax_cross_entropy_with_logits_4/concat_1/values_0+softmax_cross_entropy_with_logits_4/Slice_11softmax_cross_entropy_with_logits_4/concat_1/axis*
T0*
N*

Tidx0

-softmax_cross_entropy_with_logits_4/Reshape_1Reshapestrided_slice_28,softmax_cross_entropy_with_logits_4/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_4SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_4/Reshape-softmax_cross_entropy_with_logits_4/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_4/Sub_2/yConst*
dtype0*
value	B :

)softmax_cross_entropy_with_logits_4/Sub_2Sub(softmax_cross_entropy_with_logits_4/Rank+softmax_cross_entropy_with_logits_4/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_4/Slice_2/beginConst*
valueB: *
dtype0

0softmax_cross_entropy_with_logits_4/Slice_2/sizePack)softmax_cross_entropy_with_logits_4/Sub_2*
T0*

axis *
N
Ś
+softmax_cross_entropy_with_logits_4/Slice_2Slice)softmax_cross_entropy_with_logits_4/Shape1softmax_cross_entropy_with_logits_4/Slice_2/begin0softmax_cross_entropy_with_logits_4/Slice_2/size*
T0*
Index0
”
-softmax_cross_entropy_with_logits_4/Reshape_2Reshape#softmax_cross_entropy_with_logits_4+softmax_cross_entropy_with_logits_4/Slice_2*
T0*
Tshape0
B
NegNeg-softmax_cross_entropy_with_logits_4/Reshape_2*
T0
K
strided_slice_30/stackConst*
dtype0*
valueB"       
M
strided_slice_30/stack_1Const*
valueB"       *
dtype0
M
strided_slice_30/stack_2Const*
valueB"      *
dtype0
š
strided_slice_30StridedSliceconcat_3strided_slice_30/stackstrided_slice_30/stack_1strided_slice_30/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0
K
strided_slice_31/stackConst*
valueB"       *
dtype0
M
strided_slice_31/stack_1Const*
valueB"       *
dtype0
M
strided_slice_31/stack_2Const*
dtype0*
valueB"      
š
strided_slice_31StridedSliceconcat_2strided_slice_31/stackstrided_slice_31/stack_1strided_slice_31/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0
R
(softmax_cross_entropy_with_logits_5/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_5/ShapeShapestrided_slice_31*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_5/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_5/Shape_1Shapestrided_slice_31*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_5/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_5/SubSub*softmax_cross_entropy_with_logits_5/Rank_1)softmax_cross_entropy_with_logits_5/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_5/Slice/beginPack'softmax_cross_entropy_with_logits_5/Sub*
T0*

axis *
N
\
.softmax_cross_entropy_with_logits_5/Slice/sizeConst*
valueB:*
dtype0
Ö
)softmax_cross_entropy_with_logits_5/SliceSlice+softmax_cross_entropy_with_logits_5/Shape_1/softmax_cross_entropy_with_logits_5/Slice/begin.softmax_cross_entropy_with_logits_5/Slice/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits_5/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits_5/concat/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits_5/concatConcatV23softmax_cross_entropy_with_logits_5/concat/values_0)softmax_cross_entropy_with_logits_5/Slice/softmax_cross_entropy_with_logits_5/concat/axis*
N*

Tidx0*
T0

+softmax_cross_entropy_with_logits_5/ReshapeReshapestrided_slice_31*softmax_cross_entropy_with_logits_5/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_5/Rank_2Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_5/Shape_2Shapestrided_slice_30*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_5/Sub_1/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_5/Sub_1Sub*softmax_cross_entropy_with_logits_5/Rank_2+softmax_cross_entropy_with_logits_5/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_5/Slice_1/beginPack)softmax_cross_entropy_with_logits_5/Sub_1*
T0*

axis *
N
^
0softmax_cross_entropy_with_logits_5/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_5/Slice_1Slice+softmax_cross_entropy_with_logits_5/Shape_21softmax_cross_entropy_with_logits_5/Slice_1/begin0softmax_cross_entropy_with_logits_5/Slice_1/size*
T0*
Index0
l
5softmax_cross_entropy_with_logits_5/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
[
1softmax_cross_entropy_with_logits_5/concat_1/axisConst*
value	B : *
dtype0
ķ
,softmax_cross_entropy_with_logits_5/concat_1ConcatV25softmax_cross_entropy_with_logits_5/concat_1/values_0+softmax_cross_entropy_with_logits_5/Slice_11softmax_cross_entropy_with_logits_5/concat_1/axis*

Tidx0*
T0*
N

-softmax_cross_entropy_with_logits_5/Reshape_1Reshapestrided_slice_30,softmax_cross_entropy_with_logits_5/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_5SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_5/Reshape-softmax_cross_entropy_with_logits_5/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_5/Sub_2/yConst*
dtype0*
value	B :

)softmax_cross_entropy_with_logits_5/Sub_2Sub(softmax_cross_entropy_with_logits_5/Rank+softmax_cross_entropy_with_logits_5/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_5/Slice_2/beginConst*
dtype0*
valueB: 

0softmax_cross_entropy_with_logits_5/Slice_2/sizePack)softmax_cross_entropy_with_logits_5/Sub_2*
T0*

axis *
N
Ś
+softmax_cross_entropy_with_logits_5/Slice_2Slice)softmax_cross_entropy_with_logits_5/Shape1softmax_cross_entropy_with_logits_5/Slice_2/begin0softmax_cross_entropy_with_logits_5/Slice_2/size*
T0*
Index0
”
-softmax_cross_entropy_with_logits_5/Reshape_2Reshape#softmax_cross_entropy_with_logits_5+softmax_cross_entropy_with_logits_5/Slice_2*
T0*
Tshape0
D
Neg_1Neg-softmax_cross_entropy_with_logits_5/Reshape_2*
T0
K
strided_slice_32/stackConst*
valueB"       *
dtype0
M
strided_slice_32/stack_1Const*
dtype0*
valueB"    	   
M
strided_slice_32/stack_2Const*
valueB"      *
dtype0
š
strided_slice_32StridedSliceconcat_3strided_slice_32/stackstrided_slice_32/stack_1strided_slice_32/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0
K
strided_slice_33/stackConst*
valueB"       *
dtype0
M
strided_slice_33/stack_1Const*
valueB"    	   *
dtype0
M
strided_slice_33/stack_2Const*
valueB"      *
dtype0
š
strided_slice_33StridedSliceconcat_2strided_slice_33/stackstrided_slice_33/stack_1strided_slice_33/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0
R
(softmax_cross_entropy_with_logits_6/RankConst*
dtype0*
value	B :
]
)softmax_cross_entropy_with_logits_6/ShapeShapestrided_slice_33*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_6/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_6/Shape_1Shapestrided_slice_33*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_6/Sub/yConst*
dtype0*
value	B :

'softmax_cross_entropy_with_logits_6/SubSub*softmax_cross_entropy_with_logits_6/Rank_1)softmax_cross_entropy_with_logits_6/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_6/Slice/beginPack'softmax_cross_entropy_with_logits_6/Sub*
T0*

axis *
N
\
.softmax_cross_entropy_with_logits_6/Slice/sizeConst*
valueB:*
dtype0
Ö
)softmax_cross_entropy_with_logits_6/SliceSlice+softmax_cross_entropy_with_logits_6/Shape_1/softmax_cross_entropy_with_logits_6/Slice/begin.softmax_cross_entropy_with_logits_6/Slice/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits_6/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits_6/concat/axisConst*
dtype0*
value	B : 
å
*softmax_cross_entropy_with_logits_6/concatConcatV23softmax_cross_entropy_with_logits_6/concat/values_0)softmax_cross_entropy_with_logits_6/Slice/softmax_cross_entropy_with_logits_6/concat/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits_6/ReshapeReshapestrided_slice_33*softmax_cross_entropy_with_logits_6/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_6/Rank_2Const*
dtype0*
value	B :
_
+softmax_cross_entropy_with_logits_6/Shape_2Shapestrided_slice_32*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_6/Sub_1/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_6/Sub_1Sub*softmax_cross_entropy_with_logits_6/Rank_2+softmax_cross_entropy_with_logits_6/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_6/Slice_1/beginPack)softmax_cross_entropy_with_logits_6/Sub_1*
N*
T0*

axis 
^
0softmax_cross_entropy_with_logits_6/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_6/Slice_1Slice+softmax_cross_entropy_with_logits_6/Shape_21softmax_cross_entropy_with_logits_6/Slice_1/begin0softmax_cross_entropy_with_logits_6/Slice_1/size*
T0*
Index0
l
5softmax_cross_entropy_with_logits_6/concat_1/values_0Const*
dtype0*
valueB:
’’’’’’’’’
[
1softmax_cross_entropy_with_logits_6/concat_1/axisConst*
dtype0*
value	B : 
ķ
,softmax_cross_entropy_with_logits_6/concat_1ConcatV25softmax_cross_entropy_with_logits_6/concat_1/values_0+softmax_cross_entropy_with_logits_6/Slice_11softmax_cross_entropy_with_logits_6/concat_1/axis*
T0*
N*

Tidx0

-softmax_cross_entropy_with_logits_6/Reshape_1Reshapestrided_slice_32,softmax_cross_entropy_with_logits_6/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_6SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_6/Reshape-softmax_cross_entropy_with_logits_6/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_6/Sub_2/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_6/Sub_2Sub(softmax_cross_entropy_with_logits_6/Rank+softmax_cross_entropy_with_logits_6/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_6/Slice_2/beginConst*
valueB: *
dtype0

0softmax_cross_entropy_with_logits_6/Slice_2/sizePack)softmax_cross_entropy_with_logits_6/Sub_2*
T0*

axis *
N
Ś
+softmax_cross_entropy_with_logits_6/Slice_2Slice)softmax_cross_entropy_with_logits_6/Shape1softmax_cross_entropy_with_logits_6/Slice_2/begin0softmax_cross_entropy_with_logits_6/Slice_2/size*
T0*
Index0
”
-softmax_cross_entropy_with_logits_6/Reshape_2Reshape#softmax_cross_entropy_with_logits_6+softmax_cross_entropy_with_logits_6/Slice_2*
T0*
Tshape0
D
Neg_2Neg-softmax_cross_entropy_with_logits_6/Reshape_2*
T0
K
strided_slice_34/stackConst*
dtype0*
valueB"    	   
M
strided_slice_34/stack_1Const*
dtype0*
valueB"       
M
strided_slice_34/stack_2Const*
dtype0*
valueB"      
š
strided_slice_34StridedSliceconcat_3strided_slice_34/stackstrided_slice_34/stack_1strided_slice_34/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
K
strided_slice_35/stackConst*
valueB"    	   *
dtype0
M
strided_slice_35/stack_1Const*
valueB"       *
dtype0
M
strided_slice_35/stack_2Const*
valueB"      *
dtype0
š
strided_slice_35StridedSliceconcat_2strided_slice_35/stackstrided_slice_35/stack_1strided_slice_35/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0
R
(softmax_cross_entropy_with_logits_7/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_7/ShapeShapestrided_slice_35*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_7/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_7/Shape_1Shapestrided_slice_35*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_7/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_7/SubSub*softmax_cross_entropy_with_logits_7/Rank_1)softmax_cross_entropy_with_logits_7/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_7/Slice/beginPack'softmax_cross_entropy_with_logits_7/Sub*
T0*

axis *
N
\
.softmax_cross_entropy_with_logits_7/Slice/sizeConst*
valueB:*
dtype0
Ö
)softmax_cross_entropy_with_logits_7/SliceSlice+softmax_cross_entropy_with_logits_7/Shape_1/softmax_cross_entropy_with_logits_7/Slice/begin.softmax_cross_entropy_with_logits_7/Slice/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits_7/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits_7/concat/axisConst*
dtype0*
value	B : 
å
*softmax_cross_entropy_with_logits_7/concatConcatV23softmax_cross_entropy_with_logits_7/concat/values_0)softmax_cross_entropy_with_logits_7/Slice/softmax_cross_entropy_with_logits_7/concat/axis*

Tidx0*
T0*
N

+softmax_cross_entropy_with_logits_7/ReshapeReshapestrided_slice_35*softmax_cross_entropy_with_logits_7/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_7/Rank_2Const*
dtype0*
value	B :
_
+softmax_cross_entropy_with_logits_7/Shape_2Shapestrided_slice_34*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_7/Sub_1/yConst*
dtype0*
value	B :

)softmax_cross_entropy_with_logits_7/Sub_1Sub*softmax_cross_entropy_with_logits_7/Rank_2+softmax_cross_entropy_with_logits_7/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_7/Slice_1/beginPack)softmax_cross_entropy_with_logits_7/Sub_1*
T0*

axis *
N
^
0softmax_cross_entropy_with_logits_7/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_7/Slice_1Slice+softmax_cross_entropy_with_logits_7/Shape_21softmax_cross_entropy_with_logits_7/Slice_1/begin0softmax_cross_entropy_with_logits_7/Slice_1/size*
T0*
Index0
l
5softmax_cross_entropy_with_logits_7/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
[
1softmax_cross_entropy_with_logits_7/concat_1/axisConst*
dtype0*
value	B : 
ķ
,softmax_cross_entropy_with_logits_7/concat_1ConcatV25softmax_cross_entropy_with_logits_7/concat_1/values_0+softmax_cross_entropy_with_logits_7/Slice_11softmax_cross_entropy_with_logits_7/concat_1/axis*

Tidx0*
T0*
N

-softmax_cross_entropy_with_logits_7/Reshape_1Reshapestrided_slice_34,softmax_cross_entropy_with_logits_7/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_7SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_7/Reshape-softmax_cross_entropy_with_logits_7/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_7/Sub_2/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_7/Sub_2Sub(softmax_cross_entropy_with_logits_7/Rank+softmax_cross_entropy_with_logits_7/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_7/Slice_2/beginConst*
valueB: *
dtype0

0softmax_cross_entropy_with_logits_7/Slice_2/sizePack)softmax_cross_entropy_with_logits_7/Sub_2*
N*
T0*

axis 
Ś
+softmax_cross_entropy_with_logits_7/Slice_2Slice)softmax_cross_entropy_with_logits_7/Shape1softmax_cross_entropy_with_logits_7/Slice_2/begin0softmax_cross_entropy_with_logits_7/Slice_2/size*
T0*
Index0
”
-softmax_cross_entropy_with_logits_7/Reshape_2Reshape#softmax_cross_entropy_with_logits_7+softmax_cross_entropy_with_logits_7/Slice_2*
T0*
Tshape0
D
Neg_3Neg-softmax_cross_entropy_with_logits_7/Reshape_2*
T0
G
stack_1PackNegNeg_1Neg_2Neg_3*
T0*

axis*
N
A
Sum_9/reduction_indicesConst*
value	B :*
dtype0
T
Sum_9Sumstack_1Sum_9/reduction_indices*
T0*

Tidx0*
	keep_dims(
K
strided_slice_36/stackConst*
valueB"        *
dtype0
M
strided_slice_36/stack_1Const*
valueB"       *
dtype0
M
strided_slice_36/stack_2Const*
valueB"      *
dtype0
š
strided_slice_36StridedSliceconcat_3strided_slice_36/stackstrided_slice_36/stack_1strided_slice_36/stack_2*
end_mask*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask 
K
strided_slice_37/stackConst*
valueB"        *
dtype0
M
strided_slice_37/stack_1Const*
valueB"       *
dtype0
M
strided_slice_37/stack_2Const*
valueB"      *
dtype0
š
strided_slice_37StridedSliceconcat_6strided_slice_37/stackstrided_slice_37/stack_1strided_slice_37/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
R
(softmax_cross_entropy_with_logits_8/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_8/ShapeShapestrided_slice_37*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_8/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_8/Shape_1Shapestrided_slice_37*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_8/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_8/SubSub*softmax_cross_entropy_with_logits_8/Rank_1)softmax_cross_entropy_with_logits_8/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_8/Slice/beginPack'softmax_cross_entropy_with_logits_8/Sub*
T0*

axis *
N
\
.softmax_cross_entropy_with_logits_8/Slice/sizeConst*
dtype0*
valueB:
Ö
)softmax_cross_entropy_with_logits_8/SliceSlice+softmax_cross_entropy_with_logits_8/Shape_1/softmax_cross_entropy_with_logits_8/Slice/begin.softmax_cross_entropy_with_logits_8/Slice/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits_8/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Y
/softmax_cross_entropy_with_logits_8/concat/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits_8/concatConcatV23softmax_cross_entropy_with_logits_8/concat/values_0)softmax_cross_entropy_with_logits_8/Slice/softmax_cross_entropy_with_logits_8/concat/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits_8/ReshapeReshapestrided_slice_37*softmax_cross_entropy_with_logits_8/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_8/Rank_2Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_8/Shape_2Shapestrided_slice_36*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_8/Sub_1/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_8/Sub_1Sub*softmax_cross_entropy_with_logits_8/Rank_2+softmax_cross_entropy_with_logits_8/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_8/Slice_1/beginPack)softmax_cross_entropy_with_logits_8/Sub_1*
T0*

axis *
N
^
0softmax_cross_entropy_with_logits_8/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_8/Slice_1Slice+softmax_cross_entropy_with_logits_8/Shape_21softmax_cross_entropy_with_logits_8/Slice_1/begin0softmax_cross_entropy_with_logits_8/Slice_1/size*
T0*
Index0
l
5softmax_cross_entropy_with_logits_8/concat_1/values_0Const*
dtype0*
valueB:
’’’’’’’’’
[
1softmax_cross_entropy_with_logits_8/concat_1/axisConst*
value	B : *
dtype0
ķ
,softmax_cross_entropy_with_logits_8/concat_1ConcatV25softmax_cross_entropy_with_logits_8/concat_1/values_0+softmax_cross_entropy_with_logits_8/Slice_11softmax_cross_entropy_with_logits_8/concat_1/axis*
N*

Tidx0*
T0

-softmax_cross_entropy_with_logits_8/Reshape_1Reshapestrided_slice_36,softmax_cross_entropy_with_logits_8/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_8SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_8/Reshape-softmax_cross_entropy_with_logits_8/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_8/Sub_2/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_8/Sub_2Sub(softmax_cross_entropy_with_logits_8/Rank+softmax_cross_entropy_with_logits_8/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_8/Slice_2/beginConst*
valueB: *
dtype0

0softmax_cross_entropy_with_logits_8/Slice_2/sizePack)softmax_cross_entropy_with_logits_8/Sub_2*
N*
T0*

axis 
Ś
+softmax_cross_entropy_with_logits_8/Slice_2Slice)softmax_cross_entropy_with_logits_8/Shape1softmax_cross_entropy_with_logits_8/Slice_2/begin0softmax_cross_entropy_with_logits_8/Slice_2/size*
T0*
Index0
”
-softmax_cross_entropy_with_logits_8/Reshape_2Reshape#softmax_cross_entropy_with_logits_8+softmax_cross_entropy_with_logits_8/Slice_2*
T0*
Tshape0
D
Neg_4Neg-softmax_cross_entropy_with_logits_8/Reshape_2*
T0
K
strided_slice_38/stackConst*
dtype0*
valueB"       
M
strided_slice_38/stack_1Const*
valueB"       *
dtype0
M
strided_slice_38/stack_2Const*
dtype0*
valueB"      
š
strided_slice_38StridedSliceconcat_3strided_slice_38/stackstrided_slice_38/stack_1strided_slice_38/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0*
shrink_axis_mask 
K
strided_slice_39/stackConst*
dtype0*
valueB"       
M
strided_slice_39/stack_1Const*
valueB"       *
dtype0
M
strided_slice_39/stack_2Const*
valueB"      *
dtype0
š
strided_slice_39StridedSliceconcat_6strided_slice_39/stackstrided_slice_39/stack_1strided_slice_39/stack_2*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
T0*
Index0*
shrink_axis_mask 
R
(softmax_cross_entropy_with_logits_9/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_9/ShapeShapestrided_slice_39*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_9/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_9/Shape_1Shapestrided_slice_39*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_9/Sub/yConst*
dtype0*
value	B :

'softmax_cross_entropy_with_logits_9/SubSub*softmax_cross_entropy_with_logits_9/Rank_1)softmax_cross_entropy_with_logits_9/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_9/Slice/beginPack'softmax_cross_entropy_with_logits_9/Sub*
T0*

axis *
N
\
.softmax_cross_entropy_with_logits_9/Slice/sizeConst*
dtype0*
valueB:
Ö
)softmax_cross_entropy_with_logits_9/SliceSlice+softmax_cross_entropy_with_logits_9/Shape_1/softmax_cross_entropy_with_logits_9/Slice/begin.softmax_cross_entropy_with_logits_9/Slice/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits_9/concat/values_0Const*
dtype0*
valueB:
’’’’’’’’’
Y
/softmax_cross_entropy_with_logits_9/concat/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits_9/concatConcatV23softmax_cross_entropy_with_logits_9/concat/values_0)softmax_cross_entropy_with_logits_9/Slice/softmax_cross_entropy_with_logits_9/concat/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits_9/ReshapeReshapestrided_slice_39*softmax_cross_entropy_with_logits_9/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_9/Rank_2Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_9/Shape_2Shapestrided_slice_38*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_9/Sub_1/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_9/Sub_1Sub*softmax_cross_entropy_with_logits_9/Rank_2+softmax_cross_entropy_with_logits_9/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_9/Slice_1/beginPack)softmax_cross_entropy_with_logits_9/Sub_1*
T0*

axis *
N
^
0softmax_cross_entropy_with_logits_9/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_9/Slice_1Slice+softmax_cross_entropy_with_logits_9/Shape_21softmax_cross_entropy_with_logits_9/Slice_1/begin0softmax_cross_entropy_with_logits_9/Slice_1/size*
T0*
Index0
l
5softmax_cross_entropy_with_logits_9/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
[
1softmax_cross_entropy_with_logits_9/concat_1/axisConst*
value	B : *
dtype0
ķ
,softmax_cross_entropy_with_logits_9/concat_1ConcatV25softmax_cross_entropy_with_logits_9/concat_1/values_0+softmax_cross_entropy_with_logits_9/Slice_11softmax_cross_entropy_with_logits_9/concat_1/axis*
T0*
N*

Tidx0

-softmax_cross_entropy_with_logits_9/Reshape_1Reshapestrided_slice_38,softmax_cross_entropy_with_logits_9/concat_1*
T0*
Tshape0
©
#softmax_cross_entropy_with_logits_9SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_9/Reshape-softmax_cross_entropy_with_logits_9/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_9/Sub_2/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_9/Sub_2Sub(softmax_cross_entropy_with_logits_9/Rank+softmax_cross_entropy_with_logits_9/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_9/Slice_2/beginConst*
valueB: *
dtype0

0softmax_cross_entropy_with_logits_9/Slice_2/sizePack)softmax_cross_entropy_with_logits_9/Sub_2*
T0*

axis *
N
Ś
+softmax_cross_entropy_with_logits_9/Slice_2Slice)softmax_cross_entropy_with_logits_9/Shape1softmax_cross_entropy_with_logits_9/Slice_2/begin0softmax_cross_entropy_with_logits_9/Slice_2/size*
T0*
Index0
”
-softmax_cross_entropy_with_logits_9/Reshape_2Reshape#softmax_cross_entropy_with_logits_9+softmax_cross_entropy_with_logits_9/Slice_2*
T0*
Tshape0
D
Neg_5Neg-softmax_cross_entropy_with_logits_9/Reshape_2*
T0
K
strided_slice_40/stackConst*
valueB"       *
dtype0
M
strided_slice_40/stack_1Const*
dtype0*
valueB"    	   
M
strided_slice_40/stack_2Const*
dtype0*
valueB"      
š
strided_slice_40StridedSliceconcat_3strided_slice_40/stackstrided_slice_40/stack_1strided_slice_40/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0*
shrink_axis_mask 
K
strided_slice_41/stackConst*
valueB"       *
dtype0
M
strided_slice_41/stack_1Const*
dtype0*
valueB"    	   
M
strided_slice_41/stack_2Const*
dtype0*
valueB"      
š
strided_slice_41StridedSliceconcat_6strided_slice_41/stackstrided_slice_41/stack_1strided_slice_41/stack_2*
end_mask*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask 
S
)softmax_cross_entropy_with_logits_10/RankConst*
value	B :*
dtype0
^
*softmax_cross_entropy_with_logits_10/ShapeShapestrided_slice_41*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_10/Rank_1Const*
value	B :*
dtype0
`
,softmax_cross_entropy_with_logits_10/Shape_1Shapestrided_slice_41*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_10/Sub/yConst*
value	B :*
dtype0

(softmax_cross_entropy_with_logits_10/SubSub+softmax_cross_entropy_with_logits_10/Rank_1*softmax_cross_entropy_with_logits_10/Sub/y*
T0

0softmax_cross_entropy_with_logits_10/Slice/beginPack(softmax_cross_entropy_with_logits_10/Sub*
N*
T0*

axis 
]
/softmax_cross_entropy_with_logits_10/Slice/sizeConst*
valueB:*
dtype0
Ś
*softmax_cross_entropy_with_logits_10/SliceSlice,softmax_cross_entropy_with_logits_10/Shape_10softmax_cross_entropy_with_logits_10/Slice/begin/softmax_cross_entropy_with_logits_10/Slice/size*
T0*
Index0
k
4softmax_cross_entropy_with_logits_10/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0
Z
0softmax_cross_entropy_with_logits_10/concat/axisConst*
dtype0*
value	B : 
é
+softmax_cross_entropy_with_logits_10/concatConcatV24softmax_cross_entropy_with_logits_10/concat/values_0*softmax_cross_entropy_with_logits_10/Slice0softmax_cross_entropy_with_logits_10/concat/axis*
N*

Tidx0*
T0

,softmax_cross_entropy_with_logits_10/ReshapeReshapestrided_slice_41+softmax_cross_entropy_with_logits_10/concat*
T0*
Tshape0
U
+softmax_cross_entropy_with_logits_10/Rank_2Const*
value	B :*
dtype0
`
,softmax_cross_entropy_with_logits_10/Shape_2Shapestrided_slice_40*
T0*
out_type0
V
,softmax_cross_entropy_with_logits_10/Sub_1/yConst*
value	B :*
dtype0

*softmax_cross_entropy_with_logits_10/Sub_1Sub+softmax_cross_entropy_with_logits_10/Rank_2,softmax_cross_entropy_with_logits_10/Sub_1/y*
T0

2softmax_cross_entropy_with_logits_10/Slice_1/beginPack*softmax_cross_entropy_with_logits_10/Sub_1*
T0*

axis *
N
_
1softmax_cross_entropy_with_logits_10/Slice_1/sizeConst*
valueB:*
dtype0
ą
,softmax_cross_entropy_with_logits_10/Slice_1Slice,softmax_cross_entropy_with_logits_10/Shape_22softmax_cross_entropy_with_logits_10/Slice_1/begin1softmax_cross_entropy_with_logits_10/Slice_1/size*
T0*
Index0
m
6softmax_cross_entropy_with_logits_10/concat_1/values_0Const*
dtype0*
valueB:
’’’’’’’’’
\
2softmax_cross_entropy_with_logits_10/concat_1/axisConst*
value	B : *
dtype0
ń
-softmax_cross_entropy_with_logits_10/concat_1ConcatV26softmax_cross_entropy_with_logits_10/concat_1/values_0,softmax_cross_entropy_with_logits_10/Slice_12softmax_cross_entropy_with_logits_10/concat_1/axis*
T0*
N*

Tidx0

.softmax_cross_entropy_with_logits_10/Reshape_1Reshapestrided_slice_40-softmax_cross_entropy_with_logits_10/concat_1*
T0*
Tshape0
¬
$softmax_cross_entropy_with_logits_10SoftmaxCrossEntropyWithLogits,softmax_cross_entropy_with_logits_10/Reshape.softmax_cross_entropy_with_logits_10/Reshape_1*
T0
V
,softmax_cross_entropy_with_logits_10/Sub_2/yConst*
value	B :*
dtype0

*softmax_cross_entropy_with_logits_10/Sub_2Sub)softmax_cross_entropy_with_logits_10/Rank,softmax_cross_entropy_with_logits_10/Sub_2/y*
T0
`
2softmax_cross_entropy_with_logits_10/Slice_2/beginConst*
valueB: *
dtype0

1softmax_cross_entropy_with_logits_10/Slice_2/sizePack*softmax_cross_entropy_with_logits_10/Sub_2*
T0*

axis *
N
Ž
,softmax_cross_entropy_with_logits_10/Slice_2Slice*softmax_cross_entropy_with_logits_10/Shape2softmax_cross_entropy_with_logits_10/Slice_2/begin1softmax_cross_entropy_with_logits_10/Slice_2/size*
T0*
Index0
¤
.softmax_cross_entropy_with_logits_10/Reshape_2Reshape$softmax_cross_entropy_with_logits_10,softmax_cross_entropy_with_logits_10/Slice_2*
T0*
Tshape0
E
Neg_6Neg.softmax_cross_entropy_with_logits_10/Reshape_2*
T0
K
strided_slice_42/stackConst*
dtype0*
valueB"    	   
M
strided_slice_42/stack_1Const*
valueB"       *
dtype0
M
strided_slice_42/stack_2Const*
valueB"      *
dtype0
š
strided_slice_42StridedSliceconcat_3strided_slice_42/stackstrided_slice_42/stack_1strided_slice_42/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0
K
strided_slice_43/stackConst*
valueB"    	   *
dtype0
M
strided_slice_43/stack_1Const*
valueB"       *
dtype0
M
strided_slice_43/stack_2Const*
valueB"      *
dtype0
š
strided_slice_43StridedSliceconcat_6strided_slice_43/stackstrided_slice_43/stack_1strided_slice_43/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
S
)softmax_cross_entropy_with_logits_11/RankConst*
value	B :*
dtype0
^
*softmax_cross_entropy_with_logits_11/ShapeShapestrided_slice_43*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_11/Rank_1Const*
dtype0*
value	B :
`
,softmax_cross_entropy_with_logits_11/Shape_1Shapestrided_slice_43*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_11/Sub/yConst*
value	B :*
dtype0

(softmax_cross_entropy_with_logits_11/SubSub+softmax_cross_entropy_with_logits_11/Rank_1*softmax_cross_entropy_with_logits_11/Sub/y*
T0

0softmax_cross_entropy_with_logits_11/Slice/beginPack(softmax_cross_entropy_with_logits_11/Sub*
T0*

axis *
N
]
/softmax_cross_entropy_with_logits_11/Slice/sizeConst*
dtype0*
valueB:
Ś
*softmax_cross_entropy_with_logits_11/SliceSlice,softmax_cross_entropy_with_logits_11/Shape_10softmax_cross_entropy_with_logits_11/Slice/begin/softmax_cross_entropy_with_logits_11/Slice/size*
T0*
Index0
k
4softmax_cross_entropy_with_logits_11/concat/values_0Const*
dtype0*
valueB:
’’’’’’’’’
Z
0softmax_cross_entropy_with_logits_11/concat/axisConst*
value	B : *
dtype0
é
+softmax_cross_entropy_with_logits_11/concatConcatV24softmax_cross_entropy_with_logits_11/concat/values_0*softmax_cross_entropy_with_logits_11/Slice0softmax_cross_entropy_with_logits_11/concat/axis*
T0*
N*

Tidx0

,softmax_cross_entropy_with_logits_11/ReshapeReshapestrided_slice_43+softmax_cross_entropy_with_logits_11/concat*
T0*
Tshape0
U
+softmax_cross_entropy_with_logits_11/Rank_2Const*
value	B :*
dtype0
`
,softmax_cross_entropy_with_logits_11/Shape_2Shapestrided_slice_42*
T0*
out_type0
V
,softmax_cross_entropy_with_logits_11/Sub_1/yConst*
value	B :*
dtype0

*softmax_cross_entropy_with_logits_11/Sub_1Sub+softmax_cross_entropy_with_logits_11/Rank_2,softmax_cross_entropy_with_logits_11/Sub_1/y*
T0

2softmax_cross_entropy_with_logits_11/Slice_1/beginPack*softmax_cross_entropy_with_logits_11/Sub_1*
T0*

axis *
N
_
1softmax_cross_entropy_with_logits_11/Slice_1/sizeConst*
dtype0*
valueB:
ą
,softmax_cross_entropy_with_logits_11/Slice_1Slice,softmax_cross_entropy_with_logits_11/Shape_22softmax_cross_entropy_with_logits_11/Slice_1/begin1softmax_cross_entropy_with_logits_11/Slice_1/size*
T0*
Index0
m
6softmax_cross_entropy_with_logits_11/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
\
2softmax_cross_entropy_with_logits_11/concat_1/axisConst*
value	B : *
dtype0
ń
-softmax_cross_entropy_with_logits_11/concat_1ConcatV26softmax_cross_entropy_with_logits_11/concat_1/values_0,softmax_cross_entropy_with_logits_11/Slice_12softmax_cross_entropy_with_logits_11/concat_1/axis*
N*

Tidx0*
T0

.softmax_cross_entropy_with_logits_11/Reshape_1Reshapestrided_slice_42-softmax_cross_entropy_with_logits_11/concat_1*
T0*
Tshape0
¬
$softmax_cross_entropy_with_logits_11SoftmaxCrossEntropyWithLogits,softmax_cross_entropy_with_logits_11/Reshape.softmax_cross_entropy_with_logits_11/Reshape_1*
T0
V
,softmax_cross_entropy_with_logits_11/Sub_2/yConst*
value	B :*
dtype0

*softmax_cross_entropy_with_logits_11/Sub_2Sub)softmax_cross_entropy_with_logits_11/Rank,softmax_cross_entropy_with_logits_11/Sub_2/y*
T0
`
2softmax_cross_entropy_with_logits_11/Slice_2/beginConst*
dtype0*
valueB: 

1softmax_cross_entropy_with_logits_11/Slice_2/sizePack*softmax_cross_entropy_with_logits_11/Sub_2*
N*
T0*

axis 
Ž
,softmax_cross_entropy_with_logits_11/Slice_2Slice*softmax_cross_entropy_with_logits_11/Shape2softmax_cross_entropy_with_logits_11/Slice_2/begin1softmax_cross_entropy_with_logits_11/Slice_2/size*
T0*
Index0
¤
.softmax_cross_entropy_with_logits_11/Reshape_2Reshape$softmax_cross_entropy_with_logits_11,softmax_cross_entropy_with_logits_11/Slice_2*
T0*
Tshape0
E
Neg_7Neg.softmax_cross_entropy_with_logits_11/Reshape_2*
T0
I
stack_2PackNeg_4Neg_5Neg_6Neg_7*
N*
T0*

axis
B
Sum_10/reduction_indicesConst*
value	B :*
dtype0
V
Sum_10Sumstack_2Sum_10/reduction_indices*

Tidx0*
	keep_dims(*
T0
R
%PolynomialDecay/initial_learning_rateConst*
valueB
 *RI9*
dtype0
C
PolynomialDecay/Cast/xConst*
valueB
 *’ęŪ.*
dtype0
E
PolynomialDecay/Cast_1/xConst*
valueB
 *  ?*
dtype0
X
PolynomialDecay/Cast_2Castglobal_step/read*
Truncate( *

DstT0*

SrcT0
E
PolynomialDecay/Cast_3/xConst*
valueB
 * |H*
dtype0
F
PolynomialDecay/Minimum/yConst*
valueB
 * |H*
dtype0
^
PolynomialDecay/MinimumMinimumPolynomialDecay/Cast_2PolynomialDecay/Minimum/y*
T0
^
PolynomialDecay/truedivRealDivPolynomialDecay/MinimumPolynomialDecay/Cast_3/x*
T0
b
PolynomialDecay/subSub%PolynomialDecay/initial_learning_ratePolynomialDecay/Cast/x*
T0
D
PolynomialDecay/sub_1/xConst*
valueB
 *  ?*
dtype0
W
PolynomialDecay/sub_1SubPolynomialDecay/sub_1/xPolynomialDecay/truediv*
T0
T
PolynomialDecay/PowPowPolynomialDecay/sub_1PolynomialDecay/Cast_1/x*
T0
M
PolynomialDecay/MulMulPolynomialDecay/subPolynomialDecay/Pow*
T0
L
PolynomialDecayAddPolynomialDecay/MulPolynomialDecay/Cast/x*
T0
G
extrinsic_returnsPlaceholder*
dtype0*
shape:’’’’’’’’’
N
extrinsic_value_estimatePlaceholder*
dtype0*
shape:’’’’’’’’’
@

advantagesPlaceholder*
shape:’’’’’’’’’*
dtype0
A
ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
I

ExpandDims
ExpandDims
advantagesExpandDims/dim*

Tdim0*
T0
T
'PolynomialDecay_1/initial_learning_rateConst*
valueB
 *ĶĢL>*
dtype0
E
PolynomialDecay_1/Cast/xConst*
valueB
 *ĶĢĢ=*
dtype0
G
PolynomialDecay_1/Cast_1/xConst*
dtype0*
valueB
 *  ?
Z
PolynomialDecay_1/Cast_2Castglobal_step/read*

SrcT0*
Truncate( *

DstT0
G
PolynomialDecay_1/Cast_3/xConst*
valueB
 * |H*
dtype0
H
PolynomialDecay_1/Minimum/yConst*
valueB
 * |H*
dtype0
d
PolynomialDecay_1/MinimumMinimumPolynomialDecay_1/Cast_2PolynomialDecay_1/Minimum/y*
T0
d
PolynomialDecay_1/truedivRealDivPolynomialDecay_1/MinimumPolynomialDecay_1/Cast_3/x*
T0
h
PolynomialDecay_1/subSub'PolynomialDecay_1/initial_learning_ratePolynomialDecay_1/Cast/x*
T0
F
PolynomialDecay_1/sub_1/xConst*
dtype0*
valueB
 *  ?
]
PolynomialDecay_1/sub_1SubPolynomialDecay_1/sub_1/xPolynomialDecay_1/truediv*
T0
Z
PolynomialDecay_1/PowPowPolynomialDecay_1/sub_1PolynomialDecay_1/Cast_1/x*
T0
S
PolynomialDecay_1/MulMulPolynomialDecay_1/subPolynomialDecay_1/Pow*
T0
R
PolynomialDecay_1AddPolynomialDecay_1/MulPolynomialDecay_1/Cast/x*
T0
T
'PolynomialDecay_2/initial_learning_rateConst*
valueB
 *
×£;*
dtype0
E
PolynomialDecay_2/Cast/xConst*
valueB
 *¬Å'7*
dtype0
G
PolynomialDecay_2/Cast_1/xConst*
valueB
 *  ?*
dtype0
Z
PolynomialDecay_2/Cast_2Castglobal_step/read*

SrcT0*
Truncate( *

DstT0
G
PolynomialDecay_2/Cast_3/xConst*
valueB
 * |H*
dtype0
H
PolynomialDecay_2/Minimum/yConst*
valueB
 * |H*
dtype0
d
PolynomialDecay_2/MinimumMinimumPolynomialDecay_2/Cast_2PolynomialDecay_2/Minimum/y*
T0
d
PolynomialDecay_2/truedivRealDivPolynomialDecay_2/MinimumPolynomialDecay_2/Cast_3/x*
T0
h
PolynomialDecay_2/subSub'PolynomialDecay_2/initial_learning_ratePolynomialDecay_2/Cast/x*
T0
F
PolynomialDecay_2/sub_1/xConst*
valueB
 *  ?*
dtype0
]
PolynomialDecay_2/sub_1SubPolynomialDecay_2/sub_1/xPolynomialDecay_2/truediv*
T0
Z
PolynomialDecay_2/PowPowPolynomialDecay_2/sub_1PolynomialDecay_2/Cast_1/x*
T0
S
PolynomialDecay_2/MulMulPolynomialDecay_2/subPolynomialDecay_2/Pow*
T0
R
PolynomialDecay_2AddPolynomialDecay_2/MulPolynomialDecay_2/Cast/x*
T0
B
Sum_11/reduction_indicesConst*
dtype0*
value	B :
f
Sum_11Sumextrinsic_value/BiasAddSum_11/reduction_indices*

Tidx0*
	keep_dims( *
T0
5
subSubSum_11extrinsic_value_estimate*
T0
(
Neg_8NegPolynomialDecay_1*
T0
A
clip_by_value/MinimumMinimumsubPolynomialDecay_1*
T0
?
clip_by_valueMaximumclip_by_value/MinimumNeg_8*
T0
A
add_25AddV2extrinsic_value_estimateclip_by_value*
T0
B
Sum_12/reduction_indicesConst*
dtype0*
value	B :
f
Sum_12Sumextrinsic_value/BiasAddSum_12/reduction_indices*

Tidx0*
	keep_dims( *
T0
J
SquaredDifferenceSquaredDifferenceextrinsic_returnsSum_12*
T0
L
SquaredDifference_1SquaredDifferenceextrinsic_returnsadd_25*
T0
C
MaximumMaximumSquaredDifferenceSquaredDifference_1*
T0
R
DynamicPartitionDynamicPartitionMaximumCast*
T0*
num_partitions
3
ConstConst*
valueB: *
dtype0
O
Mean_1MeanDynamicPartition:1Const*
T0*

Tidx0*
	keep_dims( 
9
Rank/packedPackMean_1*
T0*

axis *
N
.
RankConst*
value	B :*
dtype0
5
range/startConst*
value	B : *
dtype0
5
range/deltaConst*
value	B :*
dtype0
:
rangeRangerange/startRankrange/delta*

Tidx0
:
Mean_2/inputPackMean_1*
T0*

axis *
N
I
Mean_2MeanMean_2/inputrange*

Tidx0*
	keep_dims( *
T0
$
sub_1SubSum_9Sum_10*
T0

ExpExpsub_1*
T0
&
mul_8MulExp
ExpandDims*
T0
4
sub_2/xConst*
valueB
 *  ?*
dtype0
1
sub_2Subsub_2/xPolynomialDecay_1*
T0
5
add_26/xConst*
valueB
 *  ?*
dtype0
5
add_26AddV2add_26/xPolynomialDecay_1*
T0
8
clip_by_value_1/MinimumMinimumExpadd_26*
T0
C
clip_by_value_1Maximumclip_by_value_1/Minimumsub_2*
T0
2
mul_9Mulclip_by_value_1
ExpandDims*
T0
)
MinimumMinimummul_8mul_9*
T0
T
DynamicPartition_1DynamicPartitionMinimumCast*
num_partitions*
T0
<
Const_1Const*
dtype0*
valueB"       
S
Mean_3MeanDynamicPartition_1:1Const_1*
T0*

Tidx0*
	keep_dims( 

Neg_9NegMean_3*
T0

AbsAbsNeg_9*
T0
5
mul_10/xConst*
valueB
 *   ?*
dtype0
(
mul_10Mulmul_10/xMean_2*
T0
'
add_27AddV2Neg_9mul_10*
T0
R
DynamicPartition_2DynamicPartitionSum_8Cast*
num_partitions*
T0
5
Const_2Const*
dtype0*
valueB: 
S
Mean_4MeanDynamicPartition_2:1Const_2*
T0*

Tidx0*
	keep_dims( 
1
mul_11MulPolynomialDecay_2Mean_4*
T0
%
sub_3Subadd_27mul_11*
T0
8
gradients/ShapeConst*
valueB *
dtype0
@
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0
W
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0
8
gradients/sub_3_grad/NegNeggradients/Fill*
T0
Y
%gradients/sub_3_grad/tuple/group_depsNoOp^gradients/Fill^gradients/sub_3_grad/Neg

-gradients/sub_3_grad/tuple/control_dependencyIdentitygradients/Fill&^gradients/sub_3_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
³
/gradients/sub_3_grad/tuple/control_dependency_1Identitygradients/sub_3_grad/Neg&^gradients/sub_3_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/sub_3_grad/Neg
^
&gradients/add_27_grad/tuple/group_depsNoOp.^gradients/sub_3_grad/tuple/control_dependency
¾
.gradients/add_27_grad/tuple/control_dependencyIdentity-gradients/sub_3_grad/tuple/control_dependency'^gradients/add_27_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
Ą
0gradients/add_27_grad/tuple/control_dependency_1Identity-gradients/sub_3_grad/tuple/control_dependency'^gradients/add_27_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
b
gradients/mul_11_grad/MulMul/gradients/sub_3_grad/tuple/control_dependency_1Mean_4*
T0
o
gradients/mul_11_grad/Mul_1Mul/gradients/sub_3_grad/tuple/control_dependency_1PolynomialDecay_2*
T0
h
&gradients/mul_11_grad/tuple/group_depsNoOp^gradients/mul_11_grad/Mul^gradients/mul_11_grad/Mul_1
µ
.gradients/mul_11_grad/tuple/control_dependencyIdentitygradients/mul_11_grad/Mul'^gradients/mul_11_grad/tuple/group_deps*
T0*,
_class"
 loc:@gradients/mul_11_grad/Mul
»
0gradients/mul_11_grad/tuple/control_dependency_1Identitygradients/mul_11_grad/Mul_1'^gradients/mul_11_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients/mul_11_grad/Mul_1
X
gradients/Neg_9_grad/NegNeg.gradients/add_27_grad/tuple/control_dependency*
T0
c
gradients/mul_10_grad/MulMul0gradients/add_27_grad/tuple/control_dependency_1Mean_2*
T0
g
gradients/mul_10_grad/Mul_1Mul0gradients/add_27_grad/tuple/control_dependency_1mul_10/x*
T0
h
&gradients/mul_10_grad/tuple/group_depsNoOp^gradients/mul_10_grad/Mul^gradients/mul_10_grad/Mul_1
µ
.gradients/mul_10_grad/tuple/control_dependencyIdentitygradients/mul_10_grad/Mul'^gradients/mul_10_grad/tuple/group_deps*
T0*,
_class"
 loc:@gradients/mul_10_grad/Mul
»
0gradients/mul_10_grad/tuple/control_dependency_1Identitygradients/mul_10_grad/Mul_1'^gradients/mul_10_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients/mul_10_grad/Mul_1
Q
#gradients/Mean_4_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_4_grad/ReshapeReshape0gradients/mul_11_grad/tuple/control_dependency_1#gradients/Mean_4_grad/Reshape/shape*
T0*
Tshape0
S
gradients/Mean_4_grad/ShapeShapeDynamicPartition_2:1*
T0*
out_type0
y
gradients/Mean_4_grad/TileTilegradients/Mean_4_grad/Reshapegradients/Mean_4_grad/Shape*

Tmultiples0*
T0
U
gradients/Mean_4_grad/Shape_1ShapeDynamicPartition_2:1*
T0*
out_type0
F
gradients/Mean_4_grad/Shape_2Const*
dtype0*
valueB 
I
gradients/Mean_4_grad/ConstConst*
dtype0*
valueB: 

gradients/Mean_4_grad/ProdProdgradients/Mean_4_grad/Shape_1gradients/Mean_4_grad/Const*
T0*

Tidx0*
	keep_dims( 
K
gradients/Mean_4_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_4_grad/Prod_1Prodgradients/Mean_4_grad/Shape_2gradients/Mean_4_grad/Const_1*

Tidx0*
	keep_dims( *
T0
I
gradients/Mean_4_grad/Maximum/yConst*
dtype0*
value	B :
p
gradients/Mean_4_grad/MaximumMaximumgradients/Mean_4_grad/Prod_1gradients/Mean_4_grad/Maximum/y*
T0
n
gradients/Mean_4_grad/floordivFloorDivgradients/Mean_4_grad/Prodgradients/Mean_4_grad/Maximum*
T0
j
gradients/Mean_4_grad/CastCastgradients/Mean_4_grad/floordiv*

SrcT0*
Truncate( *

DstT0
i
gradients/Mean_4_grad/truedivRealDivgradients/Mean_4_grad/Tilegradients/Mean_4_grad/Cast*
T0
X
#gradients/Mean_3_grad/Reshape/shapeConst*
valueB"      *
dtype0
~
gradients/Mean_3_grad/ReshapeReshapegradients/Neg_9_grad/Neg#gradients/Mean_3_grad/Reshape/shape*
T0*
Tshape0
S
gradients/Mean_3_grad/ShapeShapeDynamicPartition_1:1*
T0*
out_type0
y
gradients/Mean_3_grad/TileTilegradients/Mean_3_grad/Reshapegradients/Mean_3_grad/Shape*

Tmultiples0*
T0
U
gradients/Mean_3_grad/Shape_1ShapeDynamicPartition_1:1*
T0*
out_type0
F
gradients/Mean_3_grad/Shape_2Const*
dtype0*
valueB 
I
gradients/Mean_3_grad/ConstConst*
valueB: *
dtype0

gradients/Mean_3_grad/ProdProdgradients/Mean_3_grad/Shape_1gradients/Mean_3_grad/Const*
T0*

Tidx0*
	keep_dims( 
K
gradients/Mean_3_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_3_grad/Prod_1Prodgradients/Mean_3_grad/Shape_2gradients/Mean_3_grad/Const_1*

Tidx0*
	keep_dims( *
T0
I
gradients/Mean_3_grad/Maximum/yConst*
dtype0*
value	B :
p
gradients/Mean_3_grad/MaximumMaximumgradients/Mean_3_grad/Prod_1gradients/Mean_3_grad/Maximum/y*
T0
n
gradients/Mean_3_grad/floordivFloorDivgradients/Mean_3_grad/Prodgradients/Mean_3_grad/Maximum*
T0
j
gradients/Mean_3_grad/CastCastgradients/Mean_3_grad/floordiv*

SrcT0*
Truncate( *

DstT0
i
gradients/Mean_3_grad/truedivRealDivgradients/Mean_3_grad/Tilegradients/Mean_3_grad/Cast*
T0
Q
#gradients/Mean_2_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_2_grad/ReshapeReshape0gradients/mul_10_grad/tuple/control_dependency_1#gradients/Mean_2_grad/Reshape/shape*
T0*
Tshape0
I
gradients/Mean_2_grad/ConstConst*
valueB:*
dtype0
y
gradients/Mean_2_grad/TileTilegradients/Mean_2_grad/Reshapegradients/Mean_2_grad/Const*

Tmultiples0*
T0
J
gradients/Mean_2_grad/Const_1Const*
valueB
 *  ?*
dtype0
l
gradients/Mean_2_grad/truedivRealDivgradients/Mean_2_grad/Tilegradients/Mean_2_grad/Const_1*
T0
>
gradients/zeros_like	ZerosLikeDynamicPartition_2*
T0
O
'gradients/DynamicPartition_2_grad/ShapeShapeCast*
T0*
out_type0
U
'gradients/DynamicPartition_2_grad/ConstConst*
valueB: *
dtype0
¦
&gradients/DynamicPartition_2_grad/ProdProd'gradients/DynamicPartition_2_grad/Shape'gradients/DynamicPartition_2_grad/Const*
T0*

Tidx0*
	keep_dims( 
W
-gradients/DynamicPartition_2_grad/range/startConst*
dtype0*
value	B : 
W
-gradients/DynamicPartition_2_grad/range/deltaConst*
dtype0*
value	B :
Ā
'gradients/DynamicPartition_2_grad/rangeRange-gradients/DynamicPartition_2_grad/range/start&gradients/DynamicPartition_2_grad/Prod-gradients/DynamicPartition_2_grad/range/delta*

Tidx0

)gradients/DynamicPartition_2_grad/ReshapeReshape'gradients/DynamicPartition_2_grad/range'gradients/DynamicPartition_2_grad/Shape*
T0*
Tshape0

2gradients/DynamicPartition_2_grad/DynamicPartitionDynamicPartition)gradients/DynamicPartition_2_grad/ReshapeCast*
T0*
num_partitions
ń
/gradients/DynamicPartition_2_grad/DynamicStitchDynamicStitch2gradients/DynamicPartition_2_grad/DynamicPartition4gradients/DynamicPartition_2_grad/DynamicPartition:1gradients/zeros_likegradients/Mean_4_grad/truediv*
T0*
N
R
)gradients/DynamicPartition_2_grad/Shape_1ShapeSum_8*
T0*
out_type0
©
+gradients/DynamicPartition_2_grad/Reshape_1Reshape/gradients/DynamicPartition_2_grad/DynamicStitch)gradients/DynamicPartition_2_grad/Shape_1*
T0*
Tshape0
@
gradients/zeros_like_1	ZerosLikeDynamicPartition_1*
T0
O
'gradients/DynamicPartition_1_grad/ShapeShapeCast*
T0*
out_type0
U
'gradients/DynamicPartition_1_grad/ConstConst*
valueB: *
dtype0
¦
&gradients/DynamicPartition_1_grad/ProdProd'gradients/DynamicPartition_1_grad/Shape'gradients/DynamicPartition_1_grad/Const*

Tidx0*
	keep_dims( *
T0
W
-gradients/DynamicPartition_1_grad/range/startConst*
value	B : *
dtype0
W
-gradients/DynamicPartition_1_grad/range/deltaConst*
dtype0*
value	B :
Ā
'gradients/DynamicPartition_1_grad/rangeRange-gradients/DynamicPartition_1_grad/range/start&gradients/DynamicPartition_1_grad/Prod-gradients/DynamicPartition_1_grad/range/delta*

Tidx0

)gradients/DynamicPartition_1_grad/ReshapeReshape'gradients/DynamicPartition_1_grad/range'gradients/DynamicPartition_1_grad/Shape*
T0*
Tshape0

2gradients/DynamicPartition_1_grad/DynamicPartitionDynamicPartition)gradients/DynamicPartition_1_grad/ReshapeCast*
num_partitions*
T0
ó
/gradients/DynamicPartition_1_grad/DynamicStitchDynamicStitch2gradients/DynamicPartition_1_grad/DynamicPartition4gradients/DynamicPartition_1_grad/DynamicPartition:1gradients/zeros_like_1gradients/Mean_3_grad/truediv*
N*
T0
T
)gradients/DynamicPartition_1_grad/Shape_1ShapeMinimum*
T0*
out_type0
©
+gradients/DynamicPartition_1_grad/Reshape_1Reshape/gradients/DynamicPartition_1_grad/DynamicStitch)gradients/DynamicPartition_1_grad/Shape_1*
T0*
Tshape0
l
#gradients/Mean_2/input_grad/unstackUnpackgradients/Mean_2_grad/truediv*
T0*	
num*

axis 
C
gradients/Sum_8_grad/ShapeShapestack*
T0*
out_type0
r
gradients/Sum_8_grad/SizeConst*-
_class#
!loc:@gradients/Sum_8_grad/Shape*
value	B :*
dtype0

gradients/Sum_8_grad/addAddV2Sum_8/reduction_indicesgradients/Sum_8_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_8_grad/Shape

gradients/Sum_8_grad/modFloorModgradients/Sum_8_grad/addgradients/Sum_8_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_8_grad/Shape
t
gradients/Sum_8_grad/Shape_1Const*-
_class#
!loc:@gradients/Sum_8_grad/Shape*
valueB *
dtype0
y
 gradients/Sum_8_grad/range/startConst*-
_class#
!loc:@gradients/Sum_8_grad/Shape*
value	B : *
dtype0
y
 gradients/Sum_8_grad/range/deltaConst*-
_class#
!loc:@gradients/Sum_8_grad/Shape*
value	B :*
dtype0
½
gradients/Sum_8_grad/rangeRange gradients/Sum_8_grad/range/startgradients/Sum_8_grad/Size gradients/Sum_8_grad/range/delta*-
_class#
!loc:@gradients/Sum_8_grad/Shape*

Tidx0
x
gradients/Sum_8_grad/Fill/valueConst*-
_class#
!loc:@gradients/Sum_8_grad/Shape*
value	B :*
dtype0
Ŗ
gradients/Sum_8_grad/FillFillgradients/Sum_8_grad/Shape_1gradients/Sum_8_grad/Fill/value*
T0*-
_class#
!loc:@gradients/Sum_8_grad/Shape*

index_type0
į
"gradients/Sum_8_grad/DynamicStitchDynamicStitchgradients/Sum_8_grad/rangegradients/Sum_8_grad/modgradients/Sum_8_grad/Shapegradients/Sum_8_grad/Fill*
T0*-
_class#
!loc:@gradients/Sum_8_grad/Shape*
N
w
gradients/Sum_8_grad/Maximum/yConst*-
_class#
!loc:@gradients/Sum_8_grad/Shape*
value	B :*
dtype0
£
gradients/Sum_8_grad/MaximumMaximum"gradients/Sum_8_grad/DynamicStitchgradients/Sum_8_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_8_grad/Shape

gradients/Sum_8_grad/floordivFloorDivgradients/Sum_8_grad/Shapegradients/Sum_8_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_8_grad/Shape

gradients/Sum_8_grad/ReshapeReshape+gradients/DynamicPartition_2_grad/Reshape_1"gradients/Sum_8_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_8_grad/TileTilegradients/Sum_8_grad/Reshapegradients/Sum_8_grad/floordiv*

Tmultiples0*
T0
E
gradients/Minimum_grad/ShapeShapemul_8*
T0*
out_type0
G
gradients/Minimum_grad/Shape_1Shapemul_9*
T0*
out_type0
m
gradients/Minimum_grad/Shape_2Shape+gradients/DynamicPartition_1_grad/Reshape_1*
T0*
out_type0
O
"gradients/Minimum_grad/zeros/ConstConst*
dtype0*
valueB
 *    

gradients/Minimum_grad/zerosFillgradients/Minimum_grad/Shape_2"gradients/Minimum_grad/zeros/Const*
T0*

index_type0
D
 gradients/Minimum_grad/LessEqual	LessEqualmul_8mul_9*
T0

,gradients/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Minimum_grad/Shapegradients/Minimum_grad/Shape_1*
T0

gradients/Minimum_grad/SelectSelect gradients/Minimum_grad/LessEqual+gradients/DynamicPartition_1_grad/Reshape_1gradients/Minimum_grad/zeros*
T0

gradients/Minimum_grad/SumSumgradients/Minimum_grad/Select,gradients/Minimum_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
z
gradients/Minimum_grad/ReshapeReshapegradients/Minimum_grad/Sumgradients/Minimum_grad/Shape*
T0*
Tshape0

gradients/Minimum_grad/Select_1Select gradients/Minimum_grad/LessEqualgradients/Minimum_grad/zeros+gradients/DynamicPartition_1_grad/Reshape_1*
T0

gradients/Minimum_grad/Sum_1Sumgradients/Minimum_grad/Select_1.gradients/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

 gradients/Minimum_grad/Reshape_1Reshapegradients/Minimum_grad/Sum_1gradients/Minimum_grad/Shape_1*
T0*
Tshape0
s
'gradients/Minimum_grad/tuple/group_depsNoOp^gradients/Minimum_grad/Reshape!^gradients/Minimum_grad/Reshape_1
Į
/gradients/Minimum_grad/tuple/control_dependencyIdentitygradients/Minimum_grad/Reshape(^gradients/Minimum_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Minimum_grad/Reshape
Ē
1gradients/Minimum_grad/tuple/control_dependency_1Identity gradients/Minimum_grad/Reshape_1(^gradients/Minimum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Minimum_grad/Reshape_1
Q
#gradients/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_1_grad/ReshapeReshape#gradients/Mean_2/input_grad/unstack#gradients/Mean_1_grad/Reshape/shape*
T0*
Tshape0
Q
gradients/Mean_1_grad/ShapeShapeDynamicPartition:1*
T0*
out_type0
y
gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/Shape*
T0*

Tmultiples0
S
gradients/Mean_1_grad/Shape_1ShapeDynamicPartition:1*
T0*
out_type0
F
gradients/Mean_1_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_1_grad/ConstConst*
dtype0*
valueB: 

gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shape_1gradients/Mean_1_grad/Const*

Tidx0*
	keep_dims( *
T0
K
gradients/Mean_1_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const_1*

Tidx0*
	keep_dims( *
T0
I
gradients/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_1_grad/MaximumMaximumgradients/Mean_1_grad/Prod_1gradients/Mean_1_grad/Maximum/y*
T0
n
gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum*
T0
j
gradients/Mean_1_grad/CastCastgradients/Mean_1_grad/floordiv*

SrcT0*
Truncate( *

DstT0
i
gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*
T0
a
gradients/stack_grad/unstackUnpackgradients/Sum_8_grad/Tile*
T0*	
num*

axis
L
%gradients/stack_grad/tuple/group_depsNoOp^gradients/stack_grad/unstack
¹
-gradients/stack_grad/tuple/control_dependencyIdentitygradients/stack_grad/unstack&^gradients/stack_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/stack_grad/unstack
½
/gradients/stack_grad/tuple/control_dependency_1Identitygradients/stack_grad/unstack:1&^gradients/stack_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/stack_grad/unstack
½
/gradients/stack_grad/tuple/control_dependency_2Identitygradients/stack_grad/unstack:2&^gradients/stack_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/stack_grad/unstack
½
/gradients/stack_grad/tuple/control_dependency_3Identitygradients/stack_grad/unstack:3&^gradients/stack_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/stack_grad/unstack
A
gradients/mul_8_grad/ShapeShapeExp*
T0*
out_type0
J
gradients/mul_8_grad/Shape_1Shape
ExpandDims*
T0*
out_type0

*gradients/mul_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_8_grad/Shapegradients/mul_8_grad/Shape_1*
T0
e
gradients/mul_8_grad/MulMul/gradients/Minimum_grad/tuple/control_dependency
ExpandDims*
T0

gradients/mul_8_grad/SumSumgradients/mul_8_grad/Mul*gradients/mul_8_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/mul_8_grad/ReshapeReshapegradients/mul_8_grad/Sumgradients/mul_8_grad/Shape*
T0*
Tshape0
`
gradients/mul_8_grad/Mul_1MulExp/gradients/Minimum_grad/tuple/control_dependency*
T0

gradients/mul_8_grad/Sum_1Sumgradients/mul_8_grad/Mul_1,gradients/mul_8_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/mul_8_grad/Reshape_1Reshapegradients/mul_8_grad/Sum_1gradients/mul_8_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_8_grad/tuple/group_depsNoOp^gradients/mul_8_grad/Reshape^gradients/mul_8_grad/Reshape_1
¹
-gradients/mul_8_grad/tuple/control_dependencyIdentitygradients/mul_8_grad/Reshape&^gradients/mul_8_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_8_grad/Reshape
æ
/gradients/mul_8_grad/tuple/control_dependency_1Identitygradients/mul_8_grad/Reshape_1&^gradients/mul_8_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_8_grad/Reshape_1
M
gradients/mul_9_grad/ShapeShapeclip_by_value_1*
T0*
out_type0
J
gradients/mul_9_grad/Shape_1Shape
ExpandDims*
T0*
out_type0

*gradients/mul_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_9_grad/Shapegradients/mul_9_grad/Shape_1*
T0
g
gradients/mul_9_grad/MulMul1gradients/Minimum_grad/tuple/control_dependency_1
ExpandDims*
T0

gradients/mul_9_grad/SumSumgradients/mul_9_grad/Mul*gradients/mul_9_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/mul_9_grad/ReshapeReshapegradients/mul_9_grad/Sumgradients/mul_9_grad/Shape*
T0*
Tshape0
n
gradients/mul_9_grad/Mul_1Mulclip_by_value_11gradients/Minimum_grad/tuple/control_dependency_1*
T0

gradients/mul_9_grad/Sum_1Sumgradients/mul_9_grad/Mul_1,gradients/mul_9_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/mul_9_grad/Reshape_1Reshapegradients/mul_9_grad/Sum_1gradients/mul_9_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_9_grad/tuple/group_depsNoOp^gradients/mul_9_grad/Reshape^gradients/mul_9_grad/Reshape_1
¹
-gradients/mul_9_grad/tuple/control_dependencyIdentitygradients/mul_9_grad/Reshape&^gradients/mul_9_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_9_grad/Reshape
æ
/gradients/mul_9_grad/tuple/control_dependency_1Identitygradients/mul_9_grad/Reshape_1&^gradients/mul_9_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_9_grad/Reshape_1
>
gradients/zeros_like_2	ZerosLikeDynamicPartition*
T0
M
%gradients/DynamicPartition_grad/ShapeShapeCast*
T0*
out_type0
S
%gradients/DynamicPartition_grad/ConstConst*
valueB: *
dtype0
 
$gradients/DynamicPartition_grad/ProdProd%gradients/DynamicPartition_grad/Shape%gradients/DynamicPartition_grad/Const*

Tidx0*
	keep_dims( *
T0
U
+gradients/DynamicPartition_grad/range/startConst*
dtype0*
value	B : 
U
+gradients/DynamicPartition_grad/range/deltaConst*
value	B :*
dtype0
ŗ
%gradients/DynamicPartition_grad/rangeRange+gradients/DynamicPartition_grad/range/start$gradients/DynamicPartition_grad/Prod+gradients/DynamicPartition_grad/range/delta*

Tidx0

'gradients/DynamicPartition_grad/ReshapeReshape%gradients/DynamicPartition_grad/range%gradients/DynamicPartition_grad/Shape*
T0*
Tshape0

0gradients/DynamicPartition_grad/DynamicPartitionDynamicPartition'gradients/DynamicPartition_grad/ReshapeCast*
num_partitions*
T0
ķ
-gradients/DynamicPartition_grad/DynamicStitchDynamicStitch0gradients/DynamicPartition_grad/DynamicPartition2gradients/DynamicPartition_grad/DynamicPartition:1gradients/zeros_like_2gradients/Mean_1_grad/truediv*
T0*
N
R
'gradients/DynamicPartition_grad/Shape_1ShapeMaximum*
T0*
out_type0
£
)gradients/DynamicPartition_grad/Reshape_1Reshape-gradients/DynamicPartition_grad/DynamicStitch'gradients/DynamicPartition_grad/Shape_1*
T0*
Tshape0

@gradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ShapeShape!softmax_cross_entropy_with_logits*
T0*
out_type0
Õ
Bgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeReshape-gradients/stack_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape*
T0*
Tshape0

Bgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_1*
T0*
out_type0
Ū
Dgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeReshape/gradients/stack_grad/tuple/control_dependency_1Bgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/Shape*
T0*
Tshape0

Bgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_2*
T0*
out_type0
Ū
Dgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ReshapeReshape/gradients/stack_grad/tuple/control_dependency_2Bgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/Shape*
T0*
Tshape0

Bgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_3*
T0*
out_type0
Ū
Dgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeReshape/gradients/stack_grad/tuple/control_dependency_3Bgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/Shape*
T0*
Tshape0
_
$gradients/clip_by_value_1_grad/ShapeShapeclip_by_value_1/Minimum*
T0*
out_type0
O
&gradients/clip_by_value_1_grad/Shape_1Const*
valueB *
dtype0
w
&gradients/clip_by_value_1_grad/Shape_2Shape-gradients/mul_9_grad/tuple/control_dependency*
T0*
out_type0
W
*gradients/clip_by_value_1_grad/zeros/ConstConst*
valueB
 *    *
dtype0

$gradients/clip_by_value_1_grad/zerosFill&gradients/clip_by_value_1_grad/Shape_2*gradients/clip_by_value_1_grad/zeros/Const*
T0*

index_type0
d
+gradients/clip_by_value_1_grad/GreaterEqualGreaterEqualclip_by_value_1/Minimumsub_2*
T0
¤
4gradients/clip_by_value_1_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/clip_by_value_1_grad/Shape&gradients/clip_by_value_1_grad/Shape_1*
T0
ŗ
%gradients/clip_by_value_1_grad/SelectSelect+gradients/clip_by_value_1_grad/GreaterEqual-gradients/mul_9_grad/tuple/control_dependency$gradients/clip_by_value_1_grad/zeros*
T0
¬
"gradients/clip_by_value_1_grad/SumSum%gradients/clip_by_value_1_grad/Select4gradients/clip_by_value_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0

&gradients/clip_by_value_1_grad/ReshapeReshape"gradients/clip_by_value_1_grad/Sum$gradients/clip_by_value_1_grad/Shape*
T0*
Tshape0
¼
'gradients/clip_by_value_1_grad/Select_1Select+gradients/clip_by_value_1_grad/GreaterEqual$gradients/clip_by_value_1_grad/zeros-gradients/mul_9_grad/tuple/control_dependency*
T0
²
$gradients/clip_by_value_1_grad/Sum_1Sum'gradients/clip_by_value_1_grad/Select_16gradients/clip_by_value_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 

(gradients/clip_by_value_1_grad/Reshape_1Reshape$gradients/clip_by_value_1_grad/Sum_1&gradients/clip_by_value_1_grad/Shape_1*
T0*
Tshape0

/gradients/clip_by_value_1_grad/tuple/group_depsNoOp'^gradients/clip_by_value_1_grad/Reshape)^gradients/clip_by_value_1_grad/Reshape_1
į
7gradients/clip_by_value_1_grad/tuple/control_dependencyIdentity&gradients/clip_by_value_1_grad/Reshape0^gradients/clip_by_value_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/clip_by_value_1_grad/Reshape
ē
9gradients/clip_by_value_1_grad/tuple/control_dependency_1Identity(gradients/clip_by_value_1_grad/Reshape_10^gradients/clip_by_value_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/clip_by_value_1_grad/Reshape_1
Q
gradients/Maximum_grad/ShapeShapeSquaredDifference*
T0*
out_type0
U
gradients/Maximum_grad/Shape_1ShapeSquaredDifference_1*
T0*
out_type0
k
gradients/Maximum_grad/Shape_2Shape)gradients/DynamicPartition_grad/Reshape_1*
T0*
out_type0
O
"gradients/Maximum_grad/zeros/ConstConst*
valueB
 *    *
dtype0

gradients/Maximum_grad/zerosFillgradients/Maximum_grad/Shape_2"gradients/Maximum_grad/zeros/Const*
T0*

index_type0
d
#gradients/Maximum_grad/GreaterEqualGreaterEqualSquaredDifferenceSquaredDifference_1*
T0

,gradients/Maximum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Maximum_grad/Shapegradients/Maximum_grad/Shape_1*
T0

gradients/Maximum_grad/SelectSelect#gradients/Maximum_grad/GreaterEqual)gradients/DynamicPartition_grad/Reshape_1gradients/Maximum_grad/zeros*
T0

gradients/Maximum_grad/SumSumgradients/Maximum_grad/Select,gradients/Maximum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients/Maximum_grad/ReshapeReshapegradients/Maximum_grad/Sumgradients/Maximum_grad/Shape*
T0*
Tshape0
 
gradients/Maximum_grad/Select_1Select#gradients/Maximum_grad/GreaterEqualgradients/Maximum_grad/zeros)gradients/DynamicPartition_grad/Reshape_1*
T0

gradients/Maximum_grad/Sum_1Sumgradients/Maximum_grad/Select_1.gradients/Maximum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

 gradients/Maximum_grad/Reshape_1Reshapegradients/Maximum_grad/Sum_1gradients/Maximum_grad/Shape_1*
T0*
Tshape0
s
'gradients/Maximum_grad/tuple/group_depsNoOp^gradients/Maximum_grad/Reshape!^gradients/Maximum_grad/Reshape_1
Į
/gradients/Maximum_grad/tuple/control_dependencyIdentitygradients/Maximum_grad/Reshape(^gradients/Maximum_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Maximum_grad/Reshape
Ē
1gradients/Maximum_grad/tuple/control_dependency_1Identity gradients/Maximum_grad/Reshape_1(^gradients/Maximum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Maximum_grad/Reshape_1
Q
gradients/zeros_like_3	ZerosLike#softmax_cross_entropy_with_logits:1*
T0
r
?gradients/softmax_cross_entropy_with_logits_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
ć
;gradients/softmax_cross_entropy_with_logits_grad/ExpandDims
ExpandDimsBgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/Reshape?gradients/softmax_cross_entropy_with_logits_grad/ExpandDims/dim*

Tdim0*
T0
¦
4gradients/softmax_cross_entropy_with_logits_grad/mulMul;gradients/softmax_cross_entropy_with_logits_grad/ExpandDims#softmax_cross_entropy_with_logits:1*
T0
}
;gradients/softmax_cross_entropy_with_logits_grad/LogSoftmax
LogSoftmax)softmax_cross_entropy_with_logits/Reshape*
T0

4gradients/softmax_cross_entropy_with_logits_grad/NegNeg;gradients/softmax_cross_entropy_with_logits_grad/LogSoftmax*
T0
t
Agradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dimConst*
valueB :
’’’’’’’’’*
dtype0
ē
=gradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1
ExpandDimsBgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim*
T0*

Tdim0
»
6gradients/softmax_cross_entropy_with_logits_grad/mul_1Mul=gradients/softmax_cross_entropy_with_logits_grad/ExpandDims_14gradients/softmax_cross_entropy_with_logits_grad/Neg*
T0
¹
Agradients/softmax_cross_entropy_with_logits_grad/tuple/group_depsNoOp5^gradients/softmax_cross_entropy_with_logits_grad/mul7^gradients/softmax_cross_entropy_with_logits_grad/mul_1
”
Igradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyIdentity4gradients/softmax_cross_entropy_with_logits_grad/mulB^gradients/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/softmax_cross_entropy_with_logits_grad/mul
§
Kgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1Identity6gradients/softmax_cross_entropy_with_logits_grad/mul_1B^gradients/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_grad/mul_1
S
gradients/zeros_like_4	ZerosLike%softmax_cross_entropy_with_logits_1:1*
T0
t
Agradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
é
=gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims/dim*

Tdim0*
T0
¬
6gradients/softmax_cross_entropy_with_logits_1_grad/mulMul=gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims%softmax_cross_entropy_with_logits_1:1*
T0

=gradients/softmax_cross_entropy_with_logits_1_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_1/Reshape*
T0

6gradients/softmax_cross_entropy_with_logits_1_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_1_grad/LogSoftmax*
T0
v
Cgradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1/dimConst*
valueB :
’’’’’’’’’*
dtype0
ķ
?gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1/dim*

Tdim0*
T0
Į
8gradients/softmax_cross_entropy_with_logits_1_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_1_grad/Neg*
T0
æ
Cgradients/softmax_cross_entropy_with_logits_1_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_1_grad/mul9^gradients/softmax_cross_entropy_with_logits_1_grad/mul_1
©
Kgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_1_grad/mulD^gradients/softmax_cross_entropy_with_logits_1_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_1_grad/mul
Æ
Mgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_1_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_1_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/softmax_cross_entropy_with_logits_1_grad/mul_1
S
gradients/zeros_like_5	ZerosLike%softmax_cross_entropy_with_logits_2:1*
T0
t
Agradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
é
=gradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims/dim*
T0*

Tdim0
¬
6gradients/softmax_cross_entropy_with_logits_2_grad/mulMul=gradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims%softmax_cross_entropy_with_logits_2:1*
T0

=gradients/softmax_cross_entropy_with_logits_2_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_2/Reshape*
T0

6gradients/softmax_cross_entropy_with_logits_2_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_2_grad/LogSoftmax*
T0
v
Cgradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims_1/dimConst*
valueB :
’’’’’’’’’*
dtype0
ķ
?gradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims_1/dim*

Tdim0*
T0
Į
8gradients/softmax_cross_entropy_with_logits_2_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_2_grad/Neg*
T0
æ
Cgradients/softmax_cross_entropy_with_logits_2_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_2_grad/mul9^gradients/softmax_cross_entropy_with_logits_2_grad/mul_1
©
Kgradients/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_2_grad/mulD^gradients/softmax_cross_entropy_with_logits_2_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_2_grad/mul
Æ
Mgradients/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_2_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_2_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/softmax_cross_entropy_with_logits_2_grad/mul_1
S
gradients/zeros_like_6	ZerosLike%softmax_cross_entropy_with_logits_3:1*
T0
t
Agradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
é
=gradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims/dim*

Tdim0*
T0
¬
6gradients/softmax_cross_entropy_with_logits_3_grad/mulMul=gradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims%softmax_cross_entropy_with_logits_3:1*
T0

=gradients/softmax_cross_entropy_with_logits_3_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_3/Reshape*
T0

6gradients/softmax_cross_entropy_with_logits_3_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_3_grad/LogSoftmax*
T0
v
Cgradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims_1/dimConst*
dtype0*
valueB :
’’’’’’’’’
ķ
?gradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims_1/dim*

Tdim0*
T0
Į
8gradients/softmax_cross_entropy_with_logits_3_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_3_grad/Neg*
T0
æ
Cgradients/softmax_cross_entropy_with_logits_3_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_3_grad/mul9^gradients/softmax_cross_entropy_with_logits_3_grad/mul_1
©
Kgradients/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_3_grad/mulD^gradients/softmax_cross_entropy_with_logits_3_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_3_grad/mul
Æ
Mgradients/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_3_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_3_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/softmax_cross_entropy_with_logits_3_grad/mul_1
S
,gradients/clip_by_value_1/Minimum_grad/ShapeShapeExp*
T0*
out_type0
W
.gradients/clip_by_value_1/Minimum_grad/Shape_1Const*
dtype0*
valueB 

.gradients/clip_by_value_1/Minimum_grad/Shape_2Shape7gradients/clip_by_value_1_grad/tuple/control_dependency*
T0*
out_type0
_
2gradients/clip_by_value_1/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
³
,gradients/clip_by_value_1/Minimum_grad/zerosFill.gradients/clip_by_value_1/Minimum_grad/Shape_22gradients/clip_by_value_1/Minimum_grad/zeros/Const*
T0*

index_type0
S
0gradients/clip_by_value_1/Minimum_grad/LessEqual	LessEqualExpadd_26*
T0
¼
<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/clip_by_value_1/Minimum_grad/Shape.gradients/clip_by_value_1/Minimum_grad/Shape_1*
T0
Ł
-gradients/clip_by_value_1/Minimum_grad/SelectSelect0gradients/clip_by_value_1/Minimum_grad/LessEqual7gradients/clip_by_value_1_grad/tuple/control_dependency,gradients/clip_by_value_1/Minimum_grad/zeros*
T0
Ä
*gradients/clip_by_value_1/Minimum_grad/SumSum-gradients/clip_by_value_1/Minimum_grad/Select<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
Ŗ
.gradients/clip_by_value_1/Minimum_grad/ReshapeReshape*gradients/clip_by_value_1/Minimum_grad/Sum,gradients/clip_by_value_1/Minimum_grad/Shape*
T0*
Tshape0
Ū
/gradients/clip_by_value_1/Minimum_grad/Select_1Select0gradients/clip_by_value_1/Minimum_grad/LessEqual,gradients/clip_by_value_1/Minimum_grad/zeros7gradients/clip_by_value_1_grad/tuple/control_dependency*
T0
Ź
,gradients/clip_by_value_1/Minimum_grad/Sum_1Sum/gradients/clip_by_value_1/Minimum_grad/Select_1>gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
°
0gradients/clip_by_value_1/Minimum_grad/Reshape_1Reshape,gradients/clip_by_value_1/Minimum_grad/Sum_1.gradients/clip_by_value_1/Minimum_grad/Shape_1*
T0*
Tshape0
£
7gradients/clip_by_value_1/Minimum_grad/tuple/group_depsNoOp/^gradients/clip_by_value_1/Minimum_grad/Reshape1^gradients/clip_by_value_1/Minimum_grad/Reshape_1

?gradients/clip_by_value_1/Minimum_grad/tuple/control_dependencyIdentity.gradients/clip_by_value_1/Minimum_grad/Reshape8^gradients/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/clip_by_value_1/Minimum_grad/Reshape

Agradients/clip_by_value_1/Minimum_grad/tuple/control_dependency_1Identity0gradients/clip_by_value_1/Minimum_grad/Reshape_18^gradients/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/clip_by_value_1/Minimum_grad/Reshape_1

'gradients/SquaredDifference_grad/scalarConst0^gradients/Maximum_grad/tuple/control_dependency*
valueB
 *   @*
dtype0

$gradients/SquaredDifference_grad/MulMul'gradients/SquaredDifference_grad/scalar/gradients/Maximum_grad/tuple/control_dependency*
T0

$gradients/SquaredDifference_grad/subSubextrinsic_returnsSum_120^gradients/Maximum_grad/tuple/control_dependency*
T0

&gradients/SquaredDifference_grad/mul_1Mul$gradients/SquaredDifference_grad/Mul$gradients/SquaredDifference_grad/sub*
T0
[
&gradients/SquaredDifference_grad/ShapeShapeextrinsic_returns*
T0*
out_type0
R
(gradients/SquaredDifference_grad/Shape_1ShapeSum_12*
T0*
out_type0
Ŗ
6gradients/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/SquaredDifference_grad/Shape(gradients/SquaredDifference_grad/Shape_1*
T0
±
$gradients/SquaredDifference_grad/SumSum&gradients/SquaredDifference_grad/mul_16gradients/SquaredDifference_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0

(gradients/SquaredDifference_grad/ReshapeReshape$gradients/SquaredDifference_grad/Sum&gradients/SquaredDifference_grad/Shape*
T0*
Tshape0
µ
&gradients/SquaredDifference_grad/Sum_1Sum&gradients/SquaredDifference_grad/mul_18gradients/SquaredDifference_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

*gradients/SquaredDifference_grad/Reshape_1Reshape&gradients/SquaredDifference_grad/Sum_1(gradients/SquaredDifference_grad/Shape_1*
T0*
Tshape0
`
$gradients/SquaredDifference_grad/NegNeg*gradients/SquaredDifference_grad/Reshape_1*
T0

1gradients/SquaredDifference_grad/tuple/group_depsNoOp%^gradients/SquaredDifference_grad/Neg)^gradients/SquaredDifference_grad/Reshape
é
9gradients/SquaredDifference_grad/tuple/control_dependencyIdentity(gradients/SquaredDifference_grad/Reshape2^gradients/SquaredDifference_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/SquaredDifference_grad/Reshape
ć
;gradients/SquaredDifference_grad/tuple/control_dependency_1Identity$gradients/SquaredDifference_grad/Neg2^gradients/SquaredDifference_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/SquaredDifference_grad/Neg

)gradients/SquaredDifference_1_grad/scalarConst2^gradients/Maximum_grad/tuple/control_dependency_1*
valueB
 *   @*
dtype0

&gradients/SquaredDifference_1_grad/MulMul)gradients/SquaredDifference_1_grad/scalar1gradients/Maximum_grad/tuple/control_dependency_1*
T0

&gradients/SquaredDifference_1_grad/subSubextrinsic_returnsadd_252^gradients/Maximum_grad/tuple/control_dependency_1*
T0

(gradients/SquaredDifference_1_grad/mul_1Mul&gradients/SquaredDifference_1_grad/Mul&gradients/SquaredDifference_1_grad/sub*
T0
]
(gradients/SquaredDifference_1_grad/ShapeShapeextrinsic_returns*
T0*
out_type0
T
*gradients/SquaredDifference_1_grad/Shape_1Shapeadd_25*
T0*
out_type0
°
8gradients/SquaredDifference_1_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/SquaredDifference_1_grad/Shape*gradients/SquaredDifference_1_grad/Shape_1*
T0
·
&gradients/SquaredDifference_1_grad/SumSum(gradients/SquaredDifference_1_grad/mul_18gradients/SquaredDifference_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 

*gradients/SquaredDifference_1_grad/ReshapeReshape&gradients/SquaredDifference_1_grad/Sum(gradients/SquaredDifference_1_grad/Shape*
T0*
Tshape0
»
(gradients/SquaredDifference_1_grad/Sum_1Sum(gradients/SquaredDifference_1_grad/mul_1:gradients/SquaredDifference_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
¤
,gradients/SquaredDifference_1_grad/Reshape_1Reshape(gradients/SquaredDifference_1_grad/Sum_1*gradients/SquaredDifference_1_grad/Shape_1*
T0*
Tshape0
d
&gradients/SquaredDifference_1_grad/NegNeg,gradients/SquaredDifference_1_grad/Reshape_1*
T0

3gradients/SquaredDifference_1_grad/tuple/group_depsNoOp'^gradients/SquaredDifference_1_grad/Neg+^gradients/SquaredDifference_1_grad/Reshape
ń
;gradients/SquaredDifference_1_grad/tuple/control_dependencyIdentity*gradients/SquaredDifference_1_grad/Reshape4^gradients/SquaredDifference_1_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/SquaredDifference_1_grad/Reshape
ė
=gradients/SquaredDifference_1_grad/tuple/control_dependency_1Identity&gradients/SquaredDifference_1_grad/Neg4^gradients/SquaredDifference_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/SquaredDifference_1_grad/Neg
r
>gradients/softmax_cross_entropy_with_logits/Reshape_grad/ShapeShapestrided_slice_21*
T0*
out_type0
ķ
@gradients/softmax_cross_entropy_with_logits/Reshape_grad/ReshapeReshapeIgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency>gradients/softmax_cross_entropy_with_logits/Reshape_grad/Shape*
T0*
Tshape0
m
@gradients/softmax_cross_entropy_with_logits/Reshape_1_grad/ShapeShape	Softmax_8*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits/Reshape_1_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1@gradients/softmax_cross_entropy_with_logits/Reshape_1_grad/Shape*
T0*
Tshape0
t
@gradients/softmax_cross_entropy_with_logits_1/Reshape_grad/ShapeShapestrided_slice_23*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits_1/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_1/Reshape_grad/Shape*
T0*
Tshape0
o
Bgradients/softmax_cross_entropy_with_logits_1/Reshape_1_grad/ShapeShape	Softmax_9*
T0*
out_type0
ł
Dgradients/softmax_cross_entropy_with_logits_1/Reshape_1_grad/ReshapeReshapeMgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependency_1Bgradients/softmax_cross_entropy_with_logits_1/Reshape_1_grad/Shape*
T0*
Tshape0
t
@gradients/softmax_cross_entropy_with_logits_2/Reshape_grad/ShapeShapestrided_slice_25*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits_2/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_2/Reshape_grad/Shape*
T0*
Tshape0
p
Bgradients/softmax_cross_entropy_with_logits_2/Reshape_1_grad/ShapeShape
Softmax_10*
T0*
out_type0
ł
Dgradients/softmax_cross_entropy_with_logits_2/Reshape_1_grad/ReshapeReshapeMgradients/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependency_1Bgradients/softmax_cross_entropy_with_logits_2/Reshape_1_grad/Shape*
T0*
Tshape0
t
@gradients/softmax_cross_entropy_with_logits_3/Reshape_grad/ShapeShapestrided_slice_27*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits_3/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_3/Reshape_grad/Shape*
T0*
Tshape0
p
Bgradients/softmax_cross_entropy_with_logits_3/Reshape_1_grad/ShapeShape
Softmax_11*
T0*
out_type0
ł
Dgradients/softmax_cross_entropy_with_logits_3/Reshape_1_grad/ReshapeReshapeMgradients/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependency_1Bgradients/softmax_cross_entropy_with_logits_3/Reshape_1_grad/Shape*
T0*
Tshape0
É
gradients/AddNAddN-gradients/mul_8_grad/tuple/control_dependency?gradients/clip_by_value_1/Minimum_grad/tuple/control_dependency*
T0*/
_class%
#!loc:@gradients/mul_8_grad/Reshape*
N
;
gradients/Exp_grad/mulMulgradients/AddNExp*
T0
V
gradients/Sum_12_grad/ShapeShapeextrinsic_value/BiasAdd*
T0*
out_type0
t
gradients/Sum_12_grad/SizeConst*.
_class$
" loc:@gradients/Sum_12_grad/Shape*
value	B :*
dtype0

gradients/Sum_12_grad/addAddV2Sum_12/reduction_indicesgradients/Sum_12_grad/Size*
T0*.
_class$
" loc:@gradients/Sum_12_grad/Shape

gradients/Sum_12_grad/modFloorModgradients/Sum_12_grad/addgradients/Sum_12_grad/Size*
T0*.
_class$
" loc:@gradients/Sum_12_grad/Shape
v
gradients/Sum_12_grad/Shape_1Const*.
_class$
" loc:@gradients/Sum_12_grad/Shape*
valueB *
dtype0
{
!gradients/Sum_12_grad/range/startConst*.
_class$
" loc:@gradients/Sum_12_grad/Shape*
value	B : *
dtype0
{
!gradients/Sum_12_grad/range/deltaConst*.
_class$
" loc:@gradients/Sum_12_grad/Shape*
value	B :*
dtype0
Ā
gradients/Sum_12_grad/rangeRange!gradients/Sum_12_grad/range/startgradients/Sum_12_grad/Size!gradients/Sum_12_grad/range/delta*.
_class$
" loc:@gradients/Sum_12_grad/Shape*

Tidx0
z
 gradients/Sum_12_grad/Fill/valueConst*.
_class$
" loc:@gradients/Sum_12_grad/Shape*
value	B :*
dtype0
®
gradients/Sum_12_grad/FillFillgradients/Sum_12_grad/Shape_1 gradients/Sum_12_grad/Fill/value*
T0*.
_class$
" loc:@gradients/Sum_12_grad/Shape*

index_type0
ē
#gradients/Sum_12_grad/DynamicStitchDynamicStitchgradients/Sum_12_grad/rangegradients/Sum_12_grad/modgradients/Sum_12_grad/Shapegradients/Sum_12_grad/Fill*
T0*.
_class$
" loc:@gradients/Sum_12_grad/Shape*
N
y
gradients/Sum_12_grad/Maximum/yConst*.
_class$
" loc:@gradients/Sum_12_grad/Shape*
value	B :*
dtype0
§
gradients/Sum_12_grad/MaximumMaximum#gradients/Sum_12_grad/DynamicStitchgradients/Sum_12_grad/Maximum/y*
T0*.
_class$
" loc:@gradients/Sum_12_grad/Shape

gradients/Sum_12_grad/floordivFloorDivgradients/Sum_12_grad/Shapegradients/Sum_12_grad/Maximum*
T0*.
_class$
" loc:@gradients/Sum_12_grad/Shape
”
gradients/Sum_12_grad/ReshapeReshape;gradients/SquaredDifference_grad/tuple/control_dependency_1#gradients/Sum_12_grad/DynamicStitch*
T0*
Tshape0
|
gradients/Sum_12_grad/TileTilegradients/Sum_12_grad/Reshapegradients/Sum_12_grad/floordiv*
T0*

Tmultiples0
W
gradients/add_25_grad/ShapeShapeextrinsic_value_estimate*
T0*
out_type0
N
gradients/add_25_grad/Shape_1Shapeclip_by_value*
T0*
out_type0

+gradients/add_25_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_25_grad/Shapegradients/add_25_grad/Shape_1*
T0
²
gradients/add_25_grad/SumSum=gradients/SquaredDifference_1_grad/tuple/control_dependency_1+gradients/add_25_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/add_25_grad/ReshapeReshapegradients/add_25_grad/Sumgradients/add_25_grad/Shape*
T0*
Tshape0
¶
gradients/add_25_grad/Sum_1Sum=gradients/SquaredDifference_1_grad/tuple/control_dependency_1-gradients/add_25_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
}
gradients/add_25_grad/Reshape_1Reshapegradients/add_25_grad/Sum_1gradients/add_25_grad/Shape_1*
T0*
Tshape0
p
&gradients/add_25_grad/tuple/group_depsNoOp^gradients/add_25_grad/Reshape ^gradients/add_25_grad/Reshape_1
½
.gradients/add_25_grad/tuple/control_dependencyIdentitygradients/add_25_grad/Reshape'^gradients/add_25_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/add_25_grad/Reshape
Ć
0gradients/add_25_grad/tuple/control_dependency_1Identitygradients/add_25_grad/Reshape_1'^gradients/add_25_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/add_25_grad/Reshape_1
U
%gradients/strided_slice_21_grad/ShapeShapeaction_probs*
T0*
out_type0
ó
0gradients/strided_slice_21_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_21_grad/Shapestrided_slice_21/stackstrided_slice_21/stack_1strided_slice_21/stack_2@gradients/softmax_cross_entropy_with_logits/Reshape_grad/Reshape*
end_mask*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask 
{
gradients/Softmax_8_grad/mulMulBgradients/softmax_cross_entropy_with_logits/Reshape_1_grad/Reshape	Softmax_8*
T0
a
.gradients/Softmax_8_grad/Sum/reduction_indicesConst*
dtype0*
valueB :
’’’’’’’’’

gradients/Softmax_8_grad/SumSumgradients/Softmax_8_grad/mul.gradients/Softmax_8_grad/Sum/reduction_indices*
T0*

Tidx0*
	keep_dims(

gradients/Softmax_8_grad/subSubBgradients/softmax_cross_entropy_with_logits/Reshape_1_grad/Reshapegradients/Softmax_8_grad/Sum*
T0
W
gradients/Softmax_8_grad/mul_1Mulgradients/Softmax_8_grad/sub	Softmax_8*
T0
U
%gradients/strided_slice_23_grad/ShapeShapeaction_probs*
T0*
out_type0
õ
0gradients/strided_slice_23_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_23_grad/Shapestrided_slice_23/stackstrided_slice_23/stack_1strided_slice_23/stack_2Bgradients/softmax_cross_entropy_with_logits_1/Reshape_grad/Reshape*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0
}
gradients/Softmax_9_grad/mulMulDgradients/softmax_cross_entropy_with_logits_1/Reshape_1_grad/Reshape	Softmax_9*
T0
a
.gradients/Softmax_9_grad/Sum/reduction_indicesConst*
valueB :
’’’’’’’’’*
dtype0

gradients/Softmax_9_grad/SumSumgradients/Softmax_9_grad/mul.gradients/Softmax_9_grad/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0

gradients/Softmax_9_grad/subSubDgradients/softmax_cross_entropy_with_logits_1/Reshape_1_grad/Reshapegradients/Softmax_9_grad/Sum*
T0
W
gradients/Softmax_9_grad/mul_1Mulgradients/Softmax_9_grad/sub	Softmax_9*
T0
U
%gradients/strided_slice_25_grad/ShapeShapeaction_probs*
T0*
out_type0
õ
0gradients/strided_slice_25_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_25_grad/Shapestrided_slice_25/stackstrided_slice_25/stack_1strided_slice_25/stack_2Bgradients/softmax_cross_entropy_with_logits_2/Reshape_grad/Reshape*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
T0*
Index0

gradients/Softmax_10_grad/mulMulDgradients/softmax_cross_entropy_with_logits_2/Reshape_1_grad/Reshape
Softmax_10*
T0
b
/gradients/Softmax_10_grad/Sum/reduction_indicesConst*
valueB :
’’’’’’’’’*
dtype0

gradients/Softmax_10_grad/SumSumgradients/Softmax_10_grad/mul/gradients/Softmax_10_grad/Sum/reduction_indices*
T0*

Tidx0*
	keep_dims(

gradients/Softmax_10_grad/subSubDgradients/softmax_cross_entropy_with_logits_2/Reshape_1_grad/Reshapegradients/Softmax_10_grad/Sum*
T0
Z
gradients/Softmax_10_grad/mul_1Mulgradients/Softmax_10_grad/sub
Softmax_10*
T0
U
%gradients/strided_slice_27_grad/ShapeShapeaction_probs*
T0*
out_type0
õ
0gradients/strided_slice_27_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_27_grad/Shapestrided_slice_27/stackstrided_slice_27/stack_1strided_slice_27/stack_2Bgradients/softmax_cross_entropy_with_logits_3/Reshape_grad/Reshape*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask

gradients/Softmax_11_grad/mulMulDgradients/softmax_cross_entropy_with_logits_3/Reshape_1_grad/Reshape
Softmax_11*
T0
b
/gradients/Softmax_11_grad/Sum/reduction_indicesConst*
valueB :
’’’’’’’’’*
dtype0

gradients/Softmax_11_grad/SumSumgradients/Softmax_11_grad/mul/gradients/Softmax_11_grad/Sum/reduction_indices*
T0*

Tidx0*
	keep_dims(

gradients/Softmax_11_grad/subSubDgradients/softmax_cross_entropy_with_logits_3/Reshape_1_grad/Reshapegradients/Softmax_11_grad/Sum*
T0
Z
gradients/Softmax_11_grad/mul_1Mulgradients/Softmax_11_grad/sub
Softmax_11*
T0
C
gradients/sub_1_grad/ShapeShapeSum_9*
T0*
out_type0
F
gradients/sub_1_grad/Shape_1ShapeSum_10*
T0*
out_type0

*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1*
T0

gradients/sub_1_grad/SumSumgradients/Exp_grad/mul*gradients/sub_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*
T0*
Tshape0
@
gradients/sub_1_grad/NegNeggradients/Exp_grad/mul*
T0

gradients/sub_1_grad/Sum_1Sumgradients/sub_1_grad/Neg,gradients/sub_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Sum_1gradients/sub_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
¹
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_1_grad/Reshape
æ
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1
[
"gradients/clip_by_value_grad/ShapeShapeclip_by_value/Minimum*
T0*
out_type0
M
$gradients/clip_by_value_grad/Shape_1Const*
valueB *
dtype0
x
$gradients/clip_by_value_grad/Shape_2Shape0gradients/add_25_grad/tuple/control_dependency_1*
T0*
out_type0
U
(gradients/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0

"gradients/clip_by_value_grad/zerosFill$gradients/clip_by_value_grad/Shape_2(gradients/clip_by_value_grad/zeros/Const*
T0*

index_type0
`
)gradients/clip_by_value_grad/GreaterEqualGreaterEqualclip_by_value/MinimumNeg_8*
T0

2gradients/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/clip_by_value_grad/Shape$gradients/clip_by_value_grad/Shape_1*
T0
·
#gradients/clip_by_value_grad/SelectSelect)gradients/clip_by_value_grad/GreaterEqual0gradients/add_25_grad/tuple/control_dependency_1"gradients/clip_by_value_grad/zeros*
T0
¦
 gradients/clip_by_value_grad/SumSum#gradients/clip_by_value_grad/Select2gradients/clip_by_value_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0

$gradients/clip_by_value_grad/ReshapeReshape gradients/clip_by_value_grad/Sum"gradients/clip_by_value_grad/Shape*
T0*
Tshape0
¹
%gradients/clip_by_value_grad/Select_1Select)gradients/clip_by_value_grad/GreaterEqual"gradients/clip_by_value_grad/zeros0gradients/add_25_grad/tuple/control_dependency_1*
T0
¬
"gradients/clip_by_value_grad/Sum_1Sum%gradients/clip_by_value_grad/Select_14gradients/clip_by_value_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

&gradients/clip_by_value_grad/Reshape_1Reshape"gradients/clip_by_value_grad/Sum_1$gradients/clip_by_value_grad/Shape_1*
T0*
Tshape0

-gradients/clip_by_value_grad/tuple/group_depsNoOp%^gradients/clip_by_value_grad/Reshape'^gradients/clip_by_value_grad/Reshape_1
Ł
5gradients/clip_by_value_grad/tuple/control_dependencyIdentity$gradients/clip_by_value_grad/Reshape.^gradients/clip_by_value_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/clip_by_value_grad/Reshape
ß
7gradients/clip_by_value_grad/tuple/control_dependency_1Identity&gradients/clip_by_value_grad/Reshape_1.^gradients/clip_by_value_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/clip_by_value_grad/Reshape_1
U
%gradients/strided_slice_20_grad/ShapeShapeaction_probs*
T0*
out_type0
Ń
0gradients/strided_slice_20_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_20_grad/Shapestrided_slice_20/stackstrided_slice_20/stack_1strided_slice_20/stack_2gradients/Softmax_8_grad/mul_1*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
U
%gradients/strided_slice_22_grad/ShapeShapeaction_probs*
T0*
out_type0
Ń
0gradients/strided_slice_22_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_22_grad/Shapestrided_slice_22/stackstrided_slice_22/stack_1strided_slice_22/stack_2gradients/Softmax_9_grad/mul_1*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask
U
%gradients/strided_slice_24_grad/ShapeShapeaction_probs*
T0*
out_type0
Ņ
0gradients/strided_slice_24_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_24_grad/Shapestrided_slice_24/stackstrided_slice_24/stack_1strided_slice_24/stack_2gradients/Softmax_10_grad/mul_1*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
T0*
Index0
U
%gradients/strided_slice_26_grad/ShapeShapeaction_probs*
T0*
out_type0
Ņ
0gradients/strided_slice_26_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_26_grad/Shapestrided_slice_26/stackstrided_slice_26/stack_1strided_slice_26/stack_2gradients/Softmax_11_grad/mul_1*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0
E
gradients/Sum_9_grad/ShapeShapestack_1*
T0*
out_type0
r
gradients/Sum_9_grad/SizeConst*-
_class#
!loc:@gradients/Sum_9_grad/Shape*
value	B :*
dtype0

gradients/Sum_9_grad/addAddV2Sum_9/reduction_indicesgradients/Sum_9_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_9_grad/Shape

gradients/Sum_9_grad/modFloorModgradients/Sum_9_grad/addgradients/Sum_9_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_9_grad/Shape
t
gradients/Sum_9_grad/Shape_1Const*-
_class#
!loc:@gradients/Sum_9_grad/Shape*
valueB *
dtype0
y
 gradients/Sum_9_grad/range/startConst*-
_class#
!loc:@gradients/Sum_9_grad/Shape*
value	B : *
dtype0
y
 gradients/Sum_9_grad/range/deltaConst*
dtype0*-
_class#
!loc:@gradients/Sum_9_grad/Shape*
value	B :
½
gradients/Sum_9_grad/rangeRange gradients/Sum_9_grad/range/startgradients/Sum_9_grad/Size gradients/Sum_9_grad/range/delta*-
_class#
!loc:@gradients/Sum_9_grad/Shape*

Tidx0
x
gradients/Sum_9_grad/Fill/valueConst*
dtype0*-
_class#
!loc:@gradients/Sum_9_grad/Shape*
value	B :
Ŗ
gradients/Sum_9_grad/FillFillgradients/Sum_9_grad/Shape_1gradients/Sum_9_grad/Fill/value*
T0*-
_class#
!loc:@gradients/Sum_9_grad/Shape*

index_type0
į
"gradients/Sum_9_grad/DynamicStitchDynamicStitchgradients/Sum_9_grad/rangegradients/Sum_9_grad/modgradients/Sum_9_grad/Shapegradients/Sum_9_grad/Fill*
T0*-
_class#
!loc:@gradients/Sum_9_grad/Shape*
N
w
gradients/Sum_9_grad/Maximum/yConst*
dtype0*-
_class#
!loc:@gradients/Sum_9_grad/Shape*
value	B :
£
gradients/Sum_9_grad/MaximumMaximum"gradients/Sum_9_grad/DynamicStitchgradients/Sum_9_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_9_grad/Shape

gradients/Sum_9_grad/floordivFloorDivgradients/Sum_9_grad/Shapegradients/Sum_9_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_9_grad/Shape

gradients/Sum_9_grad/ReshapeReshape-gradients/sub_1_grad/tuple/control_dependency"gradients/Sum_9_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_9_grad/TileTilegradients/Sum_9_grad/Reshapegradients/Sum_9_grad/floordiv*

Tmultiples0*
T0
Q
*gradients/clip_by_value/Minimum_grad/ShapeShapesub*
T0*
out_type0
U
,gradients/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*
valueB 

,gradients/clip_by_value/Minimum_grad/Shape_2Shape5gradients/clip_by_value_grad/tuple/control_dependency*
T0*
out_type0
]
0gradients/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
­
*gradients/clip_by_value/Minimum_grad/zerosFill,gradients/clip_by_value/Minimum_grad/Shape_20gradients/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0
\
.gradients/clip_by_value/Minimum_grad/LessEqual	LessEqualsubPolynomialDecay_1*
T0
¶
:gradients/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/clip_by_value/Minimum_grad/Shape,gradients/clip_by_value/Minimum_grad/Shape_1*
T0
Ń
+gradients/clip_by_value/Minimum_grad/SelectSelect.gradients/clip_by_value/Minimum_grad/LessEqual5gradients/clip_by_value_grad/tuple/control_dependency*gradients/clip_by_value/Minimum_grad/zeros*
T0
¾
(gradients/clip_by_value/Minimum_grad/SumSum+gradients/clip_by_value/Minimum_grad/Select:gradients/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
¤
,gradients/clip_by_value/Minimum_grad/ReshapeReshape(gradients/clip_by_value/Minimum_grad/Sum*gradients/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0
Ó
-gradients/clip_by_value/Minimum_grad/Select_1Select.gradients/clip_by_value/Minimum_grad/LessEqual*gradients/clip_by_value/Minimum_grad/zeros5gradients/clip_by_value_grad/tuple/control_dependency*
T0
Ä
*gradients/clip_by_value/Minimum_grad/Sum_1Sum-gradients/clip_by_value/Minimum_grad/Select_1<gradients/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
Ŗ
.gradients/clip_by_value/Minimum_grad/Reshape_1Reshape*gradients/clip_by_value/Minimum_grad/Sum_1,gradients/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0

5gradients/clip_by_value/Minimum_grad/tuple/group_depsNoOp-^gradients/clip_by_value/Minimum_grad/Reshape/^gradients/clip_by_value/Minimum_grad/Reshape_1
ł
=gradients/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity,gradients/clip_by_value/Minimum_grad/Reshape6^gradients/clip_by_value/Minimum_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/clip_by_value/Minimum_grad/Reshape
’
?gradients/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity.gradients/clip_by_value/Minimum_grad/Reshape_16^gradients/clip_by_value/Minimum_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/clip_by_value/Minimum_grad/Reshape_1
c
gradients/stack_1_grad/unstackUnpackgradients/Sum_9_grad/Tile*
T0*	
num*

axis
P
'gradients/stack_1_grad/tuple/group_depsNoOp^gradients/stack_1_grad/unstack
Į
/gradients/stack_1_grad/tuple/control_dependencyIdentitygradients/stack_1_grad/unstack(^gradients/stack_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/stack_1_grad/unstack
Å
1gradients/stack_1_grad/tuple/control_dependency_1Identity gradients/stack_1_grad/unstack:1(^gradients/stack_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/stack_1_grad/unstack
Å
1gradients/stack_1_grad/tuple/control_dependency_2Identity gradients/stack_1_grad/unstack:2(^gradients/stack_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/stack_1_grad/unstack
Å
1gradients/stack_1_grad/tuple/control_dependency_3Identity gradients/stack_1_grad/unstack:3(^gradients/stack_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/stack_1_grad/unstack
B
gradients/sub_grad/ShapeShapeSum_11*
T0*
out_type0
V
gradients/sub_grad/Shape_1Shapeextrinsic_value_estimate*
T0*
out_type0

(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0
¬
gradients/sub_grad/SumSum=gradients/clip_by_value/Minimum_grad/tuple/control_dependency(gradients/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
n
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0
e
gradients/sub_grad/NegNeg=gradients/clip_by_value/Minimum_grad/tuple/control_dependency*
T0

gradients/sub_grad/Sum_1Sumgradients/sub_grad/Neg*gradients/sub_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
t
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Sum_1gradients/sub_grad/Shape_1*
T0*
Tshape0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
±
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape
·
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1
W
gradients/Neg_grad/NegNeg/gradients/stack_1_grad/tuple/control_dependency*
T0
[
gradients/Neg_1_grad/NegNeg1gradients/stack_1_grad/tuple/control_dependency_1*
T0
[
gradients/Neg_2_grad/NegNeg1gradients/stack_1_grad/tuple/control_dependency_2*
T0
[
gradients/Neg_3_grad/NegNeg1gradients/stack_1_grad/tuple/control_dependency_3*
T0
V
gradients/Sum_11_grad/ShapeShapeextrinsic_value/BiasAdd*
T0*
out_type0
t
gradients/Sum_11_grad/SizeConst*.
_class$
" loc:@gradients/Sum_11_grad/Shape*
value	B :*
dtype0

gradients/Sum_11_grad/addAddV2Sum_11/reduction_indicesgradients/Sum_11_grad/Size*
T0*.
_class$
" loc:@gradients/Sum_11_grad/Shape

gradients/Sum_11_grad/modFloorModgradients/Sum_11_grad/addgradients/Sum_11_grad/Size*
T0*.
_class$
" loc:@gradients/Sum_11_grad/Shape
v
gradients/Sum_11_grad/Shape_1Const*.
_class$
" loc:@gradients/Sum_11_grad/Shape*
valueB *
dtype0
{
!gradients/Sum_11_grad/range/startConst*.
_class$
" loc:@gradients/Sum_11_grad/Shape*
value	B : *
dtype0
{
!gradients/Sum_11_grad/range/deltaConst*
dtype0*.
_class$
" loc:@gradients/Sum_11_grad/Shape*
value	B :
Ā
gradients/Sum_11_grad/rangeRange!gradients/Sum_11_grad/range/startgradients/Sum_11_grad/Size!gradients/Sum_11_grad/range/delta*.
_class$
" loc:@gradients/Sum_11_grad/Shape*

Tidx0
z
 gradients/Sum_11_grad/Fill/valueConst*
dtype0*.
_class$
" loc:@gradients/Sum_11_grad/Shape*
value	B :
®
gradients/Sum_11_grad/FillFillgradients/Sum_11_grad/Shape_1 gradients/Sum_11_grad/Fill/value*
T0*.
_class$
" loc:@gradients/Sum_11_grad/Shape*

index_type0
ē
#gradients/Sum_11_grad/DynamicStitchDynamicStitchgradients/Sum_11_grad/rangegradients/Sum_11_grad/modgradients/Sum_11_grad/Shapegradients/Sum_11_grad/Fill*
N*
T0*.
_class$
" loc:@gradients/Sum_11_grad/Shape
y
gradients/Sum_11_grad/Maximum/yConst*
dtype0*.
_class$
" loc:@gradients/Sum_11_grad/Shape*
value	B :
§
gradients/Sum_11_grad/MaximumMaximum#gradients/Sum_11_grad/DynamicStitchgradients/Sum_11_grad/Maximum/y*
T0*.
_class$
" loc:@gradients/Sum_11_grad/Shape

gradients/Sum_11_grad/floordivFloorDivgradients/Sum_11_grad/Shapegradients/Sum_11_grad/Maximum*
T0*.
_class$
" loc:@gradients/Sum_11_grad/Shape

gradients/Sum_11_grad/ReshapeReshape+gradients/sub_grad/tuple/control_dependency#gradients/Sum_11_grad/DynamicStitch*
T0*
Tshape0
|
gradients/Sum_11_grad/TileTilegradients/Sum_11_grad/Reshapegradients/Sum_11_grad/floordiv*
T0*

Tmultiples0

Bgradients/softmax_cross_entropy_with_logits_4/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_4*
T0*
out_type0
Ā
Dgradients/softmax_cross_entropy_with_logits_4/Reshape_2_grad/ReshapeReshapegradients/Neg_grad/NegBgradients/softmax_cross_entropy_with_logits_4/Reshape_2_grad/Shape*
T0*
Tshape0

Bgradients/softmax_cross_entropy_with_logits_5/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_5*
T0*
out_type0
Ä
Dgradients/softmax_cross_entropy_with_logits_5/Reshape_2_grad/ReshapeReshapegradients/Neg_1_grad/NegBgradients/softmax_cross_entropy_with_logits_5/Reshape_2_grad/Shape*
T0*
Tshape0

Bgradients/softmax_cross_entropy_with_logits_6/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_6*
T0*
out_type0
Ä
Dgradients/softmax_cross_entropy_with_logits_6/Reshape_2_grad/ReshapeReshapegradients/Neg_2_grad/NegBgradients/softmax_cross_entropy_with_logits_6/Reshape_2_grad/Shape*
T0*
Tshape0

Bgradients/softmax_cross_entropy_with_logits_7/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_7*
T0*
out_type0
Ä
Dgradients/softmax_cross_entropy_with_logits_7/Reshape_2_grad/ReshapeReshapegradients/Neg_3_grad/NegBgradients/softmax_cross_entropy_with_logits_7/Reshape_2_grad/Shape*
T0*
Tshape0

gradients/AddN_1AddNgradients/Sum_12_grad/Tilegradients/Sum_11_grad/Tile*
N*
T0*-
_class#
!loc:@gradients/Sum_12_grad/Tile
s
2gradients/extrinsic_value/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_1*
T0*
data_formatNHWC

7gradients/extrinsic_value/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_13^gradients/extrinsic_value/BiasAdd_grad/BiasAddGrad
Ļ
?gradients/extrinsic_value/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_18^gradients/extrinsic_value/BiasAdd_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Sum_12_grad/Tile

Agradients/extrinsic_value/BiasAdd_grad/tuple/control_dependency_1Identity2gradients/extrinsic_value/BiasAdd_grad/BiasAddGrad8^gradients/extrinsic_value/BiasAdd_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/extrinsic_value/BiasAdd_grad/BiasAddGrad
S
gradients/zeros_like_7	ZerosLike%softmax_cross_entropy_with_logits_4:1*
T0
t
Agradients/softmax_cross_entropy_with_logits_4_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
é
=gradients/softmax_cross_entropy_with_logits_4_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_4/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_4_grad/ExpandDims/dim*

Tdim0*
T0
¬
6gradients/softmax_cross_entropy_with_logits_4_grad/mulMul=gradients/softmax_cross_entropy_with_logits_4_grad/ExpandDims%softmax_cross_entropy_with_logits_4:1*
T0

=gradients/softmax_cross_entropy_with_logits_4_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_4/Reshape*
T0

6gradients/softmax_cross_entropy_with_logits_4_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_4_grad/LogSoftmax*
T0
v
Cgradients/softmax_cross_entropy_with_logits_4_grad/ExpandDims_1/dimConst*
valueB :
’’’’’’’’’*
dtype0
ķ
?gradients/softmax_cross_entropy_with_logits_4_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_4/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_4_grad/ExpandDims_1/dim*
T0*

Tdim0
Į
8gradients/softmax_cross_entropy_with_logits_4_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_4_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_4_grad/Neg*
T0
æ
Cgradients/softmax_cross_entropy_with_logits_4_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_4_grad/mul9^gradients/softmax_cross_entropy_with_logits_4_grad/mul_1
©
Kgradients/softmax_cross_entropy_with_logits_4_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_4_grad/mulD^gradients/softmax_cross_entropy_with_logits_4_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_4_grad/mul
Æ
Mgradients/softmax_cross_entropy_with_logits_4_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_4_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_4_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/softmax_cross_entropy_with_logits_4_grad/mul_1
S
gradients/zeros_like_8	ZerosLike%softmax_cross_entropy_with_logits_5:1*
T0
t
Agradients/softmax_cross_entropy_with_logits_5_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
é
=gradients/softmax_cross_entropy_with_logits_5_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_5/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_5_grad/ExpandDims/dim*

Tdim0*
T0
¬
6gradients/softmax_cross_entropy_with_logits_5_grad/mulMul=gradients/softmax_cross_entropy_with_logits_5_grad/ExpandDims%softmax_cross_entropy_with_logits_5:1*
T0

=gradients/softmax_cross_entropy_with_logits_5_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_5/Reshape*
T0

6gradients/softmax_cross_entropy_with_logits_5_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_5_grad/LogSoftmax*
T0
v
Cgradients/softmax_cross_entropy_with_logits_5_grad/ExpandDims_1/dimConst*
valueB :
’’’’’’’’’*
dtype0
ķ
?gradients/softmax_cross_entropy_with_logits_5_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_5/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_5_grad/ExpandDims_1/dim*
T0*

Tdim0
Į
8gradients/softmax_cross_entropy_with_logits_5_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_5_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_5_grad/Neg*
T0
æ
Cgradients/softmax_cross_entropy_with_logits_5_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_5_grad/mul9^gradients/softmax_cross_entropy_with_logits_5_grad/mul_1
©
Kgradients/softmax_cross_entropy_with_logits_5_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_5_grad/mulD^gradients/softmax_cross_entropy_with_logits_5_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_5_grad/mul
Æ
Mgradients/softmax_cross_entropy_with_logits_5_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_5_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_5_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/softmax_cross_entropy_with_logits_5_grad/mul_1
S
gradients/zeros_like_9	ZerosLike%softmax_cross_entropy_with_logits_6:1*
T0
t
Agradients/softmax_cross_entropy_with_logits_6_grad/ExpandDims/dimConst*
dtype0*
valueB :
’’’’’’’’’
é
=gradients/softmax_cross_entropy_with_logits_6_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_6/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_6_grad/ExpandDims/dim*

Tdim0*
T0
¬
6gradients/softmax_cross_entropy_with_logits_6_grad/mulMul=gradients/softmax_cross_entropy_with_logits_6_grad/ExpandDims%softmax_cross_entropy_with_logits_6:1*
T0

=gradients/softmax_cross_entropy_with_logits_6_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_6/Reshape*
T0

6gradients/softmax_cross_entropy_with_logits_6_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_6_grad/LogSoftmax*
T0
v
Cgradients/softmax_cross_entropy_with_logits_6_grad/ExpandDims_1/dimConst*
dtype0*
valueB :
’’’’’’’’’
ķ
?gradients/softmax_cross_entropy_with_logits_6_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_6/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_6_grad/ExpandDims_1/dim*

Tdim0*
T0
Į
8gradients/softmax_cross_entropy_with_logits_6_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_6_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_6_grad/Neg*
T0
æ
Cgradients/softmax_cross_entropy_with_logits_6_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_6_grad/mul9^gradients/softmax_cross_entropy_with_logits_6_grad/mul_1
©
Kgradients/softmax_cross_entropy_with_logits_6_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_6_grad/mulD^gradients/softmax_cross_entropy_with_logits_6_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_6_grad/mul
Æ
Mgradients/softmax_cross_entropy_with_logits_6_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_6_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_6_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/softmax_cross_entropy_with_logits_6_grad/mul_1
T
gradients/zeros_like_10	ZerosLike%softmax_cross_entropy_with_logits_7:1*
T0
t
Agradients/softmax_cross_entropy_with_logits_7_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
é
=gradients/softmax_cross_entropy_with_logits_7_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_7/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_7_grad/ExpandDims/dim*

Tdim0*
T0
¬
6gradients/softmax_cross_entropy_with_logits_7_grad/mulMul=gradients/softmax_cross_entropy_with_logits_7_grad/ExpandDims%softmax_cross_entropy_with_logits_7:1*
T0

=gradients/softmax_cross_entropy_with_logits_7_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_7/Reshape*
T0

6gradients/softmax_cross_entropy_with_logits_7_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_7_grad/LogSoftmax*
T0
v
Cgradients/softmax_cross_entropy_with_logits_7_grad/ExpandDims_1/dimConst*
valueB :
’’’’’’’’’*
dtype0
ķ
?gradients/softmax_cross_entropy_with_logits_7_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_7/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_7_grad/ExpandDims_1/dim*

Tdim0*
T0
Į
8gradients/softmax_cross_entropy_with_logits_7_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_7_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_7_grad/Neg*
T0
æ
Cgradients/softmax_cross_entropy_with_logits_7_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_7_grad/mul9^gradients/softmax_cross_entropy_with_logits_7_grad/mul_1
©
Kgradients/softmax_cross_entropy_with_logits_7_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_7_grad/mulD^gradients/softmax_cross_entropy_with_logits_7_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_7_grad/mul
Æ
Mgradients/softmax_cross_entropy_with_logits_7_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_7_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_7_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/softmax_cross_entropy_with_logits_7_grad/mul_1
Ć
,gradients/extrinsic_value/MatMul_grad/MatMulMatMul?gradients/extrinsic_value/BiasAdd_grad/tuple/control_dependencyextrinsic_value/kernel/read*
transpose_b(*
T0*
transpose_a( 
Ć
.gradients/extrinsic_value/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul?gradients/extrinsic_value/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(

6gradients/extrinsic_value/MatMul_grad/tuple/group_depsNoOp-^gradients/extrinsic_value/MatMul_grad/MatMul/^gradients/extrinsic_value/MatMul_grad/MatMul_1
ū
>gradients/extrinsic_value/MatMul_grad/tuple/control_dependencyIdentity,gradients/extrinsic_value/MatMul_grad/MatMul7^gradients/extrinsic_value/MatMul_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/extrinsic_value/MatMul_grad/MatMul

@gradients/extrinsic_value/MatMul_grad/tuple/control_dependency_1Identity.gradients/extrinsic_value/MatMul_grad/MatMul_17^gradients/extrinsic_value/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/extrinsic_value/MatMul_grad/MatMul_1
t
@gradients/softmax_cross_entropy_with_logits_4/Reshape_grad/ShapeShapestrided_slice_29*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits_4/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_4_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_4/Reshape_grad/Shape*
T0*
Tshape0
t
@gradients/softmax_cross_entropy_with_logits_5/Reshape_grad/ShapeShapestrided_slice_31*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits_5/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_5_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_5/Reshape_grad/Shape*
T0*
Tshape0
t
@gradients/softmax_cross_entropy_with_logits_6/Reshape_grad/ShapeShapestrided_slice_33*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits_6/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_6_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_6/Reshape_grad/Shape*
T0*
Tshape0
t
@gradients/softmax_cross_entropy_with_logits_7/Reshape_grad/ShapeShapestrided_slice_35*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits_7/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_7_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_7/Reshape_grad/Shape*
T0*
Tshape0
Q
%gradients/strided_slice_29_grad/ShapeShapeconcat_2*
T0*
out_type0
õ
0gradients/strided_slice_29_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_29_grad/Shapestrided_slice_29/stackstrided_slice_29/stack_1strided_slice_29/stack_2Bgradients/softmax_cross_entropy_with_logits_4/Reshape_grad/Reshape*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0
Q
%gradients/strided_slice_31_grad/ShapeShapeconcat_2*
T0*
out_type0
õ
0gradients/strided_slice_31_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_31_grad/Shapestrided_slice_31/stackstrided_slice_31/stack_1strided_slice_31/stack_2Bgradients/softmax_cross_entropy_with_logits_5/Reshape_grad/Reshape*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0
Q
%gradients/strided_slice_33_grad/ShapeShapeconcat_2*
T0*
out_type0
õ
0gradients/strided_slice_33_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_33_grad/Shapestrided_slice_33/stackstrided_slice_33/stack_1strided_slice_33/stack_2Bgradients/softmax_cross_entropy_with_logits_6/Reshape_grad/Reshape*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask
Q
%gradients/strided_slice_35_grad/ShapeShapeconcat_2*
T0*
out_type0
õ
0gradients/strided_slice_35_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_35_grad/Shapestrided_slice_35/stackstrided_slice_35/stack_1strided_slice_35/stack_2Bgradients/softmax_cross_entropy_with_logits_7/Reshape_grad/Reshape*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask
·
gradients/AddN_2AddN0gradients/strided_slice_29_grad/StridedSliceGrad0gradients/strided_slice_31_grad/StridedSliceGrad0gradients/strided_slice_33_grad/StridedSliceGrad0gradients/strided_slice_35_grad/StridedSliceGrad*
T0*C
_class9
75loc:@gradients/strided_slice_29_grad/StridedSliceGrad*
N
F
gradients/concat_2_grad/RankConst*
value	B :*
dtype0
]
gradients/concat_2_grad/modFloorModconcat_2/axisgradients/concat_2_grad/Rank*
T0
F
gradients/concat_2_grad/ShapeShapeLog_4*
T0*
out_type0
f
gradients/concat_2_grad/ShapeNShapeNLog_4Log_5Log_6Log_7*
T0*
out_type0*
N
ą
$gradients/concat_2_grad/ConcatOffsetConcatOffsetgradients/concat_2_grad/modgradients/concat_2_grad/ShapeN gradients/concat_2_grad/ShapeN:1 gradients/concat_2_grad/ShapeN:2 gradients/concat_2_grad/ShapeN:3*
N

gradients/concat_2_grad/SliceSlicegradients/AddN_2$gradients/concat_2_grad/ConcatOffsetgradients/concat_2_grad/ShapeN*
T0*
Index0

gradients/concat_2_grad/Slice_1Slicegradients/AddN_2&gradients/concat_2_grad/ConcatOffset:1 gradients/concat_2_grad/ShapeN:1*
T0*
Index0

gradients/concat_2_grad/Slice_2Slicegradients/AddN_2&gradients/concat_2_grad/ConcatOffset:2 gradients/concat_2_grad/ShapeN:2*
T0*
Index0

gradients/concat_2_grad/Slice_3Slicegradients/AddN_2&gradients/concat_2_grad/ConcatOffset:3 gradients/concat_2_grad/ShapeN:3*
T0*
Index0
¶
(gradients/concat_2_grad/tuple/group_depsNoOp^gradients/concat_2_grad/Slice ^gradients/concat_2_grad/Slice_1 ^gradients/concat_2_grad/Slice_2 ^gradients/concat_2_grad/Slice_3
Į
0gradients/concat_2_grad/tuple/control_dependencyIdentitygradients/concat_2_grad/Slice)^gradients/concat_2_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/concat_2_grad/Slice
Ē
2gradients/concat_2_grad/tuple/control_dependency_1Identitygradients/concat_2_grad/Slice_1)^gradients/concat_2_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/concat_2_grad/Slice_1
Ē
2gradients/concat_2_grad/tuple/control_dependency_2Identitygradients/concat_2_grad/Slice_2)^gradients/concat_2_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/concat_2_grad/Slice_2
Ē
2gradients/concat_2_grad/tuple/control_dependency_3Identitygradients/concat_2_grad/Slice_3)^gradients/concat_2_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/concat_2_grad/Slice_3
p
gradients/Log_4_grad/Reciprocal
Reciprocaladd_91^gradients/concat_2_grad/tuple/control_dependency*
T0
{
gradients/Log_4_grad/mulMul0gradients/concat_2_grad/tuple/control_dependencygradients/Log_4_grad/Reciprocal*
T0
s
gradients/Log_5_grad/Reciprocal
Reciprocaladd_103^gradients/concat_2_grad/tuple/control_dependency_1*
T0
}
gradients/Log_5_grad/mulMul2gradients/concat_2_grad/tuple/control_dependency_1gradients/Log_5_grad/Reciprocal*
T0
s
gradients/Log_6_grad/Reciprocal
Reciprocaladd_113^gradients/concat_2_grad/tuple/control_dependency_2*
T0
}
gradients/Log_6_grad/mulMul2gradients/concat_2_grad/tuple/control_dependency_2gradients/Log_6_grad/Reciprocal*
T0
s
gradients/Log_7_grad/Reciprocal
Reciprocaladd_123^gradients/concat_2_grad/tuple/control_dependency_3*
T0
}
gradients/Log_7_grad/mulMul2gradients/concat_2_grad/tuple/control_dependency_3gradients/Log_7_grad/Reciprocal*
T0
E
gradients/add_9_grad/ShapeShapetruediv*
T0*
out_type0
G
gradients/add_9_grad/Shape_1Shapeadd_9/y*
T0*
out_type0

*gradients/add_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_9_grad/Shapegradients/add_9_grad/Shape_1*
T0

gradients/add_9_grad/SumSumgradients/Log_4_grad/mul*gradients/add_9_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/add_9_grad/ReshapeReshapegradients/add_9_grad/Sumgradients/add_9_grad/Shape*
T0*
Tshape0

gradients/add_9_grad/Sum_1Sumgradients/Log_4_grad/mul,gradients/add_9_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/add_9_grad/Reshape_1Reshapegradients/add_9_grad/Sum_1gradients/add_9_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_9_grad/tuple/group_depsNoOp^gradients/add_9_grad/Reshape^gradients/add_9_grad/Reshape_1
¹
-gradients/add_9_grad/tuple/control_dependencyIdentitygradients/add_9_grad/Reshape&^gradients/add_9_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_9_grad/Reshape
æ
/gradients/add_9_grad/tuple/control_dependency_1Identitygradients/add_9_grad/Reshape_1&^gradients/add_9_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_9_grad/Reshape_1
H
gradients/add_10_grad/ShapeShape	truediv_1*
T0*
out_type0
I
gradients/add_10_grad/Shape_1Shapeadd_10/y*
T0*
out_type0

+gradients/add_10_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_10_grad/Shapegradients/add_10_grad/Shape_1*
T0

gradients/add_10_grad/SumSumgradients/Log_5_grad/mul+gradients/add_10_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/add_10_grad/ReshapeReshapegradients/add_10_grad/Sumgradients/add_10_grad/Shape*
T0*
Tshape0

gradients/add_10_grad/Sum_1Sumgradients/Log_5_grad/mul-gradients/add_10_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
}
gradients/add_10_grad/Reshape_1Reshapegradients/add_10_grad/Sum_1gradients/add_10_grad/Shape_1*
T0*
Tshape0
p
&gradients/add_10_grad/tuple/group_depsNoOp^gradients/add_10_grad/Reshape ^gradients/add_10_grad/Reshape_1
½
.gradients/add_10_grad/tuple/control_dependencyIdentitygradients/add_10_grad/Reshape'^gradients/add_10_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/add_10_grad/Reshape
Ć
0gradients/add_10_grad/tuple/control_dependency_1Identitygradients/add_10_grad/Reshape_1'^gradients/add_10_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/add_10_grad/Reshape_1
H
gradients/add_11_grad/ShapeShape	truediv_2*
T0*
out_type0
I
gradients/add_11_grad/Shape_1Shapeadd_11/y*
T0*
out_type0

+gradients/add_11_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_11_grad/Shapegradients/add_11_grad/Shape_1*
T0

gradients/add_11_grad/SumSumgradients/Log_6_grad/mul+gradients/add_11_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
w
gradients/add_11_grad/ReshapeReshapegradients/add_11_grad/Sumgradients/add_11_grad/Shape*
T0*
Tshape0

gradients/add_11_grad/Sum_1Sumgradients/Log_6_grad/mul-gradients/add_11_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
}
gradients/add_11_grad/Reshape_1Reshapegradients/add_11_grad/Sum_1gradients/add_11_grad/Shape_1*
T0*
Tshape0
p
&gradients/add_11_grad/tuple/group_depsNoOp^gradients/add_11_grad/Reshape ^gradients/add_11_grad/Reshape_1
½
.gradients/add_11_grad/tuple/control_dependencyIdentitygradients/add_11_grad/Reshape'^gradients/add_11_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/add_11_grad/Reshape
Ć
0gradients/add_11_grad/tuple/control_dependency_1Identitygradients/add_11_grad/Reshape_1'^gradients/add_11_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/add_11_grad/Reshape_1
H
gradients/add_12_grad/ShapeShape	truediv_3*
T0*
out_type0
I
gradients/add_12_grad/Shape_1Shapeadd_12/y*
T0*
out_type0

+gradients/add_12_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_12_grad/Shapegradients/add_12_grad/Shape_1*
T0

gradients/add_12_grad/SumSumgradients/Log_7_grad/mul+gradients/add_12_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/add_12_grad/ReshapeReshapegradients/add_12_grad/Sumgradients/add_12_grad/Shape*
T0*
Tshape0

gradients/add_12_grad/Sum_1Sumgradients/Log_7_grad/mul-gradients/add_12_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
}
gradients/add_12_grad/Reshape_1Reshapegradients/add_12_grad/Sum_1gradients/add_12_grad/Shape_1*
T0*
Tshape0
p
&gradients/add_12_grad/tuple/group_depsNoOp^gradients/add_12_grad/Reshape ^gradients/add_12_grad/Reshape_1
½
.gradients/add_12_grad/tuple/control_dependencyIdentitygradients/add_12_grad/Reshape'^gradients/add_12_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/add_12_grad/Reshape
Ć
0gradients/add_12_grad/tuple/control_dependency_1Identitygradients/add_12_grad/Reshape_1'^gradients/add_12_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/add_12_grad/Reshape_1
C
gradients/truediv_grad/ShapeShapeMul*
T0*
out_type0
E
gradients/truediv_grad/Shape_1ShapeSum*
T0*
out_type0

,gradients/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_grad/Shapegradients/truediv_grad/Shape_1*
T0
f
gradients/truediv_grad/RealDivRealDiv-gradients/add_9_grad/tuple/control_dependencySum*
T0

gradients/truediv_grad/SumSumgradients/truediv_grad/RealDiv,gradients/truediv_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients/truediv_grad/ReshapeReshapegradients/truediv_grad/Sumgradients/truediv_grad/Shape*
T0*
Tshape0
/
gradients/truediv_grad/NegNegMul*
T0
U
 gradients/truediv_grad/RealDiv_1RealDivgradients/truediv_grad/NegSum*
T0
[
 gradients/truediv_grad/RealDiv_2RealDiv gradients/truediv_grad/RealDiv_1Sum*
T0
{
gradients/truediv_grad/mulMul-gradients/add_9_grad/tuple/control_dependency gradients/truediv_grad/RealDiv_2*
T0

gradients/truediv_grad/Sum_1Sumgradients/truediv_grad/mul.gradients/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

 gradients/truediv_grad/Reshape_1Reshapegradients/truediv_grad/Sum_1gradients/truediv_grad/Shape_1*
T0*
Tshape0
s
'gradients/truediv_grad/tuple/group_depsNoOp^gradients/truediv_grad/Reshape!^gradients/truediv_grad/Reshape_1
Į
/gradients/truediv_grad/tuple/control_dependencyIdentitygradients/truediv_grad/Reshape(^gradients/truediv_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/truediv_grad/Reshape
Ē
1gradients/truediv_grad/tuple/control_dependency_1Identity gradients/truediv_grad/Reshape_1(^gradients/truediv_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_grad/Reshape_1
G
gradients/truediv_1_grad/ShapeShapeMul_1*
T0*
out_type0
I
 gradients/truediv_1_grad/Shape_1ShapeSum_1*
T0*
out_type0

.gradients/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_1_grad/Shape gradients/truediv_1_grad/Shape_1*
T0
k
 gradients/truediv_1_grad/RealDivRealDiv.gradients/add_10_grad/tuple/control_dependencySum_1*
T0

gradients/truediv_1_grad/SumSum gradients/truediv_1_grad/RealDiv.gradients/truediv_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 

 gradients/truediv_1_grad/ReshapeReshapegradients/truediv_1_grad/Sumgradients/truediv_1_grad/Shape*
T0*
Tshape0
3
gradients/truediv_1_grad/NegNegMul_1*
T0
[
"gradients/truediv_1_grad/RealDiv_1RealDivgradients/truediv_1_grad/NegSum_1*
T0
a
"gradients/truediv_1_grad/RealDiv_2RealDiv"gradients/truediv_1_grad/RealDiv_1Sum_1*
T0

gradients/truediv_1_grad/mulMul.gradients/add_10_grad/tuple/control_dependency"gradients/truediv_1_grad/RealDiv_2*
T0

gradients/truediv_1_grad/Sum_1Sumgradients/truediv_1_grad/mul0gradients/truediv_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

"gradients/truediv_1_grad/Reshape_1Reshapegradients/truediv_1_grad/Sum_1 gradients/truediv_1_grad/Shape_1*
T0*
Tshape0
y
)gradients/truediv_1_grad/tuple/group_depsNoOp!^gradients/truediv_1_grad/Reshape#^gradients/truediv_1_grad/Reshape_1
É
1gradients/truediv_1_grad/tuple/control_dependencyIdentity gradients/truediv_1_grad/Reshape*^gradients/truediv_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_1_grad/Reshape
Ļ
3gradients/truediv_1_grad/tuple/control_dependency_1Identity"gradients/truediv_1_grad/Reshape_1*^gradients/truediv_1_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/truediv_1_grad/Reshape_1
G
gradients/truediv_2_grad/ShapeShapeMul_2*
T0*
out_type0
I
 gradients/truediv_2_grad/Shape_1ShapeSum_2*
T0*
out_type0

.gradients/truediv_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_2_grad/Shape gradients/truediv_2_grad/Shape_1*
T0
k
 gradients/truediv_2_grad/RealDivRealDiv.gradients/add_11_grad/tuple/control_dependencySum_2*
T0

gradients/truediv_2_grad/SumSum gradients/truediv_2_grad/RealDiv.gradients/truediv_2_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 

 gradients/truediv_2_grad/ReshapeReshapegradients/truediv_2_grad/Sumgradients/truediv_2_grad/Shape*
T0*
Tshape0
3
gradients/truediv_2_grad/NegNegMul_2*
T0
[
"gradients/truediv_2_grad/RealDiv_1RealDivgradients/truediv_2_grad/NegSum_2*
T0
a
"gradients/truediv_2_grad/RealDiv_2RealDiv"gradients/truediv_2_grad/RealDiv_1Sum_2*
T0

gradients/truediv_2_grad/mulMul.gradients/add_11_grad/tuple/control_dependency"gradients/truediv_2_grad/RealDiv_2*
T0

gradients/truediv_2_grad/Sum_1Sumgradients/truediv_2_grad/mul0gradients/truediv_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

"gradients/truediv_2_grad/Reshape_1Reshapegradients/truediv_2_grad/Sum_1 gradients/truediv_2_grad/Shape_1*
T0*
Tshape0
y
)gradients/truediv_2_grad/tuple/group_depsNoOp!^gradients/truediv_2_grad/Reshape#^gradients/truediv_2_grad/Reshape_1
É
1gradients/truediv_2_grad/tuple/control_dependencyIdentity gradients/truediv_2_grad/Reshape*^gradients/truediv_2_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_2_grad/Reshape
Ļ
3gradients/truediv_2_grad/tuple/control_dependency_1Identity"gradients/truediv_2_grad/Reshape_1*^gradients/truediv_2_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/truediv_2_grad/Reshape_1
G
gradients/truediv_3_grad/ShapeShapeMul_3*
T0*
out_type0
I
 gradients/truediv_3_grad/Shape_1ShapeSum_3*
T0*
out_type0

.gradients/truediv_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_3_grad/Shape gradients/truediv_3_grad/Shape_1*
T0
k
 gradients/truediv_3_grad/RealDivRealDiv.gradients/add_12_grad/tuple/control_dependencySum_3*
T0

gradients/truediv_3_grad/SumSum gradients/truediv_3_grad/RealDiv.gradients/truediv_3_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 

 gradients/truediv_3_grad/ReshapeReshapegradients/truediv_3_grad/Sumgradients/truediv_3_grad/Shape*
T0*
Tshape0
3
gradients/truediv_3_grad/NegNegMul_3*
T0
[
"gradients/truediv_3_grad/RealDiv_1RealDivgradients/truediv_3_grad/NegSum_3*
T0
a
"gradients/truediv_3_grad/RealDiv_2RealDiv"gradients/truediv_3_grad/RealDiv_1Sum_3*
T0

gradients/truediv_3_grad/mulMul.gradients/add_12_grad/tuple/control_dependency"gradients/truediv_3_grad/RealDiv_2*
T0

gradients/truediv_3_grad/Sum_1Sumgradients/truediv_3_grad/mul0gradients/truediv_3_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

"gradients/truediv_3_grad/Reshape_1Reshapegradients/truediv_3_grad/Sum_1 gradients/truediv_3_grad/Shape_1*
T0*
Tshape0
y
)gradients/truediv_3_grad/tuple/group_depsNoOp!^gradients/truediv_3_grad/Reshape#^gradients/truediv_3_grad/Reshape_1
É
1gradients/truediv_3_grad/tuple/control_dependencyIdentity gradients/truediv_3_grad/Reshape*^gradients/truediv_3_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_3_grad/Reshape
Ļ
3gradients/truediv_3_grad/tuple/control_dependency_1Identity"gradients/truediv_3_grad/Reshape_1*^gradients/truediv_3_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/truediv_3_grad/Reshape_1
?
gradients/Sum_grad/ShapeShapeMul*
T0*
out_type0
n
gradients/Sum_grad/SizeConst*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :

gradients/Sum_grad/addAddV2Sum/reduction_indicesgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape
p
gradients/Sum_grad/Shape_1Const*+
_class!
loc:@gradients/Sum_grad/Shape*
valueB *
dtype0
u
gradients/Sum_grad/range/startConst*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B : *
dtype0
u
gradients/Sum_grad/range/deltaConst*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :*
dtype0
³
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*+
_class!
loc:@gradients/Sum_grad/Shape*

Tidx0
t
gradients/Sum_grad/Fill/valueConst*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :*
dtype0
¢
gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*

index_type0
Õ
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*
N*
T0*+
_class!
loc:@gradients/Sum_grad/Shape
s
gradients/Sum_grad/Maximum/yConst*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :*
dtype0

gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/ReshapeReshape1gradients/truediv_grad/tuple/control_dependency_1 gradients/Sum_grad/DynamicStitch*
T0*
Tshape0
s
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*

Tmultiples0*
T0
C
gradients/Sum_1_grad/ShapeShapeMul_1*
T0*
out_type0
r
gradients/Sum_1_grad/SizeConst*
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
value	B :

gradients/Sum_1_grad/addAddV2Sum_1/reduction_indicesgradients/Sum_1_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/modFloorModgradients/Sum_1_grad/addgradients/Sum_1_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
t
gradients/Sum_1_grad/Shape_1Const*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
valueB *
dtype0
y
 gradients/Sum_1_grad/range/startConst*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
value	B : *
dtype0
y
 gradients/Sum_1_grad/range/deltaConst*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
value	B :*
dtype0
½
gradients/Sum_1_grad/rangeRange gradients/Sum_1_grad/range/startgradients/Sum_1_grad/Size gradients/Sum_1_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
x
gradients/Sum_1_grad/Fill/valueConst*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
value	B :*
dtype0
Ŗ
gradients/Sum_1_grad/FillFillgradients/Sum_1_grad/Shape_1gradients/Sum_1_grad/Fill/value*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*

index_type0
į
"gradients/Sum_1_grad/DynamicStitchDynamicStitchgradients/Sum_1_grad/rangegradients/Sum_1_grad/modgradients/Sum_1_grad/Shapegradients/Sum_1_grad/Fill*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
N
w
gradients/Sum_1_grad/Maximum/yConst*
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
value	B :
£
gradients/Sum_1_grad/MaximumMaximum"gradients/Sum_1_grad/DynamicStitchgradients/Sum_1_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/floordivFloorDivgradients/Sum_1_grad/Shapegradients/Sum_1_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/ReshapeReshape3gradients/truediv_1_grad/tuple/control_dependency_1"gradients/Sum_1_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_1_grad/TileTilegradients/Sum_1_grad/Reshapegradients/Sum_1_grad/floordiv*

Tmultiples0*
T0
C
gradients/Sum_2_grad/ShapeShapeMul_2*
T0*
out_type0
r
gradients/Sum_2_grad/SizeConst*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
value	B :*
dtype0

gradients/Sum_2_grad/addAddV2Sum_2/reduction_indicesgradients/Sum_2_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape

gradients/Sum_2_grad/modFloorModgradients/Sum_2_grad/addgradients/Sum_2_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape
t
gradients/Sum_2_grad/Shape_1Const*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
valueB *
dtype0
y
 gradients/Sum_2_grad/range/startConst*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
value	B : *
dtype0
y
 gradients/Sum_2_grad/range/deltaConst*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
value	B :*
dtype0
½
gradients/Sum_2_grad/rangeRange gradients/Sum_2_grad/range/startgradients/Sum_2_grad/Size gradients/Sum_2_grad/range/delta*-
_class#
!loc:@gradients/Sum_2_grad/Shape*

Tidx0
x
gradients/Sum_2_grad/Fill/valueConst*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
value	B :*
dtype0
Ŗ
gradients/Sum_2_grad/FillFillgradients/Sum_2_grad/Shape_1gradients/Sum_2_grad/Fill/value*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape*

index_type0
į
"gradients/Sum_2_grad/DynamicStitchDynamicStitchgradients/Sum_2_grad/rangegradients/Sum_2_grad/modgradients/Sum_2_grad/Shapegradients/Sum_2_grad/Fill*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
N
w
gradients/Sum_2_grad/Maximum/yConst*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
value	B :*
dtype0
£
gradients/Sum_2_grad/MaximumMaximum"gradients/Sum_2_grad/DynamicStitchgradients/Sum_2_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape

gradients/Sum_2_grad/floordivFloorDivgradients/Sum_2_grad/Shapegradients/Sum_2_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape

gradients/Sum_2_grad/ReshapeReshape3gradients/truediv_2_grad/tuple/control_dependency_1"gradients/Sum_2_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_2_grad/TileTilegradients/Sum_2_grad/Reshapegradients/Sum_2_grad/floordiv*

Tmultiples0*
T0
C
gradients/Sum_3_grad/ShapeShapeMul_3*
T0*
out_type0
r
gradients/Sum_3_grad/SizeConst*
dtype0*-
_class#
!loc:@gradients/Sum_3_grad/Shape*
value	B :

gradients/Sum_3_grad/addAddV2Sum_3/reduction_indicesgradients/Sum_3_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape

gradients/Sum_3_grad/modFloorModgradients/Sum_3_grad/addgradients/Sum_3_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape
t
gradients/Sum_3_grad/Shape_1Const*
dtype0*-
_class#
!loc:@gradients/Sum_3_grad/Shape*
valueB 
y
 gradients/Sum_3_grad/range/startConst*
dtype0*-
_class#
!loc:@gradients/Sum_3_grad/Shape*
value	B : 
y
 gradients/Sum_3_grad/range/deltaConst*-
_class#
!loc:@gradients/Sum_3_grad/Shape*
value	B :*
dtype0
½
gradients/Sum_3_grad/rangeRange gradients/Sum_3_grad/range/startgradients/Sum_3_grad/Size gradients/Sum_3_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_3_grad/Shape
x
gradients/Sum_3_grad/Fill/valueConst*-
_class#
!loc:@gradients/Sum_3_grad/Shape*
value	B :*
dtype0
Ŗ
gradients/Sum_3_grad/FillFillgradients/Sum_3_grad/Shape_1gradients/Sum_3_grad/Fill/value*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape*

index_type0
į
"gradients/Sum_3_grad/DynamicStitchDynamicStitchgradients/Sum_3_grad/rangegradients/Sum_3_grad/modgradients/Sum_3_grad/Shapegradients/Sum_3_grad/Fill*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape*
N
w
gradients/Sum_3_grad/Maximum/yConst*-
_class#
!loc:@gradients/Sum_3_grad/Shape*
value	B :*
dtype0
£
gradients/Sum_3_grad/MaximumMaximum"gradients/Sum_3_grad/DynamicStitchgradients/Sum_3_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape

gradients/Sum_3_grad/floordivFloorDivgradients/Sum_3_grad/Shapegradients/Sum_3_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape

gradients/Sum_3_grad/ReshapeReshape3gradients/truediv_3_grad/tuple/control_dependency_1"gradients/Sum_3_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_3_grad/TileTilegradients/Sum_3_grad/Reshapegradients/Sum_3_grad/floordiv*

Tmultiples0*
T0
§
gradients/AddN_3AddN/gradients/truediv_grad/tuple/control_dependencygradients/Sum_grad/Tile*
T0*1
_class'
%#loc:@gradients/truediv_grad/Reshape*
N
A
gradients/Mul_grad/ShapeShapeadd_1*
T0*
out_type0
M
gradients/Mul_grad/Shape_1Shapestrided_slice_4*
T0*
out_type0

(gradients/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_grad/Shapegradients/Mul_grad/Shape_1*
T0
I
gradients/Mul_grad/MulMulgradients/AddN_3strided_slice_4*
T0

gradients/Mul_grad/SumSumgradients/Mul_grad/Mul(gradients/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
n
gradients/Mul_grad/ReshapeReshapegradients/Mul_grad/Sumgradients/Mul_grad/Shape*
T0*
Tshape0
A
gradients/Mul_grad/Mul_1Muladd_1gradients/AddN_3*
T0

gradients/Mul_grad/Sum_1Sumgradients/Mul_grad/Mul_1*gradients/Mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
t
gradients/Mul_grad/Reshape_1Reshapegradients/Mul_grad/Sum_1gradients/Mul_grad/Shape_1*
T0*
Tshape0
g
#gradients/Mul_grad/tuple/group_depsNoOp^gradients/Mul_grad/Reshape^gradients/Mul_grad/Reshape_1
±
+gradients/Mul_grad/tuple/control_dependencyIdentitygradients/Mul_grad/Reshape$^gradients/Mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Mul_grad/Reshape
·
-gradients/Mul_grad/tuple/control_dependency_1Identitygradients/Mul_grad/Reshape_1$^gradients/Mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_grad/Reshape_1
­
gradients/AddN_4AddN1gradients/truediv_1_grad/tuple/control_dependencygradients/Sum_1_grad/Tile*
T0*3
_class)
'%loc:@gradients/truediv_1_grad/Reshape*
N
C
gradients/Mul_1_grad/ShapeShapeadd_2*
T0*
out_type0
O
gradients/Mul_1_grad/Shape_1Shapestrided_slice_5*
T0*
out_type0

*gradients/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_1_grad/Shapegradients/Mul_1_grad/Shape_1*
T0
K
gradients/Mul_1_grad/MulMulgradients/AddN_4strided_slice_5*
T0

gradients/Mul_1_grad/SumSumgradients/Mul_1_grad/Mul*gradients/Mul_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/Mul_1_grad/ReshapeReshapegradients/Mul_1_grad/Sumgradients/Mul_1_grad/Shape*
T0*
Tshape0
C
gradients/Mul_1_grad/Mul_1Muladd_2gradients/AddN_4*
T0

gradients/Mul_1_grad/Sum_1Sumgradients/Mul_1_grad/Mul_1,gradients/Mul_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/Mul_1_grad/Reshape_1Reshapegradients/Mul_1_grad/Sum_1gradients/Mul_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/Mul_1_grad/tuple/group_depsNoOp^gradients/Mul_1_grad/Reshape^gradients/Mul_1_grad/Reshape_1
¹
-gradients/Mul_1_grad/tuple/control_dependencyIdentitygradients/Mul_1_grad/Reshape&^gradients/Mul_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_1_grad/Reshape
æ
/gradients/Mul_1_grad/tuple/control_dependency_1Identitygradients/Mul_1_grad/Reshape_1&^gradients/Mul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Mul_1_grad/Reshape_1
­
gradients/AddN_5AddN1gradients/truediv_2_grad/tuple/control_dependencygradients/Sum_2_grad/Tile*
T0*3
_class)
'%loc:@gradients/truediv_2_grad/Reshape*
N
C
gradients/Mul_2_grad/ShapeShapeadd_3*
T0*
out_type0
O
gradients/Mul_2_grad/Shape_1Shapestrided_slice_6*
T0*
out_type0

*gradients/Mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_2_grad/Shapegradients/Mul_2_grad/Shape_1*
T0
K
gradients/Mul_2_grad/MulMulgradients/AddN_5strided_slice_6*
T0

gradients/Mul_2_grad/SumSumgradients/Mul_2_grad/Mul*gradients/Mul_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Mul_2_grad/ReshapeReshapegradients/Mul_2_grad/Sumgradients/Mul_2_grad/Shape*
T0*
Tshape0
C
gradients/Mul_2_grad/Mul_1Muladd_3gradients/AddN_5*
T0

gradients/Mul_2_grad/Sum_1Sumgradients/Mul_2_grad/Mul_1,gradients/Mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Mul_2_grad/Reshape_1Reshapegradients/Mul_2_grad/Sum_1gradients/Mul_2_grad/Shape_1*
T0*
Tshape0
m
%gradients/Mul_2_grad/tuple/group_depsNoOp^gradients/Mul_2_grad/Reshape^gradients/Mul_2_grad/Reshape_1
¹
-gradients/Mul_2_grad/tuple/control_dependencyIdentitygradients/Mul_2_grad/Reshape&^gradients/Mul_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_2_grad/Reshape
æ
/gradients/Mul_2_grad/tuple/control_dependency_1Identitygradients/Mul_2_grad/Reshape_1&^gradients/Mul_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Mul_2_grad/Reshape_1
­
gradients/AddN_6AddN1gradients/truediv_3_grad/tuple/control_dependencygradients/Sum_3_grad/Tile*
T0*3
_class)
'%loc:@gradients/truediv_3_grad/Reshape*
N
C
gradients/Mul_3_grad/ShapeShapeadd_4*
T0*
out_type0
O
gradients/Mul_3_grad/Shape_1Shapestrided_slice_7*
T0*
out_type0

*gradients/Mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_3_grad/Shapegradients/Mul_3_grad/Shape_1*
T0
K
gradients/Mul_3_grad/MulMulgradients/AddN_6strided_slice_7*
T0

gradients/Mul_3_grad/SumSumgradients/Mul_3_grad/Mul*gradients/Mul_3_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/Mul_3_grad/ReshapeReshapegradients/Mul_3_grad/Sumgradients/Mul_3_grad/Shape*
T0*
Tshape0
C
gradients/Mul_3_grad/Mul_1Muladd_4gradients/AddN_6*
T0

gradients/Mul_3_grad/Sum_1Sumgradients/Mul_3_grad/Mul_1,gradients/Mul_3_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/Mul_3_grad/Reshape_1Reshapegradients/Mul_3_grad/Sum_1gradients/Mul_3_grad/Shape_1*
T0*
Tshape0
m
%gradients/Mul_3_grad/tuple/group_depsNoOp^gradients/Mul_3_grad/Reshape^gradients/Mul_3_grad/Reshape_1
¹
-gradients/Mul_3_grad/tuple/control_dependencyIdentitygradients/Mul_3_grad/Reshape&^gradients/Mul_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_3_grad/Reshape
æ
/gradients/Mul_3_grad/tuple/control_dependency_1Identitygradients/Mul_3_grad/Reshape_1&^gradients/Mul_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Mul_3_grad/Reshape_1
E
gradients/add_1_grad/ShapeShapeSoftmax*
T0*
out_type0
G
gradients/add_1_grad/Shape_1Shapeadd_1/y*
T0*
out_type0

*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0

gradients/add_1_grad/SumSum+gradients/Mul_grad/tuple/control_dependency*gradients/add_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
T0*
Tshape0
¢
gradients/add_1_grad/Sum_1Sum+gradients/Mul_grad/tuple/control_dependency,gradients/add_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
¹
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_1_grad/Reshape
æ
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1
G
gradients/add_2_grad/ShapeShape	Softmax_1*
T0*
out_type0
G
gradients/add_2_grad/Shape_1Shapeadd_2/y*
T0*
out_type0

*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*
T0
 
gradients/add_2_grad/SumSum-gradients/Mul_1_grad/tuple/control_dependency*gradients/add_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*
T0*
Tshape0
¤
gradients/add_2_grad/Sum_1Sum-gradients/Mul_1_grad/tuple/control_dependency,gradients/add_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/add_2_grad/Reshape^gradients/add_2_grad/Reshape_1
¹
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/add_2_grad/Reshape&^gradients/add_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_2_grad/Reshape
æ
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/add_2_grad/Reshape_1&^gradients/add_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_2_grad/Reshape_1
G
gradients/add_3_grad/ShapeShape	Softmax_2*
T0*
out_type0
G
gradients/add_3_grad/Shape_1Shapeadd_3/y*
T0*
out_type0

*gradients/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_3_grad/Shapegradients/add_3_grad/Shape_1*
T0
 
gradients/add_3_grad/SumSum-gradients/Mul_2_grad/tuple/control_dependency*gradients/add_3_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/add_3_grad/ReshapeReshapegradients/add_3_grad/Sumgradients/add_3_grad/Shape*
T0*
Tshape0
¤
gradients/add_3_grad/Sum_1Sum-gradients/Mul_2_grad/tuple/control_dependency,gradients/add_3_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/add_3_grad/Reshape_1Reshapegradients/add_3_grad/Sum_1gradients/add_3_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_3_grad/tuple/group_depsNoOp^gradients/add_3_grad/Reshape^gradients/add_3_grad/Reshape_1
¹
-gradients/add_3_grad/tuple/control_dependencyIdentitygradients/add_3_grad/Reshape&^gradients/add_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_3_grad/Reshape
æ
/gradients/add_3_grad/tuple/control_dependency_1Identitygradients/add_3_grad/Reshape_1&^gradients/add_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_3_grad/Reshape_1
G
gradients/add_4_grad/ShapeShape	Softmax_3*
T0*
out_type0
G
gradients/add_4_grad/Shape_1Shapeadd_4/y*
T0*
out_type0

*gradients/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_4_grad/Shapegradients/add_4_grad/Shape_1*
T0
 
gradients/add_4_grad/SumSum-gradients/Mul_3_grad/tuple/control_dependency*gradients/add_4_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/add_4_grad/ReshapeReshapegradients/add_4_grad/Sumgradients/add_4_grad/Shape*
T0*
Tshape0
¤
gradients/add_4_grad/Sum_1Sum-gradients/Mul_3_grad/tuple/control_dependency,gradients/add_4_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/add_4_grad/Reshape_1Reshapegradients/add_4_grad/Sum_1gradients/add_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_4_grad/tuple/group_depsNoOp^gradients/add_4_grad/Reshape^gradients/add_4_grad/Reshape_1
¹
-gradients/add_4_grad/tuple/control_dependencyIdentitygradients/add_4_grad/Reshape&^gradients/add_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_4_grad/Reshape
æ
/gradients/add_4_grad/tuple/control_dependency_1Identitygradients/add_4_grad/Reshape_1&^gradients/add_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_4_grad/Reshape_1
b
gradients/Softmax_grad/mulMul-gradients/add_1_grad/tuple/control_dependencySoftmax*
T0
_
,gradients/Softmax_grad/Sum/reduction_indicesConst*
valueB :
’’’’’’’’’*
dtype0

gradients/Softmax_grad/SumSumgradients/Softmax_grad/mul,gradients/Softmax_grad/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0
u
gradients/Softmax_grad/subSub-gradients/add_1_grad/tuple/control_dependencygradients/Softmax_grad/Sum*
T0
Q
gradients/Softmax_grad/mul_1Mulgradients/Softmax_grad/subSoftmax*
T0
f
gradients/Softmax_1_grad/mulMul-gradients/add_2_grad/tuple/control_dependency	Softmax_1*
T0
a
.gradients/Softmax_1_grad/Sum/reduction_indicesConst*
dtype0*
valueB :
’’’’’’’’’

gradients/Softmax_1_grad/SumSumgradients/Softmax_1_grad/mul.gradients/Softmax_1_grad/Sum/reduction_indices*
T0*

Tidx0*
	keep_dims(
y
gradients/Softmax_1_grad/subSub-gradients/add_2_grad/tuple/control_dependencygradients/Softmax_1_grad/Sum*
T0
W
gradients/Softmax_1_grad/mul_1Mulgradients/Softmax_1_grad/sub	Softmax_1*
T0
f
gradients/Softmax_2_grad/mulMul-gradients/add_3_grad/tuple/control_dependency	Softmax_2*
T0
a
.gradients/Softmax_2_grad/Sum/reduction_indicesConst*
valueB :
’’’’’’’’’*
dtype0

gradients/Softmax_2_grad/SumSumgradients/Softmax_2_grad/mul.gradients/Softmax_2_grad/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0
y
gradients/Softmax_2_grad/subSub-gradients/add_3_grad/tuple/control_dependencygradients/Softmax_2_grad/Sum*
T0
W
gradients/Softmax_2_grad/mul_1Mulgradients/Softmax_2_grad/sub	Softmax_2*
T0
f
gradients/Softmax_3_grad/mulMul-gradients/add_4_grad/tuple/control_dependency	Softmax_3*
T0
a
.gradients/Softmax_3_grad/Sum/reduction_indicesConst*
valueB :
’’’’’’’’’*
dtype0

gradients/Softmax_3_grad/SumSumgradients/Softmax_3_grad/mul.gradients/Softmax_3_grad/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0
y
gradients/Softmax_3_grad/subSub-gradients/add_4_grad/tuple/control_dependencygradients/Softmax_3_grad/Sum*
T0
W
gradients/Softmax_3_grad/mul_1Mulgradients/Softmax_3_grad/sub	Softmax_3*
T0
R
"gradients/strided_slice_grad/ShapeShapeaction_probs*
T0*
out_type0
Ą
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad"gradients/strided_slice_grad/Shapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2gradients/Softmax_grad/mul_1*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
Index0*
T0*
shrink_axis_mask 
T
$gradients/strided_slice_1_grad/ShapeShapeaction_probs*
T0*
out_type0
Ģ
/gradients/strided_slice_1_grad/StridedSliceGradStridedSliceGrad$gradients/strided_slice_1_grad/Shapestrided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2gradients/Softmax_1_grad/mul_1*
end_mask*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask 
T
$gradients/strided_slice_2_grad/ShapeShapeaction_probs*
T0*
out_type0
Ģ
/gradients/strided_slice_2_grad/StridedSliceGradStridedSliceGrad$gradients/strided_slice_2_grad/Shapestrided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2gradients/Softmax_2_grad/mul_1*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0
T
$gradients/strided_slice_3_grad/ShapeShapeaction_probs*
T0*
out_type0
Ģ
/gradients/strided_slice_3_grad/StridedSliceGradStridedSliceGrad$gradients/strided_slice_3_grad/Shapestrided_slice_3/stackstrided_slice_3/stack_1strided_slice_3/stack_2gradients/Softmax_3_grad/mul_1*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0
Į
gradients/AddN_7AddN0gradients/strided_slice_21_grad/StridedSliceGrad0gradients/strided_slice_23_grad/StridedSliceGrad0gradients/strided_slice_25_grad/StridedSliceGrad0gradients/strided_slice_27_grad/StridedSliceGrad0gradients/strided_slice_20_grad/StridedSliceGrad0gradients/strided_slice_22_grad/StridedSliceGrad0gradients/strided_slice_24_grad/StridedSliceGrad0gradients/strided_slice_26_grad/StridedSliceGrad-gradients/strided_slice_grad/StridedSliceGrad/gradients/strided_slice_1_grad/StridedSliceGrad/gradients/strided_slice_2_grad/StridedSliceGrad/gradients/strided_slice_3_grad/StridedSliceGrad*
T0*C
_class9
75loc:@gradients/strided_slice_21_grad/StridedSliceGrad*
N
J
 gradients/action_probs_grad/RankConst*
value	B :*
dtype0
i
gradients/action_probs_grad/modFloorModaction_probs/axis gradients/action_probs_grad/Rank*
T0
Q
!gradients/action_probs_grad/ShapeShapedense/MatMul*
T0*
out_type0

"gradients/action_probs_grad/ShapeNShapeNdense/MatMuldense_1/MatMuldense_2/MatMuldense_3/MatMul*
T0*
out_type0*
N
ų
(gradients/action_probs_grad/ConcatOffsetConcatOffsetgradients/action_probs_grad/mod"gradients/action_probs_grad/ShapeN$gradients/action_probs_grad/ShapeN:1$gradients/action_probs_grad/ShapeN:2$gradients/action_probs_grad/ShapeN:3*
N
 
!gradients/action_probs_grad/SliceSlicegradients/AddN_7(gradients/action_probs_grad/ConcatOffset"gradients/action_probs_grad/ShapeN*
T0*
Index0
¦
#gradients/action_probs_grad/Slice_1Slicegradients/AddN_7*gradients/action_probs_grad/ConcatOffset:1$gradients/action_probs_grad/ShapeN:1*
T0*
Index0
¦
#gradients/action_probs_grad/Slice_2Slicegradients/AddN_7*gradients/action_probs_grad/ConcatOffset:2$gradients/action_probs_grad/ShapeN:2*
T0*
Index0
¦
#gradients/action_probs_grad/Slice_3Slicegradients/AddN_7*gradients/action_probs_grad/ConcatOffset:3$gradients/action_probs_grad/ShapeN:3*
T0*
Index0
Ź
,gradients/action_probs_grad/tuple/group_depsNoOp"^gradients/action_probs_grad/Slice$^gradients/action_probs_grad/Slice_1$^gradients/action_probs_grad/Slice_2$^gradients/action_probs_grad/Slice_3
Ń
4gradients/action_probs_grad/tuple/control_dependencyIdentity!gradients/action_probs_grad/Slice-^gradients/action_probs_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/action_probs_grad/Slice
×
6gradients/action_probs_grad/tuple/control_dependency_1Identity#gradients/action_probs_grad/Slice_1-^gradients/action_probs_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/action_probs_grad/Slice_1
×
6gradients/action_probs_grad/tuple/control_dependency_2Identity#gradients/action_probs_grad/Slice_2-^gradients/action_probs_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/action_probs_grad/Slice_2
×
6gradients/action_probs_grad/tuple/control_dependency_3Identity#gradients/action_probs_grad/Slice_3-^gradients/action_probs_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/action_probs_grad/Slice_3
¤
"gradients/dense/MatMul_grad/MatMulMatMul4gradients/action_probs_grad/tuple/control_dependencydense/kernel/read*
transpose_b(*
T0*
transpose_a( 
®
$gradients/dense/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul4gradients/action_probs_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0

,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
Ó
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul
Ł
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1
Ŗ
$gradients/dense_1/MatMul_grad/MatMulMatMul6gradients/action_probs_grad/tuple/control_dependency_1dense_1/kernel/read*
T0*
transpose_a( *
transpose_b(
²
&gradients/dense_1/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul6gradients/action_probs_grad/tuple/control_dependency_1*
T0*
transpose_a(*
transpose_b( 

.gradients/dense_1/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_1/MatMul_grad/MatMul'^gradients/dense_1/MatMul_grad/MatMul_1
Ū
6gradients/dense_1/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_1/MatMul_grad/MatMul/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_1/MatMul_grad/MatMul
į
8gradients/dense_1/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_1/MatMul_grad/MatMul_1/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_1/MatMul_grad/MatMul_1
Ŗ
$gradients/dense_2/MatMul_grad/MatMulMatMul6gradients/action_probs_grad/tuple/control_dependency_2dense_2/kernel/read*
T0*
transpose_a( *
transpose_b(
²
&gradients/dense_2/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul6gradients/action_probs_grad/tuple/control_dependency_2*
T0*
transpose_a(*
transpose_b( 

.gradients/dense_2/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_2/MatMul_grad/MatMul'^gradients/dense_2/MatMul_grad/MatMul_1
Ū
6gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_2/MatMul_grad/MatMul/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/MatMul_grad/MatMul
į
8gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_2/MatMul_grad/MatMul_1/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_2/MatMul_grad/MatMul_1
Ŗ
$gradients/dense_3/MatMul_grad/MatMulMatMul6gradients/action_probs_grad/tuple/control_dependency_3dense_3/kernel/read*
transpose_b(*
T0*
transpose_a( 
²
&gradients/dense_3/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul6gradients/action_probs_grad/tuple/control_dependency_3*
T0*
transpose_a(*
transpose_b( 

.gradients/dense_3/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_3/MatMul_grad/MatMul'^gradients/dense_3/MatMul_grad/MatMul_1
Ū
6gradients/dense_3/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_3/MatMul_grad/MatMul/^gradients/dense_3/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_3/MatMul_grad/MatMul
į
8gradients/dense_3/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_3/MatMul_grad/MatMul_1/^gradients/dense_3/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_3/MatMul_grad/MatMul_1

gradients/AddN_8AddN>gradients/extrinsic_value/MatMul_grad/tuple/control_dependency4gradients/dense/MatMul_grad/tuple/control_dependency6gradients/dense_1/MatMul_grad/tuple/control_dependency6gradients/dense_2/MatMul_grad/tuple/control_dependency6gradients/dense_3/MatMul_grad/tuple/control_dependency*
T0*?
_class5
31loc:@gradients/extrinsic_value/MatMul_grad/MatMul*
N
o
.gradients/main_graph_0/hidden_1/Mul_grad/ShapeShapemain_graph_0/hidden_1/BiasAdd*
T0*
out_type0
q
0gradients/main_graph_0/hidden_1/Mul_grad/Shape_1Shapemain_graph_0/hidden_1/Sigmoid*
T0*
out_type0
Ā
>gradients/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/main_graph_0/hidden_1/Mul_grad/Shape0gradients/main_graph_0/hidden_1/Mul_grad/Shape_1*
T0
m
,gradients/main_graph_0/hidden_1/Mul_grad/MulMulgradients/AddN_8main_graph_0/hidden_1/Sigmoid*
T0
Ē
,gradients/main_graph_0/hidden_1/Mul_grad/SumSum,gradients/main_graph_0/hidden_1/Mul_grad/Mul>gradients/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
°
0gradients/main_graph_0/hidden_1/Mul_grad/ReshapeReshape,gradients/main_graph_0/hidden_1/Mul_grad/Sum.gradients/main_graph_0/hidden_1/Mul_grad/Shape*
T0*
Tshape0
o
.gradients/main_graph_0/hidden_1/Mul_grad/Mul_1Mulmain_graph_0/hidden_1/BiasAddgradients/AddN_8*
T0
Ķ
.gradients/main_graph_0/hidden_1/Mul_grad/Sum_1Sum.gradients/main_graph_0/hidden_1/Mul_grad/Mul_1@gradients/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
¶
2gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1Reshape.gradients/main_graph_0/hidden_1/Mul_grad/Sum_10gradients/main_graph_0/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
©
9gradients/main_graph_0/hidden_1/Mul_grad/tuple/group_depsNoOp1^gradients/main_graph_0/hidden_1/Mul_grad/Reshape3^gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1

Agradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependencyIdentity0gradients/main_graph_0/hidden_1/Mul_grad/Reshape:^gradients/main_graph_0/hidden_1/Mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape

Cgradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency_1Identity2gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1:^gradients/main_graph_0/hidden_1/Mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1
“
8gradients/main_graph_0/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_0/hidden_1/SigmoidCgradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
ģ
gradients/AddN_9AddNAgradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency8gradients/main_graph_0/hidden_1/Sigmoid_grad/SigmoidGrad*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape*
N
y
8gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_9*
T0*
data_formatNHWC

=gradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_99^gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad
ń
Egradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_9>^gradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape
£
Ggradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency_1Identity8gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad>^gradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad
Õ
2gradients/main_graph_0/hidden_1/MatMul_grad/MatMulMatMulEgradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency!main_graph_0/hidden_1/kernel/read*
T0*
transpose_a( *
transpose_b(
Ļ
4gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_0/MulEgradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
°
<gradients/main_graph_0/hidden_1/MatMul_grad/tuple/group_depsNoOp3^gradients/main_graph_0/hidden_1/MatMul_grad/MatMul5^gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1

Dgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependencyIdentity2gradients/main_graph_0/hidden_1/MatMul_grad/MatMul=^gradients/main_graph_0/hidden_1/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_1/MatMul_grad/MatMul

Fgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency_1Identity4gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1=^gradients/main_graph_0/hidden_1/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1
o
.gradients/main_graph_0/hidden_0/Mul_grad/ShapeShapemain_graph_0/hidden_0/BiasAdd*
T0*
out_type0
q
0gradients/main_graph_0/hidden_0/Mul_grad/Shape_1Shapemain_graph_0/hidden_0/Sigmoid*
T0*
out_type0
Ā
>gradients/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/main_graph_0/hidden_0/Mul_grad/Shape0gradients/main_graph_0/hidden_0/Mul_grad/Shape_1*
T0
”
,gradients/main_graph_0/hidden_0/Mul_grad/MulMulDgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependencymain_graph_0/hidden_0/Sigmoid*
T0
Ē
,gradients/main_graph_0/hidden_0/Mul_grad/SumSum,gradients/main_graph_0/hidden_0/Mul_grad/Mul>gradients/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
°
0gradients/main_graph_0/hidden_0/Mul_grad/ReshapeReshape,gradients/main_graph_0/hidden_0/Mul_grad/Sum.gradients/main_graph_0/hidden_0/Mul_grad/Shape*
T0*
Tshape0
£
.gradients/main_graph_0/hidden_0/Mul_grad/Mul_1Mulmain_graph_0/hidden_0/BiasAddDgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency*
T0
Ķ
.gradients/main_graph_0/hidden_0/Mul_grad/Sum_1Sum.gradients/main_graph_0/hidden_0/Mul_grad/Mul_1@gradients/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
¶
2gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1Reshape.gradients/main_graph_0/hidden_0/Mul_grad/Sum_10gradients/main_graph_0/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
©
9gradients/main_graph_0/hidden_0/Mul_grad/tuple/group_depsNoOp1^gradients/main_graph_0/hidden_0/Mul_grad/Reshape3^gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1

Agradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependencyIdentity0gradients/main_graph_0/hidden_0/Mul_grad/Reshape:^gradients/main_graph_0/hidden_0/Mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape

Cgradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency_1Identity2gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1:^gradients/main_graph_0/hidden_0/Mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1
“
8gradients/main_graph_0/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_0/hidden_0/SigmoidCgradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency_1*
T0
ķ
gradients/AddN_10AddNAgradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency8gradients/main_graph_0/hidden_0/Sigmoid_grad/SigmoidGrad*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape*
N
z
8gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_10*
T0*
data_formatNHWC

=gradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_109^gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad
ņ
Egradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_10>^gradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape
£
Ggradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency_1Identity8gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad>^gradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad
Õ
2gradients/main_graph_0/hidden_0/MatMul_grad/MatMulMatMulEgradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency!main_graph_0/hidden_0/kernel/read*
transpose_b(*
T0*
transpose_a( 
Č
4gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1MatMulvector_observationEgradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
°
<gradients/main_graph_0/hidden_0/MatMul_grad/tuple/group_depsNoOp3^gradients/main_graph_0/hidden_0/MatMul_grad/MatMul5^gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1

Dgradients/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependencyIdentity2gradients/main_graph_0/hidden_0/MatMul_grad/MatMul=^gradients/main_graph_0/hidden_0/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_0/MatMul_grad/MatMul

Fgradients/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependency_1Identity4gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1=^gradients/main_graph_0/hidden_0/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1
:
gradients_1/ShapeConst*
dtype0*
valueB 
B
gradients_1/grad_ys_0Const*
valueB
 *  ?*
dtype0
]
gradients_1/FillFillgradients_1/Shapegradients_1/grad_ys_0*
T0*

index_type0
<
gradients_1/sub_3_grad/NegNeggradients_1/Fill*
T0
_
'gradients_1/sub_3_grad/tuple/group_depsNoOp^gradients_1/Fill^gradients_1/sub_3_grad/Neg
„
/gradients_1/sub_3_grad/tuple/control_dependencyIdentitygradients_1/Fill(^gradients_1/sub_3_grad/tuple/group_deps*
T0*#
_class
loc:@gradients_1/Fill
»
1gradients_1/sub_3_grad/tuple/control_dependency_1Identitygradients_1/sub_3_grad/Neg(^gradients_1/sub_3_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients_1/sub_3_grad/Neg
b
(gradients_1/add_27_grad/tuple/group_depsNoOp0^gradients_1/sub_3_grad/tuple/control_dependency
Ę
0gradients_1/add_27_grad/tuple/control_dependencyIdentity/gradients_1/sub_3_grad/tuple/control_dependency)^gradients_1/add_27_grad/tuple/group_deps*
T0*#
_class
loc:@gradients_1/Fill
Č
2gradients_1/add_27_grad/tuple/control_dependency_1Identity/gradients_1/sub_3_grad/tuple/control_dependency)^gradients_1/add_27_grad/tuple/group_deps*
T0*#
_class
loc:@gradients_1/Fill
f
gradients_1/mul_11_grad/MulMul1gradients_1/sub_3_grad/tuple/control_dependency_1Mean_4*
T0
s
gradients_1/mul_11_grad/Mul_1Mul1gradients_1/sub_3_grad/tuple/control_dependency_1PolynomialDecay_2*
T0
n
(gradients_1/mul_11_grad/tuple/group_depsNoOp^gradients_1/mul_11_grad/Mul^gradients_1/mul_11_grad/Mul_1
½
0gradients_1/mul_11_grad/tuple/control_dependencyIdentitygradients_1/mul_11_grad/Mul)^gradients_1/mul_11_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients_1/mul_11_grad/Mul
Ć
2gradients_1/mul_11_grad/tuple/control_dependency_1Identitygradients_1/mul_11_grad/Mul_1)^gradients_1/mul_11_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients_1/mul_11_grad/Mul_1
\
gradients_1/Neg_9_grad/NegNeg0gradients_1/add_27_grad/tuple/control_dependency*
T0
g
gradients_1/mul_10_grad/MulMul2gradients_1/add_27_grad/tuple/control_dependency_1Mean_2*
T0
k
gradients_1/mul_10_grad/Mul_1Mul2gradients_1/add_27_grad/tuple/control_dependency_1mul_10/x*
T0
n
(gradients_1/mul_10_grad/tuple/group_depsNoOp^gradients_1/mul_10_grad/Mul^gradients_1/mul_10_grad/Mul_1
½
0gradients_1/mul_10_grad/tuple/control_dependencyIdentitygradients_1/mul_10_grad/Mul)^gradients_1/mul_10_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients_1/mul_10_grad/Mul
Ć
2gradients_1/mul_10_grad/tuple/control_dependency_1Identitygradients_1/mul_10_grad/Mul_1)^gradients_1/mul_10_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients_1/mul_10_grad/Mul_1
S
%gradients_1/Mean_4_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients_1/Mean_4_grad/ReshapeReshape2gradients_1/mul_11_grad/tuple/control_dependency_1%gradients_1/Mean_4_grad/Reshape/shape*
T0*
Tshape0
U
gradients_1/Mean_4_grad/ShapeShapeDynamicPartition_2:1*
T0*
out_type0

gradients_1/Mean_4_grad/TileTilegradients_1/Mean_4_grad/Reshapegradients_1/Mean_4_grad/Shape*

Tmultiples0*
T0
W
gradients_1/Mean_4_grad/Shape_1ShapeDynamicPartition_2:1*
T0*
out_type0
H
gradients_1/Mean_4_grad/Shape_2Const*
valueB *
dtype0
K
gradients_1/Mean_4_grad/ConstConst*
dtype0*
valueB: 

gradients_1/Mean_4_grad/ProdProdgradients_1/Mean_4_grad/Shape_1gradients_1/Mean_4_grad/Const*

Tidx0*
	keep_dims( *
T0
M
gradients_1/Mean_4_grad/Const_1Const*
valueB: *
dtype0

gradients_1/Mean_4_grad/Prod_1Prodgradients_1/Mean_4_grad/Shape_2gradients_1/Mean_4_grad/Const_1*

Tidx0*
	keep_dims( *
T0
K
!gradients_1/Mean_4_grad/Maximum/yConst*
value	B :*
dtype0
v
gradients_1/Mean_4_grad/MaximumMaximumgradients_1/Mean_4_grad/Prod_1!gradients_1/Mean_4_grad/Maximum/y*
T0
t
 gradients_1/Mean_4_grad/floordivFloorDivgradients_1/Mean_4_grad/Prodgradients_1/Mean_4_grad/Maximum*
T0
n
gradients_1/Mean_4_grad/CastCast gradients_1/Mean_4_grad/floordiv*

SrcT0*
Truncate( *

DstT0
o
gradients_1/Mean_4_grad/truedivRealDivgradients_1/Mean_4_grad/Tilegradients_1/Mean_4_grad/Cast*
T0
Z
%gradients_1/Mean_3_grad/Reshape/shapeConst*
valueB"      *
dtype0

gradients_1/Mean_3_grad/ReshapeReshapegradients_1/Neg_9_grad/Neg%gradients_1/Mean_3_grad/Reshape/shape*
T0*
Tshape0
U
gradients_1/Mean_3_grad/ShapeShapeDynamicPartition_1:1*
T0*
out_type0

gradients_1/Mean_3_grad/TileTilegradients_1/Mean_3_grad/Reshapegradients_1/Mean_3_grad/Shape*
T0*

Tmultiples0
W
gradients_1/Mean_3_grad/Shape_1ShapeDynamicPartition_1:1*
T0*
out_type0
H
gradients_1/Mean_3_grad/Shape_2Const*
valueB *
dtype0
K
gradients_1/Mean_3_grad/ConstConst*
valueB: *
dtype0

gradients_1/Mean_3_grad/ProdProdgradients_1/Mean_3_grad/Shape_1gradients_1/Mean_3_grad/Const*

Tidx0*
	keep_dims( *
T0
M
gradients_1/Mean_3_grad/Const_1Const*
valueB: *
dtype0

gradients_1/Mean_3_grad/Prod_1Prodgradients_1/Mean_3_grad/Shape_2gradients_1/Mean_3_grad/Const_1*

Tidx0*
	keep_dims( *
T0
K
!gradients_1/Mean_3_grad/Maximum/yConst*
value	B :*
dtype0
v
gradients_1/Mean_3_grad/MaximumMaximumgradients_1/Mean_3_grad/Prod_1!gradients_1/Mean_3_grad/Maximum/y*
T0
t
 gradients_1/Mean_3_grad/floordivFloorDivgradients_1/Mean_3_grad/Prodgradients_1/Mean_3_grad/Maximum*
T0
n
gradients_1/Mean_3_grad/CastCast gradients_1/Mean_3_grad/floordiv*

SrcT0*
Truncate( *

DstT0
o
gradients_1/Mean_3_grad/truedivRealDivgradients_1/Mean_3_grad/Tilegradients_1/Mean_3_grad/Cast*
T0
S
%gradients_1/Mean_2_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients_1/Mean_2_grad/ReshapeReshape2gradients_1/mul_10_grad/tuple/control_dependency_1%gradients_1/Mean_2_grad/Reshape/shape*
T0*
Tshape0
K
gradients_1/Mean_2_grad/ConstConst*
valueB:*
dtype0

gradients_1/Mean_2_grad/TileTilegradients_1/Mean_2_grad/Reshapegradients_1/Mean_2_grad/Const*
T0*

Tmultiples0
L
gradients_1/Mean_2_grad/Const_1Const*
dtype0*
valueB
 *  ?
r
gradients_1/Mean_2_grad/truedivRealDivgradients_1/Mean_2_grad/Tilegradients_1/Mean_2_grad/Const_1*
T0
@
gradients_1/zeros_like	ZerosLikeDynamicPartition_2*
T0
Q
)gradients_1/DynamicPartition_2_grad/ShapeShapeCast*
T0*
out_type0
W
)gradients_1/DynamicPartition_2_grad/ConstConst*
valueB: *
dtype0
¬
(gradients_1/DynamicPartition_2_grad/ProdProd)gradients_1/DynamicPartition_2_grad/Shape)gradients_1/DynamicPartition_2_grad/Const*
T0*

Tidx0*
	keep_dims( 
Y
/gradients_1/DynamicPartition_2_grad/range/startConst*
value	B : *
dtype0
Y
/gradients_1/DynamicPartition_2_grad/range/deltaConst*
value	B :*
dtype0
Ź
)gradients_1/DynamicPartition_2_grad/rangeRange/gradients_1/DynamicPartition_2_grad/range/start(gradients_1/DynamicPartition_2_grad/Prod/gradients_1/DynamicPartition_2_grad/range/delta*

Tidx0
£
+gradients_1/DynamicPartition_2_grad/ReshapeReshape)gradients_1/DynamicPartition_2_grad/range)gradients_1/DynamicPartition_2_grad/Shape*
T0*
Tshape0

4gradients_1/DynamicPartition_2_grad/DynamicPartitionDynamicPartition+gradients_1/DynamicPartition_2_grad/ReshapeCast*
num_partitions*
T0
ū
1gradients_1/DynamicPartition_2_grad/DynamicStitchDynamicStitch4gradients_1/DynamicPartition_2_grad/DynamicPartition6gradients_1/DynamicPartition_2_grad/DynamicPartition:1gradients_1/zeros_likegradients_1/Mean_4_grad/truediv*
T0*
N
T
+gradients_1/DynamicPartition_2_grad/Shape_1ShapeSum_8*
T0*
out_type0
Æ
-gradients_1/DynamicPartition_2_grad/Reshape_1Reshape1gradients_1/DynamicPartition_2_grad/DynamicStitch+gradients_1/DynamicPartition_2_grad/Shape_1*
T0*
Tshape0
B
gradients_1/zeros_like_1	ZerosLikeDynamicPartition_1*
T0
Q
)gradients_1/DynamicPartition_1_grad/ShapeShapeCast*
T0*
out_type0
W
)gradients_1/DynamicPartition_1_grad/ConstConst*
dtype0*
valueB: 
¬
(gradients_1/DynamicPartition_1_grad/ProdProd)gradients_1/DynamicPartition_1_grad/Shape)gradients_1/DynamicPartition_1_grad/Const*

Tidx0*
	keep_dims( *
T0
Y
/gradients_1/DynamicPartition_1_grad/range/startConst*
value	B : *
dtype0
Y
/gradients_1/DynamicPartition_1_grad/range/deltaConst*
value	B :*
dtype0
Ź
)gradients_1/DynamicPartition_1_grad/rangeRange/gradients_1/DynamicPartition_1_grad/range/start(gradients_1/DynamicPartition_1_grad/Prod/gradients_1/DynamicPartition_1_grad/range/delta*

Tidx0
£
+gradients_1/DynamicPartition_1_grad/ReshapeReshape)gradients_1/DynamicPartition_1_grad/range)gradients_1/DynamicPartition_1_grad/Shape*
T0*
Tshape0

4gradients_1/DynamicPartition_1_grad/DynamicPartitionDynamicPartition+gradients_1/DynamicPartition_1_grad/ReshapeCast*
T0*
num_partitions
ż
1gradients_1/DynamicPartition_1_grad/DynamicStitchDynamicStitch4gradients_1/DynamicPartition_1_grad/DynamicPartition6gradients_1/DynamicPartition_1_grad/DynamicPartition:1gradients_1/zeros_like_1gradients_1/Mean_3_grad/truediv*
T0*
N
V
+gradients_1/DynamicPartition_1_grad/Shape_1ShapeMinimum*
T0*
out_type0
Æ
-gradients_1/DynamicPartition_1_grad/Reshape_1Reshape1gradients_1/DynamicPartition_1_grad/DynamicStitch+gradients_1/DynamicPartition_1_grad/Shape_1*
T0*
Tshape0
p
%gradients_1/Mean_2/input_grad/unstackUnpackgradients_1/Mean_2_grad/truediv*
T0*	
num*

axis 
E
gradients_1/Sum_8_grad/ShapeShapestack*
T0*
out_type0
v
gradients_1/Sum_8_grad/SizeConst*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape*
value	B :*
dtype0

gradients_1/Sum_8_grad/addAddV2Sum_8/reduction_indicesgradients_1/Sum_8_grad/Size*
T0*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape

gradients_1/Sum_8_grad/modFloorModgradients_1/Sum_8_grad/addgradients_1/Sum_8_grad/Size*
T0*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape
x
gradients_1/Sum_8_grad/Shape_1Const*
dtype0*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape*
valueB 
}
"gradients_1/Sum_8_grad/range/startConst*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape*
value	B : *
dtype0
}
"gradients_1/Sum_8_grad/range/deltaConst*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape*
value	B :*
dtype0
Ē
gradients_1/Sum_8_grad/rangeRange"gradients_1/Sum_8_grad/range/startgradients_1/Sum_8_grad/Size"gradients_1/Sum_8_grad/range/delta*

Tidx0*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape
|
!gradients_1/Sum_8_grad/Fill/valueConst*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape*
value	B :*
dtype0
²
gradients_1/Sum_8_grad/FillFillgradients_1/Sum_8_grad/Shape_1!gradients_1/Sum_8_grad/Fill/value*
T0*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape*

index_type0
ķ
$gradients_1/Sum_8_grad/DynamicStitchDynamicStitchgradients_1/Sum_8_grad/rangegradients_1/Sum_8_grad/modgradients_1/Sum_8_grad/Shapegradients_1/Sum_8_grad/Fill*
N*
T0*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape
{
 gradients_1/Sum_8_grad/Maximum/yConst*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape*
value	B :*
dtype0
«
gradients_1/Sum_8_grad/MaximumMaximum$gradients_1/Sum_8_grad/DynamicStitch gradients_1/Sum_8_grad/Maximum/y*
T0*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape
£
gradients_1/Sum_8_grad/floordivFloorDivgradients_1/Sum_8_grad/Shapegradients_1/Sum_8_grad/Maximum*
T0*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape

gradients_1/Sum_8_grad/ReshapeReshape-gradients_1/DynamicPartition_2_grad/Reshape_1$gradients_1/Sum_8_grad/DynamicStitch*
T0*
Tshape0

gradients_1/Sum_8_grad/TileTilegradients_1/Sum_8_grad/Reshapegradients_1/Sum_8_grad/floordiv*

Tmultiples0*
T0
G
gradients_1/Minimum_grad/ShapeShapemul_8*
T0*
out_type0
I
 gradients_1/Minimum_grad/Shape_1Shapemul_9*
T0*
out_type0
q
 gradients_1/Minimum_grad/Shape_2Shape-gradients_1/DynamicPartition_1_grad/Reshape_1*
T0*
out_type0
Q
$gradients_1/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0

gradients_1/Minimum_grad/zerosFill gradients_1/Minimum_grad/Shape_2$gradients_1/Minimum_grad/zeros/Const*
T0*

index_type0
F
"gradients_1/Minimum_grad/LessEqual	LessEqualmul_8mul_9*
T0

.gradients_1/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/Minimum_grad/Shape gradients_1/Minimum_grad/Shape_1*
T0
„
gradients_1/Minimum_grad/SelectSelect"gradients_1/Minimum_grad/LessEqual-gradients_1/DynamicPartition_1_grad/Reshape_1gradients_1/Minimum_grad/zeros*
T0

gradients_1/Minimum_grad/SumSumgradients_1/Minimum_grad/Select.gradients_1/Minimum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0

 gradients_1/Minimum_grad/ReshapeReshapegradients_1/Minimum_grad/Sumgradients_1/Minimum_grad/Shape*
T0*
Tshape0
§
!gradients_1/Minimum_grad/Select_1Select"gradients_1/Minimum_grad/LessEqualgradients_1/Minimum_grad/zeros-gradients_1/DynamicPartition_1_grad/Reshape_1*
T0
 
gradients_1/Minimum_grad/Sum_1Sum!gradients_1/Minimum_grad/Select_10gradients_1/Minimum_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 

"gradients_1/Minimum_grad/Reshape_1Reshapegradients_1/Minimum_grad/Sum_1 gradients_1/Minimum_grad/Shape_1*
T0*
Tshape0
y
)gradients_1/Minimum_grad/tuple/group_depsNoOp!^gradients_1/Minimum_grad/Reshape#^gradients_1/Minimum_grad/Reshape_1
É
1gradients_1/Minimum_grad/tuple/control_dependencyIdentity gradients_1/Minimum_grad/Reshape*^gradients_1/Minimum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/Minimum_grad/Reshape
Ļ
3gradients_1/Minimum_grad/tuple/control_dependency_1Identity"gradients_1/Minimum_grad/Reshape_1*^gradients_1/Minimum_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients_1/Minimum_grad/Reshape_1
S
%gradients_1/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients_1/Mean_1_grad/ReshapeReshape%gradients_1/Mean_2/input_grad/unstack%gradients_1/Mean_1_grad/Reshape/shape*
T0*
Tshape0
S
gradients_1/Mean_1_grad/ShapeShapeDynamicPartition:1*
T0*
out_type0

gradients_1/Mean_1_grad/TileTilegradients_1/Mean_1_grad/Reshapegradients_1/Mean_1_grad/Shape*

Tmultiples0*
T0
U
gradients_1/Mean_1_grad/Shape_1ShapeDynamicPartition:1*
T0*
out_type0
H
gradients_1/Mean_1_grad/Shape_2Const*
dtype0*
valueB 
K
gradients_1/Mean_1_grad/ConstConst*
dtype0*
valueB: 

gradients_1/Mean_1_grad/ProdProdgradients_1/Mean_1_grad/Shape_1gradients_1/Mean_1_grad/Const*

Tidx0*
	keep_dims( *
T0
M
gradients_1/Mean_1_grad/Const_1Const*
valueB: *
dtype0

gradients_1/Mean_1_grad/Prod_1Prodgradients_1/Mean_1_grad/Shape_2gradients_1/Mean_1_grad/Const_1*
T0*

Tidx0*
	keep_dims( 
K
!gradients_1/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0
v
gradients_1/Mean_1_grad/MaximumMaximumgradients_1/Mean_1_grad/Prod_1!gradients_1/Mean_1_grad/Maximum/y*
T0
t
 gradients_1/Mean_1_grad/floordivFloorDivgradients_1/Mean_1_grad/Prodgradients_1/Mean_1_grad/Maximum*
T0
n
gradients_1/Mean_1_grad/CastCast gradients_1/Mean_1_grad/floordiv*

SrcT0*
Truncate( *

DstT0
o
gradients_1/Mean_1_grad/truedivRealDivgradients_1/Mean_1_grad/Tilegradients_1/Mean_1_grad/Cast*
T0
e
gradients_1/stack_grad/unstackUnpackgradients_1/Sum_8_grad/Tile*
T0*	
num*

axis
P
'gradients_1/stack_grad/tuple/group_depsNoOp^gradients_1/stack_grad/unstack
Į
/gradients_1/stack_grad/tuple/control_dependencyIdentitygradients_1/stack_grad/unstack(^gradients_1/stack_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/stack_grad/unstack
Å
1gradients_1/stack_grad/tuple/control_dependency_1Identity gradients_1/stack_grad/unstack:1(^gradients_1/stack_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/stack_grad/unstack
Å
1gradients_1/stack_grad/tuple/control_dependency_2Identity gradients_1/stack_grad/unstack:2(^gradients_1/stack_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/stack_grad/unstack
Å
1gradients_1/stack_grad/tuple/control_dependency_3Identity gradients_1/stack_grad/unstack:3(^gradients_1/stack_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/stack_grad/unstack
C
gradients_1/mul_8_grad/ShapeShapeExp*
T0*
out_type0
L
gradients_1/mul_8_grad/Shape_1Shape
ExpandDims*
T0*
out_type0

,gradients_1/mul_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_8_grad/Shapegradients_1/mul_8_grad/Shape_1*
T0
i
gradients_1/mul_8_grad/MulMul1gradients_1/Minimum_grad/tuple/control_dependency
ExpandDims*
T0

gradients_1/mul_8_grad/SumSumgradients_1/mul_8_grad/Mul,gradients_1/mul_8_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/mul_8_grad/ReshapeReshapegradients_1/mul_8_grad/Sumgradients_1/mul_8_grad/Shape*
T0*
Tshape0
d
gradients_1/mul_8_grad/Mul_1MulExp1gradients_1/Minimum_grad/tuple/control_dependency*
T0

gradients_1/mul_8_grad/Sum_1Sumgradients_1/mul_8_grad/Mul_1.gradients_1/mul_8_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

 gradients_1/mul_8_grad/Reshape_1Reshapegradients_1/mul_8_grad/Sum_1gradients_1/mul_8_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/mul_8_grad/tuple/group_depsNoOp^gradients_1/mul_8_grad/Reshape!^gradients_1/mul_8_grad/Reshape_1
Į
/gradients_1/mul_8_grad/tuple/control_dependencyIdentitygradients_1/mul_8_grad/Reshape(^gradients_1/mul_8_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/mul_8_grad/Reshape
Ē
1gradients_1/mul_8_grad/tuple/control_dependency_1Identity gradients_1/mul_8_grad/Reshape_1(^gradients_1/mul_8_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/mul_8_grad/Reshape_1
O
gradients_1/mul_9_grad/ShapeShapeclip_by_value_1*
T0*
out_type0
L
gradients_1/mul_9_grad/Shape_1Shape
ExpandDims*
T0*
out_type0

,gradients_1/mul_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_9_grad/Shapegradients_1/mul_9_grad/Shape_1*
T0
k
gradients_1/mul_9_grad/MulMul3gradients_1/Minimum_grad/tuple/control_dependency_1
ExpandDims*
T0

gradients_1/mul_9_grad/SumSumgradients_1/mul_9_grad/Mul,gradients_1/mul_9_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
z
gradients_1/mul_9_grad/ReshapeReshapegradients_1/mul_9_grad/Sumgradients_1/mul_9_grad/Shape*
T0*
Tshape0
r
gradients_1/mul_9_grad/Mul_1Mulclip_by_value_13gradients_1/Minimum_grad/tuple/control_dependency_1*
T0

gradients_1/mul_9_grad/Sum_1Sumgradients_1/mul_9_grad/Mul_1.gradients_1/mul_9_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

 gradients_1/mul_9_grad/Reshape_1Reshapegradients_1/mul_9_grad/Sum_1gradients_1/mul_9_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/mul_9_grad/tuple/group_depsNoOp^gradients_1/mul_9_grad/Reshape!^gradients_1/mul_9_grad/Reshape_1
Į
/gradients_1/mul_9_grad/tuple/control_dependencyIdentitygradients_1/mul_9_grad/Reshape(^gradients_1/mul_9_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/mul_9_grad/Reshape
Ē
1gradients_1/mul_9_grad/tuple/control_dependency_1Identity gradients_1/mul_9_grad/Reshape_1(^gradients_1/mul_9_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/mul_9_grad/Reshape_1
@
gradients_1/zeros_like_2	ZerosLikeDynamicPartition*
T0
O
'gradients_1/DynamicPartition_grad/ShapeShapeCast*
T0*
out_type0
U
'gradients_1/DynamicPartition_grad/ConstConst*
valueB: *
dtype0
¦
&gradients_1/DynamicPartition_grad/ProdProd'gradients_1/DynamicPartition_grad/Shape'gradients_1/DynamicPartition_grad/Const*
T0*

Tidx0*
	keep_dims( 
W
-gradients_1/DynamicPartition_grad/range/startConst*
dtype0*
value	B : 
W
-gradients_1/DynamicPartition_grad/range/deltaConst*
value	B :*
dtype0
Ā
'gradients_1/DynamicPartition_grad/rangeRange-gradients_1/DynamicPartition_grad/range/start&gradients_1/DynamicPartition_grad/Prod-gradients_1/DynamicPartition_grad/range/delta*

Tidx0

)gradients_1/DynamicPartition_grad/ReshapeReshape'gradients_1/DynamicPartition_grad/range'gradients_1/DynamicPartition_grad/Shape*
T0*
Tshape0

2gradients_1/DynamicPartition_grad/DynamicPartitionDynamicPartition)gradients_1/DynamicPartition_grad/ReshapeCast*
num_partitions*
T0
÷
/gradients_1/DynamicPartition_grad/DynamicStitchDynamicStitch2gradients_1/DynamicPartition_grad/DynamicPartition4gradients_1/DynamicPartition_grad/DynamicPartition:1gradients_1/zeros_like_2gradients_1/Mean_1_grad/truediv*
T0*
N
T
)gradients_1/DynamicPartition_grad/Shape_1ShapeMaximum*
T0*
out_type0
©
+gradients_1/DynamicPartition_grad/Reshape_1Reshape/gradients_1/DynamicPartition_grad/DynamicStitch)gradients_1/DynamicPartition_grad/Shape_1*
T0*
Tshape0

Bgradients_1/softmax_cross_entropy_with_logits/Reshape_2_grad/ShapeShape!softmax_cross_entropy_with_logits*
T0*
out_type0
Ū
Dgradients_1/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeReshape/gradients_1/stack_grad/tuple/control_dependencyBgradients_1/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape*
T0*
Tshape0

Dgradients_1/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_1*
T0*
out_type0
į
Fgradients_1/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeReshape1gradients_1/stack_grad/tuple/control_dependency_1Dgradients_1/softmax_cross_entropy_with_logits_1/Reshape_2_grad/Shape*
T0*
Tshape0

Dgradients_1/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_2*
T0*
out_type0
į
Fgradients_1/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ReshapeReshape1gradients_1/stack_grad/tuple/control_dependency_2Dgradients_1/softmax_cross_entropy_with_logits_2/Reshape_2_grad/Shape*
T0*
Tshape0

Dgradients_1/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_3*
T0*
out_type0
į
Fgradients_1/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeReshape1gradients_1/stack_grad/tuple/control_dependency_3Dgradients_1/softmax_cross_entropy_with_logits_3/Reshape_2_grad/Shape*
T0*
Tshape0
a
&gradients_1/clip_by_value_1_grad/ShapeShapeclip_by_value_1/Minimum*
T0*
out_type0
Q
(gradients_1/clip_by_value_1_grad/Shape_1Const*
valueB *
dtype0
{
(gradients_1/clip_by_value_1_grad/Shape_2Shape/gradients_1/mul_9_grad/tuple/control_dependency*
T0*
out_type0
Y
,gradients_1/clip_by_value_1_grad/zeros/ConstConst*
valueB
 *    *
dtype0
”
&gradients_1/clip_by_value_1_grad/zerosFill(gradients_1/clip_by_value_1_grad/Shape_2,gradients_1/clip_by_value_1_grad/zeros/Const*
T0*

index_type0
f
-gradients_1/clip_by_value_1_grad/GreaterEqualGreaterEqualclip_by_value_1/Minimumsub_2*
T0
Ŗ
6gradients_1/clip_by_value_1_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients_1/clip_by_value_1_grad/Shape(gradients_1/clip_by_value_1_grad/Shape_1*
T0
Ā
'gradients_1/clip_by_value_1_grad/SelectSelect-gradients_1/clip_by_value_1_grad/GreaterEqual/gradients_1/mul_9_grad/tuple/control_dependency&gradients_1/clip_by_value_1_grad/zeros*
T0
²
$gradients_1/clip_by_value_1_grad/SumSum'gradients_1/clip_by_value_1_grad/Select6gradients_1/clip_by_value_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0

(gradients_1/clip_by_value_1_grad/ReshapeReshape$gradients_1/clip_by_value_1_grad/Sum&gradients_1/clip_by_value_1_grad/Shape*
T0*
Tshape0
Ä
)gradients_1/clip_by_value_1_grad/Select_1Select-gradients_1/clip_by_value_1_grad/GreaterEqual&gradients_1/clip_by_value_1_grad/zeros/gradients_1/mul_9_grad/tuple/control_dependency*
T0
ø
&gradients_1/clip_by_value_1_grad/Sum_1Sum)gradients_1/clip_by_value_1_grad/Select_18gradients_1/clip_by_value_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

*gradients_1/clip_by_value_1_grad/Reshape_1Reshape&gradients_1/clip_by_value_1_grad/Sum_1(gradients_1/clip_by_value_1_grad/Shape_1*
T0*
Tshape0

1gradients_1/clip_by_value_1_grad/tuple/group_depsNoOp)^gradients_1/clip_by_value_1_grad/Reshape+^gradients_1/clip_by_value_1_grad/Reshape_1
é
9gradients_1/clip_by_value_1_grad/tuple/control_dependencyIdentity(gradients_1/clip_by_value_1_grad/Reshape2^gradients_1/clip_by_value_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/clip_by_value_1_grad/Reshape
ļ
;gradients_1/clip_by_value_1_grad/tuple/control_dependency_1Identity*gradients_1/clip_by_value_1_grad/Reshape_12^gradients_1/clip_by_value_1_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/clip_by_value_1_grad/Reshape_1
S
gradients_1/Maximum_grad/ShapeShapeSquaredDifference*
T0*
out_type0
W
 gradients_1/Maximum_grad/Shape_1ShapeSquaredDifference_1*
T0*
out_type0
o
 gradients_1/Maximum_grad/Shape_2Shape+gradients_1/DynamicPartition_grad/Reshape_1*
T0*
out_type0
Q
$gradients_1/Maximum_grad/zeros/ConstConst*
valueB
 *    *
dtype0

gradients_1/Maximum_grad/zerosFill gradients_1/Maximum_grad/Shape_2$gradients_1/Maximum_grad/zeros/Const*
T0*

index_type0
f
%gradients_1/Maximum_grad/GreaterEqualGreaterEqualSquaredDifferenceSquaredDifference_1*
T0

.gradients_1/Maximum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/Maximum_grad/Shape gradients_1/Maximum_grad/Shape_1*
T0
¦
gradients_1/Maximum_grad/SelectSelect%gradients_1/Maximum_grad/GreaterEqual+gradients_1/DynamicPartition_grad/Reshape_1gradients_1/Maximum_grad/zeros*
T0

gradients_1/Maximum_grad/SumSumgradients_1/Maximum_grad/Select.gradients_1/Maximum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0

 gradients_1/Maximum_grad/ReshapeReshapegradients_1/Maximum_grad/Sumgradients_1/Maximum_grad/Shape*
T0*
Tshape0
Ø
!gradients_1/Maximum_grad/Select_1Select%gradients_1/Maximum_grad/GreaterEqualgradients_1/Maximum_grad/zeros+gradients_1/DynamicPartition_grad/Reshape_1*
T0
 
gradients_1/Maximum_grad/Sum_1Sum!gradients_1/Maximum_grad/Select_10gradients_1/Maximum_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 

"gradients_1/Maximum_grad/Reshape_1Reshapegradients_1/Maximum_grad/Sum_1 gradients_1/Maximum_grad/Shape_1*
T0*
Tshape0
y
)gradients_1/Maximum_grad/tuple/group_depsNoOp!^gradients_1/Maximum_grad/Reshape#^gradients_1/Maximum_grad/Reshape_1
É
1gradients_1/Maximum_grad/tuple/control_dependencyIdentity gradients_1/Maximum_grad/Reshape*^gradients_1/Maximum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/Maximum_grad/Reshape
Ļ
3gradients_1/Maximum_grad/tuple/control_dependency_1Identity"gradients_1/Maximum_grad/Reshape_1*^gradients_1/Maximum_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients_1/Maximum_grad/Reshape_1
S
gradients_1/zeros_like_3	ZerosLike#softmax_cross_entropy_with_logits:1*
T0
t
Agradients_1/softmax_cross_entropy_with_logits_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
é
=gradients_1/softmax_cross_entropy_with_logits_grad/ExpandDims
ExpandDimsDgradients_1/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeAgradients_1/softmax_cross_entropy_with_logits_grad/ExpandDims/dim*
T0*

Tdim0
Ŗ
6gradients_1/softmax_cross_entropy_with_logits_grad/mulMul=gradients_1/softmax_cross_entropy_with_logits_grad/ExpandDims#softmax_cross_entropy_with_logits:1*
T0

=gradients_1/softmax_cross_entropy_with_logits_grad/LogSoftmax
LogSoftmax)softmax_cross_entropy_with_logits/Reshape*
T0

6gradients_1/softmax_cross_entropy_with_logits_grad/NegNeg=gradients_1/softmax_cross_entropy_with_logits_grad/LogSoftmax*
T0
v
Cgradients_1/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dimConst*
dtype0*
valueB :
’’’’’’’’’
ķ
?gradients_1/softmax_cross_entropy_with_logits_grad/ExpandDims_1
ExpandDimsDgradients_1/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeCgradients_1/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim*

Tdim0*
T0
Į
8gradients_1/softmax_cross_entropy_with_logits_grad/mul_1Mul?gradients_1/softmax_cross_entropy_with_logits_grad/ExpandDims_16gradients_1/softmax_cross_entropy_with_logits_grad/Neg*
T0
æ
Cgradients_1/softmax_cross_entropy_with_logits_grad/tuple/group_depsNoOp7^gradients_1/softmax_cross_entropy_with_logits_grad/mul9^gradients_1/softmax_cross_entropy_with_logits_grad/mul_1
©
Kgradients_1/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyIdentity6gradients_1/softmax_cross_entropy_with_logits_grad/mulD^gradients_1/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients_1/softmax_cross_entropy_with_logits_grad/mul
Æ
Mgradients_1/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1Identity8gradients_1/softmax_cross_entropy_with_logits_grad/mul_1D^gradients_1/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients_1/softmax_cross_entropy_with_logits_grad/mul_1
U
gradients_1/zeros_like_4	ZerosLike%softmax_cross_entropy_with_logits_1:1*
T0
v
Cgradients_1/softmax_cross_entropy_with_logits_1_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
ļ
?gradients_1/softmax_cross_entropy_with_logits_1_grad/ExpandDims
ExpandDimsFgradients_1/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeCgradients_1/softmax_cross_entropy_with_logits_1_grad/ExpandDims/dim*

Tdim0*
T0
°
8gradients_1/softmax_cross_entropy_with_logits_1_grad/mulMul?gradients_1/softmax_cross_entropy_with_logits_1_grad/ExpandDims%softmax_cross_entropy_with_logits_1:1*
T0

?gradients_1/softmax_cross_entropy_with_logits_1_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_1/Reshape*
T0

8gradients_1/softmax_cross_entropy_with_logits_1_grad/NegNeg?gradients_1/softmax_cross_entropy_with_logits_1_grad/LogSoftmax*
T0
x
Egradients_1/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1/dimConst*
valueB :
’’’’’’’’’*
dtype0
ó
Agradients_1/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1
ExpandDimsFgradients_1/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeEgradients_1/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1/dim*

Tdim0*
T0
Ē
:gradients_1/softmax_cross_entropy_with_logits_1_grad/mul_1MulAgradients_1/softmax_cross_entropy_with_logits_1_grad/ExpandDims_18gradients_1/softmax_cross_entropy_with_logits_1_grad/Neg*
T0
Å
Egradients_1/softmax_cross_entropy_with_logits_1_grad/tuple/group_depsNoOp9^gradients_1/softmax_cross_entropy_with_logits_1_grad/mul;^gradients_1/softmax_cross_entropy_with_logits_1_grad/mul_1
±
Mgradients_1/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependencyIdentity8gradients_1/softmax_cross_entropy_with_logits_1_grad/mulF^gradients_1/softmax_cross_entropy_with_logits_1_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients_1/softmax_cross_entropy_with_logits_1_grad/mul
·
Ogradients_1/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependency_1Identity:gradients_1/softmax_cross_entropy_with_logits_1_grad/mul_1F^gradients_1/softmax_cross_entropy_with_logits_1_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/softmax_cross_entropy_with_logits_1_grad/mul_1
U
gradients_1/zeros_like_5	ZerosLike%softmax_cross_entropy_with_logits_2:1*
T0
v
Cgradients_1/softmax_cross_entropy_with_logits_2_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
ļ
?gradients_1/softmax_cross_entropy_with_logits_2_grad/ExpandDims
ExpandDimsFgradients_1/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ReshapeCgradients_1/softmax_cross_entropy_with_logits_2_grad/ExpandDims/dim*

Tdim0*
T0
°
8gradients_1/softmax_cross_entropy_with_logits_2_grad/mulMul?gradients_1/softmax_cross_entropy_with_logits_2_grad/ExpandDims%softmax_cross_entropy_with_logits_2:1*
T0

?gradients_1/softmax_cross_entropy_with_logits_2_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_2/Reshape*
T0

8gradients_1/softmax_cross_entropy_with_logits_2_grad/NegNeg?gradients_1/softmax_cross_entropy_with_logits_2_grad/LogSoftmax*
T0
x
Egradients_1/softmax_cross_entropy_with_logits_2_grad/ExpandDims_1/dimConst*
valueB :
’’’’’’’’’*
dtype0
ó
Agradients_1/softmax_cross_entropy_with_logits_2_grad/ExpandDims_1
ExpandDimsFgradients_1/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ReshapeEgradients_1/softmax_cross_entropy_with_logits_2_grad/ExpandDims_1/dim*

Tdim0*
T0
Ē
:gradients_1/softmax_cross_entropy_with_logits_2_grad/mul_1MulAgradients_1/softmax_cross_entropy_with_logits_2_grad/ExpandDims_18gradients_1/softmax_cross_entropy_with_logits_2_grad/Neg*
T0
Å
Egradients_1/softmax_cross_entropy_with_logits_2_grad/tuple/group_depsNoOp9^gradients_1/softmax_cross_entropy_with_logits_2_grad/mul;^gradients_1/softmax_cross_entropy_with_logits_2_grad/mul_1
±
Mgradients_1/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependencyIdentity8gradients_1/softmax_cross_entropy_with_logits_2_grad/mulF^gradients_1/softmax_cross_entropy_with_logits_2_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients_1/softmax_cross_entropy_with_logits_2_grad/mul
·
Ogradients_1/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependency_1Identity:gradients_1/softmax_cross_entropy_with_logits_2_grad/mul_1F^gradients_1/softmax_cross_entropy_with_logits_2_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/softmax_cross_entropy_with_logits_2_grad/mul_1
U
gradients_1/zeros_like_6	ZerosLike%softmax_cross_entropy_with_logits_3:1*
T0
v
Cgradients_1/softmax_cross_entropy_with_logits_3_grad/ExpandDims/dimConst*
dtype0*
valueB :
’’’’’’’’’
ļ
?gradients_1/softmax_cross_entropy_with_logits_3_grad/ExpandDims
ExpandDimsFgradients_1/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeCgradients_1/softmax_cross_entropy_with_logits_3_grad/ExpandDims/dim*
T0*

Tdim0
°
8gradients_1/softmax_cross_entropy_with_logits_3_grad/mulMul?gradients_1/softmax_cross_entropy_with_logits_3_grad/ExpandDims%softmax_cross_entropy_with_logits_3:1*
T0

?gradients_1/softmax_cross_entropy_with_logits_3_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_3/Reshape*
T0

8gradients_1/softmax_cross_entropy_with_logits_3_grad/NegNeg?gradients_1/softmax_cross_entropy_with_logits_3_grad/LogSoftmax*
T0
x
Egradients_1/softmax_cross_entropy_with_logits_3_grad/ExpandDims_1/dimConst*
dtype0*
valueB :
’’’’’’’’’
ó
Agradients_1/softmax_cross_entropy_with_logits_3_grad/ExpandDims_1
ExpandDimsFgradients_1/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeEgradients_1/softmax_cross_entropy_with_logits_3_grad/ExpandDims_1/dim*

Tdim0*
T0
Ē
:gradients_1/softmax_cross_entropy_with_logits_3_grad/mul_1MulAgradients_1/softmax_cross_entropy_with_logits_3_grad/ExpandDims_18gradients_1/softmax_cross_entropy_with_logits_3_grad/Neg*
T0
Å
Egradients_1/softmax_cross_entropy_with_logits_3_grad/tuple/group_depsNoOp9^gradients_1/softmax_cross_entropy_with_logits_3_grad/mul;^gradients_1/softmax_cross_entropy_with_logits_3_grad/mul_1
±
Mgradients_1/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependencyIdentity8gradients_1/softmax_cross_entropy_with_logits_3_grad/mulF^gradients_1/softmax_cross_entropy_with_logits_3_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients_1/softmax_cross_entropy_with_logits_3_grad/mul
·
Ogradients_1/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependency_1Identity:gradients_1/softmax_cross_entropy_with_logits_3_grad/mul_1F^gradients_1/softmax_cross_entropy_with_logits_3_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/softmax_cross_entropy_with_logits_3_grad/mul_1
U
.gradients_1/clip_by_value_1/Minimum_grad/ShapeShapeExp*
T0*
out_type0
Y
0gradients_1/clip_by_value_1/Minimum_grad/Shape_1Const*
valueB *
dtype0

0gradients_1/clip_by_value_1/Minimum_grad/Shape_2Shape9gradients_1/clip_by_value_1_grad/tuple/control_dependency*
T0*
out_type0
a
4gradients_1/clip_by_value_1/Minimum_grad/zeros/ConstConst*
dtype0*
valueB
 *    
¹
.gradients_1/clip_by_value_1/Minimum_grad/zerosFill0gradients_1/clip_by_value_1/Minimum_grad/Shape_24gradients_1/clip_by_value_1/Minimum_grad/zeros/Const*
T0*

index_type0
U
2gradients_1/clip_by_value_1/Minimum_grad/LessEqual	LessEqualExpadd_26*
T0
Ā
>gradients_1/clip_by_value_1/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients_1/clip_by_value_1/Minimum_grad/Shape0gradients_1/clip_by_value_1/Minimum_grad/Shape_1*
T0
į
/gradients_1/clip_by_value_1/Minimum_grad/SelectSelect2gradients_1/clip_by_value_1/Minimum_grad/LessEqual9gradients_1/clip_by_value_1_grad/tuple/control_dependency.gradients_1/clip_by_value_1/Minimum_grad/zeros*
T0
Ź
,gradients_1/clip_by_value_1/Minimum_grad/SumSum/gradients_1/clip_by_value_1/Minimum_grad/Select>gradients_1/clip_by_value_1/Minimum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
°
0gradients_1/clip_by_value_1/Minimum_grad/ReshapeReshape,gradients_1/clip_by_value_1/Minimum_grad/Sum.gradients_1/clip_by_value_1/Minimum_grad/Shape*
T0*
Tshape0
ć
1gradients_1/clip_by_value_1/Minimum_grad/Select_1Select2gradients_1/clip_by_value_1/Minimum_grad/LessEqual.gradients_1/clip_by_value_1/Minimum_grad/zeros9gradients_1/clip_by_value_1_grad/tuple/control_dependency*
T0
Š
.gradients_1/clip_by_value_1/Minimum_grad/Sum_1Sum1gradients_1/clip_by_value_1/Minimum_grad/Select_1@gradients_1/clip_by_value_1/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
¶
2gradients_1/clip_by_value_1/Minimum_grad/Reshape_1Reshape.gradients_1/clip_by_value_1/Minimum_grad/Sum_10gradients_1/clip_by_value_1/Minimum_grad/Shape_1*
T0*
Tshape0
©
9gradients_1/clip_by_value_1/Minimum_grad/tuple/group_depsNoOp1^gradients_1/clip_by_value_1/Minimum_grad/Reshape3^gradients_1/clip_by_value_1/Minimum_grad/Reshape_1

Agradients_1/clip_by_value_1/Minimum_grad/tuple/control_dependencyIdentity0gradients_1/clip_by_value_1/Minimum_grad/Reshape:^gradients_1/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients_1/clip_by_value_1/Minimum_grad/Reshape

Cgradients_1/clip_by_value_1/Minimum_grad/tuple/control_dependency_1Identity2gradients_1/clip_by_value_1/Minimum_grad/Reshape_1:^gradients_1/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients_1/clip_by_value_1/Minimum_grad/Reshape_1

)gradients_1/SquaredDifference_grad/scalarConst2^gradients_1/Maximum_grad/tuple/control_dependency*
valueB
 *   @*
dtype0

&gradients_1/SquaredDifference_grad/MulMul)gradients_1/SquaredDifference_grad/scalar1gradients_1/Maximum_grad/tuple/control_dependency*
T0

&gradients_1/SquaredDifference_grad/subSubextrinsic_returnsSum_122^gradients_1/Maximum_grad/tuple/control_dependency*
T0

(gradients_1/SquaredDifference_grad/mul_1Mul&gradients_1/SquaredDifference_grad/Mul&gradients_1/SquaredDifference_grad/sub*
T0
]
(gradients_1/SquaredDifference_grad/ShapeShapeextrinsic_returns*
T0*
out_type0
T
*gradients_1/SquaredDifference_grad/Shape_1ShapeSum_12*
T0*
out_type0
°
8gradients_1/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients_1/SquaredDifference_grad/Shape*gradients_1/SquaredDifference_grad/Shape_1*
T0
·
&gradients_1/SquaredDifference_grad/SumSum(gradients_1/SquaredDifference_grad/mul_18gradients_1/SquaredDifference_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 

*gradients_1/SquaredDifference_grad/ReshapeReshape&gradients_1/SquaredDifference_grad/Sum(gradients_1/SquaredDifference_grad/Shape*
T0*
Tshape0
»
(gradients_1/SquaredDifference_grad/Sum_1Sum(gradients_1/SquaredDifference_grad/mul_1:gradients_1/SquaredDifference_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
¤
,gradients_1/SquaredDifference_grad/Reshape_1Reshape(gradients_1/SquaredDifference_grad/Sum_1*gradients_1/SquaredDifference_grad/Shape_1*
T0*
Tshape0
d
&gradients_1/SquaredDifference_grad/NegNeg,gradients_1/SquaredDifference_grad/Reshape_1*
T0

3gradients_1/SquaredDifference_grad/tuple/group_depsNoOp'^gradients_1/SquaredDifference_grad/Neg+^gradients_1/SquaredDifference_grad/Reshape
ń
;gradients_1/SquaredDifference_grad/tuple/control_dependencyIdentity*gradients_1/SquaredDifference_grad/Reshape4^gradients_1/SquaredDifference_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/SquaredDifference_grad/Reshape
ė
=gradients_1/SquaredDifference_grad/tuple/control_dependency_1Identity&gradients_1/SquaredDifference_grad/Neg4^gradients_1/SquaredDifference_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients_1/SquaredDifference_grad/Neg

+gradients_1/SquaredDifference_1_grad/scalarConst4^gradients_1/Maximum_grad/tuple/control_dependency_1*
valueB
 *   @*
dtype0

(gradients_1/SquaredDifference_1_grad/MulMul+gradients_1/SquaredDifference_1_grad/scalar3gradients_1/Maximum_grad/tuple/control_dependency_1*
T0

(gradients_1/SquaredDifference_1_grad/subSubextrinsic_returnsadd_254^gradients_1/Maximum_grad/tuple/control_dependency_1*
T0

*gradients_1/SquaredDifference_1_grad/mul_1Mul(gradients_1/SquaredDifference_1_grad/Mul(gradients_1/SquaredDifference_1_grad/sub*
T0
_
*gradients_1/SquaredDifference_1_grad/ShapeShapeextrinsic_returns*
T0*
out_type0
V
,gradients_1/SquaredDifference_1_grad/Shape_1Shapeadd_25*
T0*
out_type0
¶
:gradients_1/SquaredDifference_1_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients_1/SquaredDifference_1_grad/Shape,gradients_1/SquaredDifference_1_grad/Shape_1*
T0
½
(gradients_1/SquaredDifference_1_grad/SumSum*gradients_1/SquaredDifference_1_grad/mul_1:gradients_1/SquaredDifference_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
¤
,gradients_1/SquaredDifference_1_grad/ReshapeReshape(gradients_1/SquaredDifference_1_grad/Sum*gradients_1/SquaredDifference_1_grad/Shape*
T0*
Tshape0
Į
*gradients_1/SquaredDifference_1_grad/Sum_1Sum*gradients_1/SquaredDifference_1_grad/mul_1<gradients_1/SquaredDifference_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
Ŗ
.gradients_1/SquaredDifference_1_grad/Reshape_1Reshape*gradients_1/SquaredDifference_1_grad/Sum_1,gradients_1/SquaredDifference_1_grad/Shape_1*
T0*
Tshape0
h
(gradients_1/SquaredDifference_1_grad/NegNeg.gradients_1/SquaredDifference_1_grad/Reshape_1*
T0

5gradients_1/SquaredDifference_1_grad/tuple/group_depsNoOp)^gradients_1/SquaredDifference_1_grad/Neg-^gradients_1/SquaredDifference_1_grad/Reshape
ł
=gradients_1/SquaredDifference_1_grad/tuple/control_dependencyIdentity,gradients_1/SquaredDifference_1_grad/Reshape6^gradients_1/SquaredDifference_1_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients_1/SquaredDifference_1_grad/Reshape
ó
?gradients_1/SquaredDifference_1_grad/tuple/control_dependency_1Identity(gradients_1/SquaredDifference_1_grad/Neg6^gradients_1/SquaredDifference_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/SquaredDifference_1_grad/Neg
t
@gradients_1/softmax_cross_entropy_with_logits/Reshape_grad/ShapeShapestrided_slice_21*
T0*
out_type0
ó
Bgradients_1/softmax_cross_entropy_with_logits/Reshape_grad/ReshapeReshapeKgradients_1/softmax_cross_entropy_with_logits_grad/tuple/control_dependency@gradients_1/softmax_cross_entropy_with_logits/Reshape_grad/Shape*
T0*
Tshape0
o
Bgradients_1/softmax_cross_entropy_with_logits/Reshape_1_grad/ShapeShape	Softmax_8*
T0*
out_type0
ł
Dgradients_1/softmax_cross_entropy_with_logits/Reshape_1_grad/ReshapeReshapeMgradients_1/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1Bgradients_1/softmax_cross_entropy_with_logits/Reshape_1_grad/Shape*
T0*
Tshape0
v
Bgradients_1/softmax_cross_entropy_with_logits_1/Reshape_grad/ShapeShapestrided_slice_23*
T0*
out_type0
ł
Dgradients_1/softmax_cross_entropy_with_logits_1/Reshape_grad/ReshapeReshapeMgradients_1/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependencyBgradients_1/softmax_cross_entropy_with_logits_1/Reshape_grad/Shape*
T0*
Tshape0
q
Dgradients_1/softmax_cross_entropy_with_logits_1/Reshape_1_grad/ShapeShape	Softmax_9*
T0*
out_type0
’
Fgradients_1/softmax_cross_entropy_with_logits_1/Reshape_1_grad/ReshapeReshapeOgradients_1/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependency_1Dgradients_1/softmax_cross_entropy_with_logits_1/Reshape_1_grad/Shape*
T0*
Tshape0
v
Bgradients_1/softmax_cross_entropy_with_logits_2/Reshape_grad/ShapeShapestrided_slice_25*
T0*
out_type0
ł
Dgradients_1/softmax_cross_entropy_with_logits_2/Reshape_grad/ReshapeReshapeMgradients_1/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependencyBgradients_1/softmax_cross_entropy_with_logits_2/Reshape_grad/Shape*
T0*
Tshape0
r
Dgradients_1/softmax_cross_entropy_with_logits_2/Reshape_1_grad/ShapeShape
Softmax_10*
T0*
out_type0
’
Fgradients_1/softmax_cross_entropy_with_logits_2/Reshape_1_grad/ReshapeReshapeOgradients_1/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependency_1Dgradients_1/softmax_cross_entropy_with_logits_2/Reshape_1_grad/Shape*
T0*
Tshape0
v
Bgradients_1/softmax_cross_entropy_with_logits_3/Reshape_grad/ShapeShapestrided_slice_27*
T0*
out_type0
ł
Dgradients_1/softmax_cross_entropy_with_logits_3/Reshape_grad/ReshapeReshapeMgradients_1/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependencyBgradients_1/softmax_cross_entropy_with_logits_3/Reshape_grad/Shape*
T0*
Tshape0
r
Dgradients_1/softmax_cross_entropy_with_logits_3/Reshape_1_grad/ShapeShape
Softmax_11*
T0*
out_type0
’
Fgradients_1/softmax_cross_entropy_with_logits_3/Reshape_1_grad/ReshapeReshapeOgradients_1/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependency_1Dgradients_1/softmax_cross_entropy_with_logits_3/Reshape_1_grad/Shape*
T0*
Tshape0
Ń
gradients_1/AddNAddN/gradients_1/mul_8_grad/tuple/control_dependencyAgradients_1/clip_by_value_1/Minimum_grad/tuple/control_dependency*
N*
T0*1
_class'
%#loc:@gradients_1/mul_8_grad/Reshape
?
gradients_1/Exp_grad/mulMulgradients_1/AddNExp*
T0
X
gradients_1/Sum_12_grad/ShapeShapeextrinsic_value/BiasAdd*
T0*
out_type0
x
gradients_1/Sum_12_grad/SizeConst*0
_class&
$"loc:@gradients_1/Sum_12_grad/Shape*
value	B :*
dtype0

gradients_1/Sum_12_grad/addAddV2Sum_12/reduction_indicesgradients_1/Sum_12_grad/Size*
T0*0
_class&
$"loc:@gradients_1/Sum_12_grad/Shape

gradients_1/Sum_12_grad/modFloorModgradients_1/Sum_12_grad/addgradients_1/Sum_12_grad/Size*
T0*0
_class&
$"loc:@gradients_1/Sum_12_grad/Shape
z
gradients_1/Sum_12_grad/Shape_1Const*0
_class&
$"loc:@gradients_1/Sum_12_grad/Shape*
valueB *
dtype0

#gradients_1/Sum_12_grad/range/startConst*0
_class&
$"loc:@gradients_1/Sum_12_grad/Shape*
value	B : *
dtype0

#gradients_1/Sum_12_grad/range/deltaConst*
dtype0*0
_class&
$"loc:@gradients_1/Sum_12_grad/Shape*
value	B :
Ģ
gradients_1/Sum_12_grad/rangeRange#gradients_1/Sum_12_grad/range/startgradients_1/Sum_12_grad/Size#gradients_1/Sum_12_grad/range/delta*0
_class&
$"loc:@gradients_1/Sum_12_grad/Shape*

Tidx0
~
"gradients_1/Sum_12_grad/Fill/valueConst*
dtype0*0
_class&
$"loc:@gradients_1/Sum_12_grad/Shape*
value	B :
¶
gradients_1/Sum_12_grad/FillFillgradients_1/Sum_12_grad/Shape_1"gradients_1/Sum_12_grad/Fill/value*
T0*0
_class&
$"loc:@gradients_1/Sum_12_grad/Shape*

index_type0
ó
%gradients_1/Sum_12_grad/DynamicStitchDynamicStitchgradients_1/Sum_12_grad/rangegradients_1/Sum_12_grad/modgradients_1/Sum_12_grad/Shapegradients_1/Sum_12_grad/Fill*
T0*0
_class&
$"loc:@gradients_1/Sum_12_grad/Shape*
N
}
!gradients_1/Sum_12_grad/Maximum/yConst*0
_class&
$"loc:@gradients_1/Sum_12_grad/Shape*
value	B :*
dtype0
Æ
gradients_1/Sum_12_grad/MaximumMaximum%gradients_1/Sum_12_grad/DynamicStitch!gradients_1/Sum_12_grad/Maximum/y*
T0*0
_class&
$"loc:@gradients_1/Sum_12_grad/Shape
§
 gradients_1/Sum_12_grad/floordivFloorDivgradients_1/Sum_12_grad/Shapegradients_1/Sum_12_grad/Maximum*
T0*0
_class&
$"loc:@gradients_1/Sum_12_grad/Shape
§
gradients_1/Sum_12_grad/ReshapeReshape=gradients_1/SquaredDifference_grad/tuple/control_dependency_1%gradients_1/Sum_12_grad/DynamicStitch*
T0*
Tshape0

gradients_1/Sum_12_grad/TileTilegradients_1/Sum_12_grad/Reshape gradients_1/Sum_12_grad/floordiv*

Tmultiples0*
T0
Y
gradients_1/add_25_grad/ShapeShapeextrinsic_value_estimate*
T0*
out_type0
P
gradients_1/add_25_grad/Shape_1Shapeclip_by_value*
T0*
out_type0

-gradients_1/add_25_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/add_25_grad/Shapegradients_1/add_25_grad/Shape_1*
T0
ø
gradients_1/add_25_grad/SumSum?gradients_1/SquaredDifference_1_grad/tuple/control_dependency_1-gradients_1/add_25_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
}
gradients_1/add_25_grad/ReshapeReshapegradients_1/add_25_grad/Sumgradients_1/add_25_grad/Shape*
T0*
Tshape0
¼
gradients_1/add_25_grad/Sum_1Sum?gradients_1/SquaredDifference_1_grad/tuple/control_dependency_1/gradients_1/add_25_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 

!gradients_1/add_25_grad/Reshape_1Reshapegradients_1/add_25_grad/Sum_1gradients_1/add_25_grad/Shape_1*
T0*
Tshape0
v
(gradients_1/add_25_grad/tuple/group_depsNoOp ^gradients_1/add_25_grad/Reshape"^gradients_1/add_25_grad/Reshape_1
Å
0gradients_1/add_25_grad/tuple/control_dependencyIdentitygradients_1/add_25_grad/Reshape)^gradients_1/add_25_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients_1/add_25_grad/Reshape
Ė
2gradients_1/add_25_grad/tuple/control_dependency_1Identity!gradients_1/add_25_grad/Reshape_1)^gradients_1/add_25_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/add_25_grad/Reshape_1
W
'gradients_1/strided_slice_21_grad/ShapeShapeaction_probs*
T0*
out_type0
ł
2gradients_1/strided_slice_21_grad/StridedSliceGradStridedSliceGrad'gradients_1/strided_slice_21_grad/Shapestrided_slice_21/stackstrided_slice_21/stack_1strided_slice_21/stack_2Bgradients_1/softmax_cross_entropy_with_logits/Reshape_grad/Reshape*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
Index0*
T0

gradients_1/Softmax_8_grad/mulMulDgradients_1/softmax_cross_entropy_with_logits/Reshape_1_grad/Reshape	Softmax_8*
T0
c
0gradients_1/Softmax_8_grad/Sum/reduction_indicesConst*
dtype0*
valueB :
’’’’’’’’’

gradients_1/Softmax_8_grad/SumSumgradients_1/Softmax_8_grad/mul0gradients_1/Softmax_8_grad/Sum/reduction_indices*
T0*

Tidx0*
	keep_dims(

gradients_1/Softmax_8_grad/subSubDgradients_1/softmax_cross_entropy_with_logits/Reshape_1_grad/Reshapegradients_1/Softmax_8_grad/Sum*
T0
[
 gradients_1/Softmax_8_grad/mul_1Mulgradients_1/Softmax_8_grad/sub	Softmax_8*
T0
W
'gradients_1/strided_slice_23_grad/ShapeShapeaction_probs*
T0*
out_type0
ū
2gradients_1/strided_slice_23_grad/StridedSliceGradStridedSliceGrad'gradients_1/strided_slice_23_grad/Shapestrided_slice_23/stackstrided_slice_23/stack_1strided_slice_23/stack_2Dgradients_1/softmax_cross_entropy_with_logits_1/Reshape_grad/Reshape*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
Index0*
T0

gradients_1/Softmax_9_grad/mulMulFgradients_1/softmax_cross_entropy_with_logits_1/Reshape_1_grad/Reshape	Softmax_9*
T0
c
0gradients_1/Softmax_9_grad/Sum/reduction_indicesConst*
valueB :
’’’’’’’’’*
dtype0

gradients_1/Softmax_9_grad/SumSumgradients_1/Softmax_9_grad/mul0gradients_1/Softmax_9_grad/Sum/reduction_indices*
T0*

Tidx0*
	keep_dims(

gradients_1/Softmax_9_grad/subSubFgradients_1/softmax_cross_entropy_with_logits_1/Reshape_1_grad/Reshapegradients_1/Softmax_9_grad/Sum*
T0
[
 gradients_1/Softmax_9_grad/mul_1Mulgradients_1/Softmax_9_grad/sub	Softmax_9*
T0
W
'gradients_1/strided_slice_25_grad/ShapeShapeaction_probs*
T0*
out_type0
ū
2gradients_1/strided_slice_25_grad/StridedSliceGradStridedSliceGrad'gradients_1/strided_slice_25_grad/Shapestrided_slice_25/stackstrided_slice_25/stack_1strided_slice_25/stack_2Dgradients_1/softmax_cross_entropy_with_logits_2/Reshape_grad/Reshape*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask

gradients_1/Softmax_10_grad/mulMulFgradients_1/softmax_cross_entropy_with_logits_2/Reshape_1_grad/Reshape
Softmax_10*
T0
d
1gradients_1/Softmax_10_grad/Sum/reduction_indicesConst*
dtype0*
valueB :
’’’’’’’’’
 
gradients_1/Softmax_10_grad/SumSumgradients_1/Softmax_10_grad/mul1gradients_1/Softmax_10_grad/Sum/reduction_indices*
T0*

Tidx0*
	keep_dims(

gradients_1/Softmax_10_grad/subSubFgradients_1/softmax_cross_entropy_with_logits_2/Reshape_1_grad/Reshapegradients_1/Softmax_10_grad/Sum*
T0
^
!gradients_1/Softmax_10_grad/mul_1Mulgradients_1/Softmax_10_grad/sub
Softmax_10*
T0
W
'gradients_1/strided_slice_27_grad/ShapeShapeaction_probs*
T0*
out_type0
ū
2gradients_1/strided_slice_27_grad/StridedSliceGradStridedSliceGrad'gradients_1/strided_slice_27_grad/Shapestrided_slice_27/stackstrided_slice_27/stack_1strided_slice_27/stack_2Dgradients_1/softmax_cross_entropy_with_logits_3/Reshape_grad/Reshape*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask

gradients_1/Softmax_11_grad/mulMulFgradients_1/softmax_cross_entropy_with_logits_3/Reshape_1_grad/Reshape
Softmax_11*
T0
d
1gradients_1/Softmax_11_grad/Sum/reduction_indicesConst*
valueB :
’’’’’’’’’*
dtype0
 
gradients_1/Softmax_11_grad/SumSumgradients_1/Softmax_11_grad/mul1gradients_1/Softmax_11_grad/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0

gradients_1/Softmax_11_grad/subSubFgradients_1/softmax_cross_entropy_with_logits_3/Reshape_1_grad/Reshapegradients_1/Softmax_11_grad/Sum*
T0
^
!gradients_1/Softmax_11_grad/mul_1Mulgradients_1/Softmax_11_grad/sub
Softmax_11*
T0
E
gradients_1/sub_1_grad/ShapeShapeSum_9*
T0*
out_type0
H
gradients_1/sub_1_grad/Shape_1ShapeSum_10*
T0*
out_type0

,gradients_1/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_1_grad/Shapegradients_1/sub_1_grad/Shape_1*
T0

gradients_1/sub_1_grad/SumSumgradients_1/Exp_grad/mul,gradients_1/sub_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
z
gradients_1/sub_1_grad/ReshapeReshapegradients_1/sub_1_grad/Sumgradients_1/sub_1_grad/Shape*
T0*
Tshape0
D
gradients_1/sub_1_grad/NegNeggradients_1/Exp_grad/mul*
T0

gradients_1/sub_1_grad/Sum_1Sumgradients_1/sub_1_grad/Neg.gradients_1/sub_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 

 gradients_1/sub_1_grad/Reshape_1Reshapegradients_1/sub_1_grad/Sum_1gradients_1/sub_1_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/sub_1_grad/tuple/group_depsNoOp^gradients_1/sub_1_grad/Reshape!^gradients_1/sub_1_grad/Reshape_1
Į
/gradients_1/sub_1_grad/tuple/control_dependencyIdentitygradients_1/sub_1_grad/Reshape(^gradients_1/sub_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/sub_1_grad/Reshape
Ē
1gradients_1/sub_1_grad/tuple/control_dependency_1Identity gradients_1/sub_1_grad/Reshape_1(^gradients_1/sub_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/sub_1_grad/Reshape_1
]
$gradients_1/clip_by_value_grad/ShapeShapeclip_by_value/Minimum*
T0*
out_type0
O
&gradients_1/clip_by_value_grad/Shape_1Const*
valueB *
dtype0
|
&gradients_1/clip_by_value_grad/Shape_2Shape2gradients_1/add_25_grad/tuple/control_dependency_1*
T0*
out_type0
W
*gradients_1/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0

$gradients_1/clip_by_value_grad/zerosFill&gradients_1/clip_by_value_grad/Shape_2*gradients_1/clip_by_value_grad/zeros/Const*
T0*

index_type0
b
+gradients_1/clip_by_value_grad/GreaterEqualGreaterEqualclip_by_value/MinimumNeg_8*
T0
¤
4gradients_1/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients_1/clip_by_value_grad/Shape&gradients_1/clip_by_value_grad/Shape_1*
T0
æ
%gradients_1/clip_by_value_grad/SelectSelect+gradients_1/clip_by_value_grad/GreaterEqual2gradients_1/add_25_grad/tuple/control_dependency_1$gradients_1/clip_by_value_grad/zeros*
T0
¬
"gradients_1/clip_by_value_grad/SumSum%gradients_1/clip_by_value_grad/Select4gradients_1/clip_by_value_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0

&gradients_1/clip_by_value_grad/ReshapeReshape"gradients_1/clip_by_value_grad/Sum$gradients_1/clip_by_value_grad/Shape*
T0*
Tshape0
Į
'gradients_1/clip_by_value_grad/Select_1Select+gradients_1/clip_by_value_grad/GreaterEqual$gradients_1/clip_by_value_grad/zeros2gradients_1/add_25_grad/tuple/control_dependency_1*
T0
²
$gradients_1/clip_by_value_grad/Sum_1Sum'gradients_1/clip_by_value_grad/Select_16gradients_1/clip_by_value_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 

(gradients_1/clip_by_value_grad/Reshape_1Reshape$gradients_1/clip_by_value_grad/Sum_1&gradients_1/clip_by_value_grad/Shape_1*
T0*
Tshape0

/gradients_1/clip_by_value_grad/tuple/group_depsNoOp'^gradients_1/clip_by_value_grad/Reshape)^gradients_1/clip_by_value_grad/Reshape_1
į
7gradients_1/clip_by_value_grad/tuple/control_dependencyIdentity&gradients_1/clip_by_value_grad/Reshape0^gradients_1/clip_by_value_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients_1/clip_by_value_grad/Reshape
ē
9gradients_1/clip_by_value_grad/tuple/control_dependency_1Identity(gradients_1/clip_by_value_grad/Reshape_10^gradients_1/clip_by_value_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/clip_by_value_grad/Reshape_1
W
'gradients_1/strided_slice_20_grad/ShapeShapeaction_probs*
T0*
out_type0
×
2gradients_1/strided_slice_20_grad/StridedSliceGradStridedSliceGrad'gradients_1/strided_slice_20_grad/Shapestrided_slice_20/stackstrided_slice_20/stack_1strided_slice_20/stack_2 gradients_1/Softmax_8_grad/mul_1*
end_mask*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask 
W
'gradients_1/strided_slice_22_grad/ShapeShapeaction_probs*
T0*
out_type0
×
2gradients_1/strided_slice_22_grad/StridedSliceGradStridedSliceGrad'gradients_1/strided_slice_22_grad/Shapestrided_slice_22/stackstrided_slice_22/stack_1strided_slice_22/stack_2 gradients_1/Softmax_9_grad/mul_1*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0
W
'gradients_1/strided_slice_24_grad/ShapeShapeaction_probs*
T0*
out_type0
Ų
2gradients_1/strided_slice_24_grad/StridedSliceGradStridedSliceGrad'gradients_1/strided_slice_24_grad/Shapestrided_slice_24/stackstrided_slice_24/stack_1strided_slice_24/stack_2!gradients_1/Softmax_10_grad/mul_1*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
W
'gradients_1/strided_slice_26_grad/ShapeShapeaction_probs*
T0*
out_type0
Ų
2gradients_1/strided_slice_26_grad/StridedSliceGradStridedSliceGrad'gradients_1/strided_slice_26_grad/Shapestrided_slice_26/stackstrided_slice_26/stack_1strided_slice_26/stack_2!gradients_1/Softmax_11_grad/mul_1*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*
Index0*
T0
G
gradients_1/Sum_9_grad/ShapeShapestack_1*
T0*
out_type0
v
gradients_1/Sum_9_grad/SizeConst*/
_class%
#!loc:@gradients_1/Sum_9_grad/Shape*
value	B :*
dtype0

gradients_1/Sum_9_grad/addAddV2Sum_9/reduction_indicesgradients_1/Sum_9_grad/Size*
T0*/
_class%
#!loc:@gradients_1/Sum_9_grad/Shape

gradients_1/Sum_9_grad/modFloorModgradients_1/Sum_9_grad/addgradients_1/Sum_9_grad/Size*
T0*/
_class%
#!loc:@gradients_1/Sum_9_grad/Shape
x
gradients_1/Sum_9_grad/Shape_1Const*/
_class%
#!loc:@gradients_1/Sum_9_grad/Shape*
valueB *
dtype0
}
"gradients_1/Sum_9_grad/range/startConst*/
_class%
#!loc:@gradients_1/Sum_9_grad/Shape*
value	B : *
dtype0
}
"gradients_1/Sum_9_grad/range/deltaConst*/
_class%
#!loc:@gradients_1/Sum_9_grad/Shape*
value	B :*
dtype0
Ē
gradients_1/Sum_9_grad/rangeRange"gradients_1/Sum_9_grad/range/startgradients_1/Sum_9_grad/Size"gradients_1/Sum_9_grad/range/delta*

Tidx0*/
_class%
#!loc:@gradients_1/Sum_9_grad/Shape
|
!gradients_1/Sum_9_grad/Fill/valueConst*
dtype0*/
_class%
#!loc:@gradients_1/Sum_9_grad/Shape*
value	B :
²
gradients_1/Sum_9_grad/FillFillgradients_1/Sum_9_grad/Shape_1!gradients_1/Sum_9_grad/Fill/value*
T0*/
_class%
#!loc:@gradients_1/Sum_9_grad/Shape*

index_type0
ķ
$gradients_1/Sum_9_grad/DynamicStitchDynamicStitchgradients_1/Sum_9_grad/rangegradients_1/Sum_9_grad/modgradients_1/Sum_9_grad/Shapegradients_1/Sum_9_grad/Fill*
T0*/
_class%
#!loc:@gradients_1/Sum_9_grad/Shape*
N
{
 gradients_1/Sum_9_grad/Maximum/yConst*/
_class%
#!loc:@gradients_1/Sum_9_grad/Shape*
value	B :*
dtype0
«
gradients_1/Sum_9_grad/MaximumMaximum$gradients_1/Sum_9_grad/DynamicStitch gradients_1/Sum_9_grad/Maximum/y*
T0*/
_class%
#!loc:@gradients_1/Sum_9_grad/Shape
£
gradients_1/Sum_9_grad/floordivFloorDivgradients_1/Sum_9_grad/Shapegradients_1/Sum_9_grad/Maximum*
T0*/
_class%
#!loc:@gradients_1/Sum_9_grad/Shape

gradients_1/Sum_9_grad/ReshapeReshape/gradients_1/sub_1_grad/tuple/control_dependency$gradients_1/Sum_9_grad/DynamicStitch*
T0*
Tshape0

gradients_1/Sum_9_grad/TileTilegradients_1/Sum_9_grad/Reshapegradients_1/Sum_9_grad/floordiv*

Tmultiples0*
T0
S
,gradients_1/clip_by_value/Minimum_grad/ShapeShapesub*
T0*
out_type0
W
.gradients_1/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0

.gradients_1/clip_by_value/Minimum_grad/Shape_2Shape7gradients_1/clip_by_value_grad/tuple/control_dependency*
T0*
out_type0
_
2gradients_1/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
³
,gradients_1/clip_by_value/Minimum_grad/zerosFill.gradients_1/clip_by_value/Minimum_grad/Shape_22gradients_1/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0
^
0gradients_1/clip_by_value/Minimum_grad/LessEqual	LessEqualsubPolynomialDecay_1*
T0
¼
<gradients_1/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients_1/clip_by_value/Minimum_grad/Shape.gradients_1/clip_by_value/Minimum_grad/Shape_1*
T0
Ł
-gradients_1/clip_by_value/Minimum_grad/SelectSelect0gradients_1/clip_by_value/Minimum_grad/LessEqual7gradients_1/clip_by_value_grad/tuple/control_dependency,gradients_1/clip_by_value/Minimum_grad/zeros*
T0
Ä
*gradients_1/clip_by_value/Minimum_grad/SumSum-gradients_1/clip_by_value/Minimum_grad/Select<gradients_1/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
Ŗ
.gradients_1/clip_by_value/Minimum_grad/ReshapeReshape*gradients_1/clip_by_value/Minimum_grad/Sum,gradients_1/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0
Ū
/gradients_1/clip_by_value/Minimum_grad/Select_1Select0gradients_1/clip_by_value/Minimum_grad/LessEqual,gradients_1/clip_by_value/Minimum_grad/zeros7gradients_1/clip_by_value_grad/tuple/control_dependency*
T0
Ź
,gradients_1/clip_by_value/Minimum_grad/Sum_1Sum/gradients_1/clip_by_value/Minimum_grad/Select_1>gradients_1/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
°
0gradients_1/clip_by_value/Minimum_grad/Reshape_1Reshape,gradients_1/clip_by_value/Minimum_grad/Sum_1.gradients_1/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0
£
7gradients_1/clip_by_value/Minimum_grad/tuple/group_depsNoOp/^gradients_1/clip_by_value/Minimum_grad/Reshape1^gradients_1/clip_by_value/Minimum_grad/Reshape_1

?gradients_1/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity.gradients_1/clip_by_value/Minimum_grad/Reshape8^gradients_1/clip_by_value/Minimum_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients_1/clip_by_value/Minimum_grad/Reshape

Agradients_1/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity0gradients_1/clip_by_value/Minimum_grad/Reshape_18^gradients_1/clip_by_value/Minimum_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients_1/clip_by_value/Minimum_grad/Reshape_1
g
 gradients_1/stack_1_grad/unstackUnpackgradients_1/Sum_9_grad/Tile*
T0*	
num*

axis
T
)gradients_1/stack_1_grad/tuple/group_depsNoOp!^gradients_1/stack_1_grad/unstack
É
1gradients_1/stack_1_grad/tuple/control_dependencyIdentity gradients_1/stack_1_grad/unstack*^gradients_1/stack_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/stack_1_grad/unstack
Ķ
3gradients_1/stack_1_grad/tuple/control_dependency_1Identity"gradients_1/stack_1_grad/unstack:1*^gradients_1/stack_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/stack_1_grad/unstack
Ķ
3gradients_1/stack_1_grad/tuple/control_dependency_2Identity"gradients_1/stack_1_grad/unstack:2*^gradients_1/stack_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/stack_1_grad/unstack
Ķ
3gradients_1/stack_1_grad/tuple/control_dependency_3Identity"gradients_1/stack_1_grad/unstack:3*^gradients_1/stack_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/stack_1_grad/unstack
D
gradients_1/sub_grad/ShapeShapeSum_11*
T0*
out_type0
X
gradients_1/sub_grad/Shape_1Shapeextrinsic_value_estimate*
T0*
out_type0

*gradients_1/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_grad/Shapegradients_1/sub_grad/Shape_1*
T0
²
gradients_1/sub_grad/SumSum?gradients_1/clip_by_value/Minimum_grad/tuple/control_dependency*gradients_1/sub_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients_1/sub_grad/ReshapeReshapegradients_1/sub_grad/Sumgradients_1/sub_grad/Shape*
T0*
Tshape0
i
gradients_1/sub_grad/NegNeg?gradients_1/clip_by_value/Minimum_grad/tuple/control_dependency*
T0

gradients_1/sub_grad/Sum_1Sumgradients_1/sub_grad/Neg,gradients_1/sub_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients_1/sub_grad/Reshape_1Reshapegradients_1/sub_grad/Sum_1gradients_1/sub_grad/Shape_1*
T0*
Tshape0
m
%gradients_1/sub_grad/tuple/group_depsNoOp^gradients_1/sub_grad/Reshape^gradients_1/sub_grad/Reshape_1
¹
-gradients_1/sub_grad/tuple/control_dependencyIdentitygradients_1/sub_grad/Reshape&^gradients_1/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients_1/sub_grad/Reshape
æ
/gradients_1/sub_grad/tuple/control_dependency_1Identitygradients_1/sub_grad/Reshape_1&^gradients_1/sub_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/sub_grad/Reshape_1
[
gradients_1/Neg_grad/NegNeg1gradients_1/stack_1_grad/tuple/control_dependency*
T0
_
gradients_1/Neg_1_grad/NegNeg3gradients_1/stack_1_grad/tuple/control_dependency_1*
T0
_
gradients_1/Neg_2_grad/NegNeg3gradients_1/stack_1_grad/tuple/control_dependency_2*
T0
_
gradients_1/Neg_3_grad/NegNeg3gradients_1/stack_1_grad/tuple/control_dependency_3*
T0
X
gradients_1/Sum_11_grad/ShapeShapeextrinsic_value/BiasAdd*
T0*
out_type0
x
gradients_1/Sum_11_grad/SizeConst*0
_class&
$"loc:@gradients_1/Sum_11_grad/Shape*
value	B :*
dtype0

gradients_1/Sum_11_grad/addAddV2Sum_11/reduction_indicesgradients_1/Sum_11_grad/Size*
T0*0
_class&
$"loc:@gradients_1/Sum_11_grad/Shape

gradients_1/Sum_11_grad/modFloorModgradients_1/Sum_11_grad/addgradients_1/Sum_11_grad/Size*
T0*0
_class&
$"loc:@gradients_1/Sum_11_grad/Shape
z
gradients_1/Sum_11_grad/Shape_1Const*0
_class&
$"loc:@gradients_1/Sum_11_grad/Shape*
valueB *
dtype0

#gradients_1/Sum_11_grad/range/startConst*
dtype0*0
_class&
$"loc:@gradients_1/Sum_11_grad/Shape*
value	B : 

#gradients_1/Sum_11_grad/range/deltaConst*0
_class&
$"loc:@gradients_1/Sum_11_grad/Shape*
value	B :*
dtype0
Ģ
gradients_1/Sum_11_grad/rangeRange#gradients_1/Sum_11_grad/range/startgradients_1/Sum_11_grad/Size#gradients_1/Sum_11_grad/range/delta*

Tidx0*0
_class&
$"loc:@gradients_1/Sum_11_grad/Shape
~
"gradients_1/Sum_11_grad/Fill/valueConst*0
_class&
$"loc:@gradients_1/Sum_11_grad/Shape*
value	B :*
dtype0
¶
gradients_1/Sum_11_grad/FillFillgradients_1/Sum_11_grad/Shape_1"gradients_1/Sum_11_grad/Fill/value*
T0*0
_class&
$"loc:@gradients_1/Sum_11_grad/Shape*

index_type0
ó
%gradients_1/Sum_11_grad/DynamicStitchDynamicStitchgradients_1/Sum_11_grad/rangegradients_1/Sum_11_grad/modgradients_1/Sum_11_grad/Shapegradients_1/Sum_11_grad/Fill*
T0*0
_class&
$"loc:@gradients_1/Sum_11_grad/Shape*
N
}
!gradients_1/Sum_11_grad/Maximum/yConst*0
_class&
$"loc:@gradients_1/Sum_11_grad/Shape*
value	B :*
dtype0
Æ
gradients_1/Sum_11_grad/MaximumMaximum%gradients_1/Sum_11_grad/DynamicStitch!gradients_1/Sum_11_grad/Maximum/y*
T0*0
_class&
$"loc:@gradients_1/Sum_11_grad/Shape
§
 gradients_1/Sum_11_grad/floordivFloorDivgradients_1/Sum_11_grad/Shapegradients_1/Sum_11_grad/Maximum*
T0*0
_class&
$"loc:@gradients_1/Sum_11_grad/Shape

gradients_1/Sum_11_grad/ReshapeReshape-gradients_1/sub_grad/tuple/control_dependency%gradients_1/Sum_11_grad/DynamicStitch*
T0*
Tshape0

gradients_1/Sum_11_grad/TileTilegradients_1/Sum_11_grad/Reshape gradients_1/Sum_11_grad/floordiv*

Tmultiples0*
T0

Dgradients_1/softmax_cross_entropy_with_logits_4/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_4*
T0*
out_type0
Č
Fgradients_1/softmax_cross_entropy_with_logits_4/Reshape_2_grad/ReshapeReshapegradients_1/Neg_grad/NegDgradients_1/softmax_cross_entropy_with_logits_4/Reshape_2_grad/Shape*
T0*
Tshape0

Dgradients_1/softmax_cross_entropy_with_logits_5/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_5*
T0*
out_type0
Ź
Fgradients_1/softmax_cross_entropy_with_logits_5/Reshape_2_grad/ReshapeReshapegradients_1/Neg_1_grad/NegDgradients_1/softmax_cross_entropy_with_logits_5/Reshape_2_grad/Shape*
T0*
Tshape0

Dgradients_1/softmax_cross_entropy_with_logits_6/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_6*
T0*
out_type0
Ź
Fgradients_1/softmax_cross_entropy_with_logits_6/Reshape_2_grad/ReshapeReshapegradients_1/Neg_2_grad/NegDgradients_1/softmax_cross_entropy_with_logits_6/Reshape_2_grad/Shape*
T0*
Tshape0

Dgradients_1/softmax_cross_entropy_with_logits_7/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_7*
T0*
out_type0
Ź
Fgradients_1/softmax_cross_entropy_with_logits_7/Reshape_2_grad/ReshapeReshapegradients_1/Neg_3_grad/NegDgradients_1/softmax_cross_entropy_with_logits_7/Reshape_2_grad/Shape*
T0*
Tshape0

gradients_1/AddN_1AddNgradients_1/Sum_12_grad/Tilegradients_1/Sum_11_grad/Tile*
T0*/
_class%
#!loc:@gradients_1/Sum_12_grad/Tile*
N
w
4gradients_1/extrinsic_value/BiasAdd_grad/BiasAddGradBiasAddGradgradients_1/AddN_1*
T0*
data_formatNHWC

9gradients_1/extrinsic_value/BiasAdd_grad/tuple/group_depsNoOp^gradients_1/AddN_15^gradients_1/extrinsic_value/BiasAdd_grad/BiasAddGrad
×
Agradients_1/extrinsic_value/BiasAdd_grad/tuple/control_dependencyIdentitygradients_1/AddN_1:^gradients_1/extrinsic_value/BiasAdd_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients_1/Sum_12_grad/Tile

Cgradients_1/extrinsic_value/BiasAdd_grad/tuple/control_dependency_1Identity4gradients_1/extrinsic_value/BiasAdd_grad/BiasAddGrad:^gradients_1/extrinsic_value/BiasAdd_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients_1/extrinsic_value/BiasAdd_grad/BiasAddGrad
U
gradients_1/zeros_like_7	ZerosLike%softmax_cross_entropy_with_logits_4:1*
T0
v
Cgradients_1/softmax_cross_entropy_with_logits_4_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
ļ
?gradients_1/softmax_cross_entropy_with_logits_4_grad/ExpandDims
ExpandDimsFgradients_1/softmax_cross_entropy_with_logits_4/Reshape_2_grad/ReshapeCgradients_1/softmax_cross_entropy_with_logits_4_grad/ExpandDims/dim*

Tdim0*
T0
°
8gradients_1/softmax_cross_entropy_with_logits_4_grad/mulMul?gradients_1/softmax_cross_entropy_with_logits_4_grad/ExpandDims%softmax_cross_entropy_with_logits_4:1*
T0

?gradients_1/softmax_cross_entropy_with_logits_4_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_4/Reshape*
T0

8gradients_1/softmax_cross_entropy_with_logits_4_grad/NegNeg?gradients_1/softmax_cross_entropy_with_logits_4_grad/LogSoftmax*
T0
x
Egradients_1/softmax_cross_entropy_with_logits_4_grad/ExpandDims_1/dimConst*
valueB :
’’’’’’’’’*
dtype0
ó
Agradients_1/softmax_cross_entropy_with_logits_4_grad/ExpandDims_1
ExpandDimsFgradients_1/softmax_cross_entropy_with_logits_4/Reshape_2_grad/ReshapeEgradients_1/softmax_cross_entropy_with_logits_4_grad/ExpandDims_1/dim*
T0*

Tdim0
Ē
:gradients_1/softmax_cross_entropy_with_logits_4_grad/mul_1MulAgradients_1/softmax_cross_entropy_with_logits_4_grad/ExpandDims_18gradients_1/softmax_cross_entropy_with_logits_4_grad/Neg*
T0
Å
Egradients_1/softmax_cross_entropy_with_logits_4_grad/tuple/group_depsNoOp9^gradients_1/softmax_cross_entropy_with_logits_4_grad/mul;^gradients_1/softmax_cross_entropy_with_logits_4_grad/mul_1
±
Mgradients_1/softmax_cross_entropy_with_logits_4_grad/tuple/control_dependencyIdentity8gradients_1/softmax_cross_entropy_with_logits_4_grad/mulF^gradients_1/softmax_cross_entropy_with_logits_4_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients_1/softmax_cross_entropy_with_logits_4_grad/mul
·
Ogradients_1/softmax_cross_entropy_with_logits_4_grad/tuple/control_dependency_1Identity:gradients_1/softmax_cross_entropy_with_logits_4_grad/mul_1F^gradients_1/softmax_cross_entropy_with_logits_4_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/softmax_cross_entropy_with_logits_4_grad/mul_1
U
gradients_1/zeros_like_8	ZerosLike%softmax_cross_entropy_with_logits_5:1*
T0
v
Cgradients_1/softmax_cross_entropy_with_logits_5_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
ļ
?gradients_1/softmax_cross_entropy_with_logits_5_grad/ExpandDims
ExpandDimsFgradients_1/softmax_cross_entropy_with_logits_5/Reshape_2_grad/ReshapeCgradients_1/softmax_cross_entropy_with_logits_5_grad/ExpandDims/dim*

Tdim0*
T0
°
8gradients_1/softmax_cross_entropy_with_logits_5_grad/mulMul?gradients_1/softmax_cross_entropy_with_logits_5_grad/ExpandDims%softmax_cross_entropy_with_logits_5:1*
T0

?gradients_1/softmax_cross_entropy_with_logits_5_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_5/Reshape*
T0

8gradients_1/softmax_cross_entropy_with_logits_5_grad/NegNeg?gradients_1/softmax_cross_entropy_with_logits_5_grad/LogSoftmax*
T0
x
Egradients_1/softmax_cross_entropy_with_logits_5_grad/ExpandDims_1/dimConst*
dtype0*
valueB :
’’’’’’’’’
ó
Agradients_1/softmax_cross_entropy_with_logits_5_grad/ExpandDims_1
ExpandDimsFgradients_1/softmax_cross_entropy_with_logits_5/Reshape_2_grad/ReshapeEgradients_1/softmax_cross_entropy_with_logits_5_grad/ExpandDims_1/dim*

Tdim0*
T0
Ē
:gradients_1/softmax_cross_entropy_with_logits_5_grad/mul_1MulAgradients_1/softmax_cross_entropy_with_logits_5_grad/ExpandDims_18gradients_1/softmax_cross_entropy_with_logits_5_grad/Neg*
T0
Å
Egradients_1/softmax_cross_entropy_with_logits_5_grad/tuple/group_depsNoOp9^gradients_1/softmax_cross_entropy_with_logits_5_grad/mul;^gradients_1/softmax_cross_entropy_with_logits_5_grad/mul_1
±
Mgradients_1/softmax_cross_entropy_with_logits_5_grad/tuple/control_dependencyIdentity8gradients_1/softmax_cross_entropy_with_logits_5_grad/mulF^gradients_1/softmax_cross_entropy_with_logits_5_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients_1/softmax_cross_entropy_with_logits_5_grad/mul
·
Ogradients_1/softmax_cross_entropy_with_logits_5_grad/tuple/control_dependency_1Identity:gradients_1/softmax_cross_entropy_with_logits_5_grad/mul_1F^gradients_1/softmax_cross_entropy_with_logits_5_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/softmax_cross_entropy_with_logits_5_grad/mul_1
U
gradients_1/zeros_like_9	ZerosLike%softmax_cross_entropy_with_logits_6:1*
T0
v
Cgradients_1/softmax_cross_entropy_with_logits_6_grad/ExpandDims/dimConst*
dtype0*
valueB :
’’’’’’’’’
ļ
?gradients_1/softmax_cross_entropy_with_logits_6_grad/ExpandDims
ExpandDimsFgradients_1/softmax_cross_entropy_with_logits_6/Reshape_2_grad/ReshapeCgradients_1/softmax_cross_entropy_with_logits_6_grad/ExpandDims/dim*
T0*

Tdim0
°
8gradients_1/softmax_cross_entropy_with_logits_6_grad/mulMul?gradients_1/softmax_cross_entropy_with_logits_6_grad/ExpandDims%softmax_cross_entropy_with_logits_6:1*
T0

?gradients_1/softmax_cross_entropy_with_logits_6_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_6/Reshape*
T0

8gradients_1/softmax_cross_entropy_with_logits_6_grad/NegNeg?gradients_1/softmax_cross_entropy_with_logits_6_grad/LogSoftmax*
T0
x
Egradients_1/softmax_cross_entropy_with_logits_6_grad/ExpandDims_1/dimConst*
valueB :
’’’’’’’’’*
dtype0
ó
Agradients_1/softmax_cross_entropy_with_logits_6_grad/ExpandDims_1
ExpandDimsFgradients_1/softmax_cross_entropy_with_logits_6/Reshape_2_grad/ReshapeEgradients_1/softmax_cross_entropy_with_logits_6_grad/ExpandDims_1/dim*

Tdim0*
T0
Ē
:gradients_1/softmax_cross_entropy_with_logits_6_grad/mul_1MulAgradients_1/softmax_cross_entropy_with_logits_6_grad/ExpandDims_18gradients_1/softmax_cross_entropy_with_logits_6_grad/Neg*
T0
Å
Egradients_1/softmax_cross_entropy_with_logits_6_grad/tuple/group_depsNoOp9^gradients_1/softmax_cross_entropy_with_logits_6_grad/mul;^gradients_1/softmax_cross_entropy_with_logits_6_grad/mul_1
±
Mgradients_1/softmax_cross_entropy_with_logits_6_grad/tuple/control_dependencyIdentity8gradients_1/softmax_cross_entropy_with_logits_6_grad/mulF^gradients_1/softmax_cross_entropy_with_logits_6_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients_1/softmax_cross_entropy_with_logits_6_grad/mul
·
Ogradients_1/softmax_cross_entropy_with_logits_6_grad/tuple/control_dependency_1Identity:gradients_1/softmax_cross_entropy_with_logits_6_grad/mul_1F^gradients_1/softmax_cross_entropy_with_logits_6_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/softmax_cross_entropy_with_logits_6_grad/mul_1
V
gradients_1/zeros_like_10	ZerosLike%softmax_cross_entropy_with_logits_7:1*
T0
v
Cgradients_1/softmax_cross_entropy_with_logits_7_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0
ļ
?gradients_1/softmax_cross_entropy_with_logits_7_grad/ExpandDims
ExpandDimsFgradients_1/softmax_cross_entropy_with_logits_7/Reshape_2_grad/ReshapeCgradients_1/softmax_cross_entropy_with_logits_7_grad/ExpandDims/dim*
T0*

Tdim0
°
8gradients_1/softmax_cross_entropy_with_logits_7_grad/mulMul?gradients_1/softmax_cross_entropy_with_logits_7_grad/ExpandDims%softmax_cross_entropy_with_logits_7:1*
T0

?gradients_1/softmax_cross_entropy_with_logits_7_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_7/Reshape*
T0

8gradients_1/softmax_cross_entropy_with_logits_7_grad/NegNeg?gradients_1/softmax_cross_entropy_with_logits_7_grad/LogSoftmax*
T0
x
Egradients_1/softmax_cross_entropy_with_logits_7_grad/ExpandDims_1/dimConst*
valueB :
’’’’’’’’’*
dtype0
ó
Agradients_1/softmax_cross_entropy_with_logits_7_grad/ExpandDims_1
ExpandDimsFgradients_1/softmax_cross_entropy_with_logits_7/Reshape_2_grad/ReshapeEgradients_1/softmax_cross_entropy_with_logits_7_grad/ExpandDims_1/dim*

Tdim0*
T0
Ē
:gradients_1/softmax_cross_entropy_with_logits_7_grad/mul_1MulAgradients_1/softmax_cross_entropy_with_logits_7_grad/ExpandDims_18gradients_1/softmax_cross_entropy_with_logits_7_grad/Neg*
T0
Å
Egradients_1/softmax_cross_entropy_with_logits_7_grad/tuple/group_depsNoOp9^gradients_1/softmax_cross_entropy_with_logits_7_grad/mul;^gradients_1/softmax_cross_entropy_with_logits_7_grad/mul_1
±
Mgradients_1/softmax_cross_entropy_with_logits_7_grad/tuple/control_dependencyIdentity8gradients_1/softmax_cross_entropy_with_logits_7_grad/mulF^gradients_1/softmax_cross_entropy_with_logits_7_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients_1/softmax_cross_entropy_with_logits_7_grad/mul
·
Ogradients_1/softmax_cross_entropy_with_logits_7_grad/tuple/control_dependency_1Identity:gradients_1/softmax_cross_entropy_with_logits_7_grad/mul_1F^gradients_1/softmax_cross_entropy_with_logits_7_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/softmax_cross_entropy_with_logits_7_grad/mul_1
Ē
.gradients_1/extrinsic_value/MatMul_grad/MatMulMatMulAgradients_1/extrinsic_value/BiasAdd_grad/tuple/control_dependencyextrinsic_value/kernel/read*
T0*
transpose_a( *
transpose_b(
Ē
0gradients_1/extrinsic_value/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/MulAgradients_1/extrinsic_value/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
¤
8gradients_1/extrinsic_value/MatMul_grad/tuple/group_depsNoOp/^gradients_1/extrinsic_value/MatMul_grad/MatMul1^gradients_1/extrinsic_value/MatMul_grad/MatMul_1

@gradients_1/extrinsic_value/MatMul_grad/tuple/control_dependencyIdentity.gradients_1/extrinsic_value/MatMul_grad/MatMul9^gradients_1/extrinsic_value/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients_1/extrinsic_value/MatMul_grad/MatMul

Bgradients_1/extrinsic_value/MatMul_grad/tuple/control_dependency_1Identity0gradients_1/extrinsic_value/MatMul_grad/MatMul_19^gradients_1/extrinsic_value/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients_1/extrinsic_value/MatMul_grad/MatMul_1
v
Bgradients_1/softmax_cross_entropy_with_logits_4/Reshape_grad/ShapeShapestrided_slice_29*
T0*
out_type0
ł
Dgradients_1/softmax_cross_entropy_with_logits_4/Reshape_grad/ReshapeReshapeMgradients_1/softmax_cross_entropy_with_logits_4_grad/tuple/control_dependencyBgradients_1/softmax_cross_entropy_with_logits_4/Reshape_grad/Shape*
T0*
Tshape0
v
Bgradients_1/softmax_cross_entropy_with_logits_5/Reshape_grad/ShapeShapestrided_slice_31*
T0*
out_type0
ł
Dgradients_1/softmax_cross_entropy_with_logits_5/Reshape_grad/ReshapeReshapeMgradients_1/softmax_cross_entropy_with_logits_5_grad/tuple/control_dependencyBgradients_1/softmax_cross_entropy_with_logits_5/Reshape_grad/Shape*
T0*
Tshape0
v
Bgradients_1/softmax_cross_entropy_with_logits_6/Reshape_grad/ShapeShapestrided_slice_33*
T0*
out_type0
ł
Dgradients_1/softmax_cross_entropy_with_logits_6/Reshape_grad/ReshapeReshapeMgradients_1/softmax_cross_entropy_with_logits_6_grad/tuple/control_dependencyBgradients_1/softmax_cross_entropy_with_logits_6/Reshape_grad/Shape*
T0*
Tshape0
v
Bgradients_1/softmax_cross_entropy_with_logits_7/Reshape_grad/ShapeShapestrided_slice_35*
T0*
out_type0
ł
Dgradients_1/softmax_cross_entropy_with_logits_7/Reshape_grad/ReshapeReshapeMgradients_1/softmax_cross_entropy_with_logits_7_grad/tuple/control_dependencyBgradients_1/softmax_cross_entropy_with_logits_7/Reshape_grad/Shape*
T0*
Tshape0
S
'gradients_1/strided_slice_29_grad/ShapeShapeconcat_2*
T0*
out_type0
ū
2gradients_1/strided_slice_29_grad/StridedSliceGradStridedSliceGrad'gradients_1/strided_slice_29_grad/Shapestrided_slice_29/stackstrided_slice_29/stack_1strided_slice_29/stack_2Dgradients_1/softmax_cross_entropy_with_logits_4/Reshape_grad/Reshape*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
S
'gradients_1/strided_slice_31_grad/ShapeShapeconcat_2*
T0*
out_type0
ū
2gradients_1/strided_slice_31_grad/StridedSliceGradStridedSliceGrad'gradients_1/strided_slice_31_grad/Shapestrided_slice_31/stackstrided_slice_31/stack_1strided_slice_31/stack_2Dgradients_1/softmax_cross_entropy_with_logits_5/Reshape_grad/Reshape*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0
S
'gradients_1/strided_slice_33_grad/ShapeShapeconcat_2*
T0*
out_type0
ū
2gradients_1/strided_slice_33_grad/StridedSliceGradStridedSliceGrad'gradients_1/strided_slice_33_grad/Shapestrided_slice_33/stackstrided_slice_33/stack_1strided_slice_33/stack_2Dgradients_1/softmax_cross_entropy_with_logits_6/Reshape_grad/Reshape*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
S
'gradients_1/strided_slice_35_grad/ShapeShapeconcat_2*
T0*
out_type0
ū
2gradients_1/strided_slice_35_grad/StridedSliceGradStridedSliceGrad'gradients_1/strided_slice_35_grad/Shapestrided_slice_35/stackstrided_slice_35/stack_1strided_slice_35/stack_2Dgradients_1/softmax_cross_entropy_with_logits_7/Reshape_grad/Reshape*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0
Ć
gradients_1/AddN_2AddN2gradients_1/strided_slice_29_grad/StridedSliceGrad2gradients_1/strided_slice_31_grad/StridedSliceGrad2gradients_1/strided_slice_33_grad/StridedSliceGrad2gradients_1/strided_slice_35_grad/StridedSliceGrad*
T0*E
_class;
97loc:@gradients_1/strided_slice_29_grad/StridedSliceGrad*
N
H
gradients_1/concat_2_grad/RankConst*
value	B :*
dtype0
a
gradients_1/concat_2_grad/modFloorModconcat_2/axisgradients_1/concat_2_grad/Rank*
T0
H
gradients_1/concat_2_grad/ShapeShapeLog_4*
T0*
out_type0
h
 gradients_1/concat_2_grad/ShapeNShapeNLog_4Log_5Log_6Log_7*
T0*
out_type0*
N
ģ
&gradients_1/concat_2_grad/ConcatOffsetConcatOffsetgradients_1/concat_2_grad/mod gradients_1/concat_2_grad/ShapeN"gradients_1/concat_2_grad/ShapeN:1"gradients_1/concat_2_grad/ShapeN:2"gradients_1/concat_2_grad/ShapeN:3*
N

gradients_1/concat_2_grad/SliceSlicegradients_1/AddN_2&gradients_1/concat_2_grad/ConcatOffset gradients_1/concat_2_grad/ShapeN*
T0*
Index0
¢
!gradients_1/concat_2_grad/Slice_1Slicegradients_1/AddN_2(gradients_1/concat_2_grad/ConcatOffset:1"gradients_1/concat_2_grad/ShapeN:1*
T0*
Index0
¢
!gradients_1/concat_2_grad/Slice_2Slicegradients_1/AddN_2(gradients_1/concat_2_grad/ConcatOffset:2"gradients_1/concat_2_grad/ShapeN:2*
T0*
Index0
¢
!gradients_1/concat_2_grad/Slice_3Slicegradients_1/AddN_2(gradients_1/concat_2_grad/ConcatOffset:3"gradients_1/concat_2_grad/ShapeN:3*
T0*
Index0
Ą
*gradients_1/concat_2_grad/tuple/group_depsNoOp ^gradients_1/concat_2_grad/Slice"^gradients_1/concat_2_grad/Slice_1"^gradients_1/concat_2_grad/Slice_2"^gradients_1/concat_2_grad/Slice_3
É
2gradients_1/concat_2_grad/tuple/control_dependencyIdentitygradients_1/concat_2_grad/Slice+^gradients_1/concat_2_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients_1/concat_2_grad/Slice
Ļ
4gradients_1/concat_2_grad/tuple/control_dependency_1Identity!gradients_1/concat_2_grad/Slice_1+^gradients_1/concat_2_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/concat_2_grad/Slice_1
Ļ
4gradients_1/concat_2_grad/tuple/control_dependency_2Identity!gradients_1/concat_2_grad/Slice_2+^gradients_1/concat_2_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/concat_2_grad/Slice_2
Ļ
4gradients_1/concat_2_grad/tuple/control_dependency_3Identity!gradients_1/concat_2_grad/Slice_3+^gradients_1/concat_2_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/concat_2_grad/Slice_3
t
!gradients_1/Log_4_grad/Reciprocal
Reciprocaladd_93^gradients_1/concat_2_grad/tuple/control_dependency*
T0

gradients_1/Log_4_grad/mulMul2gradients_1/concat_2_grad/tuple/control_dependency!gradients_1/Log_4_grad/Reciprocal*
T0
w
!gradients_1/Log_5_grad/Reciprocal
Reciprocaladd_105^gradients_1/concat_2_grad/tuple/control_dependency_1*
T0

gradients_1/Log_5_grad/mulMul4gradients_1/concat_2_grad/tuple/control_dependency_1!gradients_1/Log_5_grad/Reciprocal*
T0
w
!gradients_1/Log_6_grad/Reciprocal
Reciprocaladd_115^gradients_1/concat_2_grad/tuple/control_dependency_2*
T0

gradients_1/Log_6_grad/mulMul4gradients_1/concat_2_grad/tuple/control_dependency_2!gradients_1/Log_6_grad/Reciprocal*
T0
w
!gradients_1/Log_7_grad/Reciprocal
Reciprocaladd_125^gradients_1/concat_2_grad/tuple/control_dependency_3*
T0

gradients_1/Log_7_grad/mulMul4gradients_1/concat_2_grad/tuple/control_dependency_3!gradients_1/Log_7_grad/Reciprocal*
T0
G
gradients_1/add_9_grad/ShapeShapetruediv*
T0*
out_type0
I
gradients_1/add_9_grad/Shape_1Shapeadd_9/y*
T0*
out_type0

,gradients_1/add_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/add_9_grad/Shapegradients_1/add_9_grad/Shape_1*
T0

gradients_1/add_9_grad/SumSumgradients_1/Log_4_grad/mul,gradients_1/add_9_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/add_9_grad/ReshapeReshapegradients_1/add_9_grad/Sumgradients_1/add_9_grad/Shape*
T0*
Tshape0

gradients_1/add_9_grad/Sum_1Sumgradients_1/Log_4_grad/mul.gradients_1/add_9_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

 gradients_1/add_9_grad/Reshape_1Reshapegradients_1/add_9_grad/Sum_1gradients_1/add_9_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/add_9_grad/tuple/group_depsNoOp^gradients_1/add_9_grad/Reshape!^gradients_1/add_9_grad/Reshape_1
Į
/gradients_1/add_9_grad/tuple/control_dependencyIdentitygradients_1/add_9_grad/Reshape(^gradients_1/add_9_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/add_9_grad/Reshape
Ē
1gradients_1/add_9_grad/tuple/control_dependency_1Identity gradients_1/add_9_grad/Reshape_1(^gradients_1/add_9_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/add_9_grad/Reshape_1
J
gradients_1/add_10_grad/ShapeShape	truediv_1*
T0*
out_type0
K
gradients_1/add_10_grad/Shape_1Shapeadd_10/y*
T0*
out_type0

-gradients_1/add_10_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/add_10_grad/Shapegradients_1/add_10_grad/Shape_1*
T0

gradients_1/add_10_grad/SumSumgradients_1/Log_5_grad/mul-gradients_1/add_10_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
}
gradients_1/add_10_grad/ReshapeReshapegradients_1/add_10_grad/Sumgradients_1/add_10_grad/Shape*
T0*
Tshape0

gradients_1/add_10_grad/Sum_1Sumgradients_1/Log_5_grad/mul/gradients_1/add_10_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 

!gradients_1/add_10_grad/Reshape_1Reshapegradients_1/add_10_grad/Sum_1gradients_1/add_10_grad/Shape_1*
T0*
Tshape0
v
(gradients_1/add_10_grad/tuple/group_depsNoOp ^gradients_1/add_10_grad/Reshape"^gradients_1/add_10_grad/Reshape_1
Å
0gradients_1/add_10_grad/tuple/control_dependencyIdentitygradients_1/add_10_grad/Reshape)^gradients_1/add_10_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients_1/add_10_grad/Reshape
Ė
2gradients_1/add_10_grad/tuple/control_dependency_1Identity!gradients_1/add_10_grad/Reshape_1)^gradients_1/add_10_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/add_10_grad/Reshape_1
J
gradients_1/add_11_grad/ShapeShape	truediv_2*
T0*
out_type0
K
gradients_1/add_11_grad/Shape_1Shapeadd_11/y*
T0*
out_type0

-gradients_1/add_11_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/add_11_grad/Shapegradients_1/add_11_grad/Shape_1*
T0

gradients_1/add_11_grad/SumSumgradients_1/Log_6_grad/mul-gradients_1/add_11_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
}
gradients_1/add_11_grad/ReshapeReshapegradients_1/add_11_grad/Sumgradients_1/add_11_grad/Shape*
T0*
Tshape0

gradients_1/add_11_grad/Sum_1Sumgradients_1/Log_6_grad/mul/gradients_1/add_11_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 

!gradients_1/add_11_grad/Reshape_1Reshapegradients_1/add_11_grad/Sum_1gradients_1/add_11_grad/Shape_1*
T0*
Tshape0
v
(gradients_1/add_11_grad/tuple/group_depsNoOp ^gradients_1/add_11_grad/Reshape"^gradients_1/add_11_grad/Reshape_1
Å
0gradients_1/add_11_grad/tuple/control_dependencyIdentitygradients_1/add_11_grad/Reshape)^gradients_1/add_11_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients_1/add_11_grad/Reshape
Ė
2gradients_1/add_11_grad/tuple/control_dependency_1Identity!gradients_1/add_11_grad/Reshape_1)^gradients_1/add_11_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/add_11_grad/Reshape_1
J
gradients_1/add_12_grad/ShapeShape	truediv_3*
T0*
out_type0
K
gradients_1/add_12_grad/Shape_1Shapeadd_12/y*
T0*
out_type0

-gradients_1/add_12_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/add_12_grad/Shapegradients_1/add_12_grad/Shape_1*
T0

gradients_1/add_12_grad/SumSumgradients_1/Log_7_grad/mul-gradients_1/add_12_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
}
gradients_1/add_12_grad/ReshapeReshapegradients_1/add_12_grad/Sumgradients_1/add_12_grad/Shape*
T0*
Tshape0

gradients_1/add_12_grad/Sum_1Sumgradients_1/Log_7_grad/mul/gradients_1/add_12_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

!gradients_1/add_12_grad/Reshape_1Reshapegradients_1/add_12_grad/Sum_1gradients_1/add_12_grad/Shape_1*
T0*
Tshape0
v
(gradients_1/add_12_grad/tuple/group_depsNoOp ^gradients_1/add_12_grad/Reshape"^gradients_1/add_12_grad/Reshape_1
Å
0gradients_1/add_12_grad/tuple/control_dependencyIdentitygradients_1/add_12_grad/Reshape)^gradients_1/add_12_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients_1/add_12_grad/Reshape
Ė
2gradients_1/add_12_grad/tuple/control_dependency_1Identity!gradients_1/add_12_grad/Reshape_1)^gradients_1/add_12_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/add_12_grad/Reshape_1
E
gradients_1/truediv_grad/ShapeShapeMul*
T0*
out_type0
G
 gradients_1/truediv_grad/Shape_1ShapeSum*
T0*
out_type0

.gradients_1/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/truediv_grad/Shape gradients_1/truediv_grad/Shape_1*
T0
j
 gradients_1/truediv_grad/RealDivRealDiv/gradients_1/add_9_grad/tuple/control_dependencySum*
T0

gradients_1/truediv_grad/SumSum gradients_1/truediv_grad/RealDiv.gradients_1/truediv_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 

 gradients_1/truediv_grad/ReshapeReshapegradients_1/truediv_grad/Sumgradients_1/truediv_grad/Shape*
T0*
Tshape0
1
gradients_1/truediv_grad/NegNegMul*
T0
Y
"gradients_1/truediv_grad/RealDiv_1RealDivgradients_1/truediv_grad/NegSum*
T0
_
"gradients_1/truediv_grad/RealDiv_2RealDiv"gradients_1/truediv_grad/RealDiv_1Sum*
T0

gradients_1/truediv_grad/mulMul/gradients_1/add_9_grad/tuple/control_dependency"gradients_1/truediv_grad/RealDiv_2*
T0

gradients_1/truediv_grad/Sum_1Sumgradients_1/truediv_grad/mul0gradients_1/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

"gradients_1/truediv_grad/Reshape_1Reshapegradients_1/truediv_grad/Sum_1 gradients_1/truediv_grad/Shape_1*
T0*
Tshape0
y
)gradients_1/truediv_grad/tuple/group_depsNoOp!^gradients_1/truediv_grad/Reshape#^gradients_1/truediv_grad/Reshape_1
É
1gradients_1/truediv_grad/tuple/control_dependencyIdentity gradients_1/truediv_grad/Reshape*^gradients_1/truediv_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/truediv_grad/Reshape
Ļ
3gradients_1/truediv_grad/tuple/control_dependency_1Identity"gradients_1/truediv_grad/Reshape_1*^gradients_1/truediv_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients_1/truediv_grad/Reshape_1
I
 gradients_1/truediv_1_grad/ShapeShapeMul_1*
T0*
out_type0
K
"gradients_1/truediv_1_grad/Shape_1ShapeSum_1*
T0*
out_type0

0gradients_1/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs gradients_1/truediv_1_grad/Shape"gradients_1/truediv_1_grad/Shape_1*
T0
o
"gradients_1/truediv_1_grad/RealDivRealDiv0gradients_1/add_10_grad/tuple/control_dependencySum_1*
T0
”
gradients_1/truediv_1_grad/SumSum"gradients_1/truediv_1_grad/RealDiv0gradients_1/truediv_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 

"gradients_1/truediv_1_grad/ReshapeReshapegradients_1/truediv_1_grad/Sum gradients_1/truediv_1_grad/Shape*
T0*
Tshape0
5
gradients_1/truediv_1_grad/NegNegMul_1*
T0
_
$gradients_1/truediv_1_grad/RealDiv_1RealDivgradients_1/truediv_1_grad/NegSum_1*
T0
e
$gradients_1/truediv_1_grad/RealDiv_2RealDiv$gradients_1/truediv_1_grad/RealDiv_1Sum_1*
T0

gradients_1/truediv_1_grad/mulMul0gradients_1/add_10_grad/tuple/control_dependency$gradients_1/truediv_1_grad/RealDiv_2*
T0
”
 gradients_1/truediv_1_grad/Sum_1Sumgradients_1/truediv_1_grad/mul2gradients_1/truediv_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

$gradients_1/truediv_1_grad/Reshape_1Reshape gradients_1/truediv_1_grad/Sum_1"gradients_1/truediv_1_grad/Shape_1*
T0*
Tshape0

+gradients_1/truediv_1_grad/tuple/group_depsNoOp#^gradients_1/truediv_1_grad/Reshape%^gradients_1/truediv_1_grad/Reshape_1
Ń
3gradients_1/truediv_1_grad/tuple/control_dependencyIdentity"gradients_1/truediv_1_grad/Reshape,^gradients_1/truediv_1_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients_1/truediv_1_grad/Reshape
×
5gradients_1/truediv_1_grad/tuple/control_dependency_1Identity$gradients_1/truediv_1_grad/Reshape_1,^gradients_1/truediv_1_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients_1/truediv_1_grad/Reshape_1
I
 gradients_1/truediv_2_grad/ShapeShapeMul_2*
T0*
out_type0
K
"gradients_1/truediv_2_grad/Shape_1ShapeSum_2*
T0*
out_type0

0gradients_1/truediv_2_grad/BroadcastGradientArgsBroadcastGradientArgs gradients_1/truediv_2_grad/Shape"gradients_1/truediv_2_grad/Shape_1*
T0
o
"gradients_1/truediv_2_grad/RealDivRealDiv0gradients_1/add_11_grad/tuple/control_dependencySum_2*
T0
”
gradients_1/truediv_2_grad/SumSum"gradients_1/truediv_2_grad/RealDiv0gradients_1/truediv_2_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 

"gradients_1/truediv_2_grad/ReshapeReshapegradients_1/truediv_2_grad/Sum gradients_1/truediv_2_grad/Shape*
T0*
Tshape0
5
gradients_1/truediv_2_grad/NegNegMul_2*
T0
_
$gradients_1/truediv_2_grad/RealDiv_1RealDivgradients_1/truediv_2_grad/NegSum_2*
T0
e
$gradients_1/truediv_2_grad/RealDiv_2RealDiv$gradients_1/truediv_2_grad/RealDiv_1Sum_2*
T0

gradients_1/truediv_2_grad/mulMul0gradients_1/add_11_grad/tuple/control_dependency$gradients_1/truediv_2_grad/RealDiv_2*
T0
”
 gradients_1/truediv_2_grad/Sum_1Sumgradients_1/truediv_2_grad/mul2gradients_1/truediv_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

$gradients_1/truediv_2_grad/Reshape_1Reshape gradients_1/truediv_2_grad/Sum_1"gradients_1/truediv_2_grad/Shape_1*
T0*
Tshape0

+gradients_1/truediv_2_grad/tuple/group_depsNoOp#^gradients_1/truediv_2_grad/Reshape%^gradients_1/truediv_2_grad/Reshape_1
Ń
3gradients_1/truediv_2_grad/tuple/control_dependencyIdentity"gradients_1/truediv_2_grad/Reshape,^gradients_1/truediv_2_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients_1/truediv_2_grad/Reshape
×
5gradients_1/truediv_2_grad/tuple/control_dependency_1Identity$gradients_1/truediv_2_grad/Reshape_1,^gradients_1/truediv_2_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients_1/truediv_2_grad/Reshape_1
I
 gradients_1/truediv_3_grad/ShapeShapeMul_3*
T0*
out_type0
K
"gradients_1/truediv_3_grad/Shape_1ShapeSum_3*
T0*
out_type0

0gradients_1/truediv_3_grad/BroadcastGradientArgsBroadcastGradientArgs gradients_1/truediv_3_grad/Shape"gradients_1/truediv_3_grad/Shape_1*
T0
o
"gradients_1/truediv_3_grad/RealDivRealDiv0gradients_1/add_12_grad/tuple/control_dependencySum_3*
T0
”
gradients_1/truediv_3_grad/SumSum"gradients_1/truediv_3_grad/RealDiv0gradients_1/truediv_3_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 

"gradients_1/truediv_3_grad/ReshapeReshapegradients_1/truediv_3_grad/Sum gradients_1/truediv_3_grad/Shape*
T0*
Tshape0
5
gradients_1/truediv_3_grad/NegNegMul_3*
T0
_
$gradients_1/truediv_3_grad/RealDiv_1RealDivgradients_1/truediv_3_grad/NegSum_3*
T0
e
$gradients_1/truediv_3_grad/RealDiv_2RealDiv$gradients_1/truediv_3_grad/RealDiv_1Sum_3*
T0

gradients_1/truediv_3_grad/mulMul0gradients_1/add_12_grad/tuple/control_dependency$gradients_1/truediv_3_grad/RealDiv_2*
T0
”
 gradients_1/truediv_3_grad/Sum_1Sumgradients_1/truediv_3_grad/mul2gradients_1/truediv_3_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 

$gradients_1/truediv_3_grad/Reshape_1Reshape gradients_1/truediv_3_grad/Sum_1"gradients_1/truediv_3_grad/Shape_1*
T0*
Tshape0

+gradients_1/truediv_3_grad/tuple/group_depsNoOp#^gradients_1/truediv_3_grad/Reshape%^gradients_1/truediv_3_grad/Reshape_1
Ń
3gradients_1/truediv_3_grad/tuple/control_dependencyIdentity"gradients_1/truediv_3_grad/Reshape,^gradients_1/truediv_3_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients_1/truediv_3_grad/Reshape
×
5gradients_1/truediv_3_grad/tuple/control_dependency_1Identity$gradients_1/truediv_3_grad/Reshape_1,^gradients_1/truediv_3_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients_1/truediv_3_grad/Reshape_1
A
gradients_1/Sum_grad/ShapeShapeMul*
T0*
out_type0
r
gradients_1/Sum_grad/SizeConst*-
_class#
!loc:@gradients_1/Sum_grad/Shape*
value	B :*
dtype0

gradients_1/Sum_grad/addAddV2Sum/reduction_indicesgradients_1/Sum_grad/Size*
T0*-
_class#
!loc:@gradients_1/Sum_grad/Shape

gradients_1/Sum_grad/modFloorModgradients_1/Sum_grad/addgradients_1/Sum_grad/Size*
T0*-
_class#
!loc:@gradients_1/Sum_grad/Shape
t
gradients_1/Sum_grad/Shape_1Const*-
_class#
!loc:@gradients_1/Sum_grad/Shape*
valueB *
dtype0
y
 gradients_1/Sum_grad/range/startConst*
dtype0*-
_class#
!loc:@gradients_1/Sum_grad/Shape*
value	B : 
y
 gradients_1/Sum_grad/range/deltaConst*-
_class#
!loc:@gradients_1/Sum_grad/Shape*
value	B :*
dtype0
½
gradients_1/Sum_grad/rangeRange gradients_1/Sum_grad/range/startgradients_1/Sum_grad/Size gradients_1/Sum_grad/range/delta*-
_class#
!loc:@gradients_1/Sum_grad/Shape*

Tidx0
x
gradients_1/Sum_grad/Fill/valueConst*-
_class#
!loc:@gradients_1/Sum_grad/Shape*
value	B :*
dtype0
Ŗ
gradients_1/Sum_grad/FillFillgradients_1/Sum_grad/Shape_1gradients_1/Sum_grad/Fill/value*
T0*-
_class#
!loc:@gradients_1/Sum_grad/Shape*

index_type0
į
"gradients_1/Sum_grad/DynamicStitchDynamicStitchgradients_1/Sum_grad/rangegradients_1/Sum_grad/modgradients_1/Sum_grad/Shapegradients_1/Sum_grad/Fill*
T0*-
_class#
!loc:@gradients_1/Sum_grad/Shape*
N
w
gradients_1/Sum_grad/Maximum/yConst*-
_class#
!loc:@gradients_1/Sum_grad/Shape*
value	B :*
dtype0
£
gradients_1/Sum_grad/MaximumMaximum"gradients_1/Sum_grad/DynamicStitchgradients_1/Sum_grad/Maximum/y*
T0*-
_class#
!loc:@gradients_1/Sum_grad/Shape

gradients_1/Sum_grad/floordivFloorDivgradients_1/Sum_grad/Shapegradients_1/Sum_grad/Maximum*
T0*-
_class#
!loc:@gradients_1/Sum_grad/Shape

gradients_1/Sum_grad/ReshapeReshape3gradients_1/truediv_grad/tuple/control_dependency_1"gradients_1/Sum_grad/DynamicStitch*
T0*
Tshape0
y
gradients_1/Sum_grad/TileTilegradients_1/Sum_grad/Reshapegradients_1/Sum_grad/floordiv*
T0*

Tmultiples0
E
gradients_1/Sum_1_grad/ShapeShapeMul_1*
T0*
out_type0
v
gradients_1/Sum_1_grad/SizeConst*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape*
value	B :*
dtype0

gradients_1/Sum_1_grad/addAddV2Sum_1/reduction_indicesgradients_1/Sum_1_grad/Size*
T0*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape

gradients_1/Sum_1_grad/modFloorModgradients_1/Sum_1_grad/addgradients_1/Sum_1_grad/Size*
T0*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape
x
gradients_1/Sum_1_grad/Shape_1Const*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape*
valueB *
dtype0
}
"gradients_1/Sum_1_grad/range/startConst*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape*
value	B : *
dtype0
}
"gradients_1/Sum_1_grad/range/deltaConst*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape*
value	B :*
dtype0
Ē
gradients_1/Sum_1_grad/rangeRange"gradients_1/Sum_1_grad/range/startgradients_1/Sum_1_grad/Size"gradients_1/Sum_1_grad/range/delta*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape*

Tidx0
|
!gradients_1/Sum_1_grad/Fill/valueConst*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape*
value	B :*
dtype0
²
gradients_1/Sum_1_grad/FillFillgradients_1/Sum_1_grad/Shape_1!gradients_1/Sum_1_grad/Fill/value*
T0*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape*

index_type0
ķ
$gradients_1/Sum_1_grad/DynamicStitchDynamicStitchgradients_1/Sum_1_grad/rangegradients_1/Sum_1_grad/modgradients_1/Sum_1_grad/Shapegradients_1/Sum_1_grad/Fill*
N*
T0*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape
{
 gradients_1/Sum_1_grad/Maximum/yConst*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape*
value	B :*
dtype0
«
gradients_1/Sum_1_grad/MaximumMaximum$gradients_1/Sum_1_grad/DynamicStitch gradients_1/Sum_1_grad/Maximum/y*
T0*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape
£
gradients_1/Sum_1_grad/floordivFloorDivgradients_1/Sum_1_grad/Shapegradients_1/Sum_1_grad/Maximum*
T0*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape

gradients_1/Sum_1_grad/ReshapeReshape5gradients_1/truediv_1_grad/tuple/control_dependency_1$gradients_1/Sum_1_grad/DynamicStitch*
T0*
Tshape0

gradients_1/Sum_1_grad/TileTilegradients_1/Sum_1_grad/Reshapegradients_1/Sum_1_grad/floordiv*
T0*

Tmultiples0
E
gradients_1/Sum_2_grad/ShapeShapeMul_2*
T0*
out_type0
v
gradients_1/Sum_2_grad/SizeConst*
dtype0*/
_class%
#!loc:@gradients_1/Sum_2_grad/Shape*
value	B :

gradients_1/Sum_2_grad/addAddV2Sum_2/reduction_indicesgradients_1/Sum_2_grad/Size*
T0*/
_class%
#!loc:@gradients_1/Sum_2_grad/Shape

gradients_1/Sum_2_grad/modFloorModgradients_1/Sum_2_grad/addgradients_1/Sum_2_grad/Size*
T0*/
_class%
#!loc:@gradients_1/Sum_2_grad/Shape
x
gradients_1/Sum_2_grad/Shape_1Const*/
_class%
#!loc:@gradients_1/Sum_2_grad/Shape*
valueB *
dtype0
}
"gradients_1/Sum_2_grad/range/startConst*/
_class%
#!loc:@gradients_1/Sum_2_grad/Shape*
value	B : *
dtype0
}
"gradients_1/Sum_2_grad/range/deltaConst*
dtype0*/
_class%
#!loc:@gradients_1/Sum_2_grad/Shape*
value	B :
Ē
gradients_1/Sum_2_grad/rangeRange"gradients_1/Sum_2_grad/range/startgradients_1/Sum_2_grad/Size"gradients_1/Sum_2_grad/range/delta*

Tidx0*/
_class%
#!loc:@gradients_1/Sum_2_grad/Shape
|
!gradients_1/Sum_2_grad/Fill/valueConst*/
_class%
#!loc:@gradients_1/Sum_2_grad/Shape*
value	B :*
dtype0
²
gradients_1/Sum_2_grad/FillFillgradients_1/Sum_2_grad/Shape_1!gradients_1/Sum_2_grad/Fill/value*
T0*/
_class%
#!loc:@gradients_1/Sum_2_grad/Shape*

index_type0
ķ
$gradients_1/Sum_2_grad/DynamicStitchDynamicStitchgradients_1/Sum_2_grad/rangegradients_1/Sum_2_grad/modgradients_1/Sum_2_grad/Shapegradients_1/Sum_2_grad/Fill*
T0*/
_class%
#!loc:@gradients_1/Sum_2_grad/Shape*
N
{
 gradients_1/Sum_2_grad/Maximum/yConst*/
_class%
#!loc:@gradients_1/Sum_2_grad/Shape*
value	B :*
dtype0
«
gradients_1/Sum_2_grad/MaximumMaximum$gradients_1/Sum_2_grad/DynamicStitch gradients_1/Sum_2_grad/Maximum/y*
T0*/
_class%
#!loc:@gradients_1/Sum_2_grad/Shape
£
gradients_1/Sum_2_grad/floordivFloorDivgradients_1/Sum_2_grad/Shapegradients_1/Sum_2_grad/Maximum*
T0*/
_class%
#!loc:@gradients_1/Sum_2_grad/Shape

gradients_1/Sum_2_grad/ReshapeReshape5gradients_1/truediv_2_grad/tuple/control_dependency_1$gradients_1/Sum_2_grad/DynamicStitch*
T0*
Tshape0

gradients_1/Sum_2_grad/TileTilegradients_1/Sum_2_grad/Reshapegradients_1/Sum_2_grad/floordiv*

Tmultiples0*
T0
E
gradients_1/Sum_3_grad/ShapeShapeMul_3*
T0*
out_type0
v
gradients_1/Sum_3_grad/SizeConst*/
_class%
#!loc:@gradients_1/Sum_3_grad/Shape*
value	B :*
dtype0

gradients_1/Sum_3_grad/addAddV2Sum_3/reduction_indicesgradients_1/Sum_3_grad/Size*
T0*/
_class%
#!loc:@gradients_1/Sum_3_grad/Shape

gradients_1/Sum_3_grad/modFloorModgradients_1/Sum_3_grad/addgradients_1/Sum_3_grad/Size*
T0*/
_class%
#!loc:@gradients_1/Sum_3_grad/Shape
x
gradients_1/Sum_3_grad/Shape_1Const*/
_class%
#!loc:@gradients_1/Sum_3_grad/Shape*
valueB *
dtype0
}
"gradients_1/Sum_3_grad/range/startConst*/
_class%
#!loc:@gradients_1/Sum_3_grad/Shape*
value	B : *
dtype0
}
"gradients_1/Sum_3_grad/range/deltaConst*/
_class%
#!loc:@gradients_1/Sum_3_grad/Shape*
value	B :*
dtype0
Ē
gradients_1/Sum_3_grad/rangeRange"gradients_1/Sum_3_grad/range/startgradients_1/Sum_3_grad/Size"gradients_1/Sum_3_grad/range/delta*

Tidx0*/
_class%
#!loc:@gradients_1/Sum_3_grad/Shape
|
!gradients_1/Sum_3_grad/Fill/valueConst*/
_class%
#!loc:@gradients_1/Sum_3_grad/Shape*
value	B :*
dtype0
²
gradients_1/Sum_3_grad/FillFillgradients_1/Sum_3_grad/Shape_1!gradients_1/Sum_3_grad/Fill/value*
T0*/
_class%
#!loc:@gradients_1/Sum_3_grad/Shape*

index_type0
ķ
$gradients_1/Sum_3_grad/DynamicStitchDynamicStitchgradients_1/Sum_3_grad/rangegradients_1/Sum_3_grad/modgradients_1/Sum_3_grad/Shapegradients_1/Sum_3_grad/Fill*
T0*/
_class%
#!loc:@gradients_1/Sum_3_grad/Shape*
N
{
 gradients_1/Sum_3_grad/Maximum/yConst*/
_class%
#!loc:@gradients_1/Sum_3_grad/Shape*
value	B :*
dtype0
«
gradients_1/Sum_3_grad/MaximumMaximum$gradients_1/Sum_3_grad/DynamicStitch gradients_1/Sum_3_grad/Maximum/y*
T0*/
_class%
#!loc:@gradients_1/Sum_3_grad/Shape
£
gradients_1/Sum_3_grad/floordivFloorDivgradients_1/Sum_3_grad/Shapegradients_1/Sum_3_grad/Maximum*
T0*/
_class%
#!loc:@gradients_1/Sum_3_grad/Shape

gradients_1/Sum_3_grad/ReshapeReshape5gradients_1/truediv_3_grad/tuple/control_dependency_1$gradients_1/Sum_3_grad/DynamicStitch*
T0*
Tshape0

gradients_1/Sum_3_grad/TileTilegradients_1/Sum_3_grad/Reshapegradients_1/Sum_3_grad/floordiv*

Tmultiples0*
T0
Æ
gradients_1/AddN_3AddN1gradients_1/truediv_grad/tuple/control_dependencygradients_1/Sum_grad/Tile*
T0*3
_class)
'%loc:@gradients_1/truediv_grad/Reshape*
N
C
gradients_1/Mul_grad/ShapeShapeadd_1*
T0*
out_type0
O
gradients_1/Mul_grad/Shape_1Shapestrided_slice_4*
T0*
out_type0

*gradients_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/Mul_grad/Shapegradients_1/Mul_grad/Shape_1*
T0
M
gradients_1/Mul_grad/MulMulgradients_1/AddN_3strided_slice_4*
T0

gradients_1/Mul_grad/SumSumgradients_1/Mul_grad/Mul*gradients_1/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients_1/Mul_grad/ReshapeReshapegradients_1/Mul_grad/Sumgradients_1/Mul_grad/Shape*
T0*
Tshape0
E
gradients_1/Mul_grad/Mul_1Muladd_1gradients_1/AddN_3*
T0

gradients_1/Mul_grad/Sum_1Sumgradients_1/Mul_grad/Mul_1,gradients_1/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients_1/Mul_grad/Reshape_1Reshapegradients_1/Mul_grad/Sum_1gradients_1/Mul_grad/Shape_1*
T0*
Tshape0
m
%gradients_1/Mul_grad/tuple/group_depsNoOp^gradients_1/Mul_grad/Reshape^gradients_1/Mul_grad/Reshape_1
¹
-gradients_1/Mul_grad/tuple/control_dependencyIdentitygradients_1/Mul_grad/Reshape&^gradients_1/Mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients_1/Mul_grad/Reshape
æ
/gradients_1/Mul_grad/tuple/control_dependency_1Identitygradients_1/Mul_grad/Reshape_1&^gradients_1/Mul_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/Mul_grad/Reshape_1
µ
gradients_1/AddN_4AddN3gradients_1/truediv_1_grad/tuple/control_dependencygradients_1/Sum_1_grad/Tile*
N*
T0*5
_class+
)'loc:@gradients_1/truediv_1_grad/Reshape
E
gradients_1/Mul_1_grad/ShapeShapeadd_2*
T0*
out_type0
Q
gradients_1/Mul_1_grad/Shape_1Shapestrided_slice_5*
T0*
out_type0

,gradients_1/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/Mul_1_grad/Shapegradients_1/Mul_1_grad/Shape_1*
T0
O
gradients_1/Mul_1_grad/MulMulgradients_1/AddN_4strided_slice_5*
T0

gradients_1/Mul_1_grad/SumSumgradients_1/Mul_1_grad/Mul,gradients_1/Mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/Mul_1_grad/ReshapeReshapegradients_1/Mul_1_grad/Sumgradients_1/Mul_1_grad/Shape*
T0*
Tshape0
G
gradients_1/Mul_1_grad/Mul_1Muladd_2gradients_1/AddN_4*
T0

gradients_1/Mul_1_grad/Sum_1Sumgradients_1/Mul_1_grad/Mul_1.gradients_1/Mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

 gradients_1/Mul_1_grad/Reshape_1Reshapegradients_1/Mul_1_grad/Sum_1gradients_1/Mul_1_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/Mul_1_grad/tuple/group_depsNoOp^gradients_1/Mul_1_grad/Reshape!^gradients_1/Mul_1_grad/Reshape_1
Į
/gradients_1/Mul_1_grad/tuple/control_dependencyIdentitygradients_1/Mul_1_grad/Reshape(^gradients_1/Mul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/Mul_1_grad/Reshape
Ē
1gradients_1/Mul_1_grad/tuple/control_dependency_1Identity gradients_1/Mul_1_grad/Reshape_1(^gradients_1/Mul_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/Mul_1_grad/Reshape_1
µ
gradients_1/AddN_5AddN3gradients_1/truediv_2_grad/tuple/control_dependencygradients_1/Sum_2_grad/Tile*
N*
T0*5
_class+
)'loc:@gradients_1/truediv_2_grad/Reshape
E
gradients_1/Mul_2_grad/ShapeShapeadd_3*
T0*
out_type0
Q
gradients_1/Mul_2_grad/Shape_1Shapestrided_slice_6*
T0*
out_type0

,gradients_1/Mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/Mul_2_grad/Shapegradients_1/Mul_2_grad/Shape_1*
T0
O
gradients_1/Mul_2_grad/MulMulgradients_1/AddN_5strided_slice_6*
T0

gradients_1/Mul_2_grad/SumSumgradients_1/Mul_2_grad/Mul,gradients_1/Mul_2_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
z
gradients_1/Mul_2_grad/ReshapeReshapegradients_1/Mul_2_grad/Sumgradients_1/Mul_2_grad/Shape*
T0*
Tshape0
G
gradients_1/Mul_2_grad/Mul_1Muladd_3gradients_1/AddN_5*
T0

gradients_1/Mul_2_grad/Sum_1Sumgradients_1/Mul_2_grad/Mul_1.gradients_1/Mul_2_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 

 gradients_1/Mul_2_grad/Reshape_1Reshapegradients_1/Mul_2_grad/Sum_1gradients_1/Mul_2_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/Mul_2_grad/tuple/group_depsNoOp^gradients_1/Mul_2_grad/Reshape!^gradients_1/Mul_2_grad/Reshape_1
Į
/gradients_1/Mul_2_grad/tuple/control_dependencyIdentitygradients_1/Mul_2_grad/Reshape(^gradients_1/Mul_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/Mul_2_grad/Reshape
Ē
1gradients_1/Mul_2_grad/tuple/control_dependency_1Identity gradients_1/Mul_2_grad/Reshape_1(^gradients_1/Mul_2_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/Mul_2_grad/Reshape_1
µ
gradients_1/AddN_6AddN3gradients_1/truediv_3_grad/tuple/control_dependencygradients_1/Sum_3_grad/Tile*
T0*5
_class+
)'loc:@gradients_1/truediv_3_grad/Reshape*
N
E
gradients_1/Mul_3_grad/ShapeShapeadd_4*
T0*
out_type0
Q
gradients_1/Mul_3_grad/Shape_1Shapestrided_slice_7*
T0*
out_type0

,gradients_1/Mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/Mul_3_grad/Shapegradients_1/Mul_3_grad/Shape_1*
T0
O
gradients_1/Mul_3_grad/MulMulgradients_1/AddN_6strided_slice_7*
T0

gradients_1/Mul_3_grad/SumSumgradients_1/Mul_3_grad/Mul,gradients_1/Mul_3_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
z
gradients_1/Mul_3_grad/ReshapeReshapegradients_1/Mul_3_grad/Sumgradients_1/Mul_3_grad/Shape*
T0*
Tshape0
G
gradients_1/Mul_3_grad/Mul_1Muladd_4gradients_1/AddN_6*
T0

gradients_1/Mul_3_grad/Sum_1Sumgradients_1/Mul_3_grad/Mul_1.gradients_1/Mul_3_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 

 gradients_1/Mul_3_grad/Reshape_1Reshapegradients_1/Mul_3_grad/Sum_1gradients_1/Mul_3_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/Mul_3_grad/tuple/group_depsNoOp^gradients_1/Mul_3_grad/Reshape!^gradients_1/Mul_3_grad/Reshape_1
Į
/gradients_1/Mul_3_grad/tuple/control_dependencyIdentitygradients_1/Mul_3_grad/Reshape(^gradients_1/Mul_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/Mul_3_grad/Reshape
Ē
1gradients_1/Mul_3_grad/tuple/control_dependency_1Identity gradients_1/Mul_3_grad/Reshape_1(^gradients_1/Mul_3_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/Mul_3_grad/Reshape_1
G
gradients_1/add_1_grad/ShapeShapeSoftmax*
T0*
out_type0
I
gradients_1/add_1_grad/Shape_1Shapeadd_1/y*
T0*
out_type0

,gradients_1/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/add_1_grad/Shapegradients_1/add_1_grad/Shape_1*
T0
¤
gradients_1/add_1_grad/SumSum-gradients_1/Mul_grad/tuple/control_dependency,gradients_1/add_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/add_1_grad/ReshapeReshapegradients_1/add_1_grad/Sumgradients_1/add_1_grad/Shape*
T0*
Tshape0
Ø
gradients_1/add_1_grad/Sum_1Sum-gradients_1/Mul_grad/tuple/control_dependency.gradients_1/add_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 

 gradients_1/add_1_grad/Reshape_1Reshapegradients_1/add_1_grad/Sum_1gradients_1/add_1_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/add_1_grad/tuple/group_depsNoOp^gradients_1/add_1_grad/Reshape!^gradients_1/add_1_grad/Reshape_1
Į
/gradients_1/add_1_grad/tuple/control_dependencyIdentitygradients_1/add_1_grad/Reshape(^gradients_1/add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/add_1_grad/Reshape
Ē
1gradients_1/add_1_grad/tuple/control_dependency_1Identity gradients_1/add_1_grad/Reshape_1(^gradients_1/add_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/add_1_grad/Reshape_1
I
gradients_1/add_2_grad/ShapeShape	Softmax_1*
T0*
out_type0
I
gradients_1/add_2_grad/Shape_1Shapeadd_2/y*
T0*
out_type0

,gradients_1/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/add_2_grad/Shapegradients_1/add_2_grad/Shape_1*
T0
¦
gradients_1/add_2_grad/SumSum/gradients_1/Mul_1_grad/tuple/control_dependency,gradients_1/add_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/add_2_grad/ReshapeReshapegradients_1/add_2_grad/Sumgradients_1/add_2_grad/Shape*
T0*
Tshape0
Ŗ
gradients_1/add_2_grad/Sum_1Sum/gradients_1/Mul_1_grad/tuple/control_dependency.gradients_1/add_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

 gradients_1/add_2_grad/Reshape_1Reshapegradients_1/add_2_grad/Sum_1gradients_1/add_2_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/add_2_grad/tuple/group_depsNoOp^gradients_1/add_2_grad/Reshape!^gradients_1/add_2_grad/Reshape_1
Į
/gradients_1/add_2_grad/tuple/control_dependencyIdentitygradients_1/add_2_grad/Reshape(^gradients_1/add_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/add_2_grad/Reshape
Ē
1gradients_1/add_2_grad/tuple/control_dependency_1Identity gradients_1/add_2_grad/Reshape_1(^gradients_1/add_2_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/add_2_grad/Reshape_1
I
gradients_1/add_3_grad/ShapeShape	Softmax_2*
T0*
out_type0
I
gradients_1/add_3_grad/Shape_1Shapeadd_3/y*
T0*
out_type0

,gradients_1/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/add_3_grad/Shapegradients_1/add_3_grad/Shape_1*
T0
¦
gradients_1/add_3_grad/SumSum/gradients_1/Mul_2_grad/tuple/control_dependency,gradients_1/add_3_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
z
gradients_1/add_3_grad/ReshapeReshapegradients_1/add_3_grad/Sumgradients_1/add_3_grad/Shape*
T0*
Tshape0
Ŗ
gradients_1/add_3_grad/Sum_1Sum/gradients_1/Mul_2_grad/tuple/control_dependency.gradients_1/add_3_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

 gradients_1/add_3_grad/Reshape_1Reshapegradients_1/add_3_grad/Sum_1gradients_1/add_3_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/add_3_grad/tuple/group_depsNoOp^gradients_1/add_3_grad/Reshape!^gradients_1/add_3_grad/Reshape_1
Į
/gradients_1/add_3_grad/tuple/control_dependencyIdentitygradients_1/add_3_grad/Reshape(^gradients_1/add_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/add_3_grad/Reshape
Ē
1gradients_1/add_3_grad/tuple/control_dependency_1Identity gradients_1/add_3_grad/Reshape_1(^gradients_1/add_3_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/add_3_grad/Reshape_1
I
gradients_1/add_4_grad/ShapeShape	Softmax_3*
T0*
out_type0
I
gradients_1/add_4_grad/Shape_1Shapeadd_4/y*
T0*
out_type0

,gradients_1/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/add_4_grad/Shapegradients_1/add_4_grad/Shape_1*
T0
¦
gradients_1/add_4_grad/SumSum/gradients_1/Mul_3_grad/tuple/control_dependency,gradients_1/add_4_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
z
gradients_1/add_4_grad/ReshapeReshapegradients_1/add_4_grad/Sumgradients_1/add_4_grad/Shape*
T0*
Tshape0
Ŗ
gradients_1/add_4_grad/Sum_1Sum/gradients_1/Mul_3_grad/tuple/control_dependency.gradients_1/add_4_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 

 gradients_1/add_4_grad/Reshape_1Reshapegradients_1/add_4_grad/Sum_1gradients_1/add_4_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/add_4_grad/tuple/group_depsNoOp^gradients_1/add_4_grad/Reshape!^gradients_1/add_4_grad/Reshape_1
Į
/gradients_1/add_4_grad/tuple/control_dependencyIdentitygradients_1/add_4_grad/Reshape(^gradients_1/add_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/add_4_grad/Reshape
Ē
1gradients_1/add_4_grad/tuple/control_dependency_1Identity gradients_1/add_4_grad/Reshape_1(^gradients_1/add_4_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/add_4_grad/Reshape_1
f
gradients_1/Softmax_grad/mulMul/gradients_1/add_1_grad/tuple/control_dependencySoftmax*
T0
a
.gradients_1/Softmax_grad/Sum/reduction_indicesConst*
valueB :
’’’’’’’’’*
dtype0

gradients_1/Softmax_grad/SumSumgradients_1/Softmax_grad/mul.gradients_1/Softmax_grad/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0
{
gradients_1/Softmax_grad/subSub/gradients_1/add_1_grad/tuple/control_dependencygradients_1/Softmax_grad/Sum*
T0
U
gradients_1/Softmax_grad/mul_1Mulgradients_1/Softmax_grad/subSoftmax*
T0
j
gradients_1/Softmax_1_grad/mulMul/gradients_1/add_2_grad/tuple/control_dependency	Softmax_1*
T0
c
0gradients_1/Softmax_1_grad/Sum/reduction_indicesConst*
valueB :
’’’’’’’’’*
dtype0

gradients_1/Softmax_1_grad/SumSumgradients_1/Softmax_1_grad/mul0gradients_1/Softmax_1_grad/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0

gradients_1/Softmax_1_grad/subSub/gradients_1/add_2_grad/tuple/control_dependencygradients_1/Softmax_1_grad/Sum*
T0
[
 gradients_1/Softmax_1_grad/mul_1Mulgradients_1/Softmax_1_grad/sub	Softmax_1*
T0
j
gradients_1/Softmax_2_grad/mulMul/gradients_1/add_3_grad/tuple/control_dependency	Softmax_2*
T0
c
0gradients_1/Softmax_2_grad/Sum/reduction_indicesConst*
valueB :
’’’’’’’’’*
dtype0

gradients_1/Softmax_2_grad/SumSumgradients_1/Softmax_2_grad/mul0gradients_1/Softmax_2_grad/Sum/reduction_indices*
T0*

Tidx0*
	keep_dims(

gradients_1/Softmax_2_grad/subSub/gradients_1/add_3_grad/tuple/control_dependencygradients_1/Softmax_2_grad/Sum*
T0
[
 gradients_1/Softmax_2_grad/mul_1Mulgradients_1/Softmax_2_grad/sub	Softmax_2*
T0
j
gradients_1/Softmax_3_grad/mulMul/gradients_1/add_4_grad/tuple/control_dependency	Softmax_3*
T0
c
0gradients_1/Softmax_3_grad/Sum/reduction_indicesConst*
valueB :
’’’’’’’’’*
dtype0

gradients_1/Softmax_3_grad/SumSumgradients_1/Softmax_3_grad/mul0gradients_1/Softmax_3_grad/Sum/reduction_indices*
T0*

Tidx0*
	keep_dims(

gradients_1/Softmax_3_grad/subSub/gradients_1/add_4_grad/tuple/control_dependencygradients_1/Softmax_3_grad/Sum*
T0
[
 gradients_1/Softmax_3_grad/mul_1Mulgradients_1/Softmax_3_grad/sub	Softmax_3*
T0
T
$gradients_1/strided_slice_grad/ShapeShapeaction_probs*
T0*
out_type0
Ę
/gradients_1/strided_slice_grad/StridedSliceGradStridedSliceGrad$gradients_1/strided_slice_grad/Shapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2gradients_1/Softmax_grad/mul_1*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
V
&gradients_1/strided_slice_1_grad/ShapeShapeaction_probs*
T0*
out_type0
Ņ
1gradients_1/strided_slice_1_grad/StridedSliceGradStridedSliceGrad&gradients_1/strided_slice_1_grad/Shapestrided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2 gradients_1/Softmax_1_grad/mul_1*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask
V
&gradients_1/strided_slice_2_grad/ShapeShapeaction_probs*
T0*
out_type0
Ņ
1gradients_1/strided_slice_2_grad/StridedSliceGradStridedSliceGrad&gradients_1/strided_slice_2_grad/Shapestrided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2 gradients_1/Softmax_2_grad/mul_1*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
V
&gradients_1/strided_slice_3_grad/ShapeShapeaction_probs*
T0*
out_type0
Ņ
1gradients_1/strided_slice_3_grad/StridedSliceGradStridedSliceGrad&gradients_1/strided_slice_3_grad/Shapestrided_slice_3/stackstrided_slice_3/stack_1strided_slice_3/stack_2 gradients_1/Softmax_3_grad/mul_1*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
Ż
gradients_1/AddN_7AddN2gradients_1/strided_slice_21_grad/StridedSliceGrad2gradients_1/strided_slice_23_grad/StridedSliceGrad2gradients_1/strided_slice_25_grad/StridedSliceGrad2gradients_1/strided_slice_27_grad/StridedSliceGrad2gradients_1/strided_slice_20_grad/StridedSliceGrad2gradients_1/strided_slice_22_grad/StridedSliceGrad2gradients_1/strided_slice_24_grad/StridedSliceGrad2gradients_1/strided_slice_26_grad/StridedSliceGrad/gradients_1/strided_slice_grad/StridedSliceGrad1gradients_1/strided_slice_1_grad/StridedSliceGrad1gradients_1/strided_slice_2_grad/StridedSliceGrad1gradients_1/strided_slice_3_grad/StridedSliceGrad*
N*
T0*E
_class;
97loc:@gradients_1/strided_slice_21_grad/StridedSliceGrad
L
"gradients_1/action_probs_grad/RankConst*
value	B :*
dtype0
m
!gradients_1/action_probs_grad/modFloorModaction_probs/axis"gradients_1/action_probs_grad/Rank*
T0
S
#gradients_1/action_probs_grad/ShapeShapedense/MatMul*
T0*
out_type0

$gradients_1/action_probs_grad/ShapeNShapeNdense/MatMuldense_1/MatMuldense_2/MatMuldense_3/MatMul*
N*
T0*
out_type0

*gradients_1/action_probs_grad/ConcatOffsetConcatOffset!gradients_1/action_probs_grad/mod$gradients_1/action_probs_grad/ShapeN&gradients_1/action_probs_grad/ShapeN:1&gradients_1/action_probs_grad/ShapeN:2&gradients_1/action_probs_grad/ShapeN:3*
N
Ø
#gradients_1/action_probs_grad/SliceSlicegradients_1/AddN_7*gradients_1/action_probs_grad/ConcatOffset$gradients_1/action_probs_grad/ShapeN*
T0*
Index0
®
%gradients_1/action_probs_grad/Slice_1Slicegradients_1/AddN_7,gradients_1/action_probs_grad/ConcatOffset:1&gradients_1/action_probs_grad/ShapeN:1*
T0*
Index0
®
%gradients_1/action_probs_grad/Slice_2Slicegradients_1/AddN_7,gradients_1/action_probs_grad/ConcatOffset:2&gradients_1/action_probs_grad/ShapeN:2*
T0*
Index0
®
%gradients_1/action_probs_grad/Slice_3Slicegradients_1/AddN_7,gradients_1/action_probs_grad/ConcatOffset:3&gradients_1/action_probs_grad/ShapeN:3*
T0*
Index0
Ō
.gradients_1/action_probs_grad/tuple/group_depsNoOp$^gradients_1/action_probs_grad/Slice&^gradients_1/action_probs_grad/Slice_1&^gradients_1/action_probs_grad/Slice_2&^gradients_1/action_probs_grad/Slice_3
Ł
6gradients_1/action_probs_grad/tuple/control_dependencyIdentity#gradients_1/action_probs_grad/Slice/^gradients_1/action_probs_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients_1/action_probs_grad/Slice
ß
8gradients_1/action_probs_grad/tuple/control_dependency_1Identity%gradients_1/action_probs_grad/Slice_1/^gradients_1/action_probs_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients_1/action_probs_grad/Slice_1
ß
8gradients_1/action_probs_grad/tuple/control_dependency_2Identity%gradients_1/action_probs_grad/Slice_2/^gradients_1/action_probs_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients_1/action_probs_grad/Slice_2
ß
8gradients_1/action_probs_grad/tuple/control_dependency_3Identity%gradients_1/action_probs_grad/Slice_3/^gradients_1/action_probs_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients_1/action_probs_grad/Slice_3
Ø
$gradients_1/dense/MatMul_grad/MatMulMatMul6gradients_1/action_probs_grad/tuple/control_dependencydense/kernel/read*
T0*
transpose_a( *
transpose_b(
²
&gradients_1/dense/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul6gradients_1/action_probs_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0

.gradients_1/dense/MatMul_grad/tuple/group_depsNoOp%^gradients_1/dense/MatMul_grad/MatMul'^gradients_1/dense/MatMul_grad/MatMul_1
Ū
6gradients_1/dense/MatMul_grad/tuple/control_dependencyIdentity$gradients_1/dense/MatMul_grad/MatMul/^gradients_1/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients_1/dense/MatMul_grad/MatMul
į
8gradients_1/dense/MatMul_grad/tuple/control_dependency_1Identity&gradients_1/dense/MatMul_grad/MatMul_1/^gradients_1/dense/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients_1/dense/MatMul_grad/MatMul_1
®
&gradients_1/dense_1/MatMul_grad/MatMulMatMul8gradients_1/action_probs_grad/tuple/control_dependency_1dense_1/kernel/read*
transpose_b(*
T0*
transpose_a( 
¶
(gradients_1/dense_1/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul8gradients_1/action_probs_grad/tuple/control_dependency_1*
T0*
transpose_a(*
transpose_b( 

0gradients_1/dense_1/MatMul_grad/tuple/group_depsNoOp'^gradients_1/dense_1/MatMul_grad/MatMul)^gradients_1/dense_1/MatMul_grad/MatMul_1
ć
8gradients_1/dense_1/MatMul_grad/tuple/control_dependencyIdentity&gradients_1/dense_1/MatMul_grad/MatMul1^gradients_1/dense_1/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients_1/dense_1/MatMul_grad/MatMul
é
:gradients_1/dense_1/MatMul_grad/tuple/control_dependency_1Identity(gradients_1/dense_1/MatMul_grad/MatMul_11^gradients_1/dense_1/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/dense_1/MatMul_grad/MatMul_1
®
&gradients_1/dense_2/MatMul_grad/MatMulMatMul8gradients_1/action_probs_grad/tuple/control_dependency_2dense_2/kernel/read*
T0*
transpose_a( *
transpose_b(
¶
(gradients_1/dense_2/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul8gradients_1/action_probs_grad/tuple/control_dependency_2*
T0*
transpose_a(*
transpose_b( 

0gradients_1/dense_2/MatMul_grad/tuple/group_depsNoOp'^gradients_1/dense_2/MatMul_grad/MatMul)^gradients_1/dense_2/MatMul_grad/MatMul_1
ć
8gradients_1/dense_2/MatMul_grad/tuple/control_dependencyIdentity&gradients_1/dense_2/MatMul_grad/MatMul1^gradients_1/dense_2/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients_1/dense_2/MatMul_grad/MatMul
é
:gradients_1/dense_2/MatMul_grad/tuple/control_dependency_1Identity(gradients_1/dense_2/MatMul_grad/MatMul_11^gradients_1/dense_2/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/dense_2/MatMul_grad/MatMul_1
®
&gradients_1/dense_3/MatMul_grad/MatMulMatMul8gradients_1/action_probs_grad/tuple/control_dependency_3dense_3/kernel/read*
T0*
transpose_a( *
transpose_b(
¶
(gradients_1/dense_3/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul8gradients_1/action_probs_grad/tuple/control_dependency_3*
T0*
transpose_a(*
transpose_b( 

0gradients_1/dense_3/MatMul_grad/tuple/group_depsNoOp'^gradients_1/dense_3/MatMul_grad/MatMul)^gradients_1/dense_3/MatMul_grad/MatMul_1
ć
8gradients_1/dense_3/MatMul_grad/tuple/control_dependencyIdentity&gradients_1/dense_3/MatMul_grad/MatMul1^gradients_1/dense_3/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients_1/dense_3/MatMul_grad/MatMul
é
:gradients_1/dense_3/MatMul_grad/tuple/control_dependency_1Identity(gradients_1/dense_3/MatMul_grad/MatMul_11^gradients_1/dense_3/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/dense_3/MatMul_grad/MatMul_1

gradients_1/AddN_8AddN@gradients_1/extrinsic_value/MatMul_grad/tuple/control_dependency6gradients_1/dense/MatMul_grad/tuple/control_dependency8gradients_1/dense_1/MatMul_grad/tuple/control_dependency8gradients_1/dense_2/MatMul_grad/tuple/control_dependency8gradients_1/dense_3/MatMul_grad/tuple/control_dependency*
T0*A
_class7
53loc:@gradients_1/extrinsic_value/MatMul_grad/MatMul*
N
q
0gradients_1/main_graph_0/hidden_1/Mul_grad/ShapeShapemain_graph_0/hidden_1/BiasAdd*
T0*
out_type0
s
2gradients_1/main_graph_0/hidden_1/Mul_grad/Shape_1Shapemain_graph_0/hidden_1/Sigmoid*
T0*
out_type0
Č
@gradients_1/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients_1/main_graph_0/hidden_1/Mul_grad/Shape2gradients_1/main_graph_0/hidden_1/Mul_grad/Shape_1*
T0
q
.gradients_1/main_graph_0/hidden_1/Mul_grad/MulMulgradients_1/AddN_8main_graph_0/hidden_1/Sigmoid*
T0
Ķ
.gradients_1/main_graph_0/hidden_1/Mul_grad/SumSum.gradients_1/main_graph_0/hidden_1/Mul_grad/Mul@gradients_1/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
¶
2gradients_1/main_graph_0/hidden_1/Mul_grad/ReshapeReshape.gradients_1/main_graph_0/hidden_1/Mul_grad/Sum0gradients_1/main_graph_0/hidden_1/Mul_grad/Shape*
T0*
Tshape0
s
0gradients_1/main_graph_0/hidden_1/Mul_grad/Mul_1Mulmain_graph_0/hidden_1/BiasAddgradients_1/AddN_8*
T0
Ó
0gradients_1/main_graph_0/hidden_1/Mul_grad/Sum_1Sum0gradients_1/main_graph_0/hidden_1/Mul_grad/Mul_1Bgradients_1/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
¼
4gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape_1Reshape0gradients_1/main_graph_0/hidden_1/Mul_grad/Sum_12gradients_1/main_graph_0/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
Æ
;gradients_1/main_graph_0/hidden_1/Mul_grad/tuple/group_depsNoOp3^gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape5^gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape_1

Cgradients_1/main_graph_0/hidden_1/Mul_grad/tuple/control_dependencyIdentity2gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape<^gradients_1/main_graph_0/hidden_1/Mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape

Egradients_1/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency_1Identity4gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape_1<^gradients_1/main_graph_0/hidden_1/Mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape_1
ø
:gradients_1/main_graph_0/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_0/hidden_1/SigmoidEgradients_1/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
ō
gradients_1/AddN_9AddNCgradients_1/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency:gradients_1/main_graph_0/hidden_1/Sigmoid_grad/SigmoidGrad*
N*
T0*E
_class;
97loc:@gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape
}
:gradients_1/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients_1/AddN_9*
data_formatNHWC*
T0

?gradients_1/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients_1/AddN_9;^gradients_1/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad
ł
Ggradients_1/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients_1/AddN_9@^gradients_1/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape
«
Igradients_1/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency_1Identity:gradients_1/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad@^gradients_1/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad
Ł
4gradients_1/main_graph_0/hidden_1/MatMul_grad/MatMulMatMulGgradients_1/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency!main_graph_0/hidden_1/kernel/read*
transpose_a( *
transpose_b(*
T0
Ó
6gradients_1/main_graph_0/hidden_1/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_0/MulGgradients_1/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
¶
>gradients_1/main_graph_0/hidden_1/MatMul_grad/tuple/group_depsNoOp5^gradients_1/main_graph_0/hidden_1/MatMul_grad/MatMul7^gradients_1/main_graph_0/hidden_1/MatMul_grad/MatMul_1

Fgradients_1/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependencyIdentity4gradients_1/main_graph_0/hidden_1/MatMul_grad/MatMul?^gradients_1/main_graph_0/hidden_1/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients_1/main_graph_0/hidden_1/MatMul_grad/MatMul
”
Hgradients_1/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency_1Identity6gradients_1/main_graph_0/hidden_1/MatMul_grad/MatMul_1?^gradients_1/main_graph_0/hidden_1/MatMul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients_1/main_graph_0/hidden_1/MatMul_grad/MatMul_1
q
0gradients_1/main_graph_0/hidden_0/Mul_grad/ShapeShapemain_graph_0/hidden_0/BiasAdd*
T0*
out_type0
s
2gradients_1/main_graph_0/hidden_0/Mul_grad/Shape_1Shapemain_graph_0/hidden_0/Sigmoid*
T0*
out_type0
Č
@gradients_1/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients_1/main_graph_0/hidden_0/Mul_grad/Shape2gradients_1/main_graph_0/hidden_0/Mul_grad/Shape_1*
T0
„
.gradients_1/main_graph_0/hidden_0/Mul_grad/MulMulFgradients_1/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependencymain_graph_0/hidden_0/Sigmoid*
T0
Ķ
.gradients_1/main_graph_0/hidden_0/Mul_grad/SumSum.gradients_1/main_graph_0/hidden_0/Mul_grad/Mul@gradients_1/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
¶
2gradients_1/main_graph_0/hidden_0/Mul_grad/ReshapeReshape.gradients_1/main_graph_0/hidden_0/Mul_grad/Sum0gradients_1/main_graph_0/hidden_0/Mul_grad/Shape*
T0*
Tshape0
§
0gradients_1/main_graph_0/hidden_0/Mul_grad/Mul_1Mulmain_graph_0/hidden_0/BiasAddFgradients_1/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency*
T0
Ó
0gradients_1/main_graph_0/hidden_0/Mul_grad/Sum_1Sum0gradients_1/main_graph_0/hidden_0/Mul_grad/Mul_1Bgradients_1/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
¼
4gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape_1Reshape0gradients_1/main_graph_0/hidden_0/Mul_grad/Sum_12gradients_1/main_graph_0/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
Æ
;gradients_1/main_graph_0/hidden_0/Mul_grad/tuple/group_depsNoOp3^gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape5^gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape_1

Cgradients_1/main_graph_0/hidden_0/Mul_grad/tuple/control_dependencyIdentity2gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape<^gradients_1/main_graph_0/hidden_0/Mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape

Egradients_1/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency_1Identity4gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape_1<^gradients_1/main_graph_0/hidden_0/Mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape_1
ø
:gradients_1/main_graph_0/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_0/hidden_0/SigmoidEgradients_1/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency_1*
T0
õ
gradients_1/AddN_10AddNCgradients_1/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency:gradients_1/main_graph_0/hidden_0/Sigmoid_grad/SigmoidGrad*
T0*E
_class;
97loc:@gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape*
N
~
:gradients_1/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients_1/AddN_10*
T0*
data_formatNHWC

?gradients_1/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients_1/AddN_10;^gradients_1/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad
ś
Ggradients_1/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients_1/AddN_10@^gradients_1/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape
«
Igradients_1/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency_1Identity:gradients_1/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad@^gradients_1/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad
Ł
4gradients_1/main_graph_0/hidden_0/MatMul_grad/MatMulMatMulGgradients_1/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency!main_graph_0/hidden_0/kernel/read*
T0*
transpose_a( *
transpose_b(
Ģ
6gradients_1/main_graph_0/hidden_0/MatMul_grad/MatMul_1MatMulvector_observationGgradients_1/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
¶
>gradients_1/main_graph_0/hidden_0/MatMul_grad/tuple/group_depsNoOp5^gradients_1/main_graph_0/hidden_0/MatMul_grad/MatMul7^gradients_1/main_graph_0/hidden_0/MatMul_grad/MatMul_1

Fgradients_1/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependencyIdentity4gradients_1/main_graph_0/hidden_0/MatMul_grad/MatMul?^gradients_1/main_graph_0/hidden_0/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients_1/main_graph_0/hidden_0/MatMul_grad/MatMul
”
Hgradients_1/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependency_1Identity6gradients_1/main_graph_0/hidden_0/MatMul_grad/MatMul_1?^gradients_1/main_graph_0/hidden_0/MatMul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients_1/main_graph_0/hidden_0/MatMul_grad/MatMul_1
g
beta1_power/initial_valueConst*
_class
loc:@dense/kernel*
valueB
 *fff?*
dtype0
x
beta1_power
VariableV2*
shape: *
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container 

beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
S
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@dense/kernel
g
beta2_power/initial_valueConst*
_class
loc:@dense/kernel*
valueB
 *w¾?*
dtype0
x
beta2_power
VariableV2*
shape: *
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container 

beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
S
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@dense/kernel
©
Cmain_graph_0/hidden_0/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"¼     */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0

9main_graph_0/hidden_0/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    */
_class%
#!loc:@main_graph_0/hidden_0/kernel

3main_graph_0/hidden_0/kernel/Adam/Initializer/zerosFillCmain_graph_0/hidden_0/kernel/Adam/Initializer/zeros/shape_as_tensor9main_graph_0/hidden_0/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
Ø
!main_graph_0/hidden_0/kernel/Adam
VariableV2*
shared_name */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0*
	container *
shape:
¼
ķ
(main_graph_0/hidden_0/kernel/Adam/AssignAssign!main_graph_0/hidden_0/kernel/Adam3main_graph_0/hidden_0/kernel/Adam/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(

&main_graph_0/hidden_0/kernel/Adam/readIdentity!main_graph_0/hidden_0/kernel/Adam*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
«
Emain_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
valueB"¼     */
_class%
#!loc:@main_graph_0/hidden_0/kernel

;main_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0

5main_graph_0/hidden_0/kernel/Adam_1/Initializer/zerosFillEmain_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/shape_as_tensor;main_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
Ŗ
#main_graph_0/hidden_0/kernel/Adam_1
VariableV2*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0*
	container *
shape:
¼*
shared_name 
ó
*main_graph_0/hidden_0/kernel/Adam_1/AssignAssign#main_graph_0/hidden_0/kernel/Adam_15main_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(*
use_locking(

(main_graph_0/hidden_0/kernel/Adam_1/readIdentity#main_graph_0/hidden_0/kernel/Adam_1*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

1main_graph_0/hidden_0/bias/Adam/Initializer/zerosConst*
valueB*    *-
_class#
!loc:@main_graph_0/hidden_0/bias*
dtype0

main_graph_0/hidden_0/bias/Adam
VariableV2*
shared_name *-
_class#
!loc:@main_graph_0/hidden_0/bias*
dtype0*
	container *
shape:
å
&main_graph_0/hidden_0/bias/Adam/AssignAssignmain_graph_0/hidden_0/bias/Adam1main_graph_0/hidden_0/bias/Adam/Initializer/zeros*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
validate_shape(*
use_locking(

$main_graph_0/hidden_0/bias/Adam/readIdentitymain_graph_0/hidden_0/bias/Adam*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias

3main_graph_0/hidden_0/bias/Adam_1/Initializer/zerosConst*
valueB*    *-
_class#
!loc:@main_graph_0/hidden_0/bias*
dtype0
”
!main_graph_0/hidden_0/bias/Adam_1
VariableV2*
shared_name *-
_class#
!loc:@main_graph_0/hidden_0/bias*
dtype0*
	container *
shape:
ė
(main_graph_0/hidden_0/bias/Adam_1/AssignAssign!main_graph_0/hidden_0/bias/Adam_13main_graph_0/hidden_0/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
validate_shape(

&main_graph_0/hidden_0/bias/Adam_1/readIdentity!main_graph_0/hidden_0/bias/Adam_1*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias
©
Cmain_graph_0/hidden_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0

9main_graph_0/hidden_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0

3main_graph_0/hidden_1/kernel/Adam/Initializer/zerosFillCmain_graph_0/hidden_1/kernel/Adam/Initializer/zeros/shape_as_tensor9main_graph_0/hidden_1/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
Ø
!main_graph_0/hidden_1/kernel/Adam
VariableV2*
shared_name */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0*
	container *
shape:

ķ
(main_graph_0/hidden_1/kernel/Adam/AssignAssign!main_graph_0/hidden_1/kernel/Adam3main_graph_0/hidden_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
validate_shape(

&main_graph_0/hidden_1/kernel/Adam/readIdentity!main_graph_0/hidden_1/kernel/Adam*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
«
Emain_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0

;main_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0

5main_graph_0/hidden_1/kernel/Adam_1/Initializer/zerosFillEmain_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor;main_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
Ŗ
#main_graph_0/hidden_1/kernel/Adam_1
VariableV2*
shape:
*
shared_name */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0*
	container 
ó
*main_graph_0/hidden_1/kernel/Adam_1/AssignAssign#main_graph_0/hidden_1/kernel/Adam_15main_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
validate_shape(

(main_graph_0/hidden_1/kernel/Adam_1/readIdentity#main_graph_0/hidden_1/kernel/Adam_1*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

1main_graph_0/hidden_1/bias/Adam/Initializer/zerosConst*
valueB*    *-
_class#
!loc:@main_graph_0/hidden_1/bias*
dtype0

main_graph_0/hidden_1/bias/Adam
VariableV2*
dtype0*
	container *
shape:*
shared_name *-
_class#
!loc:@main_graph_0/hidden_1/bias
å
&main_graph_0/hidden_1/bias/Adam/AssignAssignmain_graph_0/hidden_1/bias/Adam1main_graph_0/hidden_1/bias/Adam/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(

$main_graph_0/hidden_1/bias/Adam/readIdentitymain_graph_0/hidden_1/bias/Adam*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias

3main_graph_0/hidden_1/bias/Adam_1/Initializer/zerosConst*
valueB*    *-
_class#
!loc:@main_graph_0/hidden_1/bias*
dtype0
”
!main_graph_0/hidden_1/bias/Adam_1
VariableV2*
dtype0*
	container *
shape:*
shared_name *-
_class#
!loc:@main_graph_0/hidden_1/bias
ė
(main_graph_0/hidden_1/bias/Adam_1/AssignAssign!main_graph_0/hidden_1/bias/Adam_13main_graph_0/hidden_1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(

&main_graph_0/hidden_1/bias/Adam_1/readIdentity!main_graph_0/hidden_1/bias/Adam_1*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias
z
#dense/kernel/Adam/Initializer/zerosConst*
valueB	*    *
_class
loc:@dense/kernel*
dtype0

dense/kernel/Adam
VariableV2*
_class
loc:@dense/kernel*
dtype0*
	container *
shape:	*
shared_name 
­
dense/kernel/Adam/AssignAssigndense/kernel/Adam#dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
_
dense/kernel/Adam/readIdentitydense/kernel/Adam*
T0*
_class
loc:@dense/kernel
|
%dense/kernel/Adam_1/Initializer/zerosConst*
valueB	*    *
_class
loc:@dense/kernel*
dtype0

dense/kernel/Adam_1
VariableV2*
_class
loc:@dense/kernel*
dtype0*
	container *
shape:	*
shared_name 
³
dense/kernel/Adam_1/AssignAssigndense/kernel/Adam_1%dense/kernel/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense/kernel
c
dense/kernel/Adam_1/readIdentitydense/kernel/Adam_1*
T0*
_class
loc:@dense/kernel
~
%dense_1/kernel/Adam/Initializer/zerosConst*
valueB	*    *!
_class
loc:@dense_1/kernel*
dtype0

dense_1/kernel/Adam
VariableV2*
shared_name *!
_class
loc:@dense_1/kernel*
dtype0*
	container *
shape:	
µ
dense_1/kernel/Adam/AssignAssigndense_1/kernel/Adam%dense_1/kernel/Adam/Initializer/zeros*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
use_locking(
e
dense_1/kernel/Adam/readIdentitydense_1/kernel/Adam*
T0*!
_class
loc:@dense_1/kernel

'dense_1/kernel/Adam_1/Initializer/zerosConst*
dtype0*
valueB	*    *!
_class
loc:@dense_1/kernel

dense_1/kernel/Adam_1
VariableV2*!
_class
loc:@dense_1/kernel*
dtype0*
	container *
shape:	*
shared_name 
»
dense_1/kernel/Adam_1/AssignAssigndense_1/kernel/Adam_1'dense_1/kernel/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_1/kernel
i
dense_1/kernel/Adam_1/readIdentitydense_1/kernel/Adam_1*
T0*!
_class
loc:@dense_1/kernel
~
%dense_2/kernel/Adam/Initializer/zerosConst*
valueB	*    *!
_class
loc:@dense_2/kernel*
dtype0

dense_2/kernel/Adam
VariableV2*
shape:	*
shared_name *!
_class
loc:@dense_2/kernel*
dtype0*
	container 
µ
dense_2/kernel/Adam/AssignAssigndense_2/kernel/Adam%dense_2/kernel/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_2/kernel
e
dense_2/kernel/Adam/readIdentitydense_2/kernel/Adam*
T0*!
_class
loc:@dense_2/kernel

'dense_2/kernel/Adam_1/Initializer/zerosConst*
valueB	*    *!
_class
loc:@dense_2/kernel*
dtype0

dense_2/kernel/Adam_1
VariableV2*
shape:	*
shared_name *!
_class
loc:@dense_2/kernel*
dtype0*
	container 
»
dense_2/kernel/Adam_1/AssignAssigndense_2/kernel/Adam_1'dense_2/kernel/Adam_1/Initializer/zeros*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
use_locking(
i
dense_2/kernel/Adam_1/readIdentitydense_2/kernel/Adam_1*
T0*!
_class
loc:@dense_2/kernel
~
%dense_3/kernel/Adam/Initializer/zerosConst*
valueB	*    *!
_class
loc:@dense_3/kernel*
dtype0

dense_3/kernel/Adam
VariableV2*!
_class
loc:@dense_3/kernel*
dtype0*
	container *
shape:	*
shared_name 
µ
dense_3/kernel/Adam/AssignAssigndense_3/kernel/Adam%dense_3/kernel/Adam/Initializer/zeros*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(*
use_locking(
e
dense_3/kernel/Adam/readIdentitydense_3/kernel/Adam*
T0*!
_class
loc:@dense_3/kernel

'dense_3/kernel/Adam_1/Initializer/zerosConst*
valueB	*    *!
_class
loc:@dense_3/kernel*
dtype0

dense_3/kernel/Adam_1
VariableV2*
dtype0*
	container *
shape:	*
shared_name *!
_class
loc:@dense_3/kernel
»
dense_3/kernel/Adam_1/AssignAssigndense_3/kernel/Adam_1'dense_3/kernel/Adam_1/Initializer/zeros*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(*
use_locking(
i
dense_3/kernel/Adam_1/readIdentitydense_3/kernel/Adam_1*
T0*!
_class
loc:@dense_3/kernel

-extrinsic_value/kernel/Adam/Initializer/zerosConst*
valueB	*    *)
_class
loc:@extrinsic_value/kernel*
dtype0

extrinsic_value/kernel/Adam
VariableV2*
shared_name *)
_class
loc:@extrinsic_value/kernel*
dtype0*
	container *
shape:	
Õ
"extrinsic_value/kernel/Adam/AssignAssignextrinsic_value/kernel/Adam-extrinsic_value/kernel/Adam/Initializer/zeros*
T0*)
_class
loc:@extrinsic_value/kernel*
validate_shape(*
use_locking(
}
 extrinsic_value/kernel/Adam/readIdentityextrinsic_value/kernel/Adam*
T0*)
_class
loc:@extrinsic_value/kernel

/extrinsic_value/kernel/Adam_1/Initializer/zerosConst*
valueB	*    *)
_class
loc:@extrinsic_value/kernel*
dtype0

extrinsic_value/kernel/Adam_1
VariableV2*
shape:	*
shared_name *)
_class
loc:@extrinsic_value/kernel*
dtype0*
	container 
Ū
$extrinsic_value/kernel/Adam_1/AssignAssignextrinsic_value/kernel/Adam_1/extrinsic_value/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@extrinsic_value/kernel*
validate_shape(

"extrinsic_value/kernel/Adam_1/readIdentityextrinsic_value/kernel/Adam_1*
T0*)
_class
loc:@extrinsic_value/kernel

+extrinsic_value/bias/Adam/Initializer/zerosConst*
valueB*    *'
_class
loc:@extrinsic_value/bias*
dtype0

extrinsic_value/bias/Adam
VariableV2*
shared_name *'
_class
loc:@extrinsic_value/bias*
dtype0*
	container *
shape:
Ķ
 extrinsic_value/bias/Adam/AssignAssignextrinsic_value/bias/Adam+extrinsic_value/bias/Adam/Initializer/zeros*
use_locking(*
T0*'
_class
loc:@extrinsic_value/bias*
validate_shape(
w
extrinsic_value/bias/Adam/readIdentityextrinsic_value/bias/Adam*
T0*'
_class
loc:@extrinsic_value/bias

-extrinsic_value/bias/Adam_1/Initializer/zerosConst*
valueB*    *'
_class
loc:@extrinsic_value/bias*
dtype0

extrinsic_value/bias/Adam_1
VariableV2*
dtype0*
	container *
shape:*
shared_name *'
_class
loc:@extrinsic_value/bias
Ó
"extrinsic_value/bias/Adam_1/AssignAssignextrinsic_value/bias/Adam_1-extrinsic_value/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*'
_class
loc:@extrinsic_value/bias*
validate_shape(
{
 extrinsic_value/bias/Adam_1/readIdentityextrinsic_value/bias/Adam_1*
T0*'
_class
loc:@extrinsic_value/bias
7

Adam/beta1Const*
valueB
 *fff?*
dtype0
7

Adam/beta2Const*
valueB
 *w¾?*
dtype0
9
Adam/epsilonConst*
valueB
 *wĢ+2*
dtype0
«
2Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam	ApplyAdammain_graph_0/hidden_0/kernel!main_graph_0/hidden_0/kernel/Adam#main_graph_0/hidden_0/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonHgradients_1/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
¢
0Adam/update_main_graph_0/hidden_0/bias/ApplyAdam	ApplyAdammain_graph_0/hidden_0/biasmain_graph_0/hidden_0/bias/Adam!main_graph_0/hidden_0/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonIgradients_1/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
use_nesterov( 
«
2Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam	ApplyAdammain_graph_0/hidden_1/kernel!main_graph_0/hidden_1/kernel/Adam#main_graph_0/hidden_1/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonHgradients_1/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency_1*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
use_nesterov( *
use_locking( 
¢
0Adam/update_main_graph_0/hidden_1/bias/ApplyAdam	ApplyAdammain_graph_0/hidden_1/biasmain_graph_0/hidden_1/bias/Adam!main_graph_0/hidden_1/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonIgradients_1/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
use_nesterov( 
Ė
"Adam/update_dense/kernel/ApplyAdam	ApplyAdamdense/kerneldense/kernel/Adamdense/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients_1/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/kernel*
use_nesterov( 
×
$Adam/update_dense_1/kernel/ApplyAdam	ApplyAdamdense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon:gradients_1/dense_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@dense_1/kernel*
use_nesterov( 
×
$Adam/update_dense_2/kernel/ApplyAdam	ApplyAdamdense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon:gradients_1/dense_2/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@dense_2/kernel*
use_nesterov( 
×
$Adam/update_dense_3/kernel/ApplyAdam	ApplyAdamdense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon:gradients_1/dense_3/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*!
_class
loc:@dense_3/kernel

,Adam/update_extrinsic_value/kernel/ApplyAdam	ApplyAdamextrinsic_value/kernelextrinsic_value/kernel/Adamextrinsic_value/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonBgradients_1/extrinsic_value/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*)
_class
loc:@extrinsic_value/kernel*
use_nesterov( 
ž
*Adam/update_extrinsic_value/bias/ApplyAdam	ApplyAdamextrinsic_value/biasextrinsic_value/bias/Adamextrinsic_value/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonCgradients_1/extrinsic_value/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*'
_class
loc:@extrinsic_value/bias

Adam/mulMulbeta1_power/read
Adam/beta1#^Adam/update_dense/kernel/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam+^Adam/update_extrinsic_value/bias/ApplyAdam-^Adam/update_extrinsic_value/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_1/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam*
T0*
_class
loc:@dense/kernel

Adam/AssignAssignbeta1_powerAdam/mul*
T0*
_class
loc:@dense/kernel*
validate_shape(*
use_locking( 


Adam/mul_1Mulbeta2_power/read
Adam/beta2#^Adam/update_dense/kernel/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam+^Adam/update_extrinsic_value/bias/ApplyAdam-^Adam/update_extrinsic_value/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_1/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam*
T0*
_class
loc:@dense/kernel

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
validate_shape(*
use_locking( *
T0*
_class
loc:@dense/kernel
š
AdamNoOp^Adam/Assign^Adam/Assign_1#^Adam/update_dense/kernel/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam+^Adam/update_extrinsic_value/bias/ApplyAdam-^Adam/update_extrinsic_value/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_1/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam
A
save/filename/inputConst*
valueB Bmodel*
dtype0
V
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
shape: 
M

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
shape: 
Ī
save/SaveV2/tensor_namesConst*
valueB%Baction_output_shapeBbeta1_powerBbeta2_powerBdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1Bdense_3/kernelBdense_3/kernel/AdamBdense_3/kernel/Adam_1Bextrinsic_value/biasBextrinsic_value/bias/AdamBextrinsic_value/bias/Adam_1Bextrinsic_value/kernelBextrinsic_value/kernel/AdamBextrinsic_value/kernel/Adam_1Bglobal_stepBis_continuous_controlBmain_graph_0/hidden_0/biasBmain_graph_0/hidden_0/bias/AdamB!main_graph_0/hidden_0/bias/Adam_1Bmain_graph_0/hidden_0/kernelB!main_graph_0/hidden_0/kernel/AdamB#main_graph_0/hidden_0/kernel/Adam_1Bmain_graph_0/hidden_1/biasBmain_graph_0/hidden_1/bias/AdamB!main_graph_0/hidden_1/bias/Adam_1Bmain_graph_0/hidden_1/kernelB!main_graph_0/hidden_1/kernel/AdamB#main_graph_0/hidden_1/kernel/Adam_1Bmemory_sizeBversion_number*
dtype0

save/SaveV2/shape_and_slicesConst*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0

save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesaction_output_shapebeta1_powerbeta2_powerdense/kerneldense/kernel/Adamdense/kernel/Adam_1dense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1dense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1dense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1extrinsic_value/biasextrinsic_value/bias/Adamextrinsic_value/bias/Adam_1extrinsic_value/kernelextrinsic_value/kernel/Adamextrinsic_value/kernel/Adam_1global_stepis_continuous_controlmain_graph_0/hidden_0/biasmain_graph_0/hidden_0/bias/Adam!main_graph_0/hidden_0/bias/Adam_1main_graph_0/hidden_0/kernel!main_graph_0/hidden_0/kernel/Adam#main_graph_0/hidden_0/kernel/Adam_1main_graph_0/hidden_1/biasmain_graph_0/hidden_1/bias/Adam!main_graph_0/hidden_1/bias/Adam_1main_graph_0/hidden_1/kernel!main_graph_0/hidden_1/kernel/Adam#main_graph_0/hidden_1/kernel/Adam_1memory_sizeversion_number*3
dtypes)
'2%
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
ą
save/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB%Baction_output_shapeBbeta1_powerBbeta2_powerBdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1Bdense_3/kernelBdense_3/kernel/AdamBdense_3/kernel/Adam_1Bextrinsic_value/biasBextrinsic_value/bias/AdamBextrinsic_value/bias/Adam_1Bextrinsic_value/kernelBextrinsic_value/kernel/AdamBextrinsic_value/kernel/Adam_1Bglobal_stepBis_continuous_controlBmain_graph_0/hidden_0/biasBmain_graph_0/hidden_0/bias/AdamB!main_graph_0/hidden_0/bias/Adam_1Bmain_graph_0/hidden_0/kernelB!main_graph_0/hidden_0/kernel/AdamB#main_graph_0/hidden_0/kernel/Adam_1Bmain_graph_0/hidden_1/biasBmain_graph_0/hidden_1/bias/AdamB!main_graph_0/hidden_1/bias/Adam_1Bmain_graph_0/hidden_1/kernelB!main_graph_0/hidden_1/kernel/AdamB#main_graph_0/hidden_1/kernel/Adam_1Bmemory_sizeBversion_number*
dtype0
£
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
©
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*3
dtypes)
'2%

save/AssignAssignaction_output_shapesave/RestoreV2*
T0*&
_class
loc:@action_output_shape*
validate_shape(*
use_locking(

save/Assign_1Assignbeta1_powersave/RestoreV2:1*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(

save/Assign_2Assignbeta2_powersave/RestoreV2:2*
T0*
_class
loc:@dense/kernel*
validate_shape(*
use_locking(

save/Assign_3Assigndense/kernelsave/RestoreV2:3*
T0*
_class
loc:@dense/kernel*
validate_shape(*
use_locking(

save/Assign_4Assigndense/kernel/Adamsave/RestoreV2:4*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(

save/Assign_5Assigndense/kernel/Adam_1save/RestoreV2:5*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(

save/Assign_6Assigndense_1/kernelsave/RestoreV2:6*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(

save/Assign_7Assigndense_1/kernel/Adamsave/RestoreV2:7*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_1/kernel

save/Assign_8Assigndense_1/kernel/Adam_1save/RestoreV2:8*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(

save/Assign_9Assigndense_2/kernelsave/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(

save/Assign_10Assigndense_2/kernel/Adamsave/RestoreV2:10*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
use_locking(

save/Assign_11Assigndense_2/kernel/Adam_1save/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(

save/Assign_12Assigndense_3/kernelsave/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(

save/Assign_13Assigndense_3/kernel/Adamsave/RestoreV2:13*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(*
use_locking(

save/Assign_14Assigndense_3/kernel/Adam_1save/RestoreV2:14*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_3/kernel

save/Assign_15Assignextrinsic_value/biassave/RestoreV2:15*
T0*'
_class
loc:@extrinsic_value/bias*
validate_shape(*
use_locking(
”
save/Assign_16Assignextrinsic_value/bias/Adamsave/RestoreV2:16*
T0*'
_class
loc:@extrinsic_value/bias*
validate_shape(*
use_locking(
£
save/Assign_17Assignextrinsic_value/bias/Adam_1save/RestoreV2:17*
T0*'
_class
loc:@extrinsic_value/bias*
validate_shape(*
use_locking(
 
save/Assign_18Assignextrinsic_value/kernelsave/RestoreV2:18*
use_locking(*
T0*)
_class
loc:@extrinsic_value/kernel*
validate_shape(
„
save/Assign_19Assignextrinsic_value/kernel/Adamsave/RestoreV2:19*
use_locking(*
T0*)
_class
loc:@extrinsic_value/kernel*
validate_shape(
§
save/Assign_20Assignextrinsic_value/kernel/Adam_1save/RestoreV2:20*
T0*)
_class
loc:@extrinsic_value/kernel*
validate_shape(*
use_locking(

save/Assign_21Assignglobal_stepsave/RestoreV2:21*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(

save/Assign_22Assignis_continuous_controlsave/RestoreV2:22*
use_locking(*
T0*(
_class
loc:@is_continuous_control*
validate_shape(
Ø
save/Assign_23Assignmain_graph_0/hidden_0/biassave/RestoreV2:23*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
validate_shape(
­
save/Assign_24Assignmain_graph_0/hidden_0/bias/Adamsave/RestoreV2:24*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias
Æ
save/Assign_25Assign!main_graph_0/hidden_0/bias/Adam_1save/RestoreV2:25*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias
¬
save/Assign_26Assignmain_graph_0/hidden_0/kernelsave/RestoreV2:26*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(
±
save/Assign_27Assign!main_graph_0/hidden_0/kernel/Adamsave/RestoreV2:27*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(
³
save/Assign_28Assign#main_graph_0/hidden_0/kernel/Adam_1save/RestoreV2:28*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(
Ø
save/Assign_29Assignmain_graph_0/hidden_1/biassave/RestoreV2:29*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias
­
save/Assign_30Assignmain_graph_0/hidden_1/bias/Adamsave/RestoreV2:30*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(*
use_locking(
Æ
save/Assign_31Assign!main_graph_0/hidden_1/bias/Adam_1save/RestoreV2:31*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(
¬
save/Assign_32Assignmain_graph_0/hidden_1/kernelsave/RestoreV2:32*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
validate_shape(*
use_locking(
±
save/Assign_33Assign!main_graph_0/hidden_1/kernel/Adamsave/RestoreV2:33*
validate_shape(*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
³
save/Assign_34Assign#main_graph_0/hidden_1/kernel/Adam_1save/RestoreV2:34*
validate_shape(*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

save/Assign_35Assignmemory_sizesave/RestoreV2:35*
validate_shape(*
use_locking(*
T0*
_class
loc:@memory_size

save/Assign_36Assignversion_numbersave/RestoreV2:36*
use_locking(*
T0*!
_class
loc:@version_number*
validate_shape(

save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
¼	
initNoOp^action_output_shape/Assign^beta1_power/Assign^beta2_power/Assign^dense/kernel/Adam/Assign^dense/kernel/Adam_1/Assign^dense/kernel/Assign^dense_1/kernel/Adam/Assign^dense_1/kernel/Adam_1/Assign^dense_1/kernel/Assign^dense_2/kernel/Adam/Assign^dense_2/kernel/Adam_1/Assign^dense_2/kernel/Assign^dense_3/kernel/Adam/Assign^dense_3/kernel/Adam_1/Assign^dense_3/kernel/Assign!^extrinsic_value/bias/Adam/Assign#^extrinsic_value/bias/Adam_1/Assign^extrinsic_value/bias/Assign#^extrinsic_value/kernel/Adam/Assign%^extrinsic_value/kernel/Adam_1/Assign^extrinsic_value/kernel/Assign^global_step/Assign^is_continuous_control/Assign'^main_graph_0/hidden_0/bias/Adam/Assign)^main_graph_0/hidden_0/bias/Adam_1/Assign"^main_graph_0/hidden_0/bias/Assign)^main_graph_0/hidden_0/kernel/Adam/Assign+^main_graph_0/hidden_0/kernel/Adam_1/Assign$^main_graph_0/hidden_0/kernel/Assign'^main_graph_0/hidden_1/bias/Adam/Assign)^main_graph_0/hidden_1/bias/Adam_1/Assign"^main_graph_0/hidden_1/bias/Assign)^main_graph_0/hidden_1/kernel/Adam/Assign+^main_graph_0/hidden_1/kernel/Adam_1/Assign$^main_graph_0/hidden_1/kernel/Assign^memory_size/Assign^version_number/Assign"w