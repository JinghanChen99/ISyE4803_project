??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handle???element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements(
handle???element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68??
|
dense_156/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*!
shared_namedense_156/kernel
u
$dense_156/kernel/Read/ReadVariableOpReadVariableOpdense_156/kernel*
_output_shapes

:2*
dtype0
t
dense_156/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_156/bias
m
"dense_156/bias/Read/ReadVariableOpReadVariableOpdense_156/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
lstm_156/lstm_cell_156/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_156/lstm_cell_156/kernel
?
1lstm_156/lstm_cell_156/kernel/Read/ReadVariableOpReadVariableOplstm_156/lstm_cell_156/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_156/lstm_cell_156/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_156/lstm_cell_156/recurrent_kernel
?
;lstm_156/lstm_cell_156/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_156/lstm_cell_156/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_156/lstm_cell_156/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_156/lstm_cell_156/bias
?
/lstm_156/lstm_cell_156/bias/Read/ReadVariableOpReadVariableOplstm_156/lstm_cell_156/bias*
_output_shapes	
:?*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
?
Adam/dense_156/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*(
shared_nameAdam/dense_156/kernel/m
?
+Adam/dense_156/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_156/kernel/m*
_output_shapes

:2*
dtype0
?
Adam/dense_156/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_156/bias/m
{
)Adam/dense_156/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_156/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_156/lstm_cell_156/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_156/lstm_cell_156/kernel/m
?
8Adam/lstm_156/lstm_cell_156/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_156/lstm_cell_156/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_156/lstm_cell_156/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_156/lstm_cell_156/recurrent_kernel/m
?
BAdam/lstm_156/lstm_cell_156/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_156/lstm_cell_156/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_156/lstm_cell_156/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_156/lstm_cell_156/bias/m
?
6Adam/lstm_156/lstm_cell_156/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_156/lstm_cell_156/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_156/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*(
shared_nameAdam/dense_156/kernel/v
?
+Adam/dense_156/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_156/kernel/v*
_output_shapes

:2*
dtype0
?
Adam/dense_156/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_156/bias/v
{
)Adam/dense_156/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_156/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_156/lstm_cell_156/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_156/lstm_cell_156/kernel/v
?
8Adam/lstm_156/lstm_cell_156/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_156/lstm_cell_156/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_156/lstm_cell_156/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_156/lstm_cell_156/recurrent_kernel/v
?
BAdam/lstm_156/lstm_cell_156/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_156/lstm_cell_156/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_156/lstm_cell_156/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_156/lstm_cell_156/bias/v
?
6Adam/lstm_156/lstm_cell_156/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_156/lstm_cell_156/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?(
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?(
value?(B?( B?(
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures*
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses*
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
iter

beta_1

beta_2
	 decay
!learning_ratemHmI"mJ#mK$mLvMvN"vO#vP$vQ*
'
"0
#1
$2
3
4*
'
"0
#1
$2
3
4*
* 
?
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
* 
* 
* 

*serving_default* 
?
+
state_size

"kernel
#recurrent_kernel
$bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0_random_generator
1__call__
*2&call_and_return_all_conditional_losses*
* 

"0
#1
$2*

"0
#1
$2*
* 
?

3states
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
`Z
VARIABLE_VALUEdense_156/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_156/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
?
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUElstm_156/lstm_cell_156/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE'lstm_156/lstm_cell_156/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_156/lstm_cell_156/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

>0*
* 
* 
* 
* 

"0
#1
$2*

"0
#1
$2*
* 
?
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
,	variables
-trainable_variables
.regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
8
	Dtotal
	Ecount
F	variables
G	keras_api*
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

D0
E1*

F	variables*
?}
VARIABLE_VALUEAdam/dense_156/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_156/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUE$Adam/lstm_156/lstm_cell_156/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE.Adam/lstm_156/lstm_cell_156/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_156/lstm_cell_156/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/dense_156/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_156/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUE$Adam/lstm_156/lstm_cell_156/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE.Adam/lstm_156/lstm_cell_156/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_156/lstm_cell_156/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
serving_default_lstm_156_inputPlaceholder*+
_output_shapes
:?????????2*
dtype0* 
shape:?????????2
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_156_inputlstm_156/lstm_cell_156/kernel'lstm_156/lstm_cell_156/recurrent_kernellstm_156/lstm_cell_156/biasdense_156/kerneldense_156/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_842231
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_156/kernel/Read/ReadVariableOp"dense_156/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_156/lstm_cell_156/kernel/Read/ReadVariableOp;lstm_156/lstm_cell_156/recurrent_kernel/Read/ReadVariableOp/lstm_156/lstm_cell_156/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_156/kernel/m/Read/ReadVariableOp)Adam/dense_156/bias/m/Read/ReadVariableOp8Adam/lstm_156/lstm_cell_156/kernel/m/Read/ReadVariableOpBAdam/lstm_156/lstm_cell_156/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_156/lstm_cell_156/bias/m/Read/ReadVariableOp+Adam/dense_156/kernel/v/Read/ReadVariableOp)Adam/dense_156/bias/v/Read/ReadVariableOp8Adam/lstm_156/lstm_cell_156/kernel/v/Read/ReadVariableOpBAdam/lstm_156/lstm_cell_156/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_156/lstm_cell_156/bias/v/Read/ReadVariableOpConst*#
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_843053
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_156/kerneldense_156/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_156/lstm_cell_156/kernel'lstm_156/lstm_cell_156/recurrent_kernellstm_156/lstm_cell_156/biastotalcountAdam/dense_156/kernel/mAdam/dense_156/bias/m$Adam/lstm_156/lstm_cell_156/kernel/m.Adam/lstm_156/lstm_cell_156/recurrent_kernel/m"Adam/lstm_156/lstm_cell_156/bias/mAdam/dense_156/kernel/vAdam/dense_156/bias/v$Adam/lstm_156/lstm_cell_156/kernel/v.Adam/lstm_156/lstm_cell_156/recurrent_kernel/v"Adam/lstm_156/lstm_cell_156/bias/v*"
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_843129??
?
?
.__inference_lstm_cell_156_layer_call_fn_842883

inputs
states_0
states_1
unknown:	?
	unknown_0:	2?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_841142o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????2:?????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/1
?
?
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_841288

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	2?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????2:?????????2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????2
 
_user_specified_namestates:OK
'
_output_shapes
:?????????2
 
_user_specified_namestates
?
?
)__inference_lstm_156_layer_call_fn_842253
inputs_0
unknown:	?
	unknown_0:	2?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_156_layer_call_and_return_conditional_losses_841416o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
D__inference_lstm_156_layer_call_and_return_conditional_losses_841225

inputs'
lstm_cell_156_841143:	?'
lstm_cell_156_841145:	2?#
lstm_cell_156_841147:	?
identity??%lstm_cell_156/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
%lstm_cell_156/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_156_841143lstm_cell_156_841145lstm_cell_156_841147*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_841142n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_156_841143lstm_cell_156_841145lstm_cell_156_841147*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_841156*
condR
while_cond_841155*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????2v
NoOpNoOp&^lstm_cell_156/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_156/StatefulPartitionedCall%lstm_cell_156/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?[
?
"__inference__traced_restore_843129
file_prefix3
!assignvariableop_dense_156_kernel:2/
!assignvariableop_1_dense_156_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_156_lstm_cell_156_kernel:	?M
:assignvariableop_8_lstm_156_lstm_cell_156_recurrent_kernel:	2?=
.assignvariableop_9_lstm_156_lstm_cell_156_bias:	?#
assignvariableop_10_total: #
assignvariableop_11_count: =
+assignvariableop_12_adam_dense_156_kernel_m:27
)assignvariableop_13_adam_dense_156_bias_m:K
8assignvariableop_14_adam_lstm_156_lstm_cell_156_kernel_m:	?U
Bassignvariableop_15_adam_lstm_156_lstm_cell_156_recurrent_kernel_m:	2?E
6assignvariableop_16_adam_lstm_156_lstm_cell_156_bias_m:	?=
+assignvariableop_17_adam_dense_156_kernel_v:27
)assignvariableop_18_adam_dense_156_bias_v:K
8assignvariableop_19_adam_lstm_156_lstm_cell_156_kernel_v:	?U
Bassignvariableop_20_adam_lstm_156_lstm_cell_156_recurrent_kernel_v:	2?E
6assignvariableop_21_adam_lstm_156_lstm_cell_156_bias_v:	?
identity_23??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*p
_output_shapes^
\:::::::::::::::::::::::*%
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp!assignvariableop_dense_156_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_156_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_156_lstm_cell_156_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_156_lstm_cell_156_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_156_lstm_cell_156_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp+assignvariableop_12_adam_dense_156_kernel_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp)assignvariableop_13_adam_dense_156_bias_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp8assignvariableop_14_adam_lstm_156_lstm_cell_156_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpBassignvariableop_15_adam_lstm_156_lstm_cell_156_recurrent_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp6assignvariableop_16_adam_lstm_156_lstm_cell_156_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_dense_156_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_dense_156_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp8assignvariableop_19_adam_lstm_156_lstm_cell_156_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOpBassignvariableop_20_adam_lstm_156_lstm_cell_156_recurrent_kernel_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp6assignvariableop_21_adam_lstm_156_lstm_cell_156_bias_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_22Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_23IdentityIdentity_22:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_23Identity_23:output:0*A
_input_shapes0
.: : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
/__inference_sequential_125_layer_call_fn_841916

inputs
unknown:	?
	unknown_0:	2?
	unknown_1:	?
	unknown_2:2
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_125_layer_call_and_return_conditional_losses_841820o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????2: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?5
?

__inference__traced_save_843053
file_prefix/
+savev2_dense_156_kernel_read_readvariableop-
)savev2_dense_156_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_156_lstm_cell_156_kernel_read_readvariableopF
Bsavev2_lstm_156_lstm_cell_156_recurrent_kernel_read_readvariableop:
6savev2_lstm_156_lstm_cell_156_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_156_kernel_m_read_readvariableop4
0savev2_adam_dense_156_bias_m_read_readvariableopC
?savev2_adam_lstm_156_lstm_cell_156_kernel_m_read_readvariableopM
Isavev2_adam_lstm_156_lstm_cell_156_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_156_lstm_cell_156_bias_m_read_readvariableop6
2savev2_adam_dense_156_kernel_v_read_readvariableop4
0savev2_adam_dense_156_bias_v_read_readvariableopC
?savev2_adam_lstm_156_lstm_cell_156_kernel_v_read_readvariableopM
Isavev2_adam_lstm_156_lstm_cell_156_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_156_lstm_cell_156_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B ?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_156_kernel_read_readvariableop)savev2_dense_156_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_156_lstm_cell_156_kernel_read_readvariableopBsavev2_lstm_156_lstm_cell_156_recurrent_kernel_read_readvariableop6savev2_lstm_156_lstm_cell_156_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_156_kernel_m_read_readvariableop0savev2_adam_dense_156_bias_m_read_readvariableop?savev2_adam_lstm_156_lstm_cell_156_kernel_m_read_readvariableopIsavev2_adam_lstm_156_lstm_cell_156_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_156_lstm_cell_156_bias_m_read_readvariableop2savev2_adam_dense_156_kernel_v_read_readvariableop0savev2_adam_dense_156_bias_v_read_readvariableop?savev2_adam_lstm_156_lstm_cell_156_kernel_v_read_readvariableopIsavev2_adam_lstm_156_lstm_cell_156_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_156_lstm_cell_156_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *%
dtypes
2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :2:: : : : : :	?:	2?:?: : :2::	?:	2?:?:2::	?:	2?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:2: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:%	!

_output_shapes
:	2?:!


_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:2: 

_output_shapes
::%!

_output_shapes
:	?:%!

_output_shapes
:	2?:!

_output_shapes	
:?:$ 

_output_shapes

:2: 

_output_shapes
::%!

_output_shapes
:	?:%!

_output_shapes
:	2?:!

_output_shapes	
:?:

_output_shapes
: 
?J
?
D__inference_lstm_156_layer_call_and_return_conditional_losses_842847

inputs?
,lstm_cell_156_matmul_readvariableop_resource:	?A
.lstm_cell_156_matmul_1_readvariableop_resource:	2?<
-lstm_cell_156_biasadd_readvariableop_resource:	?
identity??$lstm_cell_156/BiasAdd/ReadVariableOp?#lstm_cell_156/MatMul/ReadVariableOp?%lstm_cell_156/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:2?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_156/MatMul/ReadVariableOpReadVariableOp,lstm_cell_156_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_156/MatMulMatMulstrided_slice_2:output:0+lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_156_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_156/MatMul_1MatMulzeros:output:0-lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_156/addAddV2lstm_cell_156/MatMul:product:0 lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_156_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_156/BiasAddBiasAddlstm_cell_156/add:z:0,lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_156/splitSplit&lstm_cell_156/split/split_dim:output:0lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_156/SigmoidSigmoidlstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_156/Sigmoid_1Sigmoidlstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_156/mulMullstm_cell_156/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_156/ReluRelulstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_156/mul_1Mullstm_cell_156/Sigmoid:y:0 lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_156/add_1AddV2lstm_cell_156/mul:z:0lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_156/Sigmoid_2Sigmoidlstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_156/Relu_1Relulstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_156/mul_2Mullstm_cell_156/Sigmoid_2:y:0"lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_156_matmul_readvariableop_resource.lstm_cell_156_matmul_1_readvariableop_resource-lstm_cell_156_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_842763*
condR
while_cond_842762*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2?????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????22[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp%^lstm_cell_156/BiasAdd/ReadVariableOp$^lstm_cell_156/MatMul/ReadVariableOp&^lstm_cell_156/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_156/BiasAdd/ReadVariableOp$lstm_cell_156/BiasAdd/ReadVariableOp2J
#lstm_cell_156/MatMul/ReadVariableOp#lstm_cell_156/MatMul/ReadVariableOp2N
%lstm_cell_156/MatMul_1/ReadVariableOp%lstm_cell_156/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_841155
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_841155___redundant_placeholder04
0while_while_cond_841155___redundant_placeholder14
0while_while_cond_841155___redundant_placeholder24
0while_while_cond_841155___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_842762
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_842762___redundant_placeholder04
0while_while_cond_842762___redundant_placeholder14
0while_while_cond_842762___redundant_placeholder24
0while_while_cond_842762___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
)sequential_125_lstm_156_while_cond_840984L
Hsequential_125_lstm_156_while_sequential_125_lstm_156_while_loop_counterR
Nsequential_125_lstm_156_while_sequential_125_lstm_156_while_maximum_iterations-
)sequential_125_lstm_156_while_placeholder/
+sequential_125_lstm_156_while_placeholder_1/
+sequential_125_lstm_156_while_placeholder_2/
+sequential_125_lstm_156_while_placeholder_3N
Jsequential_125_lstm_156_while_less_sequential_125_lstm_156_strided_slice_1d
`sequential_125_lstm_156_while_sequential_125_lstm_156_while_cond_840984___redundant_placeholder0d
`sequential_125_lstm_156_while_sequential_125_lstm_156_while_cond_840984___redundant_placeholder1d
`sequential_125_lstm_156_while_sequential_125_lstm_156_while_cond_840984___redundant_placeholder2d
`sequential_125_lstm_156_while_sequential_125_lstm_156_while_cond_840984___redundant_placeholder3*
&sequential_125_lstm_156_while_identity
?
"sequential_125/lstm_156/while/LessLess)sequential_125_lstm_156_while_placeholderJsequential_125_lstm_156_while_less_sequential_125_lstm_156_strided_slice_1*
T0*
_output_shapes
: {
&sequential_125/lstm_156/while/IdentityIdentity&sequential_125/lstm_156/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_125_lstm_156_while_identity/sequential_125/lstm_156/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
)__inference_lstm_156_layer_call_fn_842264

inputs
unknown:	?
	unknown_0:	2?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_156_layer_call_and_return_conditional_losses_841574o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_sequential_125_layer_call_and_return_conditional_losses_841820

inputs"
lstm_156_841807:	?"
lstm_156_841809:	2?
lstm_156_841811:	?"
dense_156_841814:2
dense_156_841816:
identity??!dense_156/StatefulPartitionedCall? lstm_156/StatefulPartitionedCall?
 lstm_156/StatefulPartitionedCallStatefulPartitionedCallinputslstm_156_841807lstm_156_841809lstm_156_841811*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_156_layer_call_and_return_conditional_losses_841778?
!dense_156/StatefulPartitionedCallStatefulPartitionedCall)lstm_156/StatefulPartitionedCall:output:0dense_156_841814dense_156_841816*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_156_layer_call_and_return_conditional_losses_841592y
IdentityIdentity*dense_156/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_156/StatefulPartitionedCall!^lstm_156/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????2: : : : : 2F
!dense_156/StatefulPartitionedCall!dense_156/StatefulPartitionedCall2D
 lstm_156/StatefulPartitionedCall lstm_156/StatefulPartitionedCall:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_sequential_125_layer_call_and_return_conditional_losses_841599

inputs"
lstm_156_841575:	?"
lstm_156_841577:	2?
lstm_156_841579:	?"
dense_156_841593:2
dense_156_841595:
identity??!dense_156/StatefulPartitionedCall? lstm_156/StatefulPartitionedCall?
 lstm_156/StatefulPartitionedCallStatefulPartitionedCallinputslstm_156_841575lstm_156_841577lstm_156_841579*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_156_layer_call_and_return_conditional_losses_841574?
!dense_156/StatefulPartitionedCallStatefulPartitionedCall)lstm_156/StatefulPartitionedCall:output:0dense_156_841593dense_156_841595*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_156_layer_call_and_return_conditional_losses_841592y
IdentityIdentity*dense_156/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_156/StatefulPartitionedCall!^lstm_156/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????2: : : : : 2F
!dense_156/StatefulPartitionedCall!dense_156/StatefulPartitionedCall2D
 lstm_156/StatefulPartitionedCall lstm_156/StatefulPartitionedCall:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_sequential_125_layer_call_fn_841901

inputs
unknown:	?
	unknown_0:	2?
	unknown_1:	?
	unknown_2:2
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_125_layer_call_and_return_conditional_losses_841599o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????2: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
D__inference_lstm_156_layer_call_and_return_conditional_losses_842704

inputs?
,lstm_cell_156_matmul_readvariableop_resource:	?A
.lstm_cell_156_matmul_1_readvariableop_resource:	2?<
-lstm_cell_156_biasadd_readvariableop_resource:	?
identity??$lstm_cell_156/BiasAdd/ReadVariableOp?#lstm_cell_156/MatMul/ReadVariableOp?%lstm_cell_156/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:2?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_156/MatMul/ReadVariableOpReadVariableOp,lstm_cell_156_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_156/MatMulMatMulstrided_slice_2:output:0+lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_156_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_156/MatMul_1MatMulzeros:output:0-lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_156/addAddV2lstm_cell_156/MatMul:product:0 lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_156_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_156/BiasAddBiasAddlstm_cell_156/add:z:0,lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_156/splitSplit&lstm_cell_156/split/split_dim:output:0lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_156/SigmoidSigmoidlstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_156/Sigmoid_1Sigmoidlstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_156/mulMullstm_cell_156/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_156/ReluRelulstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_156/mul_1Mullstm_cell_156/Sigmoid:y:0 lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_156/add_1AddV2lstm_cell_156/mul:z:0lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_156/Sigmoid_2Sigmoidlstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_156/Relu_1Relulstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_156/mul_2Mullstm_cell_156/Sigmoid_2:y:0"lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_156_matmul_readvariableop_resource.lstm_cell_156_matmul_1_readvariableop_resource-lstm_cell_156_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_842620*
condR
while_cond_842619*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2?????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????22[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp%^lstm_cell_156/BiasAdd/ReadVariableOp$^lstm_cell_156/MatMul/ReadVariableOp&^lstm_cell_156/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_156/BiasAdd/ReadVariableOp$lstm_cell_156/BiasAdd/ReadVariableOp2J
#lstm_cell_156/MatMul/ReadVariableOp#lstm_cell_156/MatMul/ReadVariableOp2N
%lstm_cell_156/MatMul_1/ReadVariableOp%lstm_cell_156/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_156_while_cond_841974.
*lstm_156_while_lstm_156_while_loop_counter4
0lstm_156_while_lstm_156_while_maximum_iterations
lstm_156_while_placeholder 
lstm_156_while_placeholder_1 
lstm_156_while_placeholder_2 
lstm_156_while_placeholder_30
,lstm_156_while_less_lstm_156_strided_slice_1F
Blstm_156_while_lstm_156_while_cond_841974___redundant_placeholder0F
Blstm_156_while_lstm_156_while_cond_841974___redundant_placeholder1F
Blstm_156_while_lstm_156_while_cond_841974___redundant_placeholder2F
Blstm_156_while_lstm_156_while_cond_841974___redundant_placeholder3
lstm_156_while_identity
?
lstm_156/while/LessLesslstm_156_while_placeholder,lstm_156_while_less_lstm_156_strided_slice_1*
T0*
_output_shapes
: ]
lstm_156/while/IdentityIdentitylstm_156/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_156_while_identity lstm_156/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?8
?
while_body_841490
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_156_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_156_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_156_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_156_matmul_readvariableop_resource:	?G
4while_lstm_cell_156_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_156_biasadd_readvariableop_resource:	???*while/lstm_cell_156/BiasAdd/ReadVariableOp?)while/lstm_cell_156/MatMul/ReadVariableOp?+while/lstm_cell_156/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_156/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_156_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_156/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_156_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_156/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_156/addAddV2$while/lstm_cell_156/MatMul:product:0&while/lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_156_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_156/BiasAddBiasAddwhile/lstm_cell_156/add:z:02while/lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_156/splitSplit,while/lstm_cell_156/split/split_dim:output:0$while/lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_156/SigmoidSigmoid"while/lstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_156/Sigmoid_1Sigmoid"while/lstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_156/mulMul!while/lstm_cell_156/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_156/ReluRelu"while/lstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_156/mul_1Mulwhile/lstm_cell_156/Sigmoid:y:0&while/lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_156/add_1AddV2while/lstm_cell_156/mul:z:0while/lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_156/Sigmoid_2Sigmoid"while/lstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_156/Relu_1Reluwhile/lstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_156/mul_2Mul!while/lstm_cell_156/Sigmoid_2:y:0(while/lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_156/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???z
while/Identity_4Identitywhile/lstm_cell_156/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_156/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_156/BiasAdd/ReadVariableOp*^while/lstm_cell_156/MatMul/ReadVariableOp,^while/lstm_cell_156/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_156_biasadd_readvariableop_resource5while_lstm_cell_156_biasadd_readvariableop_resource_0"n
4while_lstm_cell_156_matmul_1_readvariableop_resource6while_lstm_cell_156_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_156_matmul_readvariableop_resource4while_lstm_cell_156_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_156/BiasAdd/ReadVariableOp*while/lstm_cell_156/BiasAdd/ReadVariableOp2V
)while/lstm_cell_156/MatMul/ReadVariableOp)while/lstm_cell_156/MatMul/ReadVariableOp2Z
+while/lstm_cell_156/MatMul_1/ReadVariableOp+while/lstm_cell_156/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?C
?

lstm_156_while_body_842124.
*lstm_156_while_lstm_156_while_loop_counter4
0lstm_156_while_lstm_156_while_maximum_iterations
lstm_156_while_placeholder 
lstm_156_while_placeholder_1 
lstm_156_while_placeholder_2 
lstm_156_while_placeholder_3-
)lstm_156_while_lstm_156_strided_slice_1_0i
elstm_156_while_tensorarrayv2read_tensorlistgetitem_lstm_156_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_156_while_lstm_cell_156_matmul_readvariableop_resource_0:	?R
?lstm_156_while_lstm_cell_156_matmul_1_readvariableop_resource_0:	2?M
>lstm_156_while_lstm_cell_156_biasadd_readvariableop_resource_0:	?
lstm_156_while_identity
lstm_156_while_identity_1
lstm_156_while_identity_2
lstm_156_while_identity_3
lstm_156_while_identity_4
lstm_156_while_identity_5+
'lstm_156_while_lstm_156_strided_slice_1g
clstm_156_while_tensorarrayv2read_tensorlistgetitem_lstm_156_tensorarrayunstack_tensorlistfromtensorN
;lstm_156_while_lstm_cell_156_matmul_readvariableop_resource:	?P
=lstm_156_while_lstm_cell_156_matmul_1_readvariableop_resource:	2?K
<lstm_156_while_lstm_cell_156_biasadd_readvariableop_resource:	???3lstm_156/while/lstm_cell_156/BiasAdd/ReadVariableOp?2lstm_156/while/lstm_cell_156/MatMul/ReadVariableOp?4lstm_156/while/lstm_cell_156/MatMul_1/ReadVariableOp?
@lstm_156/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_156/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_156_while_tensorarrayv2read_tensorlistgetitem_lstm_156_tensorarrayunstack_tensorlistfromtensor_0lstm_156_while_placeholderIlstm_156/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_156/while/lstm_cell_156/MatMul/ReadVariableOpReadVariableOp=lstm_156_while_lstm_cell_156_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_156/while/lstm_cell_156/MatMulMatMul9lstm_156/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_156/while/lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_156/while/lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp?lstm_156_while_lstm_cell_156_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_156/while/lstm_cell_156/MatMul_1MatMullstm_156_while_placeholder_2<lstm_156/while/lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_156/while/lstm_cell_156/addAddV2-lstm_156/while/lstm_cell_156/MatMul:product:0/lstm_156/while/lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_156/while/lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp>lstm_156_while_lstm_cell_156_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_156/while/lstm_cell_156/BiasAddBiasAdd$lstm_156/while/lstm_cell_156/add:z:0;lstm_156/while/lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_156/while/lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_156/while/lstm_cell_156/splitSplit5lstm_156/while/lstm_cell_156/split/split_dim:output:0-lstm_156/while/lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_156/while/lstm_cell_156/SigmoidSigmoid+lstm_156/while/lstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_156/while/lstm_cell_156/Sigmoid_1Sigmoid+lstm_156/while/lstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_156/while/lstm_cell_156/mulMul*lstm_156/while/lstm_cell_156/Sigmoid_1:y:0lstm_156_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_156/while/lstm_cell_156/ReluRelu+lstm_156/while/lstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_156/while/lstm_cell_156/mul_1Mul(lstm_156/while/lstm_cell_156/Sigmoid:y:0/lstm_156/while/lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_156/while/lstm_cell_156/add_1AddV2$lstm_156/while/lstm_cell_156/mul:z:0&lstm_156/while/lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_156/while/lstm_cell_156/Sigmoid_2Sigmoid+lstm_156/while/lstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_156/while/lstm_cell_156/Relu_1Relu&lstm_156/while/lstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_156/while/lstm_cell_156/mul_2Mul*lstm_156/while/lstm_cell_156/Sigmoid_2:y:01lstm_156/while/lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_156/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_156_while_placeholder_1lstm_156_while_placeholder&lstm_156/while/lstm_cell_156/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_156/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_156/while/addAddV2lstm_156_while_placeholderlstm_156/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_156/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_156/while/add_1AddV2*lstm_156_while_lstm_156_while_loop_counterlstm_156/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_156/while/IdentityIdentitylstm_156/while/add_1:z:0^lstm_156/while/NoOp*
T0*
_output_shapes
: ?
lstm_156/while/Identity_1Identity0lstm_156_while_lstm_156_while_maximum_iterations^lstm_156/while/NoOp*
T0*
_output_shapes
: t
lstm_156/while/Identity_2Identitylstm_156/while/add:z:0^lstm_156/while/NoOp*
T0*
_output_shapes
: ?
lstm_156/while/Identity_3IdentityClstm_156/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_156/while/NoOp*
T0*
_output_shapes
: :????
lstm_156/while/Identity_4Identity&lstm_156/while/lstm_cell_156/mul_2:z:0^lstm_156/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_156/while/Identity_5Identity&lstm_156/while/lstm_cell_156/add_1:z:0^lstm_156/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_156/while/NoOpNoOp4^lstm_156/while/lstm_cell_156/BiasAdd/ReadVariableOp3^lstm_156/while/lstm_cell_156/MatMul/ReadVariableOp5^lstm_156/while/lstm_cell_156/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_156_while_identity lstm_156/while/Identity:output:0"?
lstm_156_while_identity_1"lstm_156/while/Identity_1:output:0"?
lstm_156_while_identity_2"lstm_156/while/Identity_2:output:0"?
lstm_156_while_identity_3"lstm_156/while/Identity_3:output:0"?
lstm_156_while_identity_4"lstm_156/while/Identity_4:output:0"?
lstm_156_while_identity_5"lstm_156/while/Identity_5:output:0"T
'lstm_156_while_lstm_156_strided_slice_1)lstm_156_while_lstm_156_strided_slice_1_0"~
<lstm_156_while_lstm_cell_156_biasadd_readvariableop_resource>lstm_156_while_lstm_cell_156_biasadd_readvariableop_resource_0"?
=lstm_156_while_lstm_cell_156_matmul_1_readvariableop_resource?lstm_156_while_lstm_cell_156_matmul_1_readvariableop_resource_0"|
;lstm_156_while_lstm_cell_156_matmul_readvariableop_resource=lstm_156_while_lstm_cell_156_matmul_readvariableop_resource_0"?
clstm_156_while_tensorarrayv2read_tensorlistgetitem_lstm_156_tensorarrayunstack_tensorlistfromtensorelstm_156_while_tensorarrayv2read_tensorlistgetitem_lstm_156_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_156/while/lstm_cell_156/BiasAdd/ReadVariableOp3lstm_156/while/lstm_cell_156/BiasAdd/ReadVariableOp2h
2lstm_156/while/lstm_cell_156/MatMul/ReadVariableOp2lstm_156/while/lstm_cell_156/MatMul/ReadVariableOp2l
4lstm_156/while/lstm_cell_156/MatMul_1/ReadVariableOp4lstm_156/while/lstm_cell_156/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?8
?
while_body_842763
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_156_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_156_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_156_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_156_matmul_readvariableop_resource:	?G
4while_lstm_cell_156_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_156_biasadd_readvariableop_resource:	???*while/lstm_cell_156/BiasAdd/ReadVariableOp?)while/lstm_cell_156/MatMul/ReadVariableOp?+while/lstm_cell_156/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_156/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_156_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_156/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_156_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_156/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_156/addAddV2$while/lstm_cell_156/MatMul:product:0&while/lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_156_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_156/BiasAddBiasAddwhile/lstm_cell_156/add:z:02while/lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_156/splitSplit,while/lstm_cell_156/split/split_dim:output:0$while/lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_156/SigmoidSigmoid"while/lstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_156/Sigmoid_1Sigmoid"while/lstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_156/mulMul!while/lstm_cell_156/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_156/ReluRelu"while/lstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_156/mul_1Mulwhile/lstm_cell_156/Sigmoid:y:0&while/lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_156/add_1AddV2while/lstm_cell_156/mul:z:0while/lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_156/Sigmoid_2Sigmoid"while/lstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_156/Relu_1Reluwhile/lstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_156/mul_2Mul!while/lstm_cell_156/Sigmoid_2:y:0(while/lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_156/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???z
while/Identity_4Identitywhile/lstm_cell_156/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_156/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_156/BiasAdd/ReadVariableOp*^while/lstm_cell_156/MatMul/ReadVariableOp,^while/lstm_cell_156/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_156_biasadd_readvariableop_resource5while_lstm_cell_156_biasadd_readvariableop_resource_0"n
4while_lstm_cell_156_matmul_1_readvariableop_resource6while_lstm_cell_156_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_156_matmul_readvariableop_resource4while_lstm_cell_156_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_156/BiasAdd/ReadVariableOp*while/lstm_cell_156/BiasAdd/ReadVariableOp2V
)while/lstm_cell_156/MatMul/ReadVariableOp)while/lstm_cell_156/MatMul/ReadVariableOp2Z
+while/lstm_cell_156/MatMul_1/ReadVariableOp+while/lstm_cell_156/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?J
?
D__inference_lstm_156_layer_call_and_return_conditional_losses_841778

inputs?
,lstm_cell_156_matmul_readvariableop_resource:	?A
.lstm_cell_156_matmul_1_readvariableop_resource:	2?<
-lstm_cell_156_biasadd_readvariableop_resource:	?
identity??$lstm_cell_156/BiasAdd/ReadVariableOp?#lstm_cell_156/MatMul/ReadVariableOp?%lstm_cell_156/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:2?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_156/MatMul/ReadVariableOpReadVariableOp,lstm_cell_156_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_156/MatMulMatMulstrided_slice_2:output:0+lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_156_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_156/MatMul_1MatMulzeros:output:0-lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_156/addAddV2lstm_cell_156/MatMul:product:0 lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_156_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_156/BiasAddBiasAddlstm_cell_156/add:z:0,lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_156/splitSplit&lstm_cell_156/split/split_dim:output:0lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_156/SigmoidSigmoidlstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_156/Sigmoid_1Sigmoidlstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_156/mulMullstm_cell_156/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_156/ReluRelulstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_156/mul_1Mullstm_cell_156/Sigmoid:y:0 lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_156/add_1AddV2lstm_cell_156/mul:z:0lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_156/Sigmoid_2Sigmoidlstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_156/Relu_1Relulstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_156/mul_2Mullstm_cell_156/Sigmoid_2:y:0"lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_156_matmul_readvariableop_resource.lstm_cell_156_matmul_1_readvariableop_resource-lstm_cell_156_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_841694*
condR
while_cond_841693*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2?????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????22[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp%^lstm_cell_156/BiasAdd/ReadVariableOp$^lstm_cell_156/MatMul/ReadVariableOp&^lstm_cell_156/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_156/BiasAdd/ReadVariableOp$lstm_cell_156/BiasAdd/ReadVariableOp2J
#lstm_cell_156/MatMul/ReadVariableOp#lstm_cell_156/MatMul/ReadVariableOp2N
%lstm_cell_156/MatMul_1/ReadVariableOp%lstm_cell_156/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
?
E__inference_dense_156_layer_call_and_return_conditional_losses_842866

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_156_while_body_841975.
*lstm_156_while_lstm_156_while_loop_counter4
0lstm_156_while_lstm_156_while_maximum_iterations
lstm_156_while_placeholder 
lstm_156_while_placeholder_1 
lstm_156_while_placeholder_2 
lstm_156_while_placeholder_3-
)lstm_156_while_lstm_156_strided_slice_1_0i
elstm_156_while_tensorarrayv2read_tensorlistgetitem_lstm_156_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_156_while_lstm_cell_156_matmul_readvariableop_resource_0:	?R
?lstm_156_while_lstm_cell_156_matmul_1_readvariableop_resource_0:	2?M
>lstm_156_while_lstm_cell_156_biasadd_readvariableop_resource_0:	?
lstm_156_while_identity
lstm_156_while_identity_1
lstm_156_while_identity_2
lstm_156_while_identity_3
lstm_156_while_identity_4
lstm_156_while_identity_5+
'lstm_156_while_lstm_156_strided_slice_1g
clstm_156_while_tensorarrayv2read_tensorlistgetitem_lstm_156_tensorarrayunstack_tensorlistfromtensorN
;lstm_156_while_lstm_cell_156_matmul_readvariableop_resource:	?P
=lstm_156_while_lstm_cell_156_matmul_1_readvariableop_resource:	2?K
<lstm_156_while_lstm_cell_156_biasadd_readvariableop_resource:	???3lstm_156/while/lstm_cell_156/BiasAdd/ReadVariableOp?2lstm_156/while/lstm_cell_156/MatMul/ReadVariableOp?4lstm_156/while/lstm_cell_156/MatMul_1/ReadVariableOp?
@lstm_156/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_156/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_156_while_tensorarrayv2read_tensorlistgetitem_lstm_156_tensorarrayunstack_tensorlistfromtensor_0lstm_156_while_placeholderIlstm_156/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_156/while/lstm_cell_156/MatMul/ReadVariableOpReadVariableOp=lstm_156_while_lstm_cell_156_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_156/while/lstm_cell_156/MatMulMatMul9lstm_156/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_156/while/lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_156/while/lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp?lstm_156_while_lstm_cell_156_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_156/while/lstm_cell_156/MatMul_1MatMullstm_156_while_placeholder_2<lstm_156/while/lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_156/while/lstm_cell_156/addAddV2-lstm_156/while/lstm_cell_156/MatMul:product:0/lstm_156/while/lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_156/while/lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp>lstm_156_while_lstm_cell_156_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_156/while/lstm_cell_156/BiasAddBiasAdd$lstm_156/while/lstm_cell_156/add:z:0;lstm_156/while/lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_156/while/lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_156/while/lstm_cell_156/splitSplit5lstm_156/while/lstm_cell_156/split/split_dim:output:0-lstm_156/while/lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_156/while/lstm_cell_156/SigmoidSigmoid+lstm_156/while/lstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_156/while/lstm_cell_156/Sigmoid_1Sigmoid+lstm_156/while/lstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_156/while/lstm_cell_156/mulMul*lstm_156/while/lstm_cell_156/Sigmoid_1:y:0lstm_156_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_156/while/lstm_cell_156/ReluRelu+lstm_156/while/lstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_156/while/lstm_cell_156/mul_1Mul(lstm_156/while/lstm_cell_156/Sigmoid:y:0/lstm_156/while/lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_156/while/lstm_cell_156/add_1AddV2$lstm_156/while/lstm_cell_156/mul:z:0&lstm_156/while/lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_156/while/lstm_cell_156/Sigmoid_2Sigmoid+lstm_156/while/lstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_156/while/lstm_cell_156/Relu_1Relu&lstm_156/while/lstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_156/while/lstm_cell_156/mul_2Mul*lstm_156/while/lstm_cell_156/Sigmoid_2:y:01lstm_156/while/lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_156/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_156_while_placeholder_1lstm_156_while_placeholder&lstm_156/while/lstm_cell_156/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_156/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_156/while/addAddV2lstm_156_while_placeholderlstm_156/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_156/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_156/while/add_1AddV2*lstm_156_while_lstm_156_while_loop_counterlstm_156/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_156/while/IdentityIdentitylstm_156/while/add_1:z:0^lstm_156/while/NoOp*
T0*
_output_shapes
: ?
lstm_156/while/Identity_1Identity0lstm_156_while_lstm_156_while_maximum_iterations^lstm_156/while/NoOp*
T0*
_output_shapes
: t
lstm_156/while/Identity_2Identitylstm_156/while/add:z:0^lstm_156/while/NoOp*
T0*
_output_shapes
: ?
lstm_156/while/Identity_3IdentityClstm_156/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_156/while/NoOp*
T0*
_output_shapes
: :????
lstm_156/while/Identity_4Identity&lstm_156/while/lstm_cell_156/mul_2:z:0^lstm_156/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_156/while/Identity_5Identity&lstm_156/while/lstm_cell_156/add_1:z:0^lstm_156/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_156/while/NoOpNoOp4^lstm_156/while/lstm_cell_156/BiasAdd/ReadVariableOp3^lstm_156/while/lstm_cell_156/MatMul/ReadVariableOp5^lstm_156/while/lstm_cell_156/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_156_while_identity lstm_156/while/Identity:output:0"?
lstm_156_while_identity_1"lstm_156/while/Identity_1:output:0"?
lstm_156_while_identity_2"lstm_156/while/Identity_2:output:0"?
lstm_156_while_identity_3"lstm_156/while/Identity_3:output:0"?
lstm_156_while_identity_4"lstm_156/while/Identity_4:output:0"?
lstm_156_while_identity_5"lstm_156/while/Identity_5:output:0"T
'lstm_156_while_lstm_156_strided_slice_1)lstm_156_while_lstm_156_strided_slice_1_0"~
<lstm_156_while_lstm_cell_156_biasadd_readvariableop_resource>lstm_156_while_lstm_cell_156_biasadd_readvariableop_resource_0"?
=lstm_156_while_lstm_cell_156_matmul_1_readvariableop_resource?lstm_156_while_lstm_cell_156_matmul_1_readvariableop_resource_0"|
;lstm_156_while_lstm_cell_156_matmul_readvariableop_resource=lstm_156_while_lstm_cell_156_matmul_readvariableop_resource_0"?
clstm_156_while_tensorarrayv2read_tensorlistgetitem_lstm_156_tensorarrayunstack_tensorlistfromtensorelstm_156_while_tensorarrayv2read_tensorlistgetitem_lstm_156_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_156/while/lstm_cell_156/BiasAdd/ReadVariableOp3lstm_156/while/lstm_cell_156/BiasAdd/ReadVariableOp2h
2lstm_156/while/lstm_cell_156/MatMul/ReadVariableOp2lstm_156/while/lstm_cell_156/MatMul/ReadVariableOp2l
4lstm_156/while/lstm_cell_156/MatMul_1/ReadVariableOp4lstm_156/while/lstm_cell_156/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?#
?
while_body_841347
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_156_841371_0:	?/
while_lstm_cell_156_841373_0:	2?+
while_lstm_cell_156_841375_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_156_841371:	?-
while_lstm_cell_156_841373:	2?)
while_lstm_cell_156_841375:	???+while/lstm_cell_156/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_156/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_156_841371_0while_lstm_cell_156_841373_0while_lstm_cell_156_841375_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_841288?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_156/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :????
while/Identity_4Identity4while/lstm_cell_156/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_156/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_156/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_156_841371while_lstm_cell_156_841371_0":
while_lstm_cell_156_841373while_lstm_cell_156_841373_0":
while_lstm_cell_156_841375while_lstm_cell_156_841375_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_156/StatefulPartitionedCall+while/lstm_cell_156/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
J__inference_sequential_125_layer_call_and_return_conditional_losses_841864
lstm_156_input"
lstm_156_841851:	?"
lstm_156_841853:	2?
lstm_156_841855:	?"
dense_156_841858:2
dense_156_841860:
identity??!dense_156/StatefulPartitionedCall? lstm_156/StatefulPartitionedCall?
 lstm_156/StatefulPartitionedCallStatefulPartitionedCalllstm_156_inputlstm_156_841851lstm_156_841853lstm_156_841855*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_156_layer_call_and_return_conditional_losses_841574?
!dense_156/StatefulPartitionedCallStatefulPartitionedCall)lstm_156/StatefulPartitionedCall:output:0dense_156_841858dense_156_841860*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_156_layer_call_and_return_conditional_losses_841592y
IdentityIdentity*dense_156/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_156/StatefulPartitionedCall!^lstm_156/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????2: : : : : 2F
!dense_156/StatefulPartitionedCall!dense_156/StatefulPartitionedCall2D
 lstm_156/StatefulPartitionedCall lstm_156/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????2
(
_user_specified_namelstm_156_input
?]
?
J__inference_sequential_125_layer_call_and_return_conditional_losses_842214

inputsH
5lstm_156_lstm_cell_156_matmul_readvariableop_resource:	?J
7lstm_156_lstm_cell_156_matmul_1_readvariableop_resource:	2?E
6lstm_156_lstm_cell_156_biasadd_readvariableop_resource:	?:
(dense_156_matmul_readvariableop_resource:27
)dense_156_biasadd_readvariableop_resource:
identity?? dense_156/BiasAdd/ReadVariableOp?dense_156/MatMul/ReadVariableOp?-lstm_156/lstm_cell_156/BiasAdd/ReadVariableOp?,lstm_156/lstm_cell_156/MatMul/ReadVariableOp?.lstm_156/lstm_cell_156/MatMul_1/ReadVariableOp?lstm_156/whileD
lstm_156/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_156/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_156/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_156/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_156/strided_sliceStridedSlicelstm_156/Shape:output:0%lstm_156/strided_slice/stack:output:0'lstm_156/strided_slice/stack_1:output:0'lstm_156/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_156/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_156/zeros/packedPacklstm_156/strided_slice:output:0 lstm_156/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_156/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_156/zerosFilllstm_156/zeros/packed:output:0lstm_156/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_156/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_156/zeros_1/packedPacklstm_156/strided_slice:output:0"lstm_156/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_156/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_156/zeros_1Fill lstm_156/zeros_1/packed:output:0lstm_156/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_156/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_156/transpose	Transposeinputs lstm_156/transpose/perm:output:0*
T0*+
_output_shapes
:2?????????V
lstm_156/Shape_1Shapelstm_156/transpose:y:0*
T0*
_output_shapes
:h
lstm_156/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_156/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_156/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_156/strided_slice_1StridedSlicelstm_156/Shape_1:output:0'lstm_156/strided_slice_1/stack:output:0)lstm_156/strided_slice_1/stack_1:output:0)lstm_156/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_156/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_156/TensorArrayV2TensorListReserve-lstm_156/TensorArrayV2/element_shape:output:0!lstm_156/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_156/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_156/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_156/transpose:y:0Glstm_156/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_156/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_156/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_156/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_156/strided_slice_2StridedSlicelstm_156/transpose:y:0'lstm_156/strided_slice_2/stack:output:0)lstm_156/strided_slice_2/stack_1:output:0)lstm_156/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_156/lstm_cell_156/MatMul/ReadVariableOpReadVariableOp5lstm_156_lstm_cell_156_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_156/lstm_cell_156/MatMulMatMul!lstm_156/strided_slice_2:output:04lstm_156/lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_156/lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp7lstm_156_lstm_cell_156_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_156/lstm_cell_156/MatMul_1MatMullstm_156/zeros:output:06lstm_156/lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_156/lstm_cell_156/addAddV2'lstm_156/lstm_cell_156/MatMul:product:0)lstm_156/lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_156/lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp6lstm_156_lstm_cell_156_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_156/lstm_cell_156/BiasAddBiasAddlstm_156/lstm_cell_156/add:z:05lstm_156/lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_156/lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_156/lstm_cell_156/splitSplit/lstm_156/lstm_cell_156/split/split_dim:output:0'lstm_156/lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_156/lstm_cell_156/SigmoidSigmoid%lstm_156/lstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_156/lstm_cell_156/Sigmoid_1Sigmoid%lstm_156/lstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_156/lstm_cell_156/mulMul$lstm_156/lstm_cell_156/Sigmoid_1:y:0lstm_156/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_156/lstm_cell_156/ReluRelu%lstm_156/lstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_156/lstm_cell_156/mul_1Mul"lstm_156/lstm_cell_156/Sigmoid:y:0)lstm_156/lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_156/lstm_cell_156/add_1AddV2lstm_156/lstm_cell_156/mul:z:0 lstm_156/lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_156/lstm_cell_156/Sigmoid_2Sigmoid%lstm_156/lstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_156/lstm_cell_156/Relu_1Relu lstm_156/lstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_156/lstm_cell_156/mul_2Mul$lstm_156/lstm_cell_156/Sigmoid_2:y:0+lstm_156/lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_156/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_156/TensorArrayV2_1TensorListReserve/lstm_156/TensorArrayV2_1/element_shape:output:0!lstm_156/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_156/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_156/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_156/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_156/whileWhile$lstm_156/while/loop_counter:output:0*lstm_156/while/maximum_iterations:output:0lstm_156/time:output:0!lstm_156/TensorArrayV2_1:handle:0lstm_156/zeros:output:0lstm_156/zeros_1:output:0!lstm_156/strided_slice_1:output:0@lstm_156/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_156_lstm_cell_156_matmul_readvariableop_resource7lstm_156_lstm_cell_156_matmul_1_readvariableop_resource6lstm_156_lstm_cell_156_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_156_while_body_842124*&
condR
lstm_156_while_cond_842123*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_156/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_156/TensorArrayV2Stack/TensorListStackTensorListStacklstm_156/while:output:3Blstm_156/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2?????????2*
element_dtype0q
lstm_156/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_156/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_156/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_156/strided_slice_3StridedSlice4lstm_156/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_156/strided_slice_3/stack:output:0)lstm_156/strided_slice_3/stack_1:output:0)lstm_156/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_156/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_156/transpose_1	Transpose4lstm_156/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_156/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????22d
lstm_156/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_156/MatMul/ReadVariableOpReadVariableOp(dense_156_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0?
dense_156/MatMulMatMul!lstm_156/strided_slice_3:output:0'dense_156/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_156/BiasAdd/ReadVariableOpReadVariableOp)dense_156_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_156/BiasAddBiasAdddense_156/MatMul:product:0(dense_156/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_156/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_156/BiasAdd/ReadVariableOp ^dense_156/MatMul/ReadVariableOp.^lstm_156/lstm_cell_156/BiasAdd/ReadVariableOp-^lstm_156/lstm_cell_156/MatMul/ReadVariableOp/^lstm_156/lstm_cell_156/MatMul_1/ReadVariableOp^lstm_156/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????2: : : : : 2D
 dense_156/BiasAdd/ReadVariableOp dense_156/BiasAdd/ReadVariableOp2B
dense_156/MatMul/ReadVariableOpdense_156/MatMul/ReadVariableOp2^
-lstm_156/lstm_cell_156/BiasAdd/ReadVariableOp-lstm_156/lstm_cell_156/BiasAdd/ReadVariableOp2\
,lstm_156/lstm_cell_156/MatMul/ReadVariableOp,lstm_156/lstm_cell_156/MatMul/ReadVariableOp2`
.lstm_156/lstm_cell_156/MatMul_1/ReadVariableOp.lstm_156/lstm_cell_156/MatMul_1/ReadVariableOp2 
lstm_156/whilelstm_156/while:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_156_while_cond_842123.
*lstm_156_while_lstm_156_while_loop_counter4
0lstm_156_while_lstm_156_while_maximum_iterations
lstm_156_while_placeholder 
lstm_156_while_placeholder_1 
lstm_156_while_placeholder_2 
lstm_156_while_placeholder_30
,lstm_156_while_less_lstm_156_strided_slice_1F
Blstm_156_while_lstm_156_while_cond_842123___redundant_placeholder0F
Blstm_156_while_lstm_156_while_cond_842123___redundant_placeholder1F
Blstm_156_while_lstm_156_while_cond_842123___redundant_placeholder2F
Blstm_156_while_lstm_156_while_cond_842123___redundant_placeholder3
lstm_156_while_identity
?
lstm_156/while/LessLesslstm_156_while_placeholder,lstm_156_while_less_lstm_156_strided_slice_1*
T0*
_output_shapes
: ]
lstm_156/while/IdentityIdentitylstm_156/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_156_while_identity lstm_156/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
)__inference_lstm_156_layer_call_fn_842242
inputs_0
unknown:	?
	unknown_0:	2?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_156_layer_call_and_return_conditional_losses_841225o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_dense_156_layer_call_fn_842856

inputs
unknown:2
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_156_layer_call_and_return_conditional_losses_841592o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_842932

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	2?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????2:?????????2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/1
?]
?
J__inference_sequential_125_layer_call_and_return_conditional_losses_842065

inputsH
5lstm_156_lstm_cell_156_matmul_readvariableop_resource:	?J
7lstm_156_lstm_cell_156_matmul_1_readvariableop_resource:	2?E
6lstm_156_lstm_cell_156_biasadd_readvariableop_resource:	?:
(dense_156_matmul_readvariableop_resource:27
)dense_156_biasadd_readvariableop_resource:
identity?? dense_156/BiasAdd/ReadVariableOp?dense_156/MatMul/ReadVariableOp?-lstm_156/lstm_cell_156/BiasAdd/ReadVariableOp?,lstm_156/lstm_cell_156/MatMul/ReadVariableOp?.lstm_156/lstm_cell_156/MatMul_1/ReadVariableOp?lstm_156/whileD
lstm_156/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_156/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_156/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_156/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_156/strided_sliceStridedSlicelstm_156/Shape:output:0%lstm_156/strided_slice/stack:output:0'lstm_156/strided_slice/stack_1:output:0'lstm_156/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_156/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_156/zeros/packedPacklstm_156/strided_slice:output:0 lstm_156/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_156/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_156/zerosFilllstm_156/zeros/packed:output:0lstm_156/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_156/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_156/zeros_1/packedPacklstm_156/strided_slice:output:0"lstm_156/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_156/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_156/zeros_1Fill lstm_156/zeros_1/packed:output:0lstm_156/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_156/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_156/transpose	Transposeinputs lstm_156/transpose/perm:output:0*
T0*+
_output_shapes
:2?????????V
lstm_156/Shape_1Shapelstm_156/transpose:y:0*
T0*
_output_shapes
:h
lstm_156/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_156/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_156/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_156/strided_slice_1StridedSlicelstm_156/Shape_1:output:0'lstm_156/strided_slice_1/stack:output:0)lstm_156/strided_slice_1/stack_1:output:0)lstm_156/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_156/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_156/TensorArrayV2TensorListReserve-lstm_156/TensorArrayV2/element_shape:output:0!lstm_156/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_156/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_156/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_156/transpose:y:0Glstm_156/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_156/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_156/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_156/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_156/strided_slice_2StridedSlicelstm_156/transpose:y:0'lstm_156/strided_slice_2/stack:output:0)lstm_156/strided_slice_2/stack_1:output:0)lstm_156/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_156/lstm_cell_156/MatMul/ReadVariableOpReadVariableOp5lstm_156_lstm_cell_156_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_156/lstm_cell_156/MatMulMatMul!lstm_156/strided_slice_2:output:04lstm_156/lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_156/lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp7lstm_156_lstm_cell_156_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_156/lstm_cell_156/MatMul_1MatMullstm_156/zeros:output:06lstm_156/lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_156/lstm_cell_156/addAddV2'lstm_156/lstm_cell_156/MatMul:product:0)lstm_156/lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_156/lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp6lstm_156_lstm_cell_156_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_156/lstm_cell_156/BiasAddBiasAddlstm_156/lstm_cell_156/add:z:05lstm_156/lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_156/lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_156/lstm_cell_156/splitSplit/lstm_156/lstm_cell_156/split/split_dim:output:0'lstm_156/lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_156/lstm_cell_156/SigmoidSigmoid%lstm_156/lstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_156/lstm_cell_156/Sigmoid_1Sigmoid%lstm_156/lstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_156/lstm_cell_156/mulMul$lstm_156/lstm_cell_156/Sigmoid_1:y:0lstm_156/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_156/lstm_cell_156/ReluRelu%lstm_156/lstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_156/lstm_cell_156/mul_1Mul"lstm_156/lstm_cell_156/Sigmoid:y:0)lstm_156/lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_156/lstm_cell_156/add_1AddV2lstm_156/lstm_cell_156/mul:z:0 lstm_156/lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_156/lstm_cell_156/Sigmoid_2Sigmoid%lstm_156/lstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_156/lstm_cell_156/Relu_1Relu lstm_156/lstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_156/lstm_cell_156/mul_2Mul$lstm_156/lstm_cell_156/Sigmoid_2:y:0+lstm_156/lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_156/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_156/TensorArrayV2_1TensorListReserve/lstm_156/TensorArrayV2_1/element_shape:output:0!lstm_156/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_156/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_156/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_156/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_156/whileWhile$lstm_156/while/loop_counter:output:0*lstm_156/while/maximum_iterations:output:0lstm_156/time:output:0!lstm_156/TensorArrayV2_1:handle:0lstm_156/zeros:output:0lstm_156/zeros_1:output:0!lstm_156/strided_slice_1:output:0@lstm_156/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_156_lstm_cell_156_matmul_readvariableop_resource7lstm_156_lstm_cell_156_matmul_1_readvariableop_resource6lstm_156_lstm_cell_156_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_156_while_body_841975*&
condR
lstm_156_while_cond_841974*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_156/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_156/TensorArrayV2Stack/TensorListStackTensorListStacklstm_156/while:output:3Blstm_156/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2?????????2*
element_dtype0q
lstm_156/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_156/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_156/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_156/strided_slice_3StridedSlice4lstm_156/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_156/strided_slice_3/stack:output:0)lstm_156/strided_slice_3/stack_1:output:0)lstm_156/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_156/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_156/transpose_1	Transpose4lstm_156/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_156/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????22d
lstm_156/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_156/MatMul/ReadVariableOpReadVariableOp(dense_156_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0?
dense_156/MatMulMatMul!lstm_156/strided_slice_3:output:0'dense_156/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_156/BiasAdd/ReadVariableOpReadVariableOp)dense_156_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_156/BiasAddBiasAdddense_156/MatMul:product:0(dense_156/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_156/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_156/BiasAdd/ReadVariableOp ^dense_156/MatMul/ReadVariableOp.^lstm_156/lstm_cell_156/BiasAdd/ReadVariableOp-^lstm_156/lstm_cell_156/MatMul/ReadVariableOp/^lstm_156/lstm_cell_156/MatMul_1/ReadVariableOp^lstm_156/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????2: : : : : 2D
 dense_156/BiasAdd/ReadVariableOp dense_156/BiasAdd/ReadVariableOp2B
dense_156/MatMul/ReadVariableOpdense_156/MatMul/ReadVariableOp2^
-lstm_156/lstm_cell_156/BiasAdd/ReadVariableOp-lstm_156/lstm_cell_156/BiasAdd/ReadVariableOp2\
,lstm_156/lstm_cell_156/MatMul/ReadVariableOp,lstm_156/lstm_cell_156/MatMul/ReadVariableOp2`
.lstm_156/lstm_cell_156/MatMul_1/ReadVariableOp.lstm_156/lstm_cell_156/MatMul_1/ReadVariableOp2 
lstm_156/whilelstm_156/while:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_842333
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_842333___redundant_placeholder04
0while_while_cond_842333___redundant_placeholder14
0while_while_cond_842333___redundant_placeholder24
0while_while_cond_842333___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
)__inference_lstm_156_layer_call_fn_842275

inputs
unknown:	?
	unknown_0:	2?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_156_layer_call_and_return_conditional_losses_841778o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_842334
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_156_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_156_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_156_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_156_matmul_readvariableop_resource:	?G
4while_lstm_cell_156_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_156_biasadd_readvariableop_resource:	???*while/lstm_cell_156/BiasAdd/ReadVariableOp?)while/lstm_cell_156/MatMul/ReadVariableOp?+while/lstm_cell_156/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_156/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_156_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_156/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_156_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_156/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_156/addAddV2$while/lstm_cell_156/MatMul:product:0&while/lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_156_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_156/BiasAddBiasAddwhile/lstm_cell_156/add:z:02while/lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_156/splitSplit,while/lstm_cell_156/split/split_dim:output:0$while/lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_156/SigmoidSigmoid"while/lstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_156/Sigmoid_1Sigmoid"while/lstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_156/mulMul!while/lstm_cell_156/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_156/ReluRelu"while/lstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_156/mul_1Mulwhile/lstm_cell_156/Sigmoid:y:0&while/lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_156/add_1AddV2while/lstm_cell_156/mul:z:0while/lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_156/Sigmoid_2Sigmoid"while/lstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_156/Relu_1Reluwhile/lstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_156/mul_2Mul!while/lstm_cell_156/Sigmoid_2:y:0(while/lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_156/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???z
while/Identity_4Identitywhile/lstm_cell_156/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_156/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_156/BiasAdd/ReadVariableOp*^while/lstm_cell_156/MatMul/ReadVariableOp,^while/lstm_cell_156/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_156_biasadd_readvariableop_resource5while_lstm_cell_156_biasadd_readvariableop_resource_0"n
4while_lstm_cell_156_matmul_1_readvariableop_resource6while_lstm_cell_156_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_156_matmul_readvariableop_resource4while_lstm_cell_156_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_156/BiasAdd/ReadVariableOp*while/lstm_cell_156/BiasAdd/ReadVariableOp2V
)while/lstm_cell_156/MatMul/ReadVariableOp)while/lstm_cell_156/MatMul/ReadVariableOp2Z
+while/lstm_cell_156/MatMul_1/ReadVariableOp+while/lstm_cell_156/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?8
?
while_body_842620
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_156_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_156_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_156_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_156_matmul_readvariableop_resource:	?G
4while_lstm_cell_156_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_156_biasadd_readvariableop_resource:	???*while/lstm_cell_156/BiasAdd/ReadVariableOp?)while/lstm_cell_156/MatMul/ReadVariableOp?+while/lstm_cell_156/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_156/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_156_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_156/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_156_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_156/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_156/addAddV2$while/lstm_cell_156/MatMul:product:0&while/lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_156_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_156/BiasAddBiasAddwhile/lstm_cell_156/add:z:02while/lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_156/splitSplit,while/lstm_cell_156/split/split_dim:output:0$while/lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_156/SigmoidSigmoid"while/lstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_156/Sigmoid_1Sigmoid"while/lstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_156/mulMul!while/lstm_cell_156/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_156/ReluRelu"while/lstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_156/mul_1Mulwhile/lstm_cell_156/Sigmoid:y:0&while/lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_156/add_1AddV2while/lstm_cell_156/mul:z:0while/lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_156/Sigmoid_2Sigmoid"while/lstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_156/Relu_1Reluwhile/lstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_156/mul_2Mul!while/lstm_cell_156/Sigmoid_2:y:0(while/lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_156/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???z
while/Identity_4Identitywhile/lstm_cell_156/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_156/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_156/BiasAdd/ReadVariableOp*^while/lstm_cell_156/MatMul/ReadVariableOp,^while/lstm_cell_156/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_156_biasadd_readvariableop_resource5while_lstm_cell_156_biasadd_readvariableop_resource_0"n
4while_lstm_cell_156_matmul_1_readvariableop_resource6while_lstm_cell_156_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_156_matmul_readvariableop_resource4while_lstm_cell_156_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_156/BiasAdd/ReadVariableOp*while/lstm_cell_156/BiasAdd/ReadVariableOp2V
)while/lstm_cell_156/MatMul/ReadVariableOp)while/lstm_cell_156/MatMul/ReadVariableOp2Z
+while/lstm_cell_156/MatMul_1/ReadVariableOp+while/lstm_cell_156/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?8
?
D__inference_lstm_156_layer_call_and_return_conditional_losses_841416

inputs'
lstm_cell_156_841334:	?'
lstm_cell_156_841336:	2?#
lstm_cell_156_841338:	?
identity??%lstm_cell_156/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
%lstm_cell_156/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_156_841334lstm_cell_156_841336lstm_cell_156_841338*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_841288n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_156_841334lstm_cell_156_841336lstm_cell_156_841338*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_841347*
condR
while_cond_841346*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????2v
NoOpNoOp&^lstm_cell_156/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_156/StatefulPartitionedCall%lstm_cell_156/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
D__inference_lstm_156_layer_call_and_return_conditional_losses_841574

inputs?
,lstm_cell_156_matmul_readvariableop_resource:	?A
.lstm_cell_156_matmul_1_readvariableop_resource:	2?<
-lstm_cell_156_biasadd_readvariableop_resource:	?
identity??$lstm_cell_156/BiasAdd/ReadVariableOp?#lstm_cell_156/MatMul/ReadVariableOp?%lstm_cell_156/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:2?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_156/MatMul/ReadVariableOpReadVariableOp,lstm_cell_156_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_156/MatMulMatMulstrided_slice_2:output:0+lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_156_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_156/MatMul_1MatMulzeros:output:0-lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_156/addAddV2lstm_cell_156/MatMul:product:0 lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_156_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_156/BiasAddBiasAddlstm_cell_156/add:z:0,lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_156/splitSplit&lstm_cell_156/split/split_dim:output:0lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_156/SigmoidSigmoidlstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_156/Sigmoid_1Sigmoidlstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_156/mulMullstm_cell_156/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_156/ReluRelulstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_156/mul_1Mullstm_cell_156/Sigmoid:y:0 lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_156/add_1AddV2lstm_cell_156/mul:z:0lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_156/Sigmoid_2Sigmoidlstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_156/Relu_1Relulstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_156/mul_2Mullstm_cell_156/Sigmoid_2:y:0"lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_156_matmul_readvariableop_resource.lstm_cell_156_matmul_1_readvariableop_resource-lstm_cell_156_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_841490*
condR
while_cond_841489*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2?????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????22[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp%^lstm_cell_156/BiasAdd/ReadVariableOp$^lstm_cell_156/MatMul/ReadVariableOp&^lstm_cell_156/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_156/BiasAdd/ReadVariableOp$lstm_cell_156/BiasAdd/ReadVariableOp2J
#lstm_cell_156/MatMul/ReadVariableOp#lstm_cell_156/MatMul/ReadVariableOp2N
%lstm_cell_156/MatMul_1/ReadVariableOp%lstm_cell_156/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_841694
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_156_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_156_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_156_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_156_matmul_readvariableop_resource:	?G
4while_lstm_cell_156_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_156_biasadd_readvariableop_resource:	???*while/lstm_cell_156/BiasAdd/ReadVariableOp?)while/lstm_cell_156/MatMul/ReadVariableOp?+while/lstm_cell_156/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_156/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_156_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_156/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_156_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_156/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_156/addAddV2$while/lstm_cell_156/MatMul:product:0&while/lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_156_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_156/BiasAddBiasAddwhile/lstm_cell_156/add:z:02while/lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_156/splitSplit,while/lstm_cell_156/split/split_dim:output:0$while/lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_156/SigmoidSigmoid"while/lstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_156/Sigmoid_1Sigmoid"while/lstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_156/mulMul!while/lstm_cell_156/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_156/ReluRelu"while/lstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_156/mul_1Mulwhile/lstm_cell_156/Sigmoid:y:0&while/lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_156/add_1AddV2while/lstm_cell_156/mul:z:0while/lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_156/Sigmoid_2Sigmoid"while/lstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_156/Relu_1Reluwhile/lstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_156/mul_2Mul!while/lstm_cell_156/Sigmoid_2:y:0(while/lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_156/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???z
while/Identity_4Identitywhile/lstm_cell_156/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_156/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_156/BiasAdd/ReadVariableOp*^while/lstm_cell_156/MatMul/ReadVariableOp,^while/lstm_cell_156/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_156_biasadd_readvariableop_resource5while_lstm_cell_156_biasadd_readvariableop_resource_0"n
4while_lstm_cell_156_matmul_1_readvariableop_resource6while_lstm_cell_156_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_156_matmul_readvariableop_resource4while_lstm_cell_156_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_156/BiasAdd/ReadVariableOp*while/lstm_cell_156/BiasAdd/ReadVariableOp2V
)while/lstm_cell_156/MatMul/ReadVariableOp)while/lstm_cell_156/MatMul/ReadVariableOp2Z
+while/lstm_cell_156/MatMul_1/ReadVariableOp+while/lstm_cell_156/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_842619
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_842619___redundant_placeholder04
0while_while_cond_842619___redundant_placeholder14
0while_while_cond_842619___redundant_placeholder24
0while_while_cond_842619___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
.__inference_lstm_cell_156_layer_call_fn_842900

inputs
states_0
states_1
unknown:	?
	unknown_0:	2?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_841288o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????2:?????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/1
?
?
while_cond_841693
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_841693___redundant_placeholder04
0while_while_cond_841693___redundant_placeholder14
0while_while_cond_841693___redundant_placeholder24
0while_while_cond_841693___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
$__inference_signature_wrapper_842231
lstm_156_input
unknown:	?
	unknown_0:	2?
	unknown_1:	?
	unknown_2:2
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_156_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_841075o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????2: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????2
(
_user_specified_namelstm_156_input
?K
?
D__inference_lstm_156_layer_call_and_return_conditional_losses_842561
inputs_0?
,lstm_cell_156_matmul_readvariableop_resource:	?A
.lstm_cell_156_matmul_1_readvariableop_resource:	2?<
-lstm_cell_156_biasadd_readvariableop_resource:	?
identity??$lstm_cell_156/BiasAdd/ReadVariableOp?#lstm_cell_156/MatMul/ReadVariableOp?%lstm_cell_156/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_156/MatMul/ReadVariableOpReadVariableOp,lstm_cell_156_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_156/MatMulMatMulstrided_slice_2:output:0+lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_156_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_156/MatMul_1MatMulzeros:output:0-lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_156/addAddV2lstm_cell_156/MatMul:product:0 lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_156_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_156/BiasAddBiasAddlstm_cell_156/add:z:0,lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_156/splitSplit&lstm_cell_156/split/split_dim:output:0lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_156/SigmoidSigmoidlstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_156/Sigmoid_1Sigmoidlstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_156/mulMullstm_cell_156/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_156/ReluRelulstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_156/mul_1Mullstm_cell_156/Sigmoid:y:0 lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_156/add_1AddV2lstm_cell_156/mul:z:0lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_156/Sigmoid_2Sigmoidlstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_156/Relu_1Relulstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_156/mul_2Mullstm_cell_156/Sigmoid_2:y:0"lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_156_matmul_readvariableop_resource.lstm_cell_156_matmul_1_readvariableop_resource-lstm_cell_156_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_842477*
condR
while_cond_842476*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp%^lstm_cell_156/BiasAdd/ReadVariableOp$^lstm_cell_156/MatMul/ReadVariableOp&^lstm_cell_156/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_156/BiasAdd/ReadVariableOp$lstm_cell_156/BiasAdd/ReadVariableOp2J
#lstm_cell_156/MatMul/ReadVariableOp#lstm_cell_156/MatMul/ReadVariableOp2N
%lstm_cell_156/MatMul_1/ReadVariableOp%lstm_cell_156/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_842476
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_842476___redundant_placeholder04
0while_while_cond_842476___redundant_placeholder14
0while_while_cond_842476___redundant_placeholder24
0while_while_cond_842476___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?U
?
)sequential_125_lstm_156_while_body_840985L
Hsequential_125_lstm_156_while_sequential_125_lstm_156_while_loop_counterR
Nsequential_125_lstm_156_while_sequential_125_lstm_156_while_maximum_iterations-
)sequential_125_lstm_156_while_placeholder/
+sequential_125_lstm_156_while_placeholder_1/
+sequential_125_lstm_156_while_placeholder_2/
+sequential_125_lstm_156_while_placeholder_3K
Gsequential_125_lstm_156_while_sequential_125_lstm_156_strided_slice_1_0?
?sequential_125_lstm_156_while_tensorarrayv2read_tensorlistgetitem_sequential_125_lstm_156_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_125_lstm_156_while_lstm_cell_156_matmul_readvariableop_resource_0:	?a
Nsequential_125_lstm_156_while_lstm_cell_156_matmul_1_readvariableop_resource_0:	2?\
Msequential_125_lstm_156_while_lstm_cell_156_biasadd_readvariableop_resource_0:	?*
&sequential_125_lstm_156_while_identity,
(sequential_125_lstm_156_while_identity_1,
(sequential_125_lstm_156_while_identity_2,
(sequential_125_lstm_156_while_identity_3,
(sequential_125_lstm_156_while_identity_4,
(sequential_125_lstm_156_while_identity_5I
Esequential_125_lstm_156_while_sequential_125_lstm_156_strided_slice_1?
?sequential_125_lstm_156_while_tensorarrayv2read_tensorlistgetitem_sequential_125_lstm_156_tensorarrayunstack_tensorlistfromtensor]
Jsequential_125_lstm_156_while_lstm_cell_156_matmul_readvariableop_resource:	?_
Lsequential_125_lstm_156_while_lstm_cell_156_matmul_1_readvariableop_resource:	2?Z
Ksequential_125_lstm_156_while_lstm_cell_156_biasadd_readvariableop_resource:	???Bsequential_125/lstm_156/while/lstm_cell_156/BiasAdd/ReadVariableOp?Asequential_125/lstm_156/while/lstm_cell_156/MatMul/ReadVariableOp?Csequential_125/lstm_156/while/lstm_cell_156/MatMul_1/ReadVariableOp?
Osequential_125/lstm_156/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_125/lstm_156/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_125_lstm_156_while_tensorarrayv2read_tensorlistgetitem_sequential_125_lstm_156_tensorarrayunstack_tensorlistfromtensor_0)sequential_125_lstm_156_while_placeholderXsequential_125/lstm_156/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_125/lstm_156/while/lstm_cell_156/MatMul/ReadVariableOpReadVariableOpLsequential_125_lstm_156_while_lstm_cell_156_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_125/lstm_156/while/lstm_cell_156/MatMulMatMulHsequential_125/lstm_156/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_125/lstm_156/while/lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_125/lstm_156/while/lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOpNsequential_125_lstm_156_while_lstm_cell_156_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_125/lstm_156/while/lstm_cell_156/MatMul_1MatMul+sequential_125_lstm_156_while_placeholder_2Ksequential_125/lstm_156/while/lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_125/lstm_156/while/lstm_cell_156/addAddV2<sequential_125/lstm_156/while/lstm_cell_156/MatMul:product:0>sequential_125/lstm_156/while/lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_125/lstm_156/while/lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOpMsequential_125_lstm_156_while_lstm_cell_156_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_125/lstm_156/while/lstm_cell_156/BiasAddBiasAdd3sequential_125/lstm_156/while/lstm_cell_156/add:z:0Jsequential_125/lstm_156/while/lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_125/lstm_156/while/lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_125/lstm_156/while/lstm_cell_156/splitSplitDsequential_125/lstm_156/while/lstm_cell_156/split/split_dim:output:0<sequential_125/lstm_156/while/lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_125/lstm_156/while/lstm_cell_156/SigmoidSigmoid:sequential_125/lstm_156/while/lstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_125/lstm_156/while/lstm_cell_156/Sigmoid_1Sigmoid:sequential_125/lstm_156/while/lstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_125/lstm_156/while/lstm_cell_156/mulMul9sequential_125/lstm_156/while/lstm_cell_156/Sigmoid_1:y:0+sequential_125_lstm_156_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_125/lstm_156/while/lstm_cell_156/ReluRelu:sequential_125/lstm_156/while/lstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_125/lstm_156/while/lstm_cell_156/mul_1Mul7sequential_125/lstm_156/while/lstm_cell_156/Sigmoid:y:0>sequential_125/lstm_156/while/lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_125/lstm_156/while/lstm_cell_156/add_1AddV23sequential_125/lstm_156/while/lstm_cell_156/mul:z:05sequential_125/lstm_156/while/lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_125/lstm_156/while/lstm_cell_156/Sigmoid_2Sigmoid:sequential_125/lstm_156/while/lstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_125/lstm_156/while/lstm_cell_156/Relu_1Relu5sequential_125/lstm_156/while/lstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_125/lstm_156/while/lstm_cell_156/mul_2Mul9sequential_125/lstm_156/while/lstm_cell_156/Sigmoid_2:y:0@sequential_125/lstm_156/while/lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_125/lstm_156/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_125_lstm_156_while_placeholder_1)sequential_125_lstm_156_while_placeholder5sequential_125/lstm_156/while/lstm_cell_156/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_125/lstm_156/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_125/lstm_156/while/addAddV2)sequential_125_lstm_156_while_placeholder,sequential_125/lstm_156/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_125/lstm_156/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_125/lstm_156/while/add_1AddV2Hsequential_125_lstm_156_while_sequential_125_lstm_156_while_loop_counter.sequential_125/lstm_156/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_125/lstm_156/while/IdentityIdentity'sequential_125/lstm_156/while/add_1:z:0#^sequential_125/lstm_156/while/NoOp*
T0*
_output_shapes
: ?
(sequential_125/lstm_156/while/Identity_1IdentityNsequential_125_lstm_156_while_sequential_125_lstm_156_while_maximum_iterations#^sequential_125/lstm_156/while/NoOp*
T0*
_output_shapes
: ?
(sequential_125/lstm_156/while/Identity_2Identity%sequential_125/lstm_156/while/add:z:0#^sequential_125/lstm_156/while/NoOp*
T0*
_output_shapes
: ?
(sequential_125/lstm_156/while/Identity_3IdentityRsequential_125/lstm_156/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_125/lstm_156/while/NoOp*
T0*
_output_shapes
: :????
(sequential_125/lstm_156/while/Identity_4Identity5sequential_125/lstm_156/while/lstm_cell_156/mul_2:z:0#^sequential_125/lstm_156/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_125/lstm_156/while/Identity_5Identity5sequential_125/lstm_156/while/lstm_cell_156/add_1:z:0#^sequential_125/lstm_156/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_125/lstm_156/while/NoOpNoOpC^sequential_125/lstm_156/while/lstm_cell_156/BiasAdd/ReadVariableOpB^sequential_125/lstm_156/while/lstm_cell_156/MatMul/ReadVariableOpD^sequential_125/lstm_156/while/lstm_cell_156/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_125_lstm_156_while_identity/sequential_125/lstm_156/while/Identity:output:0"]
(sequential_125_lstm_156_while_identity_11sequential_125/lstm_156/while/Identity_1:output:0"]
(sequential_125_lstm_156_while_identity_21sequential_125/lstm_156/while/Identity_2:output:0"]
(sequential_125_lstm_156_while_identity_31sequential_125/lstm_156/while/Identity_3:output:0"]
(sequential_125_lstm_156_while_identity_41sequential_125/lstm_156/while/Identity_4:output:0"]
(sequential_125_lstm_156_while_identity_51sequential_125/lstm_156/while/Identity_5:output:0"?
Ksequential_125_lstm_156_while_lstm_cell_156_biasadd_readvariableop_resourceMsequential_125_lstm_156_while_lstm_cell_156_biasadd_readvariableop_resource_0"?
Lsequential_125_lstm_156_while_lstm_cell_156_matmul_1_readvariableop_resourceNsequential_125_lstm_156_while_lstm_cell_156_matmul_1_readvariableop_resource_0"?
Jsequential_125_lstm_156_while_lstm_cell_156_matmul_readvariableop_resourceLsequential_125_lstm_156_while_lstm_cell_156_matmul_readvariableop_resource_0"?
Esequential_125_lstm_156_while_sequential_125_lstm_156_strided_slice_1Gsequential_125_lstm_156_while_sequential_125_lstm_156_strided_slice_1_0"?
?sequential_125_lstm_156_while_tensorarrayv2read_tensorlistgetitem_sequential_125_lstm_156_tensorarrayunstack_tensorlistfromtensor?sequential_125_lstm_156_while_tensorarrayv2read_tensorlistgetitem_sequential_125_lstm_156_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_125/lstm_156/while/lstm_cell_156/BiasAdd/ReadVariableOpBsequential_125/lstm_156/while/lstm_cell_156/BiasAdd/ReadVariableOp2?
Asequential_125/lstm_156/while/lstm_cell_156/MatMul/ReadVariableOpAsequential_125/lstm_156/while/lstm_cell_156/MatMul/ReadVariableOp2?
Csequential_125/lstm_156/while/lstm_cell_156/MatMul_1/ReadVariableOpCsequential_125/lstm_156/while/lstm_cell_156/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
/__inference_sequential_125_layer_call_fn_841612
lstm_156_input
unknown:	?
	unknown_0:	2?
	unknown_1:	?
	unknown_2:2
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_156_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_125_layer_call_and_return_conditional_losses_841599o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????2: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????2
(
_user_specified_namelstm_156_input
?
?
J__inference_sequential_125_layer_call_and_return_conditional_losses_841880
lstm_156_input"
lstm_156_841867:	?"
lstm_156_841869:	2?
lstm_156_841871:	?"
dense_156_841874:2
dense_156_841876:
identity??!dense_156/StatefulPartitionedCall? lstm_156/StatefulPartitionedCall?
 lstm_156/StatefulPartitionedCallStatefulPartitionedCalllstm_156_inputlstm_156_841867lstm_156_841869lstm_156_841871*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_156_layer_call_and_return_conditional_losses_841778?
!dense_156/StatefulPartitionedCallStatefulPartitionedCall)lstm_156/StatefulPartitionedCall:output:0dense_156_841874dense_156_841876*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_156_layer_call_and_return_conditional_losses_841592y
IdentityIdentity*dense_156/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_156/StatefulPartitionedCall!^lstm_156/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????2: : : : : 2F
!dense_156/StatefulPartitionedCall!dense_156/StatefulPartitionedCall2D
 lstm_156/StatefulPartitionedCall lstm_156/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????2
(
_user_specified_namelstm_156_input
?
?
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_842964

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	2?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????2:?????????2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/1
?r
?
!__inference__wrapped_model_841075
lstm_156_inputW
Dsequential_125_lstm_156_lstm_cell_156_matmul_readvariableop_resource:	?Y
Fsequential_125_lstm_156_lstm_cell_156_matmul_1_readvariableop_resource:	2?T
Esequential_125_lstm_156_lstm_cell_156_biasadd_readvariableop_resource:	?I
7sequential_125_dense_156_matmul_readvariableop_resource:2F
8sequential_125_dense_156_biasadd_readvariableop_resource:
identity??/sequential_125/dense_156/BiasAdd/ReadVariableOp?.sequential_125/dense_156/MatMul/ReadVariableOp?<sequential_125/lstm_156/lstm_cell_156/BiasAdd/ReadVariableOp?;sequential_125/lstm_156/lstm_cell_156/MatMul/ReadVariableOp?=sequential_125/lstm_156/lstm_cell_156/MatMul_1/ReadVariableOp?sequential_125/lstm_156/while[
sequential_125/lstm_156/ShapeShapelstm_156_input*
T0*
_output_shapes
:u
+sequential_125/lstm_156/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_125/lstm_156/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_125/lstm_156/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_125/lstm_156/strided_sliceStridedSlice&sequential_125/lstm_156/Shape:output:04sequential_125/lstm_156/strided_slice/stack:output:06sequential_125/lstm_156/strided_slice/stack_1:output:06sequential_125/lstm_156/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_125/lstm_156/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_125/lstm_156/zeros/packedPack.sequential_125/lstm_156/strided_slice:output:0/sequential_125/lstm_156/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_125/lstm_156/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_125/lstm_156/zerosFill-sequential_125/lstm_156/zeros/packed:output:0,sequential_125/lstm_156/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_125/lstm_156/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_125/lstm_156/zeros_1/packedPack.sequential_125/lstm_156/strided_slice:output:01sequential_125/lstm_156/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_125/lstm_156/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_125/lstm_156/zeros_1Fill/sequential_125/lstm_156/zeros_1/packed:output:0.sequential_125/lstm_156/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_125/lstm_156/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_125/lstm_156/transpose	Transposelstm_156_input/sequential_125/lstm_156/transpose/perm:output:0*
T0*+
_output_shapes
:2?????????t
sequential_125/lstm_156/Shape_1Shape%sequential_125/lstm_156/transpose:y:0*
T0*
_output_shapes
:w
-sequential_125/lstm_156/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_125/lstm_156/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_125/lstm_156/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_125/lstm_156/strided_slice_1StridedSlice(sequential_125/lstm_156/Shape_1:output:06sequential_125/lstm_156/strided_slice_1/stack:output:08sequential_125/lstm_156/strided_slice_1/stack_1:output:08sequential_125/lstm_156/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_125/lstm_156/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_125/lstm_156/TensorArrayV2TensorListReserve<sequential_125/lstm_156/TensorArrayV2/element_shape:output:00sequential_125/lstm_156/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_125/lstm_156/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_125/lstm_156/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_125/lstm_156/transpose:y:0Vsequential_125/lstm_156/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_125/lstm_156/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_125/lstm_156/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_125/lstm_156/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_125/lstm_156/strided_slice_2StridedSlice%sequential_125/lstm_156/transpose:y:06sequential_125/lstm_156/strided_slice_2/stack:output:08sequential_125/lstm_156/strided_slice_2/stack_1:output:08sequential_125/lstm_156/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_125/lstm_156/lstm_cell_156/MatMul/ReadVariableOpReadVariableOpDsequential_125_lstm_156_lstm_cell_156_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_125/lstm_156/lstm_cell_156/MatMulMatMul0sequential_125/lstm_156/strided_slice_2:output:0Csequential_125/lstm_156/lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_125/lstm_156/lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOpFsequential_125_lstm_156_lstm_cell_156_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_125/lstm_156/lstm_cell_156/MatMul_1MatMul&sequential_125/lstm_156/zeros:output:0Esequential_125/lstm_156/lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_125/lstm_156/lstm_cell_156/addAddV26sequential_125/lstm_156/lstm_cell_156/MatMul:product:08sequential_125/lstm_156/lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_125/lstm_156/lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOpEsequential_125_lstm_156_lstm_cell_156_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_125/lstm_156/lstm_cell_156/BiasAddBiasAdd-sequential_125/lstm_156/lstm_cell_156/add:z:0Dsequential_125/lstm_156/lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_125/lstm_156/lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_125/lstm_156/lstm_cell_156/splitSplit>sequential_125/lstm_156/lstm_cell_156/split/split_dim:output:06sequential_125/lstm_156/lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_125/lstm_156/lstm_cell_156/SigmoidSigmoid4sequential_125/lstm_156/lstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_125/lstm_156/lstm_cell_156/Sigmoid_1Sigmoid4sequential_125/lstm_156/lstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_125/lstm_156/lstm_cell_156/mulMul3sequential_125/lstm_156/lstm_cell_156/Sigmoid_1:y:0(sequential_125/lstm_156/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_125/lstm_156/lstm_cell_156/ReluRelu4sequential_125/lstm_156/lstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_125/lstm_156/lstm_cell_156/mul_1Mul1sequential_125/lstm_156/lstm_cell_156/Sigmoid:y:08sequential_125/lstm_156/lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_125/lstm_156/lstm_cell_156/add_1AddV2-sequential_125/lstm_156/lstm_cell_156/mul:z:0/sequential_125/lstm_156/lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_125/lstm_156/lstm_cell_156/Sigmoid_2Sigmoid4sequential_125/lstm_156/lstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_125/lstm_156/lstm_cell_156/Relu_1Relu/sequential_125/lstm_156/lstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_125/lstm_156/lstm_cell_156/mul_2Mul3sequential_125/lstm_156/lstm_cell_156/Sigmoid_2:y:0:sequential_125/lstm_156/lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_125/lstm_156/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_125/lstm_156/TensorArrayV2_1TensorListReserve>sequential_125/lstm_156/TensorArrayV2_1/element_shape:output:00sequential_125/lstm_156/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_125/lstm_156/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_125/lstm_156/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_125/lstm_156/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_125/lstm_156/whileWhile3sequential_125/lstm_156/while/loop_counter:output:09sequential_125/lstm_156/while/maximum_iterations:output:0%sequential_125/lstm_156/time:output:00sequential_125/lstm_156/TensorArrayV2_1:handle:0&sequential_125/lstm_156/zeros:output:0(sequential_125/lstm_156/zeros_1:output:00sequential_125/lstm_156/strided_slice_1:output:0Osequential_125/lstm_156/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_125_lstm_156_lstm_cell_156_matmul_readvariableop_resourceFsequential_125_lstm_156_lstm_cell_156_matmul_1_readvariableop_resourceEsequential_125_lstm_156_lstm_cell_156_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_125_lstm_156_while_body_840985*5
cond-R+
)sequential_125_lstm_156_while_cond_840984*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_125/lstm_156/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_125/lstm_156/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_125/lstm_156/while:output:3Qsequential_125/lstm_156/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2?????????2*
element_dtype0?
-sequential_125/lstm_156/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_125/lstm_156/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_125/lstm_156/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_125/lstm_156/strided_slice_3StridedSliceCsequential_125/lstm_156/TensorArrayV2Stack/TensorListStack:tensor:06sequential_125/lstm_156/strided_slice_3/stack:output:08sequential_125/lstm_156/strided_slice_3/stack_1:output:08sequential_125/lstm_156/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_125/lstm_156/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_125/lstm_156/transpose_1	TransposeCsequential_125/lstm_156/TensorArrayV2Stack/TensorListStack:tensor:01sequential_125/lstm_156/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????22s
sequential_125/lstm_156/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_125/dense_156/MatMul/ReadVariableOpReadVariableOp7sequential_125_dense_156_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0?
sequential_125/dense_156/MatMulMatMul0sequential_125/lstm_156/strided_slice_3:output:06sequential_125/dense_156/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_125/dense_156/BiasAdd/ReadVariableOpReadVariableOp8sequential_125_dense_156_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_125/dense_156/BiasAddBiasAdd)sequential_125/dense_156/MatMul:product:07sequential_125/dense_156/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_125/dense_156/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_125/dense_156/BiasAdd/ReadVariableOp/^sequential_125/dense_156/MatMul/ReadVariableOp=^sequential_125/lstm_156/lstm_cell_156/BiasAdd/ReadVariableOp<^sequential_125/lstm_156/lstm_cell_156/MatMul/ReadVariableOp>^sequential_125/lstm_156/lstm_cell_156/MatMul_1/ReadVariableOp^sequential_125/lstm_156/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????2: : : : : 2b
/sequential_125/dense_156/BiasAdd/ReadVariableOp/sequential_125/dense_156/BiasAdd/ReadVariableOp2`
.sequential_125/dense_156/MatMul/ReadVariableOp.sequential_125/dense_156/MatMul/ReadVariableOp2|
<sequential_125/lstm_156/lstm_cell_156/BiasAdd/ReadVariableOp<sequential_125/lstm_156/lstm_cell_156/BiasAdd/ReadVariableOp2z
;sequential_125/lstm_156/lstm_cell_156/MatMul/ReadVariableOp;sequential_125/lstm_156/lstm_cell_156/MatMul/ReadVariableOp2~
=sequential_125/lstm_156/lstm_cell_156/MatMul_1/ReadVariableOp=sequential_125/lstm_156/lstm_cell_156/MatMul_1/ReadVariableOp2>
sequential_125/lstm_156/whilesequential_125/lstm_156/while:[ W
+
_output_shapes
:?????????2
(
_user_specified_namelstm_156_input
?	
?
E__inference_dense_156_layer_call_and_return_conditional_losses_841592

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?K
?
D__inference_lstm_156_layer_call_and_return_conditional_losses_842418
inputs_0?
,lstm_cell_156_matmul_readvariableop_resource:	?A
.lstm_cell_156_matmul_1_readvariableop_resource:	2?<
-lstm_cell_156_biasadd_readvariableop_resource:	?
identity??$lstm_cell_156/BiasAdd/ReadVariableOp?#lstm_cell_156/MatMul/ReadVariableOp?%lstm_cell_156/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#lstm_cell_156/MatMul/ReadVariableOpReadVariableOp,lstm_cell_156_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_156/MatMulMatMulstrided_slice_2:output:0+lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_156_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_156/MatMul_1MatMulzeros:output:0-lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_156/addAddV2lstm_cell_156/MatMul:product:0 lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_156_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_156/BiasAddBiasAddlstm_cell_156/add:z:0,lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_156/splitSplit&lstm_cell_156/split/split_dim:output:0lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_156/SigmoidSigmoidlstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_156/Sigmoid_1Sigmoidlstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_156/mulMullstm_cell_156/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_156/ReluRelulstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_156/mul_1Mullstm_cell_156/Sigmoid:y:0 lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_156/add_1AddV2lstm_cell_156/mul:z:0lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_156/Sigmoid_2Sigmoidlstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_156/Relu_1Relulstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_156/mul_2Mullstm_cell_156/Sigmoid_2:y:0"lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_156_matmul_readvariableop_resource.lstm_cell_156_matmul_1_readvariableop_resource-lstm_cell_156_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_842334*
condR
while_cond_842333*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp%^lstm_cell_156/BiasAdd/ReadVariableOp$^lstm_cell_156/MatMul/ReadVariableOp&^lstm_cell_156/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_156/BiasAdd/ReadVariableOp$lstm_cell_156/BiasAdd/ReadVariableOp2J
#lstm_cell_156/MatMul/ReadVariableOp#lstm_cell_156/MatMul/ReadVariableOp2N
%lstm_cell_156/MatMul_1/ReadVariableOp%lstm_cell_156/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
/__inference_sequential_125_layer_call_fn_841848
lstm_156_input
unknown:	?
	unknown_0:	2?
	unknown_1:	?
	unknown_2:2
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_156_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_125_layer_call_and_return_conditional_losses_841820o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????2: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????2
(
_user_specified_namelstm_156_input
?8
?
while_body_842477
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_156_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_156_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_156_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_156_matmul_readvariableop_resource:	?G
4while_lstm_cell_156_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_156_biasadd_readvariableop_resource:	???*while/lstm_cell_156/BiasAdd/ReadVariableOp?)while/lstm_cell_156/MatMul/ReadVariableOp?+while/lstm_cell_156/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_156/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_156_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_156/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_156/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_156/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_156_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_156/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_156/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_156/addAddV2$while/lstm_cell_156/MatMul:product:0&while/lstm_cell_156/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_156/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_156_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_156/BiasAddBiasAddwhile/lstm_cell_156/add:z:02while/lstm_cell_156/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_156/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_156/splitSplit,while/lstm_cell_156/split/split_dim:output:0$while/lstm_cell_156/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_156/SigmoidSigmoid"while/lstm_cell_156/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_156/Sigmoid_1Sigmoid"while/lstm_cell_156/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_156/mulMul!while/lstm_cell_156/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_156/ReluRelu"while/lstm_cell_156/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_156/mul_1Mulwhile/lstm_cell_156/Sigmoid:y:0&while/lstm_cell_156/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_156/add_1AddV2while/lstm_cell_156/mul:z:0while/lstm_cell_156/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_156/Sigmoid_2Sigmoid"while/lstm_cell_156/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_156/Relu_1Reluwhile/lstm_cell_156/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_156/mul_2Mul!while/lstm_cell_156/Sigmoid_2:y:0(while/lstm_cell_156/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_156/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???z
while/Identity_4Identitywhile/lstm_cell_156/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_156/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_156/BiasAdd/ReadVariableOp*^while/lstm_cell_156/MatMul/ReadVariableOp,^while/lstm_cell_156/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_156_biasadd_readvariableop_resource5while_lstm_cell_156_biasadd_readvariableop_resource_0"n
4while_lstm_cell_156_matmul_1_readvariableop_resource6while_lstm_cell_156_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_156_matmul_readvariableop_resource4while_lstm_cell_156_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_156/BiasAdd/ReadVariableOp*while/lstm_cell_156/BiasAdd/ReadVariableOp2V
)while/lstm_cell_156/MatMul/ReadVariableOp)while/lstm_cell_156/MatMul/ReadVariableOp2Z
+while/lstm_cell_156/MatMul_1/ReadVariableOp+while/lstm_cell_156/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_841346
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_841346___redundant_placeholder04
0while_while_cond_841346___redundant_placeholder14
0while_while_cond_841346___redundant_placeholder24
0while_while_cond_841346___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_841142

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	2?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????2:?????????2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????2
 
_user_specified_namestates:OK
'
_output_shapes
:?????????2
 
_user_specified_namestates
?
?
while_cond_841489
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_841489___redundant_placeholder04
0while_while_cond_841489___redundant_placeholder14
0while_while_cond_841489___redundant_placeholder24
0while_while_cond_841489___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?#
?
while_body_841156
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_156_841180_0:	?/
while_lstm_cell_156_841182_0:	2?+
while_lstm_cell_156_841184_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_156_841180:	?-
while_lstm_cell_156_841182:	2?)
while_lstm_cell_156_841184:	???+while/lstm_cell_156/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_156/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_156_841180_0while_lstm_cell_156_841182_0while_lstm_cell_156_841184_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_841142?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_156/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :????
while/Identity_4Identity4while/lstm_cell_156/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_156/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_156/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_156_841180while_lstm_cell_156_841180_0":
while_lstm_cell_156_841182while_lstm_cell_156_841182_0":
while_lstm_cell_156_841184while_lstm_cell_156_841184_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_156/StatefulPartitionedCall+while/lstm_cell_156/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_156_input;
 serving_default_lstm_156_input:0?????????2=
	dense_1560
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?e
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures"
_tf_keras_sequential
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
iter

beta_1

beta_2
	 decay
!learning_ratemHmI"mJ#mK$mLvMvN"vO#vP$vQ"
	optimizer
C
"0
#1
$2
3
4"
trackable_list_wrapper
C
"0
#1
$2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
?
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
?2?
/__inference_sequential_125_layer_call_fn_841612
/__inference_sequential_125_layer_call_fn_841901
/__inference_sequential_125_layer_call_fn_841916
/__inference_sequential_125_layer_call_fn_841848?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_sequential_125_layer_call_and_return_conditional_losses_842065
J__inference_sequential_125_layer_call_and_return_conditional_losses_842214
J__inference_sequential_125_layer_call_and_return_conditional_losses_841864
J__inference_sequential_125_layer_call_and_return_conditional_losses_841880?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_841075lstm_156_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
*serving_default"
signature_map
?
+
state_size

"kernel
#recurrent_kernel
$bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0_random_generator
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
"0
#1
$2"
trackable_list_wrapper
5
"0
#1
$2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

3states
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
)__inference_lstm_156_layer_call_fn_842242
)__inference_lstm_156_layer_call_fn_842253
)__inference_lstm_156_layer_call_fn_842264
)__inference_lstm_156_layer_call_fn_842275?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_lstm_156_layer_call_and_return_conditional_losses_842418
D__inference_lstm_156_layer_call_and_return_conditional_losses_842561
D__inference_lstm_156_layer_call_and_return_conditional_losses_842704
D__inference_lstm_156_layer_call_and_return_conditional_losses_842847?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
": 22dense_156/kernel
:2dense_156/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_dense_156_layer_call_fn_842856?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_156_layer_call_and_return_conditional_losses_842866?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0:.	?2lstm_156/lstm_cell_156/kernel
::8	2?2'lstm_156/lstm_cell_156/recurrent_kernel
*:(?2lstm_156/lstm_cell_156/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
>0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
$__inference_signature_wrapper_842231lstm_156_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
5
"0
#1
$2"
trackable_list_wrapper
5
"0
#1
$2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
,	variables
-trainable_variables
.regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
.__inference_lstm_cell_156_layer_call_fn_842883
.__inference_lstm_cell_156_layer_call_fn_842900?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_842932
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_842964?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	Dtotal
	Ecount
F	variables
G	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
D0
E1"
trackable_list_wrapper
-
F	variables"
_generic_user_object
':%22Adam/dense_156/kernel/m
!:2Adam/dense_156/bias/m
5:3	?2$Adam/lstm_156/lstm_cell_156/kernel/m
?:=	2?2.Adam/lstm_156/lstm_cell_156/recurrent_kernel/m
/:-?2"Adam/lstm_156/lstm_cell_156/bias/m
':%22Adam/dense_156/kernel/v
!:2Adam/dense_156/bias/v
5:3	?2$Adam/lstm_156/lstm_cell_156/kernel/v
?:=	2?2.Adam/lstm_156/lstm_cell_156/recurrent_kernel/v
/:-?2"Adam/lstm_156/lstm_cell_156/bias/v?
!__inference__wrapped_model_841075{"#$;?8
1?.
,?)
lstm_156_input?????????2
? "5?2
0
	dense_156#? 
	dense_156??????????
E__inference_dense_156_layer_call_and_return_conditional_losses_842866\/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????
? }
*__inference_dense_156_layer_call_fn_842856O/?,
%?"
 ?
inputs?????????2
? "???????????
D__inference_lstm_156_layer_call_and_return_conditional_losses_842418}"#$O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "%?"
?
0?????????2
? ?
D__inference_lstm_156_layer_call_and_return_conditional_losses_842561}"#$O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "%?"
?
0?????????2
? ?
D__inference_lstm_156_layer_call_and_return_conditional_losses_842704m"#$??<
5?2
$?!
inputs?????????2

 
p 

 
? "%?"
?
0?????????2
? ?
D__inference_lstm_156_layer_call_and_return_conditional_losses_842847m"#$??<
5?2
$?!
inputs?????????2

 
p

 
? "%?"
?
0?????????2
? ?
)__inference_lstm_156_layer_call_fn_842242p"#$O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "??????????2?
)__inference_lstm_156_layer_call_fn_842253p"#$O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "??????????2?
)__inference_lstm_156_layer_call_fn_842264`"#$??<
5?2
$?!
inputs?????????2

 
p 

 
? "??????????2?
)__inference_lstm_156_layer_call_fn_842275`"#$??<
5?2
$?!
inputs?????????2

 
p

 
? "??????????2?
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_842932?"#$??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????2
"?
states/1?????????2
p 
? "s?p
i?f
?
0/0?????????2
E?B
?
0/1/0?????????2
?
0/1/1?????????2
? ?
I__inference_lstm_cell_156_layer_call_and_return_conditional_losses_842964?"#$??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????2
"?
states/1?????????2
p
? "s?p
i?f
?
0/0?????????2
E?B
?
0/1/0?????????2
?
0/1/1?????????2
? ?
.__inference_lstm_cell_156_layer_call_fn_842883?"#$??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????2
"?
states/1?????????2
p 
? "c?`
?
0?????????2
A?>
?
1/0?????????2
?
1/1?????????2?
.__inference_lstm_cell_156_layer_call_fn_842900?"#$??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????2
"?
states/1?????????2
p
? "c?`
?
0?????????2
A?>
?
1/0?????????2
?
1/1?????????2?
J__inference_sequential_125_layer_call_and_return_conditional_losses_841864s"#$C?@
9?6
,?)
lstm_156_input?????????2
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_125_layer_call_and_return_conditional_losses_841880s"#$C?@
9?6
,?)
lstm_156_input?????????2
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_125_layer_call_and_return_conditional_losses_842065k"#$;?8
1?.
$?!
inputs?????????2
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_125_layer_call_and_return_conditional_losses_842214k"#$;?8
1?.
$?!
inputs?????????2
p

 
? "%?"
?
0?????????
? ?
/__inference_sequential_125_layer_call_fn_841612f"#$C?@
9?6
,?)
lstm_156_input?????????2
p 

 
? "???????????
/__inference_sequential_125_layer_call_fn_841848f"#$C?@
9?6
,?)
lstm_156_input?????????2
p

 
? "???????????
/__inference_sequential_125_layer_call_fn_841901^"#$;?8
1?.
$?!
inputs?????????2
p 

 
? "???????????
/__inference_sequential_125_layer_call_fn_841916^"#$;?8
1?.
$?!
inputs?????????2
p

 
? "???????????
$__inference_signature_wrapper_842231?"#$M?J
? 
C?@
>
lstm_156_input,?)
lstm_156_input?????????2"5?2
0
	dense_156#? 
	dense_156?????????