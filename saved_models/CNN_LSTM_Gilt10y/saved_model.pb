╠Ц<
┬ Ш 
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
│
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
<
Selu
features"T
activations"T"
Ttype:
2
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
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
╛
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
executor_typestring И
Ъ
StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
Ў
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
-
Tanh
x"T
y"T"
Ttype:

2
Т
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
Б
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.5.02v2.5.0-0-ga4dfb8d1a718╪з9
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	А*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
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
П
time_distributed/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nametime_distributed/kernel
И
+time_distributed/kernel/Read/ReadVariableOpReadVariableOptime_distributed/kernel*#
_output_shapes
:А*
dtype0
Г
time_distributed/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nametime_distributed/bias
|
)time_distributed/bias/Read/ReadVariableOpReadVariableOptime_distributed/bias*
_output_shapes	
:А*
dtype0
И
lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*&
shared_namelstm/lstm_cell/kernel
Б
)lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/kernel* 
_output_shapes
:
АА*
dtype0
Ь
lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*0
shared_name!lstm/lstm_cell/recurrent_kernel
Х
3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/recurrent_kernel* 
_output_shapes
:
АА*
dtype0

lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_namelstm/lstm_cell/bias
x
'lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell/bias*
_output_shapes	
:А*
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
Г
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	А*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
Э
Adam/time_distributed/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*/
shared_name Adam/time_distributed/kernel/m
Ц
2Adam/time_distributed/kernel/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed/kernel/m*#
_output_shapes
:А*
dtype0
С
Adam/time_distributed/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*-
shared_nameAdam/time_distributed/bias/m
К
0Adam/time_distributed/bias/m/Read/ReadVariableOpReadVariableOpAdam/time_distributed/bias/m*
_output_shapes	
:А*
dtype0
Ц
Adam/lstm/lstm_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*-
shared_nameAdam/lstm/lstm_cell/kernel/m
П
0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/m* 
_output_shapes
:
АА*
dtype0
к
&Adam/lstm/lstm_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/m
г
:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/m* 
_output_shapes
:
АА*
dtype0
Н
Adam/lstm/lstm_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_nameAdam/lstm/lstm_cell/bias/m
Ж
.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/m*
_output_shapes	
:А*
dtype0
Г
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	А*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0
Э
Adam/time_distributed/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*/
shared_name Adam/time_distributed/kernel/v
Ц
2Adam/time_distributed/kernel/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed/kernel/v*#
_output_shapes
:А*
dtype0
С
Adam/time_distributed/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*-
shared_nameAdam/time_distributed/bias/v
К
0Adam/time_distributed/bias/v/Read/ReadVariableOpReadVariableOpAdam/time_distributed/bias/v*
_output_shapes	
:А*
dtype0
Ц
Adam/lstm/lstm_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*-
shared_nameAdam/lstm/lstm_cell/kernel/v
П
0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/v* 
_output_shapes
:
АА*
dtype0
к
&Adam/lstm/lstm_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/v
г
:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/v* 
_output_shapes
:
АА*
dtype0
Н
Adam/lstm/lstm_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_nameAdam/lstm/lstm_cell/bias/v
Ж
.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/v*
_output_shapes	
:А*
dtype0

NoOpNoOp
╥6
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Н6
valueГ6BА6 B∙5
Н
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
	optimizer
	variables
	regularization_losses

trainable_variables
	keras_api

signatures
]
	layer
regularization_losses
	variables
trainable_variables
	keras_api
]
	layer
regularization_losses
	variables
trainable_variables
	keras_api
]
	layer
regularization_losses
	variables
trainable_variables
	keras_api
l
cell

state_spec
	variables
regularization_losses
 trainable_variables
!	keras_api
R
"regularization_losses
#	variables
$trainable_variables
%	keras_api
h

&kernel
'bias
(regularization_losses
)	variables
*trainable_variables
+	keras_api
╠
,iter

-beta_1

.beta_2
	/decay
0learning_rate&mД'mЕ1mЖ2mЗ3mИ4mЙ5mК&vЛ'vМ1vН2vО3vП4vР5vС
1
10
21
32
43
54
&5
'6
 
1
10
21
32
43
54
&5
'6
н
6layer_regularization_losses
	variables
	regularization_losses

trainable_variables
7non_trainable_variables
8metrics

9layers
:layer_metrics
 
h

1kernel
2bias
;regularization_losses
<	variables
=trainable_variables
>	keras_api
 

10
21

10
21
н
?layer_regularization_losses
regularization_losses
	variables
trainable_variables
@non_trainable_variables
Ametrics

Blayers
Clayer_metrics
R
Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
 
 
 
н
Hlayer_regularization_losses
regularization_losses
	variables
trainable_variables
Inon_trainable_variables
Jmetrics

Klayers
Llayer_metrics
R
Mregularization_losses
N	variables
Otrainable_variables
P	keras_api
 
 
 
н
Qlayer_regularization_losses
regularization_losses
	variables
trainable_variables
Rnon_trainable_variables
Smetrics

Tlayers
Ulayer_metrics
О
V
state_size

3kernel
4recurrent_kernel
5bias
Wregularization_losses
X	variables
Ytrainable_variables
Z	keras_api
 

30
41
52
 

30
41
52
╣
[layer_regularization_losses
	variables
regularization_losses

\states
 trainable_variables
]non_trainable_variables
^metrics

_layers
`layer_metrics
 
 
 
н
alayer_regularization_losses
"regularization_losses
#	variables
$trainable_variables
bnon_trainable_variables
cmetrics

dlayers
elayer_metrics
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

&0
'1

&0
'1
н
flayer_regularization_losses
(regularization_losses
)	variables
*trainable_variables
gnon_trainable_variables
hmetrics

ilayers
jlayer_metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEtime_distributed/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEtime_distributed/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUElstm/lstm_cell/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUElstm/lstm_cell/recurrent_kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUElstm/lstm_cell/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE
 
 

k0
*
0
1
2
3
4
5
 
 

10
21

10
21
н
llayer_regularization_losses
;regularization_losses
<	variables
=trainable_variables
mnon_trainable_variables
nmetrics

olayers
player_metrics
 
 
 

0
 
 
 
 
н
qlayer_regularization_losses
Dregularization_losses
E	variables
Ftrainable_variables
rnon_trainable_variables
smetrics

tlayers
ulayer_metrics
 
 
 

0
 
 
 
 
н
vlayer_regularization_losses
Mregularization_losses
N	variables
Otrainable_variables
wnon_trainable_variables
xmetrics

ylayers
zlayer_metrics
 
 
 

0
 
 
 

30
41
52

30
41
52
н
{layer_regularization_losses
Wregularization_losses
X	variables
Ytrainable_variables
|non_trainable_variables
}metrics

~layers
layer_metrics
 
 
 
 

0
 
 
 
 
 
 
 
 
 
 
 
8

Аtotal

Бcount
В	variables
Г	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

А0
Б1

В	variables
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/time_distributed/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/time_distributed/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/time_distributed/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/time_distributed/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
л
&serving_default_time_distributed_inputPlaceholder*8
_output_shapes&
$:"                  *
dtype0*-
shape$:"                  
щ
StatefulPartitionedCallStatefulPartitionedCall&serving_default_time_distributed_inputtime_distributed/kerneltime_distributed/biaslstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biasdense/kernel
dense/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_380266
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ф
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp+time_distributed/kernel/Read/ReadVariableOp)time_distributed/bias/Read/ReadVariableOp)lstm/lstm_cell/kernel/Read/ReadVariableOp3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp'lstm/lstm_cell/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp2Adam/time_distributed/kernel/m/Read/ReadVariableOp0Adam/time_distributed/bias/m/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp2Adam/time_distributed/kernel/v/Read/ReadVariableOp0Adam/time_distributed/bias/v/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpConst*)
Tin"
 2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference__traced_save_383454
п
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetime_distributed/kerneltime_distributed/biaslstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biastotalcountAdam/dense/kernel/mAdam/dense/bias/mAdam/time_distributed/kernel/mAdam/time_distributed/bias/mAdam/lstm/lstm_cell/kernel/m&Adam/lstm/lstm_cell/recurrent_kernel/mAdam/lstm/lstm_cell/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/time_distributed/kernel/vAdam/time_distributed/bias/vAdam/lstm/lstm_cell/kernel/v&Adam/lstm/lstm_cell/recurrent_kernel/vAdam/lstm/lstm_cell/bias/v*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *+
f&R$
"__inference__traced_restore_383548хЮ8
ы
╢
%__inference_lstm_layer_call_fn_381503
inputs_0
unknown:
АА
	unknown_0:
АА
	unknown_1:	А
identityИвStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_3782092
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:                  А
"
_user_specified_name
inputs/0
н
j
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_381417

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slices
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2
Reshape/shapet
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:         А2	
Reshape~
max_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
max_pooling1d/ExpandDims/dim╢
max_pooling1d/ExpandDims
ExpandDimsReshape:output:0%max_pooling1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         А2
max_pooling1d/ExpandDims╩
max_pooling1d/MaxPoolMaxPool!max_pooling1d/ExpandDims:output:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2
max_pooling1d/MaxPoolз
max_pooling1d/SqueezeSqueezemax_pooling1d/MaxPool:output:0*
T0*,
_output_shapes
:         А*
squeeze_dims
2
max_pooling1d/Squeezeq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2i
Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А2
Reshape_1/shape/3─
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeЯ
	Reshape_1Reshapemax_pooling1d/Squeeze:output:0Reshape_1/shape:output:0*
T0*9
_output_shapes'
%:#                  А2
	Reshape_1x
IdentityIdentityReshape_1:output:0*
T0*9
_output_shapes'
%:#                  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:#                  А:a ]
9
_output_shapes'
%:#                  А
 
_user_specified_nameinputs
ЁT
д
'__forward_gpu_lstm_with_fallback_380080

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimА

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         А2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЖ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         А2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЩ
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimй
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:А:А:А:А:А:А:А:А*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_1e
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АА2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:А2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:А2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:А2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:А2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:А2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:А2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisР

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1ц
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  А:         А:         А:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permХ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2	
SqueezeА
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         А2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_a48b67aa-8aee-4f44-aaa8-90b674fcf8d0*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_379905_380081*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
цA
└
 __inference_standard_lstm_381687

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2¤
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         А2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         А2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         А2
	Sigmoid_1[
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         А2
mulW
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         А2
Tanh_
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         А2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         А2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         А2
	Sigmoid_2V
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         А2
Tanh_1c
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         А2
mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2
TensorArrayV2_1/element_shape╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterк
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*g
_output_shapesU
S: : : : :         А:         А: : :
АА:
АА:А* 
_read_only_resource_inputs
 *
bodyR
while_body_381602*
condR
while_cond_381601*f
output_shapesU
S: : : : :         А:         А: : :
АА:
АА:А*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   22
0TensorArrayV2Stack/TensorListStack/element_shapeЄ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Ы
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permп
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         А2

Identity_2g

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_292440eb-75f4-4dc9-a58d-fc1ccc5b9fea*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
Ї
a
C__inference_dropout_layer_call_and_return_conditional_losses_383280

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
И-
╧
while_body_382472
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         А2
while/MatMulХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         А2
while/MatMul_1Д
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
	while/addБ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         А2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim█
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
while/splitr
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         А2
while/Sigmoidv
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         А2
while/Sigmoid_1z
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         А2
	while/muli

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         А2

while/Tanhw
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         А2
while/mul_1v
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         А2
while/add_1v
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         А2
while/Sigmoid_2h
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         А2
while/Tanh_1{
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         А2
while/mul_2╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         А2
while/Identity_4t
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         А2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S: : : : :         А:         А: : :
АА:
АА:А: 
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
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
АА:&	"
 
_output_shapes
:
АА:!


_output_shapes	
:А
цA
└
 __inference_standard_lstm_381026

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2¤
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         А2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         А2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         А2
	Sigmoid_1[
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         А2
mulW
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         А2
Tanh_
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         А2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         А2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         А2
	Sigmoid_2V
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         А2
Tanh_1c
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         А2
mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2
TensorArrayV2_1/element_shape╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterк
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*g
_output_shapesU
S: : : : :         А:         А: : :
АА:
АА:А* 
_read_only_resource_inputs
 *
bodyR
while_body_380941*
condR
while_cond_380940*f
output_shapesU
S: : : : :         А:         А: : :
АА:
АА:А*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   22
0TensorArrayV2Stack/TensorListStack/element_shapeЄ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Ы
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permп
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         А2

Identity_2g

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_0b7a119e-567e-4fd7-a86b-8cfad7f34af1*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
нц
є
;__inference___backward_gpu_lstm_with_fallback_376775_376951
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5Иv
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         А2
gradients/grad_ys_0Е
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  А2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         А2
gradients/grad_ys_2x
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         А2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end╕
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides▄
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  А*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationщ
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  А2&
$gradients/transpose_9_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╟
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         А2 
gradients/Squeeze_grad/ReshapeЧ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape═
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         А2"
 gradients/Squeeze_1_grad/ReshapeХ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  А2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like╣
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*m
_output_shapes[
Y:                  А:         А:         А:АИ<2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationА
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  А2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeы
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         А2#
!gradients/ExpandDims_grad/ReshapeЮ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeё
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         А2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modК
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:АА2
gradients/concat_1_grad/ShapeО
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_1О
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_2О
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_3О
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_4О
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_5О
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_6О
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_7Н
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_8Н
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_9П
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_10П
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_11П
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_12П
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_13П
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_14П
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetО
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:АА2
gradients/concat_1_grad/SliceФ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_1Ф
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_2Ф
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_3Ф
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_4Ф
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_5Ф
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_6Ф
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_7У
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_8У
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_9Ч
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_10Ч
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_11Ч
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_12Ч
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_13Ч
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_14Ч
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_15Н
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2
gradients/Reshape_grad/Shape┼
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2 
gradients/Reshape_grad/ReshapeС
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_1_grad/Shape═
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_2_grad/Shape═
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_3_grad/Shape═
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_4_grad/Shape═
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_5_grad/Shape═
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_6_grad/Shape═
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_6_grad/ReshapeС
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_7_grad/Shape═
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_7_grad/ReshapeЛ
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2 
gradients/Reshape_8_grad/Shape╚
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:А2"
 gradients/Reshape_8_grad/ReshapeЛ
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2 
gradients/Reshape_9_grad/Shape╚
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:А2"
 gradients/Reshape_9_grad/ReshapeН
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_10_grad/Shape╠
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_10_grad/ReshapeН
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_11_grad/Shape╠
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_11_grad/ReshapeН
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_12_grad/Shape╠
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_12_grad/ReshapeН
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_13_grad/Shape╠
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_13_grad/ReshapeН
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_14_grad/Shape╠
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_14_grad/ReshapeН
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_15_grad/Shape╠
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationс
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationс
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationс
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationс
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationс
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationс
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationс
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_8_grad/transposeИ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А2
gradients/split_2_grad/concat╧
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
АА2
gradients/split_grad/concat╫
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
АА2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/Shape_1Ё
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Sliceў
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Slice_1И
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:                  А2

IdentityГ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         А2

Identity_1Е

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         А2

Identity_2u

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
АА2

Identity_3w

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
АА2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapes■
√:         А:                  А:         А:         А: :                  А::         А:         А::                  А:         А:         А:АИ<::         А:         А: ::::::::: : : : *=
api_implements+)lstm_92e7a4b7-b705-4ad9-b605-891e2d6722ba*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_376950*
go_backwards( *

time_major( :. *
(
_output_shapes
:         А:;7
5
_output_shapes#
!:                  А:.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :;7
5
_output_shapes#
!:                  А: 

_output_shapes
::2.
,
_output_shapes
:         А:2.
,
_output_shapes
:         А:	

_output_shapes
::;
7
5
_output_shapes#
!:                  А:2.
,
_output_shapes
:         А:2.
,
_output_shapes
:         А:"

_output_shapes

:АИ<: 

_output_shapes
::.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
╡	
┴
while_cond_382906
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_382906___redundant_placeholder04
0while_while_cond_382906___redundant_placeholder14
0while_while_cond_382906___redundant_placeholder24
0while_while_cond_382906___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         А:         А: ::::: 
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
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ЫI
╠
)__inference_gpu_lstm_with_fallback_379374

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         А2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimД
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         А2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЩ
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimй
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:А:А:А:А:А:А:А:А*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_1e
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АА2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:А2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:А2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:А2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:А2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:А2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:А2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisм
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:АИ<2

concat_1т
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  А:         А:         А:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permХ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2	
SqueezeА
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         А2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_0b0184b3-494e-4b6e-a378-dd4700854b6d*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
╡	
┴
while_cond_379194
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_379194___redundant_placeholder04
0while_while_cond_379194___redundant_placeholder14
0while_while_cond_379194___redundant_placeholder24
0while_while_cond_379194___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         А:         А: ::::: 
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
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
м#
╝
@__inference_lstm_layer_call_and_return_conditional_losses_378209

inputs0
read_readvariableop_resource:
АА2
read_1_readvariableop_resource:
АА-
read_2_readvariableop_resource:	А

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         А2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         А2	
zeros_1Й
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
Read/ReadVariableOph
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АА2

IdentityП
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
Read_1/ReadVariableOpn

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АА2

Identity_1К
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:А*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2

Identity_2╒
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         А:                  А:         А:         А: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference_standard_lstm_3779362
PartitionedCall╖

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity_3"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  А: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs
▀и
а
!__inference__wrapped_model_376960
time_distributed_inpute
Nsequential_time_distributed_conv1d_conv1d_expanddims_1_readvariableop_resource:АQ
Bsequential_time_distributed_conv1d_biasadd_readvariableop_resource:	А@
,sequential_lstm_read_readvariableop_resource:
ААB
.sequential_lstm_read_1_readvariableop_resource:
АА=
.sequential_lstm_read_2_readvariableop_resource:	АB
/sequential_dense_matmul_readvariableop_resource:	А>
0sequential_dense_biasadd_readvariableop_resource:
identityИв'sequential/dense/BiasAdd/ReadVariableOpв&sequential/dense/MatMul/ReadVariableOpв#sequential/lstm/Read/ReadVariableOpв%sequential/lstm/Read_1/ReadVariableOpв%sequential/lstm/Read_2/ReadVariableOpв9sequential/time_distributed/conv1d/BiasAdd/ReadVariableOpвEsequential/time_distributed/conv1d/conv1d/ExpandDims_1/ReadVariableOpМ
!sequential/time_distributed/ShapeShapetime_distributed_input*
T0*
_output_shapes
:2#
!sequential/time_distributed/Shapeм
/sequential/time_distributed/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/sequential/time_distributed/strided_slice/stack░
1sequential/time_distributed/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential/time_distributed/strided_slice/stack_1░
1sequential/time_distributed/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1sequential/time_distributed/strided_slice/stack_2К
)sequential/time_distributed/strided_sliceStridedSlice*sequential/time_distributed/Shape:output:08sequential/time_distributed/strided_slice/stack:output:0:sequential/time_distributed/strided_slice/stack_1:output:0:sequential/time_distributed/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)sequential/time_distributed/strided_sliceл
)sequential/time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2+
)sequential/time_distributed/Reshape/shape╫
#sequential/time_distributed/ReshapeReshapetime_distributed_input2sequential/time_distributed/Reshape/shape:output:0*
T0*+
_output_shapes
:         2%
#sequential/time_distributed/Reshape┐
8sequential/time_distributed/conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        2:
8sequential/time_distributed/conv1d/conv1d/ExpandDims/dimе
4sequential/time_distributed/conv1d/conv1d/ExpandDims
ExpandDims,sequential/time_distributed/Reshape:output:0Asequential/time_distributed/conv1d/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:         26
4sequential/time_distributed/conv1d/conv1d/ExpandDimsв
Esequential/time_distributed/conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpNsequential_time_distributed_conv1d_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:А*
dtype02G
Esequential/time_distributed/conv1d/conv1d/ExpandDims_1/ReadVariableOp║
:sequential/time_distributed/conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2<
:sequential/time_distributed/conv1d/conv1d/ExpandDims_1/dim─
6sequential/time_distributed/conv1d/conv1d/ExpandDims_1
ExpandDimsMsequential/time_distributed/conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:0Csequential/time_distributed/conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:А28
6sequential/time_distributed/conv1d/conv1d/ExpandDims_1─
)sequential/time_distributed/conv1d/conv1dConv2D=sequential/time_distributed/conv1d/conv1d/ExpandDims:output:0?sequential/time_distributed/conv1d/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2+
)sequential/time_distributed/conv1d/conv1d№
1sequential/time_distributed/conv1d/conv1d/SqueezeSqueeze2sequential/time_distributed/conv1d/conv1d:output:0*
T0*,
_output_shapes
:         А*
squeeze_dims

¤        23
1sequential/time_distributed/conv1d/conv1d/SqueezeЎ
9sequential/time_distributed/conv1d/BiasAdd/ReadVariableOpReadVariableOpBsequential_time_distributed_conv1d_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02;
9sequential/time_distributed/conv1d/BiasAdd/ReadVariableOpЩ
*sequential/time_distributed/conv1d/BiasAddBiasAdd:sequential/time_distributed/conv1d/conv1d/Squeeze:output:0Asequential/time_distributed/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         А2,
*sequential/time_distributed/conv1d/BiasAdd╞
'sequential/time_distributed/conv1d/SeluSelu3sequential/time_distributed/conv1d/BiasAdd:output:0*
T0*,
_output_shapes
:         А2)
'sequential/time_distributed/conv1d/Seluй
-sequential/time_distributed/Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2/
-sequential/time_distributed/Reshape_1/shape/0а
-sequential/time_distributed/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2/
-sequential/time_distributed/Reshape_1/shape/2б
-sequential/time_distributed/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А2/
-sequential/time_distributed/Reshape_1/shape/3ь
+sequential/time_distributed/Reshape_1/shapePack6sequential/time_distributed/Reshape_1/shape/0:output:02sequential/time_distributed/strided_slice:output:06sequential/time_distributed/Reshape_1/shape/2:output:06sequential/time_distributed/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:2-
+sequential/time_distributed/Reshape_1/shapeК
%sequential/time_distributed/Reshape_1Reshape5sequential/time_distributed/conv1d/Selu:activations:04sequential/time_distributed/Reshape_1/shape:output:0*
T0*9
_output_shapes'
%:#                  А2'
%sequential/time_distributed/Reshape_1п
+sequential/time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2-
+sequential/time_distributed/Reshape_2/shape▌
%sequential/time_distributed/Reshape_2Reshapetime_distributed_input4sequential/time_distributed/Reshape_2/shape:output:0*
T0*+
_output_shapes
:         2'
%sequential/time_distributed/Reshape_2и
#sequential/time_distributed_1/ShapeShape.sequential/time_distributed/Reshape_1:output:0*
T0*
_output_shapes
:2%
#sequential/time_distributed_1/Shape░
1sequential/time_distributed_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:23
1sequential/time_distributed_1/strided_slice/stack┤
3sequential/time_distributed_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential/time_distributed_1/strided_slice/stack_1┤
3sequential/time_distributed_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential/time_distributed_1/strided_slice/stack_2Ц
+sequential/time_distributed_1/strided_sliceStridedSlice,sequential/time_distributed_1/Shape:output:0:sequential/time_distributed_1/strided_slice/stack:output:0<sequential/time_distributed_1/strided_slice/stack_1:output:0<sequential/time_distributed_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential/time_distributed_1/strided_sliceп
+sequential/time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2-
+sequential/time_distributed_1/Reshape/shapeЎ
%sequential/time_distributed_1/ReshapeReshape.sequential/time_distributed/Reshape_1:output:04sequential/time_distributed_1/Reshape/shape:output:0*
T0*,
_output_shapes
:         А2'
%sequential/time_distributed_1/Reshape║
:sequential/time_distributed_1/max_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2<
:sequential/time_distributed_1/max_pooling1d/ExpandDims/dimо
6sequential/time_distributed_1/max_pooling1d/ExpandDims
ExpandDims.sequential/time_distributed_1/Reshape:output:0Csequential/time_distributed_1/max_pooling1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         А28
6sequential/time_distributed_1/max_pooling1d/ExpandDimsд
3sequential/time_distributed_1/max_pooling1d/MaxPoolMaxPool?sequential/time_distributed_1/max_pooling1d/ExpandDims:output:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
25
3sequential/time_distributed_1/max_pooling1d/MaxPoolБ
3sequential/time_distributed_1/max_pooling1d/SqueezeSqueeze<sequential/time_distributed_1/max_pooling1d/MaxPool:output:0*
T0*,
_output_shapes
:         А*
squeeze_dims
25
3sequential/time_distributed_1/max_pooling1d/Squeezeн
/sequential/time_distributed_1/Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         21
/sequential/time_distributed_1/Reshape_1/shape/0д
/sequential/time_distributed_1/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :21
/sequential/time_distributed_1/Reshape_1/shape/2е
/sequential/time_distributed_1/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А21
/sequential/time_distributed_1/Reshape_1/shape/3°
-sequential/time_distributed_1/Reshape_1/shapePack8sequential/time_distributed_1/Reshape_1/shape/0:output:04sequential/time_distributed_1/strided_slice:output:08sequential/time_distributed_1/Reshape_1/shape/2:output:08sequential/time_distributed_1/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:2/
-sequential/time_distributed_1/Reshape_1/shapeЧ
'sequential/time_distributed_1/Reshape_1Reshape<sequential/time_distributed_1/max_pooling1d/Squeeze:output:06sequential/time_distributed_1/Reshape_1/shape:output:0*
T0*9
_output_shapes'
%:#                  А2)
'sequential/time_distributed_1/Reshape_1│
-sequential/time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2/
-sequential/time_distributed_1/Reshape_2/shape№
'sequential/time_distributed_1/Reshape_2Reshape.sequential/time_distributed/Reshape_1:output:06sequential/time_distributed_1/Reshape_2/shape:output:0*
T0*,
_output_shapes
:         А2)
'sequential/time_distributed_1/Reshape_2к
#sequential/time_distributed_2/ShapeShape0sequential/time_distributed_1/Reshape_1:output:0*
T0*
_output_shapes
:2%
#sequential/time_distributed_2/Shape░
1sequential/time_distributed_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:23
1sequential/time_distributed_2/strided_slice/stack┤
3sequential/time_distributed_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential/time_distributed_2/strided_slice/stack_1┤
3sequential/time_distributed_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential/time_distributed_2/strided_slice/stack_2Ц
+sequential/time_distributed_2/strided_sliceStridedSlice,sequential/time_distributed_2/Shape:output:0:sequential/time_distributed_2/strided_slice/stack:output:0<sequential/time_distributed_2/strided_slice/stack_1:output:0<sequential/time_distributed_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential/time_distributed_2/strided_sliceп
+sequential/time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2-
+sequential/time_distributed_2/Reshape/shape°
%sequential/time_distributed_2/ReshapeReshape0sequential/time_distributed_1/Reshape_1:output:04sequential/time_distributed_2/Reshape/shape:output:0*
T0*,
_output_shapes
:         А2'
%sequential/time_distributed_2/Reshapeл
+sequential/time_distributed_2/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+sequential/time_distributed_2/flatten/ConstВ
-sequential/time_distributed_2/flatten/ReshapeReshape.sequential/time_distributed_2/Reshape:output:04sequential/time_distributed_2/flatten/Const:output:0*
T0*(
_output_shapes
:         А2/
-sequential/time_distributed_2/flatten/Reshapeн
/sequential/time_distributed_2/Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         21
/sequential/time_distributed_2/Reshape_1/shape/0е
/sequential/time_distributed_2/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :А21
/sequential/time_distributed_2/Reshape_1/shape/2╛
-sequential/time_distributed_2/Reshape_1/shapePack8sequential/time_distributed_2/Reshape_1/shape/0:output:04sequential/time_distributed_2/strided_slice:output:08sequential/time_distributed_2/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2/
-sequential/time_distributed_2/Reshape_1/shapeН
'sequential/time_distributed_2/Reshape_1Reshape6sequential/time_distributed_2/flatten/Reshape:output:06sequential/time_distributed_2/Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:                  А2)
'sequential/time_distributed_2/Reshape_1│
-sequential/time_distributed_2/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2/
-sequential/time_distributed_2/Reshape_2/shape■
'sequential/time_distributed_2/Reshape_2Reshape0sequential/time_distributed_1/Reshape_1:output:06sequential/time_distributed_2/Reshape_2/shape:output:0*
T0*,
_output_shapes
:         А2)
'sequential/time_distributed_2/Reshape_2О
sequential/lstm/ShapeShape0sequential/time_distributed_2/Reshape_1:output:0*
T0*
_output_shapes
:2
sequential/lstm/ShapeФ
#sequential/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#sequential/lstm/strided_slice/stackШ
%sequential/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%sequential/lstm/strided_slice/stack_1Ш
%sequential/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%sequential/lstm/strided_slice/stack_2┬
sequential/lstm/strided_sliceStridedSlicesequential/lstm/Shape:output:0,sequential/lstm/strided_slice/stack:output:0.sequential/lstm/strided_slice/stack_1:output:0.sequential/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sequential/lstm/strided_slice}
sequential/lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
sequential/lstm/zeros/mul/yм
sequential/lstm/zeros/mulMul&sequential/lstm/strided_slice:output:0$sequential/lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros/mul
sequential/lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
sequential/lstm/zeros/Less/yз
sequential/lstm/zeros/LessLesssequential/lstm/zeros/mul:z:0%sequential/lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros/LessГ
sequential/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2 
sequential/lstm/zeros/packed/1├
sequential/lstm/zeros/packedPack&sequential/lstm/strided_slice:output:0'sequential/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
sequential/lstm/zeros/packed
sequential/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/lstm/zeros/Const╢
sequential/lstm/zerosFill%sequential/lstm/zeros/packed:output:0$sequential/lstm/zeros/Const:output:0*
T0*(
_output_shapes
:         А2
sequential/lstm/zerosБ
sequential/lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
sequential/lstm/zeros_1/mul/y▓
sequential/lstm/zeros_1/mulMul&sequential/lstm/strided_slice:output:0&sequential/lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros_1/mulГ
sequential/lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2 
sequential/lstm/zeros_1/Less/yп
sequential/lstm/zeros_1/LessLesssequential/lstm/zeros_1/mul:z:0'sequential/lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros_1/LessЗ
 sequential/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2"
 sequential/lstm/zeros_1/packed/1╔
sequential/lstm/zeros_1/packedPack&sequential/lstm/strided_slice:output:0)sequential/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2 
sequential/lstm/zeros_1/packedГ
sequential/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/lstm/zeros_1/Const╛
sequential/lstm/zeros_1Fill'sequential/lstm/zeros_1/packed:output:0&sequential/lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:         А2
sequential/lstm/zeros_1╣
#sequential/lstm/Read/ReadVariableOpReadVariableOp,sequential_lstm_read_readvariableop_resource* 
_output_shapes
:
АА*
dtype02%
#sequential/lstm/Read/ReadVariableOpШ
sequential/lstm/IdentityIdentity+sequential/lstm/Read/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АА2
sequential/lstm/Identity┐
%sequential/lstm/Read_1/ReadVariableOpReadVariableOp.sequential_lstm_read_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02'
%sequential/lstm/Read_1/ReadVariableOpЮ
sequential/lstm/Identity_1Identity-sequential/lstm/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АА2
sequential/lstm/Identity_1║
%sequential/lstm/Read_2/ReadVariableOpReadVariableOp.sequential_lstm_read_2_readvariableop_resource*
_output_shapes	
:А*
dtype02'
%sequential/lstm/Read_2/ReadVariableOpЩ
sequential/lstm/Identity_2Identity-sequential/lstm/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
sequential/lstm/Identity_2я
sequential/lstm/PartitionedCallPartitionedCall0sequential/time_distributed_2/Reshape_1:output:0sequential/lstm/zeros:output:0 sequential/lstm/zeros_1:output:0!sequential/lstm/Identity:output:0#sequential/lstm/Identity_1:output:0#sequential/lstm/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         А:                  А:         А:         А: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference_standard_lstm_3766802!
sequential/lstm/PartitionedCallг
sequential/dropout/IdentityIdentity(sequential/lstm/PartitionedCall:output:0*
T0*(
_output_shapes
:         А2
sequential/dropout/Identity┴
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02(
&sequential/dense/MatMul/ReadVariableOp─
sequential/dense/MatMulMatMul$sequential/dropout/Identity:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential/dense/MatMul┐
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp┼
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential/dense/BiasAdd┬
IdentityIdentity!sequential/dense/BiasAdd:output:0(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp$^sequential/lstm/Read/ReadVariableOp&^sequential/lstm/Read_1/ReadVariableOp&^sequential/lstm/Read_2/ReadVariableOp:^sequential/time_distributed/conv1d/BiasAdd/ReadVariableOpF^sequential/time_distributed/conv1d/conv1d/ExpandDims_1/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:"                  : : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2J
#sequential/lstm/Read/ReadVariableOp#sequential/lstm/Read/ReadVariableOp2N
%sequential/lstm/Read_1/ReadVariableOp%sequential/lstm/Read_1/ReadVariableOp2N
%sequential/lstm/Read_2/ReadVariableOp%sequential/lstm/Read_2/ReadVariableOp2v
9sequential/time_distributed/conv1d/BiasAdd/ReadVariableOp9sequential/time_distributed/conv1d/BiasAdd/ReadVariableOp2О
Esequential/time_distributed/conv1d/conv1d/ExpandDims_1/ReadVariableOpEsequential/time_distributed/conv1d/conv1d/ExpandDims_1/ReadVariableOp:p l
8
_output_shapes&
$:"                  
0
_user_specified_nametime_distributed_input
дЦ
Ы
F__inference_sequential_layer_call_and_return_conditional_losses_381313

inputsZ
Ctime_distributed_conv1d_conv1d_expanddims_1_readvariableop_resource:АF
7time_distributed_conv1d_biasadd_readvariableop_resource:	А5
!lstm_read_readvariableop_resource:
АА7
#lstm_read_1_readvariableop_resource:
АА2
#lstm_read_2_readvariableop_resource:	А7
$dense_matmul_readvariableop_resource:	А3
%dense_biasadd_readvariableop_resource:
identityИвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpвlstm/Read/ReadVariableOpвlstm/Read_1/ReadVariableOpвlstm/Read_2/ReadVariableOpв.time_distributed/conv1d/BiasAdd/ReadVariableOpв:time_distributed/conv1d/conv1d/ExpandDims_1/ReadVariableOpf
time_distributed/ShapeShapeinputs*
T0*
_output_shapes
:2
time_distributed/ShapeЦ
$time_distributed/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2&
$time_distributed/strided_slice/stackЪ
&time_distributed/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&time_distributed/strided_slice/stack_1Ъ
&time_distributed/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&time_distributed/strided_slice/stack_2╚
time_distributed/strided_sliceStridedSlicetime_distributed/Shape:output:0-time_distributed/strided_slice/stack:output:0/time_distributed/strided_slice/stack_1:output:0/time_distributed/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
time_distributed/strided_sliceХ
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2 
time_distributed/Reshape/shapeж
time_distributed/ReshapeReshapeinputs'time_distributed/Reshape/shape:output:0*
T0*+
_output_shapes
:         2
time_distributed/Reshapeй
-time_distributed/conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        2/
-time_distributed/conv1d/conv1d/ExpandDims/dim∙
)time_distributed/conv1d/conv1d/ExpandDims
ExpandDims!time_distributed/Reshape:output:06time_distributed/conv1d/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:         2+
)time_distributed/conv1d/conv1d/ExpandDimsБ
:time_distributed/conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpCtime_distributed_conv1d_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:А*
dtype02<
:time_distributed/conv1d/conv1d/ExpandDims_1/ReadVariableOpд
/time_distributed/conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 21
/time_distributed/conv1d/conv1d/ExpandDims_1/dimШ
+time_distributed/conv1d/conv1d/ExpandDims_1
ExpandDimsBtime_distributed/conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:08time_distributed/conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:А2-
+time_distributed/conv1d/conv1d/ExpandDims_1Ш
time_distributed/conv1d/conv1dConv2D2time_distributed/conv1d/conv1d/ExpandDims:output:04time_distributed/conv1d/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2 
time_distributed/conv1d/conv1d█
&time_distributed/conv1d/conv1d/SqueezeSqueeze'time_distributed/conv1d/conv1d:output:0*
T0*,
_output_shapes
:         А*
squeeze_dims

¤        2(
&time_distributed/conv1d/conv1d/Squeeze╒
.time_distributed/conv1d/BiasAdd/ReadVariableOpReadVariableOp7time_distributed_conv1d_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype020
.time_distributed/conv1d/BiasAdd/ReadVariableOpэ
time_distributed/conv1d/BiasAddBiasAdd/time_distributed/conv1d/conv1d/Squeeze:output:06time_distributed/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         А2!
time_distributed/conv1d/BiasAddе
time_distributed/conv1d/SeluSelu(time_distributed/conv1d/BiasAdd:output:0*
T0*,
_output_shapes
:         А2
time_distributed/conv1d/SeluУ
"time_distributed/Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2$
"time_distributed/Reshape_1/shape/0К
"time_distributed/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2$
"time_distributed/Reshape_1/shape/2Л
"time_distributed/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А2$
"time_distributed/Reshape_1/shape/3к
 time_distributed/Reshape_1/shapePack+time_distributed/Reshape_1/shape/0:output:0'time_distributed/strided_slice:output:0+time_distributed/Reshape_1/shape/2:output:0+time_distributed/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:2"
 time_distributed/Reshape_1/shape▐
time_distributed/Reshape_1Reshape*time_distributed/conv1d/Selu:activations:0)time_distributed/Reshape_1/shape:output:0*
T0*9
_output_shapes'
%:#                  А2
time_distributed/Reshape_1Щ
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 time_distributed/Reshape_2/shapeм
time_distributed/Reshape_2Reshapeinputs)time_distributed/Reshape_2/shape:output:0*
T0*+
_output_shapes
:         2
time_distributed/Reshape_2З
time_distributed_1/ShapeShape#time_distributed/Reshape_1:output:0*
T0*
_output_shapes
:2
time_distributed_1/ShapeЪ
&time_distributed_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&time_distributed_1/strided_slice/stackЮ
(time_distributed_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(time_distributed_1/strided_slice/stack_1Ю
(time_distributed_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(time_distributed_1/strided_slice/stack_2╘
 time_distributed_1/strided_sliceStridedSlice!time_distributed_1/Shape:output:0/time_distributed_1/strided_slice/stack:output:01time_distributed_1/strided_slice/stack_1:output:01time_distributed_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 time_distributed_1/strided_sliceЩ
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2"
 time_distributed_1/Reshape/shape╩
time_distributed_1/ReshapeReshape#time_distributed/Reshape_1:output:0)time_distributed_1/Reshape/shape:output:0*
T0*,
_output_shapes
:         А2
time_distributed_1/Reshapeд
/time_distributed_1/max_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :21
/time_distributed_1/max_pooling1d/ExpandDims/dimВ
+time_distributed_1/max_pooling1d/ExpandDims
ExpandDims#time_distributed_1/Reshape:output:08time_distributed_1/max_pooling1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         А2-
+time_distributed_1/max_pooling1d/ExpandDimsГ
(time_distributed_1/max_pooling1d/MaxPoolMaxPool4time_distributed_1/max_pooling1d/ExpandDims:output:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2*
(time_distributed_1/max_pooling1d/MaxPoolр
(time_distributed_1/max_pooling1d/SqueezeSqueeze1time_distributed_1/max_pooling1d/MaxPool:output:0*
T0*,
_output_shapes
:         А*
squeeze_dims
2*
(time_distributed_1/max_pooling1d/SqueezeЧ
$time_distributed_1/Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2&
$time_distributed_1/Reshape_1/shape/0О
$time_distributed_1/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$time_distributed_1/Reshape_1/shape/2П
$time_distributed_1/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А2&
$time_distributed_1/Reshape_1/shape/3╢
"time_distributed_1/Reshape_1/shapePack-time_distributed_1/Reshape_1/shape/0:output:0)time_distributed_1/strided_slice:output:0-time_distributed_1/Reshape_1/shape/2:output:0-time_distributed_1/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:2$
"time_distributed_1/Reshape_1/shapeы
time_distributed_1/Reshape_1Reshape1time_distributed_1/max_pooling1d/Squeeze:output:0+time_distributed_1/Reshape_1/shape:output:0*
T0*9
_output_shapes'
%:#                  А2
time_distributed_1/Reshape_1Э
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2$
"time_distributed_1/Reshape_2/shape╨
time_distributed_1/Reshape_2Reshape#time_distributed/Reshape_1:output:0+time_distributed_1/Reshape_2/shape:output:0*
T0*,
_output_shapes
:         А2
time_distributed_1/Reshape_2Й
time_distributed_2/ShapeShape%time_distributed_1/Reshape_1:output:0*
T0*
_output_shapes
:2
time_distributed_2/ShapeЪ
&time_distributed_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&time_distributed_2/strided_slice/stackЮ
(time_distributed_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(time_distributed_2/strided_slice/stack_1Ю
(time_distributed_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(time_distributed_2/strided_slice/stack_2╘
 time_distributed_2/strided_sliceStridedSlice!time_distributed_2/Shape:output:0/time_distributed_2/strided_slice/stack:output:01time_distributed_2/strided_slice/stack_1:output:01time_distributed_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 time_distributed_2/strided_sliceЩ
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2"
 time_distributed_2/Reshape/shape╠
time_distributed_2/ReshapeReshape%time_distributed_1/Reshape_1:output:0)time_distributed_2/Reshape/shape:output:0*
T0*,
_output_shapes
:         А2
time_distributed_2/ReshapeХ
 time_distributed_2/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 time_distributed_2/flatten/Const╓
"time_distributed_2/flatten/ReshapeReshape#time_distributed_2/Reshape:output:0)time_distributed_2/flatten/Const:output:0*
T0*(
_output_shapes
:         А2$
"time_distributed_2/flatten/ReshapeЧ
$time_distributed_2/Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2&
$time_distributed_2/Reshape_1/shape/0П
$time_distributed_2/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :А2&
$time_distributed_2/Reshape_1/shape/2З
"time_distributed_2/Reshape_1/shapePack-time_distributed_2/Reshape_1/shape/0:output:0)time_distributed_2/strided_slice:output:0-time_distributed_2/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2$
"time_distributed_2/Reshape_1/shapeс
time_distributed_2/Reshape_1Reshape+time_distributed_2/flatten/Reshape:output:0+time_distributed_2/Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:                  А2
time_distributed_2/Reshape_1Э
"time_distributed_2/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2$
"time_distributed_2/Reshape_2/shape╥
time_distributed_2/Reshape_2Reshape%time_distributed_1/Reshape_1:output:0+time_distributed_2/Reshape_2/shape:output:0*
T0*,
_output_shapes
:         А2
time_distributed_2/Reshape_2m

lstm/ShapeShape%time_distributed_2/Reshape_1:output:0*
T0*
_output_shapes
:2

lstm/Shape~
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice/stackВ
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_1В
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_2А
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_sliceg
lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
lstm/zeros/mul/yА
lstm/zeros/mulMullstm/strided_slice:output:0lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/muli
lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm/zeros/Less/y{
lstm/zeros/LessLesslstm/zeros/mul:z:0lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/Lessm
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
lstm/zeros/packed/1Ч
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros/packedi
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros/ConstК

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*(
_output_shapes
:         А2

lstm/zerosk
lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
lstm/zeros_1/mul/yЖ
lstm/zeros_1/mulMullstm/strided_slice:output:0lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/mulm
lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm/zeros_1/Less/yГ
lstm/zeros_1/LessLesslstm/zeros_1/mul:z:0lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/Lessq
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
lstm/zeros_1/packed/1Э
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros_1/packedm
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros_1/ConstТ
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:         А2
lstm/zeros_1Ш
lstm/Read/ReadVariableOpReadVariableOp!lstm_read_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
lstm/Read/ReadVariableOpw
lstm/IdentityIdentity lstm/Read/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АА2
lstm/IdentityЮ
lstm/Read_1/ReadVariableOpReadVariableOp#lstm_read_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
lstm/Read_1/ReadVariableOp}
lstm/Identity_1Identity"lstm/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АА2
lstm/Identity_1Щ
lstm/Read_2/ReadVariableOpReadVariableOp#lstm_read_2_readvariableop_resource*
_output_shapes	
:А*
dtype02
lstm/Read_2/ReadVariableOpx
lstm/Identity_2Identity"lstm/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
lstm/Identity_2Ч
lstm/PartitionedCallPartitionedCall%time_distributed_2/Reshape_1:output:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/Identity:output:0lstm/Identity_1:output:0lstm/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         А:                  А:         А:         А: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference_standard_lstm_3810262
lstm/PartitionedCalls
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout/dropout/Constг
dropout/dropout/MulMullstm/PartitionedCall:output:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout/dropout/Mul{
dropout/dropout/ShapeShapelstm/PartitionedCall:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shape═
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype02.
,dropout/dropout/random_uniform/RandomUniformЕ
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2 
dropout/dropout/GreaterEqual/y▀
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2
dropout/dropout/GreaterEqualШ
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout/dropout/CastЫ
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout/dropout/Mul_1а
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
dense/MatMul/ReadVariableOpШ
dense/MatMulMatMuldropout/dropout/Mul_1:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense/MatMulЮ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOpЩ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense/BiasAddъ
IdentityIdentitydense/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^lstm/Read/ReadVariableOp^lstm/Read_1/ReadVariableOp^lstm/Read_2/ReadVariableOp/^time_distributed/conv1d/BiasAdd/ReadVariableOp;^time_distributed/conv1d/conv1d/ExpandDims_1/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:"                  : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp24
lstm/Read/ReadVariableOplstm/Read/ReadVariableOp28
lstm/Read_1/ReadVariableOplstm/Read_1/ReadVariableOp28
lstm/Read_2/ReadVariableOplstm/Read_2/ReadVariableOp2`
.time_distributed/conv1d/BiasAdd/ReadVariableOp.time_distributed/conv1d/BiasAdd/ReadVariableOp2x
:time_distributed/conv1d/conv1d/ExpandDims_1/ReadVariableOp:time_distributed/conv1d/conv1d/ExpandDims_1/ReadVariableOp:` \
8
_output_shapes&
$:"                  
 
_user_specified_nameinputs
д	
н
+__inference_sequential_layer_call_fn_380285

inputs
unknown:А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:
АА
	unknown_3:	А
	unknown_4:	А
	unknown_5:
identityИвStatefulPartitionedCall║
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_3795852
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:"                  : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
8
_output_shapes&
$:"                  
 
_user_specified_nameinputs
ё
╨
L__inference_time_distributed_layer_call_and_return_conditional_losses_377002

inputs$
conv1d_376991:А
conv1d_376993:	А
identityИвconv1d/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slices
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Reshape/shapes
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:         2	
ReshapeЬ
conv1d/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0conv1d_376991conv1d_376993*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_3769902 
conv1d/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2i
Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А2
Reshape_1/shape/3─
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeи
	Reshape_1Reshape'conv1d/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*9
_output_shapes'
%:#                  А2
	Reshape_1Щ
IdentityIdentityReshape_1:output:0^conv1d/StatefulPartitionedCall*
T0*9
_output_shapes'
%:#                  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:"                  : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall:` \
8
_output_shapes&
$:"                  
 
_user_specified_nameinputs
ЫI
╠
)__inference_gpu_lstm_with_fallback_380619

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         А2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimД
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         А2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЩ
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimй
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:А:А:А:А:А:А:А:А*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_1e
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АА2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:А2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:А2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:А2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:А2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:А2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:А2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisм
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:АИ<2

concat_1т
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  А:         А:         А:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permХ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2	
SqueezeА
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         А2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_3a90fb1d-3b6e-4cf2-a61c-a402e9212620*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
У
O
3__inference_time_distributed_2_layer_call_fn_381442

inputs
identity▌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_3772412
PartitionedCallz
IdentityIdentityPartitionedCall:output:0*
T0*5
_output_shapes#
!:                  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:#                  А:a ]
9
_output_shapes'
%:#                  А
 
_user_specified_nameinputs
ЁT
д
'__forward_gpu_lstm_with_fallback_379550

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimА

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         А2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЖ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         А2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЩ
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimй
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:А:А:А:А:А:А:А:А*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_1e
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АА2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:А2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:А2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:А2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:А2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:А2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:А2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisР

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1ц
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  А:         А:         А:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permХ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2	
SqueezeА
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         А2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_0b0184b3-494e-4b6e-a378-dd4700854b6d*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_379375_379551*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
нц
є
;__inference___backward_gpu_lstm_with_fallback_382217_382393
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5Иv
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         А2
gradients/grad_ys_0Е
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  А2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         А2
gradients/grad_ys_2x
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         А2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end╕
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides▄
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  А*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationщ
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  А2&
$gradients/transpose_9_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╟
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         А2 
gradients/Squeeze_grad/ReshapeЧ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape═
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         А2"
 gradients/Squeeze_1_grad/ReshapeХ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  А2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like╣
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*m
_output_shapes[
Y:                  А:         А:         А:АИ<2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationА
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  А2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeы
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         А2#
!gradients/ExpandDims_grad/ReshapeЮ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeё
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         А2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modК
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:АА2
gradients/concat_1_grad/ShapeО
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_1О
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_2О
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_3О
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_4О
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_5О
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_6О
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_7Н
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_8Н
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_9П
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_10П
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_11П
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_12П
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_13П
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_14П
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetО
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:АА2
gradients/concat_1_grad/SliceФ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_1Ф
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_2Ф
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_3Ф
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_4Ф
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_5Ф
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_6Ф
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_7У
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_8У
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_9Ч
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_10Ч
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_11Ч
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_12Ч
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_13Ч
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_14Ч
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_15Н
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2
gradients/Reshape_grad/Shape┼
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2 
gradients/Reshape_grad/ReshapeС
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_1_grad/Shape═
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_2_grad/Shape═
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_3_grad/Shape═
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_4_grad/Shape═
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_5_grad/Shape═
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_6_grad/Shape═
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_6_grad/ReshapeС
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_7_grad/Shape═
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_7_grad/ReshapeЛ
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2 
gradients/Reshape_8_grad/Shape╚
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:А2"
 gradients/Reshape_8_grad/ReshapeЛ
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2 
gradients/Reshape_9_grad/Shape╚
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:А2"
 gradients/Reshape_9_grad/ReshapeН
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_10_grad/Shape╠
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_10_grad/ReshapeН
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_11_grad/Shape╠
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_11_grad/ReshapeН
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_12_grad/Shape╠
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_12_grad/ReshapeН
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_13_grad/Shape╠
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_13_grad/ReshapeН
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_14_grad/Shape╠
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_14_grad/ReshapeН
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_15_grad/Shape╠
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationс
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationс
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationс
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationс
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationс
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationс
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationс
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_8_grad/transposeИ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А2
gradients/split_2_grad/concat╧
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
АА2
gradients/split_grad/concat╫
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
АА2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/Shape_1Ё
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Sliceў
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Slice_1И
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:                  А2

IdentityГ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         А2

Identity_1Е

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         А2

Identity_2u

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
АА2

Identity_3w

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
АА2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapes■
√:         А:                  А:         А:         А: :                  А::         А:         А::                  А:         А:         А:АИ<::         А:         А: ::::::::: : : : *=
api_implements+)lstm_a885fd49-1f47-4359-ad50-c49e5eada4a5*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_382392*
go_backwards( *

time_major( :. *
(
_output_shapes
:         А:;7
5
_output_shapes#
!:                  А:.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :;7
5
_output_shapes#
!:                  А: 

_output_shapes
::2.
,
_output_shapes
:         А:2.
,
_output_shapes
:         А:	

_output_shapes
::;
7
5
_output_shapes#
!:                  А:2.
,
_output_shapes
:         А:2.
,
_output_shapes
:         А:"

_output_shapes

:АИ<: 

_output_shapes
::.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
┴
D
(__inference_dropout_layer_call_fn_383270

inputs
identity┼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_3795662
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ї
a
C__inference_dropout_layer_call_and_return_conditional_losses_379566

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ЁT
д
'__forward_gpu_lstm_with_fallback_377749

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimА

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         А2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЖ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         А2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЩ
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimй
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:А:А:А:А:А:А:А:А*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_1e
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АА2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:А2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:А2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:А2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:А2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:А2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:А2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisР

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1ц
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  А:         А:         А:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permХ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2	
SqueezeА
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         А2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_48a16ebd-cfa1-4e65-9946-31335c9ccdf8*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_377574_377750*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
¤
j
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_377145

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slices
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2
Reshape/shapet
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:         А2	
Reshapeї
max_pooling1d/PartitionedCallPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_max_pooling1d_layer_call_and_return_conditional_losses_3771182
max_pooling1d/PartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2i
Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А2
Reshape_1/shape/3─
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeз
	Reshape_1Reshape&max_pooling1d/PartitionedCall:output:0Reshape_1/shape:output:0*
T0*9
_output_shapes'
%:#                  А2
	Reshape_1x
IdentityIdentityReshape_1:output:0*
T0*9
_output_shapes'
%:#                  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:#                  А:a ]
9
_output_shapes'
%:#                  А
 
_user_specified_nameinputs
О'
Ї
F__inference_sequential_layer_call_and_return_conditional_losses_380239
time_distributed_input.
time_distributed_380212:А&
time_distributed_380214:	А
lstm_380225:
АА
lstm_380227:
АА
lstm_380229:	А
dense_380233:	А
dense_380235:
identityИвdense/StatefulPartitionedCallвdropout/StatefulPartitionedCallвlstm/StatefulPartitionedCallв(time_distributed/StatefulPartitionedCallс
(time_distributed/StatefulPartitionedCallStatefulPartitionedCalltime_distributed_inputtime_distributed_380212time_distributed_380214*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_3770512*
(time_distributed/StatefulPartitionedCallХ
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2 
time_distributed/Reshape/shape╢
time_distributed/ReshapeReshapetime_distributed_input'time_distributed/Reshape/shape:output:0*
T0*+
_output_shapes
:         2
time_distributed/Reshape▓
"time_distributed_1/PartitionedCallPartitionedCall1time_distributed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_3771722$
"time_distributed_1/PartitionedCallЩ
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2"
 time_distributed_1/Reshape/shape╪
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*,
_output_shapes
:         А2
time_distributed_1/Reshapeи
"time_distributed_2/PartitionedCallPartitionedCall+time_distributed_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_3772732$
"time_distributed_2/PartitionedCallЩ
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2"
 time_distributed_2/Reshape/shape╥
time_distributed_2/ReshapeReshape+time_distributed_1/PartitionedCall:output:0)time_distributed_2/Reshape/shape:output:0*
T0*,
_output_shapes
:         А2
time_distributed_2/Reshape╕
lstm/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_2/PartitionedCall:output:0lstm_380225lstm_380227lstm_380229*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_3800832
lstm/StatefulPartitionedCallМ
dropout/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_3796322!
dropout/StatefulPartitionedCallк
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_380233dense_380235*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_3795782
dense/StatefulPartitionedCallЖ
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall^lstm/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:"                  : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall:p l
8
_output_shapes&
$:"                  
0
_user_specified_nametime_distributed_input
И-
╧
while_body_380440
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         А2
while/MatMulХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         А2
while/MatMul_1Д
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
	while/addБ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         А2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim█
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
while/splitr
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         А2
while/Sigmoidv
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         А2
while/Sigmoid_1z
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         А2
	while/muli

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         А2

while/Tanhw
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         А2
while/mul_1v
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         А2
while/add_1v
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         А2
while/Sigmoid_2h
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         А2
while/Tanh_1{
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         А2
while/mul_2╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         А2
while/Identity_4t
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         А2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S: : : : :         А:         А: : :
АА:
АА:А: 
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
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
АА:&	"
 
_output_shapes
:
АА:!


_output_shapes	
:А
▓
b
C__inference_dropout_layer_call_and_return_conditional_losses_383292

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╡
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╡	
┴
while_cond_380940
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_380940___redundant_placeholder04
0while_while_cond_380940___redundant_placeholder14
0while_while_cond_380940___redundant_placeholder24
0while_while_cond_380940___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         А:         А: ::::: 
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
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
нц
є
;__inference___backward_gpu_lstm_with_fallback_379905_380081
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5Иv
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         А2
gradients/grad_ys_0Е
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  А2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         А2
gradients/grad_ys_2x
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         А2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end╕
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides▄
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  А*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationщ
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  А2&
$gradients/transpose_9_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╟
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         А2 
gradients/Squeeze_grad/ReshapeЧ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape═
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         А2"
 gradients/Squeeze_1_grad/ReshapeХ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  А2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like╣
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*m
_output_shapes[
Y:                  А:         А:         А:АИ<2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationА
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  А2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeы
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         А2#
!gradients/ExpandDims_grad/ReshapeЮ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeё
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         А2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modК
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:АА2
gradients/concat_1_grad/ShapeО
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_1О
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_2О
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_3О
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_4О
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_5О
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_6О
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_7Н
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_8Н
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_9П
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_10П
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_11П
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_12П
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_13П
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_14П
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetО
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:АА2
gradients/concat_1_grad/SliceФ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_1Ф
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_2Ф
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_3Ф
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_4Ф
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_5Ф
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_6Ф
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_7У
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_8У
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_9Ч
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_10Ч
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_11Ч
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_12Ч
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_13Ч
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_14Ч
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_15Н
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2
gradients/Reshape_grad/Shape┼
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2 
gradients/Reshape_grad/ReshapeС
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_1_grad/Shape═
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_2_grad/Shape═
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_3_grad/Shape═
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_4_grad/Shape═
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_5_grad/Shape═
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_6_grad/Shape═
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_6_grad/ReshapeС
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_7_grad/Shape═
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_7_grad/ReshapeЛ
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2 
gradients/Reshape_8_grad/Shape╚
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:А2"
 gradients/Reshape_8_grad/ReshapeЛ
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2 
gradients/Reshape_9_grad/Shape╚
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:А2"
 gradients/Reshape_9_grad/ReshapeН
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_10_grad/Shape╠
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_10_grad/ReshapeН
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_11_grad/Shape╠
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_11_grad/ReshapeН
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_12_grad/Shape╠
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_12_grad/ReshapeН
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_13_grad/Shape╠
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_13_grad/ReshapeН
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_14_grad/Shape╠
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_14_grad/ReshapeН
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_15_grad/Shape╠
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationс
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationс
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationс
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationс
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationс
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationс
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationс
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_8_grad/transposeИ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А2
gradients/split_2_grad/concat╧
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
АА2
gradients/split_grad/concat╫
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
АА2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/Shape_1Ё
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Sliceў
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Slice_1И
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:                  А2

IdentityГ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         А2

Identity_1Е

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         А2

Identity_2u

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
АА2

Identity_3w

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
АА2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapes■
√:         А:                  А:         А:         А: :                  А::         А:         А::                  А:         А:         А:АИ<::         А:         А: ::::::::: : : : *=
api_implements+)lstm_a48b67aa-8aee-4f44-aaa8-90b674fcf8d0*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_380080*
go_backwards( *

time_major( :. *
(
_output_shapes
:         А:;7
5
_output_shapes#
!:                  А:.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :;7
5
_output_shapes#
!:                  А: 

_output_shapes
::2.
,
_output_shapes
:         А:2.
,
_output_shapes
:         А:	

_output_shapes
::;
7
5
_output_shapes#
!:                  А:2.
,
_output_shapes
:         А:2.
,
_output_shapes
:         А:"

_output_shapes

:АИ<: 

_output_shapes
::.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
▓
b
C__inference_dropout_layer_call_and_return_conditional_losses_379632

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╡
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
д	
н
+__inference_sequential_layer_call_fn_380304

inputs
unknown:А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:
АА
	unknown_3:	А
	unknown_4:	А
	unknown_5:
identityИвStatefulPartitionedCall║
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_3801432
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:"                  : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
8
_output_shapes&
$:"                  
 
_user_specified_nameinputs
╤	
є
A__inference_dense_layer_call_and_return_conditional_losses_379578

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ж%
┬
F__inference_sequential_layer_call_and_return_conditional_losses_379585

inputs.
time_distributed_379106:А&
time_distributed_379108:	А
lstm_379554:
АА
lstm_379556:
АА
lstm_379558:	А
dense_379579:	А
dense_379581:
identityИвdense/StatefulPartitionedCallвlstm/StatefulPartitionedCallв(time_distributed/StatefulPartitionedCall╤
(time_distributed/StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_379106time_distributed_379108*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_3770022*
(time_distributed/StatefulPartitionedCallХ
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2 
time_distributed/Reshape/shapeж
time_distributed/ReshapeReshapeinputs'time_distributed/Reshape/shape:output:0*
T0*+
_output_shapes
:         2
time_distributed/Reshape▓
"time_distributed_1/PartitionedCallPartitionedCall1time_distributed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_3771452$
"time_distributed_1/PartitionedCallЩ
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2"
 time_distributed_1/Reshape/shape╪
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*,
_output_shapes
:         А2
time_distributed_1/Reshapeи
"time_distributed_2/PartitionedCallPartitionedCall+time_distributed_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_3772412$
"time_distributed_2/PartitionedCallЩ
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2"
 time_distributed_2/Reshape/shape╥
time_distributed_2/ReshapeReshape+time_distributed_1/PartitionedCall:output:0)time_distributed_2/Reshape/shape:output:0*
T0*,
_output_shapes
:         А2
time_distributed_2/Reshape╕
lstm/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_2/PartitionedCall:output:0lstm_379554lstm_379556lstm_379558*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_3795532
lstm/StatefulPartitionedCallЇ
dropout/PartitionedCallPartitionedCall%lstm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_3795662
dropout/PartitionedCallв
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_379579dense_379581*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_3795782
dense/StatefulPartitionedCallф
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall^lstm/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:"                  : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall:` \
8
_output_shapes&
$:"                  
 
_user_specified_nameinputs
И-
╧
while_body_377851
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         А2
while/MatMulХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         А2
while/MatMul_1Д
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
	while/addБ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         А2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim█
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
while/splitr
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         А2
while/Sigmoidv
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         А2
while/Sigmoid_1z
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         А2
	while/muli

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         А2

while/Tanhw
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         А2
while/mul_1v
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         А2
while/add_1v
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         А2
while/Sigmoid_2h
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         А2
while/Tanh_1{
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         А2
while/mul_2╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         А2
while/Identity_4t
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         А2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S: : : : :         А:         А: : :
АА:
АА:А: 
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
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
АА:&	"
 
_output_shapes
:
АА:!


_output_shapes	
:А
И-
╧
while_body_377394
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         А2
while/MatMulХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         А2
while/MatMul_1Д
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
	while/addБ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         А2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim█
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
while/splitr
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         А2
while/Sigmoidv
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         А2
while/Sigmoid_1z
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         А2
	while/muli

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         А2

while/Tanhw
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         А2
while/mul_1v
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         А2
while/add_1v
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         А2
while/Sigmoid_2h
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         А2
while/Tanh_1{
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         А2
while/mul_2╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         А2
while/Identity_4t
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         А2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S: : : : :         А:         А: : :
АА:
АА:А: 
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
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
АА:&	"
 
_output_shapes
:
АА:!


_output_shapes	
:А
╔
D
(__inference_flatten_layer_call_fn_383341

inputs
identity┼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_3772342
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
╡	
┴
while_cond_382036
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_382036___redundant_placeholder04
0while_while_cond_382036___redundant_placeholder14
0while_while_cond_382036___redundant_placeholder24
0while_while_cond_382036___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         А:         А: ::::: 
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
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ЮН
Ы
F__inference_sequential_layer_call_and_return_conditional_losses_380805

inputsZ
Ctime_distributed_conv1d_conv1d_expanddims_1_readvariableop_resource:АF
7time_distributed_conv1d_biasadd_readvariableop_resource:	А5
!lstm_read_readvariableop_resource:
АА7
#lstm_read_1_readvariableop_resource:
АА2
#lstm_read_2_readvariableop_resource:	А7
$dense_matmul_readvariableop_resource:	А3
%dense_biasadd_readvariableop_resource:
identityИвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpвlstm/Read/ReadVariableOpвlstm/Read_1/ReadVariableOpвlstm/Read_2/ReadVariableOpв.time_distributed/conv1d/BiasAdd/ReadVariableOpв:time_distributed/conv1d/conv1d/ExpandDims_1/ReadVariableOpf
time_distributed/ShapeShapeinputs*
T0*
_output_shapes
:2
time_distributed/ShapeЦ
$time_distributed/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2&
$time_distributed/strided_slice/stackЪ
&time_distributed/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&time_distributed/strided_slice/stack_1Ъ
&time_distributed/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&time_distributed/strided_slice/stack_2╚
time_distributed/strided_sliceStridedSlicetime_distributed/Shape:output:0-time_distributed/strided_slice/stack:output:0/time_distributed/strided_slice/stack_1:output:0/time_distributed/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
time_distributed/strided_sliceХ
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2 
time_distributed/Reshape/shapeж
time_distributed/ReshapeReshapeinputs'time_distributed/Reshape/shape:output:0*
T0*+
_output_shapes
:         2
time_distributed/Reshapeй
-time_distributed/conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        2/
-time_distributed/conv1d/conv1d/ExpandDims/dim∙
)time_distributed/conv1d/conv1d/ExpandDims
ExpandDims!time_distributed/Reshape:output:06time_distributed/conv1d/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:         2+
)time_distributed/conv1d/conv1d/ExpandDimsБ
:time_distributed/conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpCtime_distributed_conv1d_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:А*
dtype02<
:time_distributed/conv1d/conv1d/ExpandDims_1/ReadVariableOpд
/time_distributed/conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 21
/time_distributed/conv1d/conv1d/ExpandDims_1/dimШ
+time_distributed/conv1d/conv1d/ExpandDims_1
ExpandDimsBtime_distributed/conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:08time_distributed/conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:А2-
+time_distributed/conv1d/conv1d/ExpandDims_1Ш
time_distributed/conv1d/conv1dConv2D2time_distributed/conv1d/conv1d/ExpandDims:output:04time_distributed/conv1d/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2 
time_distributed/conv1d/conv1d█
&time_distributed/conv1d/conv1d/SqueezeSqueeze'time_distributed/conv1d/conv1d:output:0*
T0*,
_output_shapes
:         А*
squeeze_dims

¤        2(
&time_distributed/conv1d/conv1d/Squeeze╒
.time_distributed/conv1d/BiasAdd/ReadVariableOpReadVariableOp7time_distributed_conv1d_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype020
.time_distributed/conv1d/BiasAdd/ReadVariableOpэ
time_distributed/conv1d/BiasAddBiasAdd/time_distributed/conv1d/conv1d/Squeeze:output:06time_distributed/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         А2!
time_distributed/conv1d/BiasAddе
time_distributed/conv1d/SeluSelu(time_distributed/conv1d/BiasAdd:output:0*
T0*,
_output_shapes
:         А2
time_distributed/conv1d/SeluУ
"time_distributed/Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2$
"time_distributed/Reshape_1/shape/0К
"time_distributed/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2$
"time_distributed/Reshape_1/shape/2Л
"time_distributed/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А2$
"time_distributed/Reshape_1/shape/3к
 time_distributed/Reshape_1/shapePack+time_distributed/Reshape_1/shape/0:output:0'time_distributed/strided_slice:output:0+time_distributed/Reshape_1/shape/2:output:0+time_distributed/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:2"
 time_distributed/Reshape_1/shape▐
time_distributed/Reshape_1Reshape*time_distributed/conv1d/Selu:activations:0)time_distributed/Reshape_1/shape:output:0*
T0*9
_output_shapes'
%:#                  А2
time_distributed/Reshape_1Щ
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 time_distributed/Reshape_2/shapeм
time_distributed/Reshape_2Reshapeinputs)time_distributed/Reshape_2/shape:output:0*
T0*+
_output_shapes
:         2
time_distributed/Reshape_2З
time_distributed_1/ShapeShape#time_distributed/Reshape_1:output:0*
T0*
_output_shapes
:2
time_distributed_1/ShapeЪ
&time_distributed_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&time_distributed_1/strided_slice/stackЮ
(time_distributed_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(time_distributed_1/strided_slice/stack_1Ю
(time_distributed_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(time_distributed_1/strided_slice/stack_2╘
 time_distributed_1/strided_sliceStridedSlice!time_distributed_1/Shape:output:0/time_distributed_1/strided_slice/stack:output:01time_distributed_1/strided_slice/stack_1:output:01time_distributed_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 time_distributed_1/strided_sliceЩ
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2"
 time_distributed_1/Reshape/shape╩
time_distributed_1/ReshapeReshape#time_distributed/Reshape_1:output:0)time_distributed_1/Reshape/shape:output:0*
T0*,
_output_shapes
:         А2
time_distributed_1/Reshapeд
/time_distributed_1/max_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :21
/time_distributed_1/max_pooling1d/ExpandDims/dimВ
+time_distributed_1/max_pooling1d/ExpandDims
ExpandDims#time_distributed_1/Reshape:output:08time_distributed_1/max_pooling1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         А2-
+time_distributed_1/max_pooling1d/ExpandDimsГ
(time_distributed_1/max_pooling1d/MaxPoolMaxPool4time_distributed_1/max_pooling1d/ExpandDims:output:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2*
(time_distributed_1/max_pooling1d/MaxPoolр
(time_distributed_1/max_pooling1d/SqueezeSqueeze1time_distributed_1/max_pooling1d/MaxPool:output:0*
T0*,
_output_shapes
:         А*
squeeze_dims
2*
(time_distributed_1/max_pooling1d/SqueezeЧ
$time_distributed_1/Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2&
$time_distributed_1/Reshape_1/shape/0О
$time_distributed_1/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$time_distributed_1/Reshape_1/shape/2П
$time_distributed_1/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А2&
$time_distributed_1/Reshape_1/shape/3╢
"time_distributed_1/Reshape_1/shapePack-time_distributed_1/Reshape_1/shape/0:output:0)time_distributed_1/strided_slice:output:0-time_distributed_1/Reshape_1/shape/2:output:0-time_distributed_1/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:2$
"time_distributed_1/Reshape_1/shapeы
time_distributed_1/Reshape_1Reshape1time_distributed_1/max_pooling1d/Squeeze:output:0+time_distributed_1/Reshape_1/shape:output:0*
T0*9
_output_shapes'
%:#                  А2
time_distributed_1/Reshape_1Э
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2$
"time_distributed_1/Reshape_2/shape╨
time_distributed_1/Reshape_2Reshape#time_distributed/Reshape_1:output:0+time_distributed_1/Reshape_2/shape:output:0*
T0*,
_output_shapes
:         А2
time_distributed_1/Reshape_2Й
time_distributed_2/ShapeShape%time_distributed_1/Reshape_1:output:0*
T0*
_output_shapes
:2
time_distributed_2/ShapeЪ
&time_distributed_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&time_distributed_2/strided_slice/stackЮ
(time_distributed_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(time_distributed_2/strided_slice/stack_1Ю
(time_distributed_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(time_distributed_2/strided_slice/stack_2╘
 time_distributed_2/strided_sliceStridedSlice!time_distributed_2/Shape:output:0/time_distributed_2/strided_slice/stack:output:01time_distributed_2/strided_slice/stack_1:output:01time_distributed_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 time_distributed_2/strided_sliceЩ
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2"
 time_distributed_2/Reshape/shape╠
time_distributed_2/ReshapeReshape%time_distributed_1/Reshape_1:output:0)time_distributed_2/Reshape/shape:output:0*
T0*,
_output_shapes
:         А2
time_distributed_2/ReshapeХ
 time_distributed_2/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 time_distributed_2/flatten/Const╓
"time_distributed_2/flatten/ReshapeReshape#time_distributed_2/Reshape:output:0)time_distributed_2/flatten/Const:output:0*
T0*(
_output_shapes
:         А2$
"time_distributed_2/flatten/ReshapeЧ
$time_distributed_2/Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2&
$time_distributed_2/Reshape_1/shape/0П
$time_distributed_2/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :А2&
$time_distributed_2/Reshape_1/shape/2З
"time_distributed_2/Reshape_1/shapePack-time_distributed_2/Reshape_1/shape/0:output:0)time_distributed_2/strided_slice:output:0-time_distributed_2/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2$
"time_distributed_2/Reshape_1/shapeс
time_distributed_2/Reshape_1Reshape+time_distributed_2/flatten/Reshape:output:0+time_distributed_2/Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:                  А2
time_distributed_2/Reshape_1Э
"time_distributed_2/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2$
"time_distributed_2/Reshape_2/shape╥
time_distributed_2/Reshape_2Reshape%time_distributed_1/Reshape_1:output:0+time_distributed_2/Reshape_2/shape:output:0*
T0*,
_output_shapes
:         А2
time_distributed_2/Reshape_2m

lstm/ShapeShape%time_distributed_2/Reshape_1:output:0*
T0*
_output_shapes
:2

lstm/Shape~
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice/stackВ
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_1В
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_2А
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_sliceg
lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
lstm/zeros/mul/yА
lstm/zeros/mulMullstm/strided_slice:output:0lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/muli
lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm/zeros/Less/y{
lstm/zeros/LessLesslstm/zeros/mul:z:0lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/Lessm
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
lstm/zeros/packed/1Ч
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros/packedi
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros/ConstК

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*(
_output_shapes
:         А2

lstm/zerosk
lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
lstm/zeros_1/mul/yЖ
lstm/zeros_1/mulMullstm/strided_slice:output:0lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/mulm
lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm/zeros_1/Less/yГ
lstm/zeros_1/LessLesslstm/zeros_1/mul:z:0lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/Lessq
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
lstm/zeros_1/packed/1Э
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros_1/packedm
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros_1/ConstТ
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:         А2
lstm/zeros_1Ш
lstm/Read/ReadVariableOpReadVariableOp!lstm_read_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
lstm/Read/ReadVariableOpw
lstm/IdentityIdentity lstm/Read/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АА2
lstm/IdentityЮ
lstm/Read_1/ReadVariableOpReadVariableOp#lstm_read_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
lstm/Read_1/ReadVariableOp}
lstm/Identity_1Identity"lstm/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АА2
lstm/Identity_1Щ
lstm/Read_2/ReadVariableOpReadVariableOp#lstm_read_2_readvariableop_resource*
_output_shapes	
:А*
dtype02
lstm/Read_2/ReadVariableOpx
lstm/Identity_2Identity"lstm/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
lstm/Identity_2Ч
lstm/PartitionedCallPartitionedCall%time_distributed_2/Reshape_1:output:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/Identity:output:0lstm/Identity_1:output:0lstm/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         А:                  А:         А:         А: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference_standard_lstm_3805252
lstm/PartitionedCallВ
dropout/IdentityIdentitylstm/PartitionedCall:output:0*
T0*(
_output_shapes
:         А2
dropout/Identityа
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
dense/MatMul/ReadVariableOpШ
dense/MatMulMatMuldropout/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense/MatMulЮ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOpЩ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense/BiasAddъ
IdentityIdentitydense/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^lstm/Read/ReadVariableOp^lstm/Read_1/ReadVariableOp^lstm/Read_2/ReadVariableOp/^time_distributed/conv1d/BiasAdd/ReadVariableOp;^time_distributed/conv1d/conv1d/ExpandDims_1/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:"                  : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp24
lstm/Read/ReadVariableOplstm/Read/ReadVariableOp28
lstm/Read_1/ReadVariableOplstm/Read_1/ReadVariableOp28
lstm/Read_2/ReadVariableOplstm/Read_2/ReadVariableOp2`
.time_distributed/conv1d/BiasAdd/ReadVariableOp.time_distributed/conv1d/BiasAdd/ReadVariableOp2x
:time_distributed/conv1d/conv1d/ExpandDims_1/ReadVariableOp:time_distributed/conv1d/conv1d/ExpandDims_1/ReadVariableOp:` \
8
_output_shapes&
$:"                  
 
_user_specified_nameinputs
╡	
┴
while_cond_382471
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_382471___redundant_placeholder04
0while_while_cond_382471___redundant_placeholder14
0while_while_cond_382471___redundant_placeholder24
0while_while_cond_382471___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         А:         А: ::::: 
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
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
╙
j
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_377273

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slices
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2
Reshape/shapet
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:         А2	
Reshape▀
flatten/PartitionedCallPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_3772342
flatten/PartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :А2
Reshape_1/shape/2и
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeЭ
	Reshape_1Reshape flatten/PartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:                  А2
	Reshape_1t
IdentityIdentityReshape_1:output:0*
T0*5
_output_shapes#
!:                  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:#                  А:a ]
9
_output_shapes'
%:#                  А
 
_user_specified_nameinputs
цA
└
 __inference_standard_lstm_382122

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2¤
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         А2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         А2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         А2
	Sigmoid_1[
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         А2
mulW
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         А2
Tanh_
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         А2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         А2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         А2
	Sigmoid_2V
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         А2
Tanh_1c
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         А2
mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2
TensorArrayV2_1/element_shape╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterк
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*g
_output_shapesU
S: : : : :         А:         А: : :
АА:
АА:А* 
_read_only_resource_inputs
 *
bodyR
while_body_382037*
condR
while_cond_382036*f
output_shapesU
S: : : : :         А:         А: : :
АА:
АА:А*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   22
0TensorArrayV2Stack/TensorListStack/element_shapeЄ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Ы
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permп
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         А2

Identity_2g

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_a885fd49-1f47-4359-ad50-c49e5eada4a5*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
ЁT
д
'__forward_gpu_lstm_with_fallback_378206

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimА

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         А2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЖ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         А2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЩ
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimй
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:А:А:А:А:А:А:А:А*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_1e
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АА2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:А2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:А2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:А2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:А2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:А2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:А2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisР

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1ц
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  А:         А:         А:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permХ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2	
SqueezeА
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         А2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_ee042e43-be96-4b1e-8c30-912ddedd4bb9*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_378031_378207*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
ч
j
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_381464

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slices
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2
Reshape/shapet
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:         А2	
Reshapeo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten/ConstК
flatten/ReshapeReshapeReshape:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         А2
flatten/Reshapeq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :А2
Reshape_1/shape/2и
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeХ
	Reshape_1Reshapeflatten/Reshape:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:                  А2
	Reshape_1t
IdentityIdentityReshape_1:output:0*
T0*5
_output_shapes#
!:                  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:#                  А:a ]
9
_output_shapes'
%:#                  А
 
_user_specified_nameinputs
ЁT
д
'__forward_gpu_lstm_with_fallback_381957

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimА

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         А2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЖ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         А2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЩ
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimй
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:А:А:А:А:А:А:А:А*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_1e
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АА2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:А2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:А2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:А2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:А2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:А2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:А2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisР

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1ц
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  А:         А:         А:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permХ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2	
SqueezeА
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         А2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_292440eb-75f4-4dc9-a58d-fc1ccc5b9fea*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_381782_381958*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
╘	
╜
+__inference_sequential_layer_call_fn_379602
time_distributed_input
unknown:А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:
АА
	unknown_3:	А
	unknown_4:	А
	unknown_5:
identityИвStatefulPartitionedCall╩
StatefulPartitionedCallStatefulPartitionedCalltime_distributed_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_3795852
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:"                  : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:p l
8
_output_shapes&
$:"                  
0
_user_specified_nametime_distributed_input
м#
╝
@__inference_lstm_layer_call_and_return_conditional_losses_383265

inputs0
read_readvariableop_resource:
АА2
read_1_readvariableop_resource:
АА-
read_2_readvariableop_resource:	А

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         А2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         А2	
zeros_1Й
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
Read/ReadVariableOph
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АА2

IdentityП
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
Read_1/ReadVariableOpn

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АА2

Identity_1К
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:А*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2

Identity_2╒
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         А:                  А:         А:         А: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference_standard_lstm_3829922
PartitionedCall╖

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity_3"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  А: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs
И-
╧
while_body_382037
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         А2
while/MatMulХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         А2
while/MatMul_1Д
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
	while/addБ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         А2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim█
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
while/splitr
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         А2
while/Sigmoidv
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         А2
while/Sigmoid_1z
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         А2
	while/muli

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         А2

while/Tanhw
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         А2
while/mul_1v
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         А2
while/add_1v
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         А2
while/Sigmoid_2h
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         А2
while/Tanh_1{
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         А2
while/mul_2╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         А2
while/Identity_4t
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         А2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S: : : : :         А:         А: : :
АА:
АА:А: 
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
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
АА:&	"
 
_output_shapes
:
АА:!


_output_shapes	
:А
нц
є
;__inference___backward_gpu_lstm_with_fallback_383087_383263
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5Иv
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         А2
gradients/grad_ys_0Е
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  А2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         А2
gradients/grad_ys_2x
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         А2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end╕
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides▄
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  А*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationщ
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  А2&
$gradients/transpose_9_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╟
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         А2 
gradients/Squeeze_grad/ReshapeЧ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape═
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         А2"
 gradients/Squeeze_1_grad/ReshapeХ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  А2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like╣
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*m
_output_shapes[
Y:                  А:         А:         А:АИ<2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationА
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  А2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeы
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         А2#
!gradients/ExpandDims_grad/ReshapeЮ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeё
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         А2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modК
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:АА2
gradients/concat_1_grad/ShapeО
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_1О
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_2О
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_3О
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_4О
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_5О
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_6О
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_7Н
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_8Н
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_9П
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_10П
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_11П
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_12П
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_13П
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_14П
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetО
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:АА2
gradients/concat_1_grad/SliceФ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_1Ф
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_2Ф
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_3Ф
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_4Ф
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_5Ф
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_6Ф
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_7У
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_8У
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_9Ч
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_10Ч
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_11Ч
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_12Ч
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_13Ч
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_14Ч
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_15Н
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2
gradients/Reshape_grad/Shape┼
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2 
gradients/Reshape_grad/ReshapeС
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_1_grad/Shape═
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_2_grad/Shape═
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_3_grad/Shape═
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_4_grad/Shape═
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_5_grad/Shape═
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_6_grad/Shape═
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_6_grad/ReshapeС
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_7_grad/Shape═
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_7_grad/ReshapeЛ
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2 
gradients/Reshape_8_grad/Shape╚
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:А2"
 gradients/Reshape_8_grad/ReshapeЛ
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2 
gradients/Reshape_9_grad/Shape╚
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:А2"
 gradients/Reshape_9_grad/ReshapeН
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_10_grad/Shape╠
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_10_grad/ReshapeН
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_11_grad/Shape╠
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_11_grad/ReshapeН
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_12_grad/Shape╠
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_12_grad/ReshapeН
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_13_grad/Shape╠
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_13_grad/ReshapeН
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_14_grad/Shape╠
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_14_grad/ReshapeН
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_15_grad/Shape╠
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationс
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationс
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationс
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationс
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationс
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationс
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationс
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_8_grad/transposeИ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А2
gradients/split_2_grad/concat╧
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
АА2
gradients/split_grad/concat╫
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
АА2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/Shape_1Ё
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Sliceў
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Slice_1И
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:                  А2

IdentityГ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         А2

Identity_1Е

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         А2

Identity_2u

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
АА2

Identity_3w

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
АА2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapes■
√:         А:                  А:         А:         А: :                  А::         А:         А::                  А:         А:         А:АИ<::         А:         А: ::::::::: : : : *=
api_implements+)lstm_f1facdf3-cca9-44b9-a106-85a1aa20d778*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_383262*
go_backwards( *

time_major( :. *
(
_output_shapes
:         А:;7
5
_output_shapes#
!:                  А:.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :;7
5
_output_shapes#
!:                  А: 

_output_shapes
::2.
,
_output_shapes
:         А:2.
,
_output_shapes
:         А:	

_output_shapes
::;
7
5
_output_shapes#
!:                  А:2.
,
_output_shapes
:         А:2.
,
_output_shapes
:         А:"

_output_shapes

:АИ<: 

_output_shapes
::.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ЫI
╠
)__inference_gpu_lstm_with_fallback_382216

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         А2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimД
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         А2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЩ
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimй
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:А:А:А:А:А:А:А:А*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_1e
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АА2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:А2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:А2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:А2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:А2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:А2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:А2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisм
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:АИ<2

concat_1т
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  А:         А:         А:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permХ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2	
SqueezeА
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         А2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_a885fd49-1f47-4359-ad50-c49e5eada4a5*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
Ы
O
3__inference_time_distributed_1_layer_call_fn_381397

inputs
identityс
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_3771722
PartitionedCall~
IdentityIdentityPartitionedCall:output:0*
T0*9
_output_shapes'
%:#                  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:#                  А:a ]
9
_output_shapes'
%:#                  А
 
_user_specified_nameinputs
И-
╧
while_body_382907
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         А2
while/MatMulХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         А2
while/MatMul_1Д
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
	while/addБ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         А2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim█
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
while/splitr
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         А2
while/Sigmoidv
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         А2
while/Sigmoid_1z
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         А2
	while/muli

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         А2

while/Tanhw
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         А2
while/mul_1v
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         А2
while/add_1v
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         А2
while/Sigmoid_2h
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         А2
while/Tanh_1{
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         А2
while/mul_2╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         А2
while/Identity_4t
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         А2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S: : : : :         А:         А: : :
АА:
АА:А: 
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
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
АА:&	"
 
_output_shapes
:
АА:!


_output_shapes	
:А
═
a
(__inference_dropout_layer_call_fn_383275

inputs
identityИвStatefulPartitionedCall▌
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_3796322
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ы
O
3__inference_time_distributed_1_layer_call_fn_381392

inputs
identityс
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_3771452
PartitionedCall~
IdentityIdentityPartitionedCall:output:0*
T0*9
_output_shapes'
%:#                  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:#                  А:a ]
9
_output_shapes'
%:#                  А
 
_user_specified_nameinputs
ч
j
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_381481

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slices
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2
Reshape/shapet
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:         А2	
Reshapeo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten/ConstК
flatten/ReshapeReshapeReshape:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         А2
flatten/Reshapeq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :А2
Reshape_1/shape/2и
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeХ
	Reshape_1Reshapeflatten/Reshape:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:                  А2
	Reshape_1t
IdentityIdentityReshape_1:output:0*
T0*5
_output_shapes#
!:                  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:#                  А:a ]
9
_output_shapes'
%:#                  А
 
_user_specified_nameinputs
▓
Ъ
'__inference_conv1d_layer_call_fn_383320

inputs
unknown:А
	unknown_0:	А
identityИвStatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_3769902
StatefulPartitionedCallУ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
▀
_
C__inference_flatten_layer_call_and_return_conditional_losses_383347

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
ЁT
д
'__forward_gpu_lstm_with_fallback_382827

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimА

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         А2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЖ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         А2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЩ
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimй
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:А:А:А:А:А:А:А:А*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_1e
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АА2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:А2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:А2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:А2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:А2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:А2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:А2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisР

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1ц
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  А:         А:         А:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permХ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2	
SqueezeА
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         А2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_310bffb0-67a7-402a-ac56-6ff196a6d557*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_382652_382828*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
╡	
┴
while_cond_380439
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_380439___redundant_placeholder04
0while_while_cond_380439___redundant_placeholder14
0while_while_cond_380439___redundant_placeholder24
0while_while_cond_380439___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         А:         А: ::::: 
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
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
И-
╧
while_body_381602
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         А2
while/MatMulХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         А2
while/MatMul_1Д
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
	while/addБ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         А2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim█
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
while/splitr
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         А2
while/Sigmoidv
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         А2
while/Sigmoid_1z
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         А2
	while/muli

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         А2

while/Tanhw
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         А2
while/mul_1v
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         А2
while/add_1v
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         А2
while/Sigmoid_2h
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         А2
while/Tanh_1{
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         А2
while/mul_2╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         А2
while/Identity_4t
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         А2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S: : : : :         А:         А: : :
АА:
АА:А: 
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
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
АА:&	"
 
_output_shapes
:
АА:!


_output_shapes	
:А
нц
є
;__inference___backward_gpu_lstm_with_fallback_380620_380796
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5Иv
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         А2
gradients/grad_ys_0Е
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  А2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         А2
gradients/grad_ys_2x
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         А2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end╕
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides▄
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  А*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationщ
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  А2&
$gradients/transpose_9_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╟
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         А2 
gradients/Squeeze_grad/ReshapeЧ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape═
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         А2"
 gradients/Squeeze_1_grad/ReshapeХ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  А2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like╣
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*m
_output_shapes[
Y:                  А:         А:         А:АИ<2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationА
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  А2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeы
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         А2#
!gradients/ExpandDims_grad/ReshapeЮ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeё
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         А2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modК
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:АА2
gradients/concat_1_grad/ShapeО
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_1О
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_2О
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_3О
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_4О
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_5О
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_6О
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_7Н
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_8Н
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_9П
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_10П
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_11П
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_12П
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_13П
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_14П
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetО
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:АА2
gradients/concat_1_grad/SliceФ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_1Ф
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_2Ф
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_3Ф
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_4Ф
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_5Ф
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_6Ф
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_7У
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_8У
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_9Ч
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_10Ч
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_11Ч
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_12Ч
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_13Ч
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_14Ч
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_15Н
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2
gradients/Reshape_grad/Shape┼
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2 
gradients/Reshape_grad/ReshapeС
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_1_grad/Shape═
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_2_grad/Shape═
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_3_grad/Shape═
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_4_grad/Shape═
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_5_grad/Shape═
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_6_grad/Shape═
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_6_grad/ReshapeС
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_7_grad/Shape═
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_7_grad/ReshapeЛ
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2 
gradients/Reshape_8_grad/Shape╚
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:А2"
 gradients/Reshape_8_grad/ReshapeЛ
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2 
gradients/Reshape_9_grad/Shape╚
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:А2"
 gradients/Reshape_9_grad/ReshapeН
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_10_grad/Shape╠
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_10_grad/ReshapeН
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_11_grad/Shape╠
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_11_grad/ReshapeН
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_12_grad/Shape╠
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_12_grad/ReshapeН
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_13_grad/Shape╠
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_13_grad/ReshapeН
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_14_grad/Shape╠
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_14_grad/ReshapeН
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_15_grad/Shape╠
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationс
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationс
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationс
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationс
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationс
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationс
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationс
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_8_grad/transposeИ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А2
gradients/split_2_grad/concat╧
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
АА2
gradients/split_grad/concat╫
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
АА2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/Shape_1Ё
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Sliceў
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Slice_1И
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:                  А2

IdentityГ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         А2

Identity_1Е

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         А2

Identity_2u

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
АА2

Identity_3w

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
АА2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapes■
√:         А:                  А:         А:         А: :                  А::         А:         А::                  А:         А:         А:АИ<::         А:         А: ::::::::: : : : *=
api_implements+)lstm_3a90fb1d-3b6e-4cf2-a61c-a402e9212620*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_380795*
go_backwards( *

time_major( :. *
(
_output_shapes
:         А:;7
5
_output_shapes#
!:                  А:.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :;7
5
_output_shapes#
!:                  А: 

_output_shapes
::2.
,
_output_shapes
:         А:2.
,
_output_shapes
:         А:	

_output_shapes
::;
7
5
_output_shapes#
!:                  А:2.
,
_output_shapes
:         А:2.
,
_output_shapes
:         А:"

_output_shapes

:АИ<: 

_output_shapes
::.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
нц
є
;__inference___backward_gpu_lstm_with_fallback_379375_379551
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5Иv
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         А2
gradients/grad_ys_0Е
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  А2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         А2
gradients/grad_ys_2x
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         А2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end╕
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides▄
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  А*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationщ
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  А2&
$gradients/transpose_9_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╟
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         А2 
gradients/Squeeze_grad/ReshapeЧ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape═
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         А2"
 gradients/Squeeze_1_grad/ReshapeХ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  А2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like╣
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*m
_output_shapes[
Y:                  А:         А:         А:АИ<2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationА
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  А2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeы
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         А2#
!gradients/ExpandDims_grad/ReshapeЮ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeё
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         А2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modК
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:АА2
gradients/concat_1_grad/ShapeО
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_1О
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_2О
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_3О
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_4О
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_5О
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_6О
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_7Н
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_8Н
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_9П
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_10П
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_11П
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_12П
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_13П
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_14П
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetО
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:АА2
gradients/concat_1_grad/SliceФ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_1Ф
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_2Ф
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_3Ф
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_4Ф
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_5Ф
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_6Ф
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_7У
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_8У
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_9Ч
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_10Ч
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_11Ч
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_12Ч
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_13Ч
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_14Ч
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_15Н
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2
gradients/Reshape_grad/Shape┼
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2 
gradients/Reshape_grad/ReshapeС
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_1_grad/Shape═
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_2_grad/Shape═
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_3_grad/Shape═
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_4_grad/Shape═
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_5_grad/Shape═
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_6_grad/Shape═
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_6_grad/ReshapeС
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_7_grad/Shape═
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_7_grad/ReshapeЛ
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2 
gradients/Reshape_8_grad/Shape╚
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:А2"
 gradients/Reshape_8_grad/ReshapeЛ
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2 
gradients/Reshape_9_grad/Shape╚
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:А2"
 gradients/Reshape_9_grad/ReshapeН
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_10_grad/Shape╠
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_10_grad/ReshapeН
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_11_grad/Shape╠
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_11_grad/ReshapeН
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_12_grad/Shape╠
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_12_grad/ReshapeН
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_13_grad/Shape╠
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_13_grad/ReshapeН
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_14_grad/Shape╠
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_14_grad/ReshapeН
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_15_grad/Shape╠
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationс
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationс
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationс
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationс
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationс
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationс
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationс
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_8_grad/transposeИ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А2
gradients/split_2_grad/concat╧
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
АА2
gradients/split_grad/concat╫
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
АА2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/Shape_1Ё
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Sliceў
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Slice_1И
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:                  А2

IdentityГ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         А2

Identity_1Е

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         А2

Identity_2u

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
АА2

Identity_3w

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
АА2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapes■
√:         А:                  А:         А:         А: :                  А::         А:         А::                  А:         А:         А:АИ<::         А:         А: ::::::::: : : : *=
api_implements+)lstm_0b0184b3-494e-4b6e-a378-dd4700854b6d*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_379550*
go_backwards( *

time_major( :. *
(
_output_shapes
:         А:;7
5
_output_shapes#
!:                  А:.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :;7
5
_output_shapes#
!:                  А: 

_output_shapes
::2.
,
_output_shapes
:         А:2.
,
_output_shapes
:         А:	

_output_shapes
::;
7
5
_output_shapes#
!:                  А:2.
,
_output_shapes
:         А:2.
,
_output_shapes
:         А:"

_output_shapes

:АИ<: 

_output_shapes
::.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
нц
є
;__inference___backward_gpu_lstm_with_fallback_381121_381297
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5Иv
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         А2
gradients/grad_ys_0Е
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  А2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         А2
gradients/grad_ys_2x
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         А2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end╕
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides▄
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  А*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationщ
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  А2&
$gradients/transpose_9_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╟
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         А2 
gradients/Squeeze_grad/ReshapeЧ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape═
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         А2"
 gradients/Squeeze_1_grad/ReshapeХ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  А2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like╣
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*m
_output_shapes[
Y:                  А:         А:         А:АИ<2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationА
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  А2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeы
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         А2#
!gradients/ExpandDims_grad/ReshapeЮ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeё
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         А2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modК
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:АА2
gradients/concat_1_grad/ShapeО
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_1О
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_2О
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_3О
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_4О
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_5О
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_6О
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_7Н
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_8Н
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_9П
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_10П
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_11П
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_12П
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_13П
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_14П
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetО
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:АА2
gradients/concat_1_grad/SliceФ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_1Ф
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_2Ф
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_3Ф
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_4Ф
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_5Ф
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_6Ф
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_7У
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_8У
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_9Ч
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_10Ч
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_11Ч
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_12Ч
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_13Ч
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_14Ч
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_15Н
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2
gradients/Reshape_grad/Shape┼
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2 
gradients/Reshape_grad/ReshapeС
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_1_grad/Shape═
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_2_grad/Shape═
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_3_grad/Shape═
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_4_grad/Shape═
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_5_grad/Shape═
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_6_grad/Shape═
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_6_grad/ReshapeС
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_7_grad/Shape═
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_7_grad/ReshapeЛ
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2 
gradients/Reshape_8_grad/Shape╚
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:А2"
 gradients/Reshape_8_grad/ReshapeЛ
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2 
gradients/Reshape_9_grad/Shape╚
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:А2"
 gradients/Reshape_9_grad/ReshapeН
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_10_grad/Shape╠
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_10_grad/ReshapeН
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_11_grad/Shape╠
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_11_grad/ReshapeН
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_12_grad/Shape╠
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_12_grad/ReshapeН
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_13_grad/Shape╠
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_13_grad/ReshapeН
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_14_grad/Shape╠
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_14_grad/ReshapeН
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_15_grad/Shape╠
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationс
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationс
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationс
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationс
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationс
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationс
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationс
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_8_grad/transposeИ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А2
gradients/split_2_grad/concat╧
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
АА2
gradients/split_grad/concat╫
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
АА2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/Shape_1Ё
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Sliceў
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Slice_1И
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:                  А2

IdentityГ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         А2

Identity_1Е

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         А2

Identity_2u

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
АА2

Identity_3w

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
АА2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapes■
√:         А:                  А:         А:         А: :                  А::         А:         А::                  А:         А:         А:АИ<::         А:         А: ::::::::: : : : *=
api_implements+)lstm_0b7a119e-567e-4fd7-a86b-8cfad7f34af1*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_381296*
go_backwards( *

time_major( :. *
(
_output_shapes
:         А:;7
5
_output_shapes#
!:                  А:.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :;7
5
_output_shapes#
!:                  А: 

_output_shapes
::2.
,
_output_shapes
:         А:2.
,
_output_shapes
:         А:	

_output_shapes
::;
7
5
_output_shapes#
!:                  А:2.
,
_output_shapes
:         А:2.
,
_output_shapes
:         А:"

_output_shapes

:АИ<: 

_output_shapes
::.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
╙
j
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_377241

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slices
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2
Reshape/shapet
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:         А2	
Reshape▀
flatten/PartitionedCallPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_3772342
flatten/PartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :А2
Reshape_1/shape/2и
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeЭ
	Reshape_1Reshape flatten/PartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:                  А2
	Reshape_1t
IdentityIdentityReshape_1:output:0*
T0*5
_output_shapes#
!:                  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:#                  А:a ]
9
_output_shapes'
%:#                  А
 
_user_specified_nameinputs
и	
╢
$__inference_signature_wrapper_380266
time_distributed_input
unknown:А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:
АА
	unknown_3:	А
	unknown_4:	А
	unknown_5:
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCalltime_distributed_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_3769602
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:"                  : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:p l
8
_output_shapes&
$:"                  
0
_user_specified_nametime_distributed_input
╡	
┴
while_cond_379724
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_379724___redundant_placeholder04
0while_while_cond_379724___redundant_placeholder14
0while_while_cond_379724___redundant_placeholder24
0while_while_cond_379724___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         А:         А: ::::: 
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
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
¤
j
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_377172

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slices
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2
Reshape/shapet
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:         А2	
Reshapeї
max_pooling1d/PartitionedCallPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_max_pooling1d_layer_call_and_return_conditional_losses_3771182
max_pooling1d/PartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2i
Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А2
Reshape_1/shape/3─
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeз
	Reshape_1Reshape&max_pooling1d/PartitionedCall:output:0Reshape_1/shape:output:0*
T0*9
_output_shapes'
%:#                  А2
	Reshape_1x
IdentityIdentityReshape_1:output:0*
T0*9
_output_shapes'
%:#                  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:#                  А:a ]
9
_output_shapes'
%:#                  А
 
_user_specified_nameinputs
ЫI
╠
)__inference_gpu_lstm_with_fallback_382651

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         А2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimД
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         А2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЩ
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimй
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:А:А:А:А:А:А:А:А*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_1e
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АА2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:А2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:А2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:А2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:А2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:А2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:А2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisм
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:АИ<2

concat_1т
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  А:         А:         А:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permХ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2	
SqueezeА
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         А2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_310bffb0-67a7-402a-ac56-6ff196a6d557*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
м#
╝
@__inference_lstm_layer_call_and_return_conditional_losses_380083

inputs0
read_readvariableop_resource:
АА2
read_1_readvariableop_resource:
АА-
read_2_readvariableop_resource:	А

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         А2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         А2	
zeros_1Й
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
Read/ReadVariableOph
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АА2

IdentityП
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
Read_1/ReadVariableOpn

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АА2

Identity_1К
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:А*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2

Identity_2╒
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         А:                  А:         А:         А: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference_standard_lstm_3798102
PartitionedCall╖

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity_3"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  А: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs
╘	
╜
+__inference_sequential_layer_call_fn_380179
time_distributed_input
unknown:А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:
АА
	unknown_3:	А
	unknown_4:	А
	unknown_5:
identityИвStatefulPartitionedCall╩
StatefulPartitionedCallStatefulPartitionedCalltime_distributed_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_3801432
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:"                  : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:p l
8
_output_shapes&
$:"                  
0
_user_specified_nametime_distributed_input
√y
Г
"__inference__traced_restore_383548
file_prefix0
assignvariableop_dense_kernel:	А+
assignvariableop_1_dense_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: A
*assignvariableop_7_time_distributed_kernel:А7
(assignvariableop_8_time_distributed_bias:	А<
(assignvariableop_9_lstm_lstm_cell_kernel:
ААG
3assignvariableop_10_lstm_lstm_cell_recurrent_kernel:
АА6
'assignvariableop_11_lstm_lstm_cell_bias:	А#
assignvariableop_12_total: #
assignvariableop_13_count: :
'assignvariableop_14_adam_dense_kernel_m:	А3
%assignvariableop_15_adam_dense_bias_m:I
2assignvariableop_16_adam_time_distributed_kernel_m:А?
0assignvariableop_17_adam_time_distributed_bias_m:	АD
0assignvariableop_18_adam_lstm_lstm_cell_kernel_m:
ААN
:assignvariableop_19_adam_lstm_lstm_cell_recurrent_kernel_m:
АА=
.assignvariableop_20_adam_lstm_lstm_cell_bias_m:	А:
'assignvariableop_21_adam_dense_kernel_v:	А3
%assignvariableop_22_adam_dense_bias_v:I
2assignvariableop_23_adam_time_distributed_kernel_v:А?
0assignvariableop_24_adam_time_distributed_bias_v:	АD
0assignvariableop_25_adam_lstm_lstm_cell_kernel_v:
ААN
:assignvariableop_26_adam_lstm_lstm_cell_recurrent_kernel_v:
АА=
.assignvariableop_27_adam_lstm_lstm_cell_bias_v:	А
identity_29ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9в
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*о
valueдBбB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names╚
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices╜
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*И
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЬ
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1в
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2б
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3г
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4г
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5в
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6к
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7п
AssignVariableOp_7AssignVariableOp*assignvariableop_7_time_distributed_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8н
AssignVariableOp_8AssignVariableOp(assignvariableop_8_time_distributed_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9н
AssignVariableOp_9AssignVariableOp(assignvariableop_9_lstm_lstm_cell_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10╗
AssignVariableOp_10AssignVariableOp3assignvariableop_10_lstm_lstm_cell_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11п
AssignVariableOp_11AssignVariableOp'assignvariableop_11_lstm_lstm_cell_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12б
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13б
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14п
AssignVariableOp_14AssignVariableOp'assignvariableop_14_adam_dense_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15н
AssignVariableOp_15AssignVariableOp%assignvariableop_15_adam_dense_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16║
AssignVariableOp_16AssignVariableOp2assignvariableop_16_adam_time_distributed_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17╕
AssignVariableOp_17AssignVariableOp0assignvariableop_17_adam_time_distributed_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18╕
AssignVariableOp_18AssignVariableOp0assignvariableop_18_adam_lstm_lstm_cell_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19┬
AssignVariableOp_19AssignVariableOp:assignvariableop_19_adam_lstm_lstm_cell_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20╢
AssignVariableOp_20AssignVariableOp.assignvariableop_20_adam_lstm_lstm_cell_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21п
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_dense_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22н
AssignVariableOp_22AssignVariableOp%assignvariableop_22_adam_dense_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23║
AssignVariableOp_23AssignVariableOp2assignvariableop_23_adam_time_distributed_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24╕
AssignVariableOp_24AssignVariableOp0assignvariableop_24_adam_time_distributed_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25╕
AssignVariableOp_25AssignVariableOp0assignvariableop_25_adam_lstm_lstm_cell_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26┬
AssignVariableOp_26AssignVariableOp:assignvariableop_26_adam_lstm_lstm_cell_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27╢
AssignVariableOp_27AssignVariableOp.assignvariableop_27_adam_lstm_lstm_cell_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_279
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp╞
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_28╣
Identity_29IdentityIdentity_28:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_29"#
identity_29Identity_29:output:0*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272(
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
У
O
3__inference_time_distributed_2_layer_call_fn_381447

inputs
identity▌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_3772732
PartitionedCallz
IdentityIdentityPartitionedCall:output:0*
T0*5
_output_shapes#
!:                  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:#                  А:a ]
9
_output_shapes'
%:#                  А
 
_user_specified_nameinputs
╡	
┴
while_cond_377850
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_377850___redundant_placeholder04
0while_while_cond_377850___redundant_placeholder14
0while_while_cond_377850___redundant_placeholder24
0while_while_cond_377850___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         А:         А: ::::: 
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
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
цA
└
 __inference_standard_lstm_376680

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2¤
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         А2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         А2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         А2
	Sigmoid_1[
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         А2
mulW
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         А2
Tanh_
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         А2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         А2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         А2
	Sigmoid_2V
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         А2
Tanh_1c
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         А2
mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2
TensorArrayV2_1/element_shape╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterк
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*g
_output_shapesU
S: : : : :         А:         А: : :
АА:
АА:А* 
_read_only_resource_inputs
 *
bodyR
while_body_376595*
condR
while_cond_376594*f
output_shapesU
S: : : : :         А:         А: : :
АА:
АА:А*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   22
0TensorArrayV2Stack/TensorListStack/element_shapeЄ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Ы
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permп
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         А2

Identity_2g

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_92e7a4b7-b705-4ad9-b605-891e2d6722ba*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
ЫI
╠
)__inference_gpu_lstm_with_fallback_379904

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         А2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimД
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         А2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЩ
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimй
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:А:А:А:А:А:А:А:А*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_1e
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АА2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:А2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:А2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:А2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:А2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:А2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:А2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisм
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:АИ<2

concat_1т
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  А:         А:         А:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permХ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2	
SqueezeА
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         А2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_a48b67aa-8aee-4f44-aaa8-90b674fcf8d0*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
▌
У
B__inference_conv1d_layer_call_and_return_conditional_losses_376990

inputsB
+conv1d_expanddims_1_readvariableop_resource:А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpв"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        2
conv1d/ExpandDims/dimЦ
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:         2
conv1d/ExpandDims╣
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:А*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim╕
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:А2
conv1d/ExpandDims_1╕
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2
conv1dУ
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:         А*
squeeze_dims

¤        2
conv1d/SqueezeН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpН
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         А2	
BiasAdd]
SeluSeluBiasAdd:output:0*
T0*,
_output_shapes
:         А2
Seluй
IdentityIdentitySelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*,
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
┤#
╛
@__inference_lstm_layer_call_and_return_conditional_losses_382395
inputs_00
read_readvariableop_resource:
АА2
read_1_readvariableop_resource:
АА-
read_2_readvariableop_resource:	А

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOpF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         А2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         А2	
zeros_1Й
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
Read/ReadVariableOph
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АА2

IdentityП
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
Read_1/ReadVariableOpn

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АА2

Identity_1К
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:А*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2

Identity_2╫
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         А:                  А:         А:         А: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference_standard_lstm_3821222
PartitionedCall╖

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity_3"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  А: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:_ [
5
_output_shapes#
!:                  А
"
_user_specified_name
inputs/0
ЫI
╠
)__inference_gpu_lstm_with_fallback_377573

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         А2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimД
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         А2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЩ
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimй
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:А:А:А:А:А:А:А:А*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_1e
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АА2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:А2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:А2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:А2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:А2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:А2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:А2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisм
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:АИ<2

concat_1т
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  А:         А:         А:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permХ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2	
SqueezeА
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         А2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_48a16ebd-cfa1-4e65-9946-31335c9ccdf8*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
ЁT
д
'__forward_gpu_lstm_with_fallback_381296

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimА

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         А2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЖ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         А2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЩ
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimй
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:А:А:А:А:А:А:А:А*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_1e
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АА2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:А2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:А2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:А2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:А2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:А2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:А2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisР

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1ц
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  А:         А:         А:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permХ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2	
SqueezeА
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         А2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_0b7a119e-567e-4fd7-a86b-8cfad7f34af1*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_381121_381297*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
нц
є
;__inference___backward_gpu_lstm_with_fallback_382652_382828
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5Иv
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         А2
gradients/grad_ys_0Е
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  А2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         А2
gradients/grad_ys_2x
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         А2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end╕
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides▄
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  А*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationщ
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  А2&
$gradients/transpose_9_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╟
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         А2 
gradients/Squeeze_grad/ReshapeЧ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape═
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         А2"
 gradients/Squeeze_1_grad/ReshapeХ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  А2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like╣
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*m
_output_shapes[
Y:                  А:         А:         А:АИ<2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationА
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  А2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeы
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         А2#
!gradients/ExpandDims_grad/ReshapeЮ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeё
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         А2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modК
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:АА2
gradients/concat_1_grad/ShapeО
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_1О
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_2О
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_3О
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_4О
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_5О
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_6О
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_7Н
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_8Н
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_9П
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_10П
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_11П
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_12П
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_13П
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_14П
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetО
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:АА2
gradients/concat_1_grad/SliceФ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_1Ф
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_2Ф
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_3Ф
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_4Ф
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_5Ф
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_6Ф
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_7У
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_8У
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_9Ч
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_10Ч
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_11Ч
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_12Ч
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_13Ч
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_14Ч
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_15Н
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2
gradients/Reshape_grad/Shape┼
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2 
gradients/Reshape_grad/ReshapeС
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_1_grad/Shape═
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_2_grad/Shape═
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_3_grad/Shape═
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_4_grad/Shape═
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_5_grad/Shape═
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_6_grad/Shape═
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_6_grad/ReshapeС
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_7_grad/Shape═
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_7_grad/ReshapeЛ
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2 
gradients/Reshape_8_grad/Shape╚
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:А2"
 gradients/Reshape_8_grad/ReshapeЛ
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2 
gradients/Reshape_9_grad/Shape╚
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:А2"
 gradients/Reshape_9_grad/ReshapeН
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_10_grad/Shape╠
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_10_grad/ReshapeН
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_11_grad/Shape╠
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_11_grad/ReshapeН
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_12_grad/Shape╠
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_12_grad/ReshapeН
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_13_grad/Shape╠
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_13_grad/ReshapeН
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_14_grad/Shape╠
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_14_grad/ReshapeН
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_15_grad/Shape╠
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationс
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationс
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationс
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationс
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationс
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationс
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationс
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_8_grad/transposeИ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А2
gradients/split_2_grad/concat╧
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
АА2
gradients/split_grad/concat╫
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
АА2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/Shape_1Ё
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Sliceў
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Slice_1И
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:                  А2

IdentityГ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         А2

Identity_1Е

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         А2

Identity_2u

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
АА2

Identity_3w

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
АА2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapes■
√:         А:                  А:         А:         А: :                  А::         А:         А::                  А:         А:         А:АИ<::         А:         А: ::::::::: : : : *=
api_implements+)lstm_310bffb0-67a7-402a-ac56-6ff196a6d557*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_382827*
go_backwards( *

time_major( :. *
(
_output_shapes
:         А:;7
5
_output_shapes#
!:                  А:.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :;7
5
_output_shapes#
!:                  А: 

_output_shapes
::2.
,
_output_shapes
:         А:2.
,
_output_shapes
:         А:	

_output_shapes
::;
7
5
_output_shapes#
!:                  А:2.
,
_output_shapes
:         А:2.
,
_output_shapes
:         А:"

_output_shapes

:АИ<: 

_output_shapes
::.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ЫI
╠
)__inference_gpu_lstm_with_fallback_381781

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         А2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimД
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         А2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЩ
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimй
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:А:А:А:А:А:А:А:А*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_1e
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АА2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:А2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:А2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:А2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:А2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:А2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:А2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisм
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:АИ<2

concat_1т
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  А:         А:         А:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permХ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2	
SqueezeА
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         А2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_292440eb-75f4-4dc9-a58d-fc1ccc5b9fea*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
И-
╧
while_body_379195
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         А2
while/MatMulХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         А2
while/MatMul_1Д
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
	while/addБ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         А2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim█
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
while/splitr
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         А2
while/Sigmoidv
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         А2
while/Sigmoid_1z
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         А2
	while/muli

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         А2

while/Tanhw
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         А2
while/mul_1v
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         А2
while/add_1v
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         А2
while/Sigmoid_2h
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         А2
while/Tanh_1{
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         А2
while/mul_2╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         А2
while/Identity_4t
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         А2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S: : : : :         А:         А: : :
АА:
АА:А: 
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
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
АА:&	"
 
_output_shapes
:
АА:!


_output_shapes	
:А
╬&
ф
F__inference_sequential_layer_call_and_return_conditional_losses_380143

inputs.
time_distributed_380116:А&
time_distributed_380118:	А
lstm_380129:
АА
lstm_380131:
АА
lstm_380133:	А
dense_380137:	А
dense_380139:
identityИвdense/StatefulPartitionedCallвdropout/StatefulPartitionedCallвlstm/StatefulPartitionedCallв(time_distributed/StatefulPartitionedCall╤
(time_distributed/StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_380116time_distributed_380118*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_3770512*
(time_distributed/StatefulPartitionedCallХ
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2 
time_distributed/Reshape/shapeж
time_distributed/ReshapeReshapeinputs'time_distributed/Reshape/shape:output:0*
T0*+
_output_shapes
:         2
time_distributed/Reshape▓
"time_distributed_1/PartitionedCallPartitionedCall1time_distributed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_3771722$
"time_distributed_1/PartitionedCallЩ
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2"
 time_distributed_1/Reshape/shape╪
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*,
_output_shapes
:         А2
time_distributed_1/Reshapeи
"time_distributed_2/PartitionedCallPartitionedCall+time_distributed_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_3772732$
"time_distributed_2/PartitionedCallЩ
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2"
 time_distributed_2/Reshape/shape╥
time_distributed_2/ReshapeReshape+time_distributed_1/PartitionedCall:output:0)time_distributed_2/Reshape/shape:output:0*
T0*,
_output_shapes
:         А2
time_distributed_2/Reshape╕
lstm/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_2/PartitionedCall:output:0lstm_380129lstm_380131lstm_380133*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_3800832
lstm/StatefulPartitionedCallМ
dropout/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_3796322!
dropout/StatefulPartitionedCallк
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_380137dense_380139*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_3795782
dense/StatefulPartitionedCallЖ
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall^lstm/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:"                  : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall:` \
8
_output_shapes&
$:"                  
 
_user_specified_nameinputs
м#
╝
@__inference_lstm_layer_call_and_return_conditional_losses_382830

inputs0
read_readvariableop_resource:
АА2
read_1_readvariableop_resource:
АА-
read_2_readvariableop_resource:	А

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         А2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         А2	
zeros_1Й
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
Read/ReadVariableOph
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АА2

IdentityП
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
Read_1/ReadVariableOpn

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АА2

Identity_1К
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:А*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2

Identity_2╒
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         А:                  А:         А:         А: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference_standard_lstm_3825572
PartitionedCall╖

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity_3"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  А: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs
цA
└
 __inference_standard_lstm_379810

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2¤
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         А2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         А2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         А2
	Sigmoid_1[
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         А2
mulW
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         А2
Tanh_
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         А2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         А2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         А2
	Sigmoid_2V
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         А2
Tanh_1c
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         А2
mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2
TensorArrayV2_1/element_shape╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterк
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*g
_output_shapesU
S: : : : :         А:         А: : :
АА:
АА:А* 
_read_only_resource_inputs
 *
bodyR
while_body_379725*
condR
while_cond_379724*f
output_shapesU
S: : : : :         А:         А: : :
АА:
АА:А*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   22
0TensorArrayV2Stack/TensorListStack/element_shapeЄ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Ы
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permп
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         А2

Identity_2g

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_a48b67aa-8aee-4f44-aaa8-90b674fcf8d0*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
цA
└
 __inference_standard_lstm_377936

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2¤
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         А2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         А2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         А2
	Sigmoid_1[
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         А2
mulW
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         А2
Tanh_
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         А2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         А2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         А2
	Sigmoid_2V
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         А2
Tanh_1c
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         А2
mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2
TensorArrayV2_1/element_shape╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterк
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*g
_output_shapesU
S: : : : :         А:         А: : :
АА:
АА:А* 
_read_only_resource_inputs
 *
bodyR
while_body_377851*
condR
while_cond_377850*f
output_shapesU
S: : : : :         А:         А: : :
АА:
АА:А*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   22
0TensorArrayV2Stack/TensorListStack/element_shapeЄ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Ы
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permп
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         А2

Identity_2g

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_ee042e43-be96-4b1e-8c30-912ddedd4bb9*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
╡	
┴
while_cond_377393
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_377393___redundant_placeholder04
0while_while_cond_377393___redundant_placeholder14
0while_while_cond_377393___redundant_placeholder24
0while_while_cond_377393___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         А:         А: ::::: 
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
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ЁT
д
'__forward_gpu_lstm_with_fallback_382392

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimА

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         А2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЖ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         А2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЩ
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimй
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:А:А:А:А:А:А:А:А*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_1e
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АА2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:А2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:А2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:А2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:А2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:А2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:А2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisР

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1ц
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  А:         А:         А:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permХ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2	
SqueezeА
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         А2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_a885fd49-1f47-4359-ad50-c49e5eada4a5*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_382217_382393*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
цA
└
 __inference_standard_lstm_377479

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2¤
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         А2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         А2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         А2
	Sigmoid_1[
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         А2
mulW
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         А2
Tanh_
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         А2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         А2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         А2
	Sigmoid_2V
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         А2
Tanh_1c
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         А2
mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2
TensorArrayV2_1/element_shape╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterк
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*g
_output_shapesU
S: : : : :         А:         А: : :
АА:
АА:А* 
_read_only_resource_inputs
 *
bodyR
while_body_377394*
condR
while_cond_377393*f
output_shapesU
S: : : : :         А:         А: : :
АА:
АА:А*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   22
0TensorArrayV2Stack/TensorListStack/element_shapeЄ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Ы
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permп
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         А2

Identity_2g

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_48a16ebd-cfa1-4e65-9946-31335c9ccdf8*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
И-
╧
while_body_380941
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         А2
while/MatMulХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         А2
while/MatMul_1Д
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
	while/addБ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         А2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim█
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
while/splitr
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         А2
while/Sigmoidv
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         А2
while/Sigmoid_1z
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         А2
	while/muli

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         А2

while/Tanhw
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         А2
while/mul_1v
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         А2
while/add_1v
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         А2
while/Sigmoid_2h
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         А2
while/Tanh_1{
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         А2
while/mul_2╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         А2
while/Identity_4t
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         А2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S: : : : :         А:         А: : :
АА:
АА:А: 
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
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
АА:&	"
 
_output_shapes
:
АА:!


_output_shapes	
:А
ЁT
д
'__forward_gpu_lstm_with_fallback_383262

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimА

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         А2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЖ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         А2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЩ
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimй
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:А:А:А:А:А:А:А:А*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_1e
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АА2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:А2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:А2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:А2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:А2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:А2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:А2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisР

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1ц
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  А:         А:         А:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permХ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2	
SqueezeА
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         А2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_f1facdf3-cca9-44b9-a106-85a1aa20d778*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_383087_383263*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
ц%
╥
F__inference_sequential_layer_call_and_return_conditional_losses_380209
time_distributed_input.
time_distributed_380182:А&
time_distributed_380184:	А
lstm_380195:
АА
lstm_380197:
АА
lstm_380199:	А
dense_380203:	А
dense_380205:
identityИвdense/StatefulPartitionedCallвlstm/StatefulPartitionedCallв(time_distributed/StatefulPartitionedCallс
(time_distributed/StatefulPartitionedCallStatefulPartitionedCalltime_distributed_inputtime_distributed_380182time_distributed_380184*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_3770022*
(time_distributed/StatefulPartitionedCallХ
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2 
time_distributed/Reshape/shape╢
time_distributed/ReshapeReshapetime_distributed_input'time_distributed/Reshape/shape:output:0*
T0*+
_output_shapes
:         2
time_distributed/Reshape▓
"time_distributed_1/PartitionedCallPartitionedCall1time_distributed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_3771452$
"time_distributed_1/PartitionedCallЩ
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2"
 time_distributed_1/Reshape/shape╪
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*,
_output_shapes
:         А2
time_distributed_1/Reshapeи
"time_distributed_2/PartitionedCallPartitionedCall+time_distributed_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_3772412$
"time_distributed_2/PartitionedCallЩ
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2"
 time_distributed_2/Reshape/shape╥
time_distributed_2/ReshapeReshape+time_distributed_1/PartitionedCall:output:0)time_distributed_2/Reshape/shape:output:0*
T0*,
_output_shapes
:         А2
time_distributed_2/Reshape╕
lstm/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_2/PartitionedCall:output:0lstm_380195lstm_380197lstm_380199*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_3795532
lstm/StatefulPartitionedCallЇ
dropout/PartitionedCallPartitionedCall%lstm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_3795662
dropout/PartitionedCallв
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_380203dense_380205*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_3795782
dense/StatefulPartitionedCallф
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall^lstm/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:"                  : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall:p l
8
_output_shapes&
$:"                  
0
_user_specified_nametime_distributed_input
м#
╝
@__inference_lstm_layer_call_and_return_conditional_losses_377752

inputs0
read_readvariableop_resource:
АА2
read_1_readvariableop_resource:
АА-
read_2_readvariableop_resource:	А

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         А2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         А2	
zeros_1Й
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
Read/ReadVariableOph
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АА2

IdentityП
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
Read_1/ReadVariableOpn

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АА2

Identity_1К
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:А*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2

Identity_2╒
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         А:                  А:         А:         А: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference_standard_lstm_3774792
PartitionedCall╖

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity_3"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  А: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs
х
┤
%__inference_lstm_layer_call_fn_381525

inputs
unknown:
АА
	unknown_0:
АА
	unknown_1:	А
identityИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_3800832
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs
┤#
╛
@__inference_lstm_layer_call_and_return_conditional_losses_381960
inputs_00
read_readvariableop_resource:
АА2
read_1_readvariableop_resource:
АА-
read_2_readvariableop_resource:	А

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOpF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         А2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         А2	
zeros_1Й
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
Read/ReadVariableOph
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АА2

IdentityП
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
Read_1/ReadVariableOpn

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АА2

Identity_1К
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:А*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2

Identity_2╫
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         А:                  А:         А:         А: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference_standard_lstm_3816872
PartitionedCall╖

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity_3"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  А: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:_ [
5
_output_shapes#
!:                  А
"
_user_specified_name
inputs/0
Ы
Ф
&__inference_dense_layer_call_fn_383301

inputs
unknown:	А
	unknown_0:
identityИвStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_3795782
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ЁT
д
'__forward_gpu_lstm_with_fallback_380795

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimА

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         А2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЖ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         А2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЩ
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimй
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:А:А:А:А:А:А:А:А*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_1e
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АА2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:А2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:А2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:А2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:А2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:А2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:А2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisР

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1ц
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  А:         А:         А:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permХ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2	
SqueezeА
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         А2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_3a90fb1d-3b6e-4cf2-a61c-a402e9212620*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_380620_380796*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
ё
╨
L__inference_time_distributed_layer_call_and_return_conditional_losses_377051

inputs$
conv1d_377040:А
conv1d_377042:	А
identityИвconv1d/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slices
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Reshape/shapes
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:         2	
ReshapeЬ
conv1d/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0conv1d_377040conv1d_377042*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_3769902 
conv1d/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2i
Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А2
Reshape_1/shape/3─
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeи
	Reshape_1Reshape'conv1d/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*9
_output_shapes'
%:#                  А2
	Reshape_1Щ
IdentityIdentityReshape_1:output:0^conv1d/StatefulPartitionedCall*
T0*9
_output_shapes'
%:#                  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:"                  : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall:` \
8
_output_shapes&
$:"                  
 
_user_specified_nameinputs
ы
╢
%__inference_lstm_layer_call_fn_381492
inputs_0
unknown:
АА
	unknown_0:
АА
	unknown_1:	А
identityИвStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_3777522
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:                  А
"
_user_specified_name
inputs/0
ф 
╣
L__inference_time_distributed_layer_call_and_return_conditional_losses_381387

inputsI
2conv1d_conv1d_expanddims_1_readvariableop_resource:А5
&conv1d_biasadd_readvariableop_resource:	А
identityИвconv1d/BiasAdd/ReadVariableOpв)conv1d/conv1d/ExpandDims_1/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slices
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Reshape/shapes
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:         2	
ReshapeЗ
conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        2
conv1d/conv1d/ExpandDims/dim╡
conv1d/conv1d/ExpandDims
ExpandDimsReshape:output:0%conv1d/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:         2
conv1d/conv1d/ExpandDims╬
)conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:А*
dtype02+
)conv1d/conv1d/ExpandDims_1/ReadVariableOpВ
conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
conv1d/conv1d/ExpandDims_1/dim╘
conv1d/conv1d/ExpandDims_1
ExpandDims1conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:0'conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:А2
conv1d/conv1d/ExpandDims_1╘
conv1d/conv1dConv2D!conv1d/conv1d/ExpandDims:output:0#conv1d/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2
conv1d/conv1dи
conv1d/conv1d/SqueezeSqueezeconv1d/conv1d:output:0*
T0*,
_output_shapes
:         А*
squeeze_dims

¤        2
conv1d/conv1d/Squeezeв
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
conv1d/BiasAdd/ReadVariableOpй
conv1d/BiasAddBiasAddconv1d/conv1d/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         А2
conv1d/BiasAddr
conv1d/SeluSeluconv1d/BiasAdd:output:0*
T0*,
_output_shapes
:         А2
conv1d/Seluq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2i
Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А2
Reshape_1/shape/3─
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeЪ
	Reshape_1Reshapeconv1d/Selu:activations:0Reshape_1/shape:output:0*
T0*9
_output_shapes'
%:#                  А2
	Reshape_1─
IdentityIdentityReshape_1:output:0^conv1d/BiasAdd/ReadVariableOp*^conv1d/conv1d/ExpandDims_1/ReadVariableOp*
T0*9
_output_shapes'
%:#                  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:"                  : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/conv1d/ExpandDims_1/ReadVariableOp)conv1d/conv1d/ExpandDims_1/ReadVariableOp:` \
8
_output_shapes&
$:"                  
 
_user_specified_nameinputs
цA
└
 __inference_standard_lstm_379280

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2¤
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         А2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         А2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         А2
	Sigmoid_1[
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         А2
mulW
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         А2
Tanh_
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         А2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         А2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         А2
	Sigmoid_2V
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         А2
Tanh_1c
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         А2
mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2
TensorArrayV2_1/element_shape╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterк
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*g
_output_shapesU
S: : : : :         А:         А: : :
АА:
АА:А* 
_read_only_resource_inputs
 *
bodyR
while_body_379195*
condR
while_cond_379194*f
output_shapesU
S: : : : :         А:         А: : :
АА:
АА:А*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   22
0TensorArrayV2Stack/TensorListStack/element_shapeЄ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Ы
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permп
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         А2

Identity_2g

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_0b0184b3-494e-4b6e-a378-dd4700854b6d*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
╡	
┴
while_cond_381601
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_381601___redundant_placeholder04
0while_while_cond_381601___redundant_placeholder14
0while_while_cond_381601___redundant_placeholder24
0while_while_cond_381601___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         А:         А: ::::: 
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
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
х
┤
%__inference_lstm_layer_call_fn_381514

inputs
unknown:
АА
	unknown_0:
АА
	unknown_1:	А
identityИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_3795532
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs
·
д
1__inference_time_distributed_layer_call_fn_381331

inputs
unknown:А
	unknown_0:	А
identityИвStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_3770512
StatefulPartitionedCallа
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*9
_output_shapes'
%:#                  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:"                  : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
8
_output_shapes&
$:"                  
 
_user_specified_nameinputs
И-
╧
while_body_379725
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         А2
while/MatMulХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         А2
while/MatMul_1Д
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
	while/addБ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         А2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim█
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
while/splitr
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         А2
while/Sigmoidv
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         А2
while/Sigmoid_1z
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         А2
	while/muli

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         А2

while/Tanhw
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         А2
while/mul_1v
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         А2
while/add_1v
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         А2
while/Sigmoid_2h
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         А2
while/Tanh_1{
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         А2
while/mul_2╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         А2
while/Identity_4t
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         А2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S: : : : :         А:         А: : :
АА:
АА:А: 
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
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
АА:&	"
 
_output_shapes
:
АА:!


_output_shapes	
:А
ЁT
д
'__forward_gpu_lstm_with_fallback_376950

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimА

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         А2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЖ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         А2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЩ
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimй
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:А:А:А:А:А:А:А:А*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_1e
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АА2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:А2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:А2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:А2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:А2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:А2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:А2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisР

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1ц
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  А:         А:         А:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permХ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2	
SqueezeА
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         А2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_92e7a4b7-b705-4ad9-b605-891e2d6722ba*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_376775_376951*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
цA
└
 __inference_standard_lstm_382992

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2¤
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         А2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         А2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         А2
	Sigmoid_1[
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         А2
mulW
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         А2
Tanh_
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         А2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         А2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         А2
	Sigmoid_2V
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         А2
Tanh_1c
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         А2
mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2
TensorArrayV2_1/element_shape╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterк
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*g
_output_shapesU
S: : : : :         А:         А: : :
АА:
АА:А* 
_read_only_resource_inputs
 *
bodyR
while_body_382907*
condR
while_cond_382906*f
output_shapesU
S: : : : :         А:         А: : :
АА:
АА:А*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   22
0TensorArrayV2Stack/TensorListStack/element_shapeЄ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Ы
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permп
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         А2

Identity_2g

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_f1facdf3-cca9-44b9-a106-85a1aa20d778*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
ф 
╣
L__inference_time_distributed_layer_call_and_return_conditional_losses_381359

inputsI
2conv1d_conv1d_expanddims_1_readvariableop_resource:А5
&conv1d_biasadd_readvariableop_resource:	А
identityИвconv1d/BiasAdd/ReadVariableOpв)conv1d/conv1d/ExpandDims_1/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slices
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Reshape/shapes
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:         2	
ReshapeЗ
conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        2
conv1d/conv1d/ExpandDims/dim╡
conv1d/conv1d/ExpandDims
ExpandDimsReshape:output:0%conv1d/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:         2
conv1d/conv1d/ExpandDims╬
)conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:А*
dtype02+
)conv1d/conv1d/ExpandDims_1/ReadVariableOpВ
conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
conv1d/conv1d/ExpandDims_1/dim╘
conv1d/conv1d/ExpandDims_1
ExpandDims1conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:0'conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:А2
conv1d/conv1d/ExpandDims_1╘
conv1d/conv1dConv2D!conv1d/conv1d/ExpandDims:output:0#conv1d/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2
conv1d/conv1dи
conv1d/conv1d/SqueezeSqueezeconv1d/conv1d:output:0*
T0*,
_output_shapes
:         А*
squeeze_dims

¤        2
conv1d/conv1d/Squeezeв
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
conv1d/BiasAdd/ReadVariableOpй
conv1d/BiasAddBiasAddconv1d/conv1d/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         А2
conv1d/BiasAddr
conv1d/SeluSeluconv1d/BiasAdd:output:0*
T0*,
_output_shapes
:         А2
conv1d/Seluq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2i
Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А2
Reshape_1/shape/3─
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeЪ
	Reshape_1Reshapeconv1d/Selu:activations:0Reshape_1/shape:output:0*
T0*9
_output_shapes'
%:#                  А2
	Reshape_1─
IdentityIdentityReshape_1:output:0^conv1d/BiasAdd/ReadVariableOp*^conv1d/conv1d/ExpandDims_1/ReadVariableOp*
T0*9
_output_shapes'
%:#                  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:"                  : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/conv1d/ExpandDims_1/ReadVariableOp)conv1d/conv1d/ExpandDims_1/ReadVariableOp:` \
8
_output_shapes&
$:"                  
 
_user_specified_nameinputs
ЫI
╠
)__inference_gpu_lstm_with_fallback_383086

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         А2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimД
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         А2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЩ
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimй
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:А:А:А:А:А:А:А:А*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_1e
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АА2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:А2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:А2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:А2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:А2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:А2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:А2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisм
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:АИ<2

concat_1т
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  А:         А:         А:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permХ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2	
SqueezeА
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         А2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_f1facdf3-cca9-44b9-a106-85a1aa20d778*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
▌
У
B__inference_conv1d_layer_call_and_return_conditional_losses_383336

inputsB
+conv1d_expanddims_1_readvariableop_resource:А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpв"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        2
conv1d/ExpandDims/dimЦ
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:         2
conv1d/ExpandDims╣
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:А*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim╕
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:А2
conv1d/ExpandDims_1╕
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
2
conv1dУ
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:         А*
squeeze_dims

¤        2
conv1d/SqueezeН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpН
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         А2	
BiasAdd]
SeluSeluBiasAdd:output:0*
T0*,
_output_shapes
:         А2
Seluй
IdentityIdentitySelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*,
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ЫI
╠
)__inference_gpu_lstm_with_fallback_376774

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         А2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimД
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         А2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЩ
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimй
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:А:А:А:А:А:А:А:А*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_1e
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АА2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:А2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:А2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:А2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:А2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:А2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:А2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisм
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:АИ<2

concat_1т
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  А:         А:         А:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permХ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2	
SqueezeА
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         А2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_92e7a4b7-b705-4ad9-b605-891e2d6722ba*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
нц
є
;__inference___backward_gpu_lstm_with_fallback_378031_378207
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5Иv
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         А2
gradients/grad_ys_0Е
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  А2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         А2
gradients/grad_ys_2x
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         А2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end╕
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides▄
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  А*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationщ
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  А2&
$gradients/transpose_9_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╟
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         А2 
gradients/Squeeze_grad/ReshapeЧ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape═
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         А2"
 gradients/Squeeze_1_grad/ReshapeХ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  А2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like╣
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*m
_output_shapes[
Y:                  А:         А:         А:АИ<2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationА
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  А2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeы
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         А2#
!gradients/ExpandDims_grad/ReshapeЮ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeё
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         А2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modК
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:АА2
gradients/concat_1_grad/ShapeО
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_1О
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_2О
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_3О
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_4О
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_5О
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_6О
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_7Н
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_8Н
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_9П
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_10П
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_11П
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_12П
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_13П
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_14П
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetО
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:АА2
gradients/concat_1_grad/SliceФ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_1Ф
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_2Ф
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_3Ф
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_4Ф
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_5Ф
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_6Ф
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_7У
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_8У
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_9Ч
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_10Ч
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_11Ч
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_12Ч
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_13Ч
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_14Ч
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_15Н
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2
gradients/Reshape_grad/Shape┼
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2 
gradients/Reshape_grad/ReshapeС
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_1_grad/Shape═
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_2_grad/Shape═
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_3_grad/Shape═
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_4_grad/Shape═
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_5_grad/Shape═
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_6_grad/Shape═
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_6_grad/ReshapeС
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_7_grad/Shape═
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_7_grad/ReshapeЛ
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2 
gradients/Reshape_8_grad/Shape╚
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:А2"
 gradients/Reshape_8_grad/ReshapeЛ
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2 
gradients/Reshape_9_grad/Shape╚
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:А2"
 gradients/Reshape_9_grad/ReshapeН
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_10_grad/Shape╠
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_10_grad/ReshapeН
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_11_grad/Shape╠
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_11_grad/ReshapeН
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_12_grad/Shape╠
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_12_grad/ReshapeН
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_13_grad/Shape╠
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_13_grad/ReshapeН
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_14_grad/Shape╠
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_14_grad/ReshapeН
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_15_grad/Shape╠
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationс
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationс
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationс
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationс
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationс
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationс
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationс
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_8_grad/transposeИ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А2
gradients/split_2_grad/concat╧
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
АА2
gradients/split_grad/concat╫
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
АА2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/Shape_1Ё
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Sliceў
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Slice_1И
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:                  А2

IdentityГ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         А2

Identity_1Е

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         А2

Identity_2u

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
АА2

Identity_3w

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
АА2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapes■
√:         А:                  А:         А:         А: :                  А::         А:         А::                  А:         А:         А:АИ<::         А:         А: ::::::::: : : : *=
api_implements+)lstm_ee042e43-be96-4b1e-8c30-912ddedd4bb9*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_378206*
go_backwards( *

time_major( :. *
(
_output_shapes
:         А:;7
5
_output_shapes#
!:                  А:.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :;7
5
_output_shapes#
!:                  А: 

_output_shapes
::2.
,
_output_shapes
:         А:2.
,
_output_shapes
:         А:	

_output_shapes
::;
7
5
_output_shapes#
!:                  А:2.
,
_output_shapes
:         А:2.
,
_output_shapes
:         А:"

_output_shapes

:АИ<: 

_output_shapes
::.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
И-
╧
while_body_376595
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╘
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         А2
while/MatMulХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         А2
while/MatMul_1Д
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
	while/addБ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         А2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim█
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
while/splitr
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         А2
while/Sigmoidv
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         А2
while/Sigmoid_1z
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         А2
	while/muli

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         А2

while/Tanhw
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         А2
while/mul_1v
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         А2
while/add_1v
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         А2
while/Sigmoid_2h
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         А2
while/Tanh_1{
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         А2
while/mul_2╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         А2
while/Identity_4t
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         А2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S: : : : :         А:         А: : :
АА:
АА:А: 
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
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
АА:&	"
 
_output_shapes
:
АА:!


_output_shapes	
:А
▀
_
C__inference_flatten_layer_call_and_return_conditional_losses_377234

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
ЫI
╠
)__inference_gpu_lstm_with_fallback_381120

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         А2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimД
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         А2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЩ
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimй
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:А:А:А:А:А:А:А:А*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_1e
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АА2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:А2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:А2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:А2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:А2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:А2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:А2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisм
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:АИ<2

concat_1т
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  А:         А:         А:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permХ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2	
SqueezeА
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         А2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_0b7a119e-567e-4fd7-a86b-8cfad7f34af1*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
╡	
┴
while_cond_376594
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_376594___redundant_placeholder04
0while_while_cond_376594___redundant_placeholder14
0while_while_cond_376594___redundant_placeholder24
0while_while_cond_376594___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         А:         А: ::::: 
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
: :.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Р
e
I__inference_max_pooling1d_layer_call_and_return_conditional_losses_377118

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dimУ

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+                           2

ExpandDims▒
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+                           *
ksize
*
paddingVALID*
strides
2	
MaxPoolО
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'                           *
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'                           2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
нц
є
;__inference___backward_gpu_lstm_with_fallback_381782_381958
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5Иv
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         А2
gradients/grad_ys_0Е
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  А2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         А2
gradients/grad_ys_2x
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         А2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end╕
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides▄
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  А*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationщ
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  А2&
$gradients/transpose_9_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╟
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         А2 
gradients/Squeeze_grad/ReshapeЧ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape═
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         А2"
 gradients/Squeeze_1_grad/ReshapeХ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  А2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like╣
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*m
_output_shapes[
Y:                  А:         А:         А:АИ<2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationА
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  А2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeы
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         А2#
!gradients/ExpandDims_grad/ReshapeЮ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeё
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         А2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modК
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:АА2
gradients/concat_1_grad/ShapeО
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_1О
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_2О
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_3О
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_4О
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_5О
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_6О
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_7Н
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_8Н
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_9П
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_10П
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_11П
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_12П
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_13П
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_14П
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetО
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:АА2
gradients/concat_1_grad/SliceФ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_1Ф
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_2Ф
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_3Ф
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_4Ф
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_5Ф
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_6Ф
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_7У
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_8У
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_9Ч
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_10Ч
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_11Ч
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_12Ч
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_13Ч
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_14Ч
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_15Н
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2
gradients/Reshape_grad/Shape┼
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2 
gradients/Reshape_grad/ReshapeС
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_1_grad/Shape═
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_2_grad/Shape═
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_3_grad/Shape═
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_4_grad/Shape═
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_5_grad/Shape═
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_6_grad/Shape═
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_6_grad/ReshapeС
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_7_grad/Shape═
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_7_grad/ReshapeЛ
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2 
gradients/Reshape_8_grad/Shape╚
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:А2"
 gradients/Reshape_8_grad/ReshapeЛ
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2 
gradients/Reshape_9_grad/Shape╚
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:А2"
 gradients/Reshape_9_grad/ReshapeН
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_10_grad/Shape╠
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_10_grad/ReshapeН
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_11_grad/Shape╠
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_11_grad/ReshapeН
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_12_grad/Shape╠
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_12_grad/ReshapeН
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_13_grad/Shape╠
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_13_grad/ReshapeН
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_14_grad/Shape╠
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_14_grad/ReshapeН
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_15_grad/Shape╠
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationс
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationс
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationс
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationс
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationс
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationс
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationс
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_8_grad/transposeИ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А2
gradients/split_2_grad/concat╧
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
АА2
gradients/split_grad/concat╫
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
АА2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/Shape_1Ё
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Sliceў
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Slice_1И
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:                  А2

IdentityГ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         А2

Identity_1Е

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         А2

Identity_2u

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
АА2

Identity_3w

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
АА2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapes■
√:         А:                  А:         А:         А: :                  А::         А:         А::                  А:         А:         А:АИ<::         А:         А: ::::::::: : : : *=
api_implements+)lstm_292440eb-75f4-4dc9-a58d-fc1ccc5b9fea*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_381957*
go_backwards( *

time_major( :. *
(
_output_shapes
:         А:;7
5
_output_shapes#
!:                  А:.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :;7
5
_output_shapes#
!:                  А: 

_output_shapes
::2.
,
_output_shapes
:         А:2.
,
_output_shapes
:         А:	

_output_shapes
::;
7
5
_output_shapes#
!:                  А:2.
,
_output_shapes
:         А:2.
,
_output_shapes
:         А:"

_output_shapes

:АИ<: 

_output_shapes
::.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
н
j
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_381437

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slices
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       А   2
Reshape/shapet
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:         А2	
Reshape~
max_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
max_pooling1d/ExpandDims/dim╢
max_pooling1d/ExpandDims
ExpandDimsReshape:output:0%max_pooling1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         А2
max_pooling1d/ExpandDims╩
max_pooling1d/MaxPoolMaxPool!max_pooling1d/ExpandDims:output:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2
max_pooling1d/MaxPoolз
max_pooling1d/SqueezeSqueezemax_pooling1d/MaxPool:output:0*
T0*,
_output_shapes
:         А*
squeeze_dims
2
max_pooling1d/Squeezeq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         2
Reshape_1/shape/0h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2i
Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value
B :А2
Reshape_1/shape/3─
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shapeЯ
	Reshape_1Reshapemax_pooling1d/Squeeze:output:0Reshape_1/shape:output:0*
T0*9
_output_shapes'
%:#                  А2
	Reshape_1x
IdentityIdentityReshape_1:output:0*
T0*9
_output_shapes'
%:#                  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:#                  А:a ]
9
_output_shapes'
%:#                  А
 
_user_specified_nameinputs
ЫI
╠
)__inference_gpu_lstm_with_fallback_378030

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         А2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimД
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         А2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЩ
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimй
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
АА:
АА:
АА:
АА*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:А:А:А:А:А:А:А:А*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_1e
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АА2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
АА2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:АА2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:А2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:А2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:А2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:А2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:А2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:А2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisм
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:АИ<2

concat_1т
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  А:         А:         А:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permХ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2	
SqueezeА
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         А*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         А2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_ee042e43-be96-4b1e-8c30-912ddedd4bb9*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
нц
є
;__inference___backward_gpu_lstm_with_fallback_377574_377750
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5Иv
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         А2
gradients/grad_ys_0Е
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  А2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         А2
gradients/grad_ys_2x
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         А2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end╕
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides▄
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  А*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationщ
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  А2&
$gradients/transpose_9_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╟
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         А2 
gradients/Squeeze_grad/ReshapeЧ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape═
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         А2"
 gradients/Squeeze_1_grad/ReshapeХ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  А2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like╣
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*m
_output_shapes[
Y:                  А:         А:         А:АИ<2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationА
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  А2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeы
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         А2#
!gradients/ExpandDims_grad/ReshapeЮ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeё
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         А2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modК
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:АА2
gradients/concat_1_grad/ShapeО
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_1О
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_2О
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_3О
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_4О
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_5О
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_6О
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:АА2!
gradients/concat_1_grad/Shape_7Н
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_8Н
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_9П
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_10П
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_11П
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_12П
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_13П
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_14П
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:А2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetО
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:АА2
gradients/concat_1_grad/SliceФ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_1Ф
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_2Ф
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_3Ф
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_4Ф
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_5Ф
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_6Ф
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:АА2!
gradients/concat_1_grad/Slice_7У
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_8У
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_9Ч
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_10Ч
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_11Ч
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_12Ч
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_13Ч
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_14Ч
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:А2"
 gradients/concat_1_grad/Slice_15Н
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2
gradients/Reshape_grad/Shape┼
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2 
gradients/Reshape_grad/ReshapeС
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_1_grad/Shape═
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_2_grad/Shape═
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А      2 
gradients/Reshape_3_grad/Shape═
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_4_grad/Shape═
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_5_grad/Shape═
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_6_grad/Shape═
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_6_grad/ReshapeС
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   А   2 
gradients/Reshape_7_grad/Shape═
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
АА2"
 gradients/Reshape_7_grad/ReshapeЛ
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2 
gradients/Reshape_8_grad/Shape╚
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:А2"
 gradients/Reshape_8_grad/ReshapeЛ
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2 
gradients/Reshape_9_grad/Shape╚
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:А2"
 gradients/Reshape_9_grad/ReshapeН
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_10_grad/Shape╠
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_10_grad/ReshapeН
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_11_grad/Shape╠
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_11_grad/ReshapeН
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_12_grad/Shape╠
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_12_grad/ReshapeН
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_13_grad/Shape╠
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_13_grad/ReshapeН
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_14_grad/Shape╠
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_14_grad/ReshapeН
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/Reshape_15_grad/Shape╠
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:А2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationс
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationс
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationс
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationс
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationс
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationс
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationс
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АА2&
$gradients/transpose_8_grad/transposeИ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А2
gradients/split_2_grad/concat╧
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
АА2
gradients/split_grad/concat╫
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
АА2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/Shape_1Ё
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetё
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Sliceў
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Slice_1И
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:                  А2

IdentityГ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         А2

Identity_1Е

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         А2

Identity_2u

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
АА2

Identity_3w

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
АА2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapes■
√:         А:                  А:         А:         А: :                  А::         А:         А::                  А:         А:         А:АИ<::         А:         А: ::::::::: : : : *=
api_implements+)lstm_48a16ebd-cfa1-4e65-9946-31335c9ccdf8*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_377749*
go_backwards( *

time_major( :. *
(
_output_shapes
:         А:;7
5
_output_shapes#
!:                  А:.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :;7
5
_output_shapes#
!:                  А: 

_output_shapes
::2.
,
_output_shapes
:         А:2.
,
_output_shapes
:         А:	

_output_shapes
::;
7
5
_output_shapes#
!:                  А:2.
,
_output_shapes
:         А:2.
,
_output_shapes
:         А:"

_output_shapes

:АИ<: 

_output_shapes
::.*
(
_output_shapes
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
╤	
є
A__inference_dense_layer_call_and_return_conditional_losses_383311

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
в
J
.__inference_max_pooling1d_layer_call_fn_377124

inputs
identityр
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'                           * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_max_pooling1d_layer_call_and_return_conditional_losses_3771182
PartitionedCallВ
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'                           2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
цA
└
 __inference_standard_lstm_380525

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2¤
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         А2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         А2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         А2
	Sigmoid_1[
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         А2
mulW
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         А2
Tanh_
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         А2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         А2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         А2
	Sigmoid_2V
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         А2
Tanh_1c
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         А2
mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2
TensorArrayV2_1/element_shape╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterк
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*g
_output_shapesU
S: : : : :         А:         А: : :
АА:
АА:А* 
_read_only_resource_inputs
 *
bodyR
while_body_380440*
condR
while_cond_380439*f
output_shapesU
S: : : : :         А:         А: : :
АА:
АА:А*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   22
0TensorArrayV2Stack/TensorListStack/element_shapeЄ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Ы
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permп
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         А2

Identity_2g

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_3a90fb1d-3b6e-4cf2-a61c-a402e9212620*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
·
д
1__inference_time_distributed_layer_call_fn_381322

inputs
unknown:А
	unknown_0:	А
identityИвStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#                  А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_3770022
StatefulPartitionedCallа
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*9
_output_shapes'
%:#                  А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:"                  : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
8
_output_shapes&
$:"                  
 
_user_specified_nameinputs
м#
╝
@__inference_lstm_layer_call_and_return_conditional_losses_379553

inputs0
read_readvariableop_resource:
АА2
read_1_readvariableop_resource:
АА-
read_2_readvariableop_resource:	А

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         А2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         А2	
zeros_1Й
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
Read/ReadVariableOph
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АА2

IdentityП
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
Read_1/ReadVariableOpn

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АА2

Identity_1К
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:А*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2

Identity_2╒
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         А:                  А:         А:         А: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference_standard_lstm_3792802
PartitionedCall╖

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity_3"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  А: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs
цA
└
 __inference_standard_lstm_382557

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permД
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  А2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2¤
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         А2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         А2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         А2
	Sigmoid_1[
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         А2
mulW
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         А2
Tanh_
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         А2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         А2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         А2
	Sigmoid_2V
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         А2
Tanh_1c
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         А2
mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   2
TensorArrayV2_1/element_shape╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterк
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*g
_output_shapesU
S: : : : :         А:         А: : :
АА:
АА:А* 
_read_only_resource_inputs
 *
bodyR
while_body_382472*
condR
while_cond_382471*f
output_shapesU
S: : : : :         А:         А: : :
АА:
АА:А*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   22
0TensorArrayV2Stack/TensorListStack/element_shapeЄ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  А*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Ы
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permп
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  А2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         А2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  А2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         А2

Identity_2g

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         А2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         А:         А:
АА:
АА:А*=
api_implements+)lstm_310bffb0-67a7-402a-ac56-6ff196a6d557*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         А
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АА
 
_user_specified_namekernel:RN
 
_output_shapes
:
АА
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
╟@
╩
__inference__traced_save_383454
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop6
2savev2_time_distributed_kernel_read_readvariableop4
0savev2_time_distributed_bias_read_readvariableop4
0savev2_lstm_lstm_cell_kernel_read_readvariableop>
:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop2
.savev2_lstm_lstm_cell_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop=
9savev2_adam_time_distributed_kernel_m_read_readvariableop;
7savev2_adam_time_distributed_bias_m_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop=
9savev2_adam_time_distributed_kernel_v_read_readvariableop;
7savev2_adam_time_distributed_bias_v_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameЬ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*о
valueдBбB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names┬
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices─
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop2savev2_time_distributed_kernel_read_readvariableop0savev2_time_distributed_bias_read_readvariableop0savev2_lstm_lstm_cell_kernel_read_readvariableop:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop.savev2_lstm_lstm_cell_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop9savev2_adam_time_distributed_kernel_m_read_readvariableop7savev2_adam_time_distributed_bias_m_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop9savev2_adam_time_distributed_kernel_v_read_readvariableop7savev2_adam_time_distributed_bias_v_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *+
dtypes!
2	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*∙
_input_shapesч
ф: :	А:: : : : : :А:А:
АА:
АА:А: : :	А::А:А:
АА:
АА:А:	А::А:А:
АА:
АА:А: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	А: 
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
: :)%
#
_output_shapes
:А:!	

_output_shapes	
:А:&
"
 
_output_shapes
:
АА:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	А: 

_output_shapes
::)%
#
_output_shapes
:А:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::)%
#
_output_shapes
:А:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:

_output_shapes
: "╠L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╫
serving_default├
j
time_distributed_inputP
(serving_default_time_distributed_input:0"                  9
dense0
StatefulPartitionedCall:0         tensorflow/serving/predict:Ю╦
┤A
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
	optimizer
	variables
	regularization_losses

trainable_variables
	keras_api

signatures
Т__call__
У_default_save_signature
+Ф&call_and_return_all_conditional_losses"╩>
_tf_keras_sequentialл>{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, 30, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "time_distributed_input"}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null, 30, 1]}, "dtype": "float32", "layer": {"class_name": "Conv1D", "config": {"name": "conv1d", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "selu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_1", "trainable": true, "dtype": "float32", "layer": {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}}}}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_2", "trainable": true, "dtype": "float32", "layer": {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}}}, {"class_name": "LSTM", "config": {"name": "lstm", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 30, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 30, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, null, 30, 1]}, "float32", "time_distributed_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, 30, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "time_distributed_input"}, "shared_object_id": 0}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null, 30, 1]}, "dtype": "float32", "layer": {"class_name": "Conv1D", "config": {"name": "conv1d", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "selu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}}, "shared_object_id": 4}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_1", "trainable": true, "dtype": "float32", "layer": {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}, "shared_object_id": 5}}, "shared_object_id": 6}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed_2", "trainable": true, "dtype": "float32", "layer": {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 7}}, "shared_object_id": 8}, {"class_name": "LSTM", "config": {"name": "lstm", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 13}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "shared_object_id": 14}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17}]}}, "training_config": {"loss": "mean_squared_error", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "clipnorm": 1.0, "learning_rate": 0.004999999888241291, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
Й
	layer
regularization_losses
	variables
trainable_variables
	keras_api
Х__call__
+Ц&call_and_return_all_conditional_losses"э
_tf_keras_layer╙{"name": "time_distributed", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null, 30, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "TimeDistributed", "config": {"name": "time_distributed", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null, 30, 1]}, "dtype": "float32", "layer": {"class_name": "Conv1D", "config": {"name": "conv1d", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "selu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 30, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 30, 1]}}
╘
	layer
regularization_losses
	variables
trainable_variables
	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses"╕
_tf_keras_layerЮ{"name": "time_distributed_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "TimeDistributed", "config": {"name": "time_distributed_1", "trainable": true, "dtype": "float32", "layer": {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}, "shared_object_id": 5}}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 29, 128]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 20}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 29, 128]}}
╟
	layer
regularization_losses
	variables
trainable_variables
	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses"л
_tf_keras_layerС{"name": "time_distributed_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "TimeDistributed", "config": {"name": "time_distributed_2", "trainable": true, "dtype": "float32", "layer": {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 7}}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 14, 128]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 14, 128]}}
╣
cell

state_spec
	variables
regularization_losses
 trainable_variables
!	keras_api
Ы__call__
+Ь&call_and_return_all_conditional_losses"О
_tf_keras_rnn_layerЁ
{"name": "lstm", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 13, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 1792]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 22}], "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 1792]}}
√
"regularization_losses
#	variables
$trainable_variables
%	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses"ъ
_tf_keras_layer╨{"name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "shared_object_id": 14}
╤

&kernel
'bias
(regularization_losses
)	variables
*trainable_variables
+	keras_api
Я__call__
+а&call_and_return_all_conditional_losses"к
_tf_keras_layerР{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 23}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
▀
,iter

-beta_1

.beta_2
	/decay
0learning_rate&mД'mЕ1mЖ2mЗ3mИ4mЙ5mК&vЛ'vМ1vН2vО3vП4vР5vС"
	optimizer
Q
10
21
32
43
54
&5
'6"
trackable_list_wrapper
 "
trackable_list_wrapper
Q
10
21
32
43
54
&5
'6"
trackable_list_wrapper
╬
6layer_regularization_losses
	variables
	regularization_losses

trainable_variables
7non_trainable_variables
8metrics

9layers
:layer_metrics
Т__call__
У_default_save_signature
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
-
бserving_default"
signature_map
Ї	

1kernel
2bias
;regularization_losses
<	variables
=trainable_variables
>	keras_api
в__call__
+г&call_and_return_all_conditional_losses"═
_tf_keras_layer│{"name": "conv1d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "conv1d", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "selu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 1}}, "shared_object_id": 24}}
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
░
?layer_regularization_losses
regularization_losses
	variables
trainable_variables
@non_trainable_variables
Ametrics

Blayers
Clayer_metrics
Х__call__
+Ц&call_and_return_all_conditional_losses
'Ц"call_and_return_conditional_losses"
_generic_user_object
ж
Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
д__call__
+е&call_and_return_all_conditional_losses"Х
_tf_keras_layer√{"name": "max_pooling1d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling1D", "config": {"name": "max_pooling1d", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}, "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 25}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
Hlayer_regularization_losses
regularization_losses
	variables
trainable_variables
Inon_trainable_variables
Jmetrics

Klayers
Llayer_metrics
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
У
Mregularization_losses
N	variables
Otrainable_variables
P	keras_api
ж__call__
+з&call_and_return_all_conditional_losses"В
_tf_keras_layerш{"name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 26}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
Qlayer_regularization_losses
regularization_losses
	variables
trainable_variables
Rnon_trainable_variables
Smetrics

Tlayers
Ulayer_metrics
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
Ц	
V
state_size

3kernel
4recurrent_kernel
5bias
Wregularization_losses
X	variables
Ytrainable_variables
Z	keras_api
и__call__
+й&call_and_return_all_conditional_losses"╔
_tf_keras_layerп{"name": "lstm_cell", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell", "trainable": true, "dtype": "float32", "units": 128, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 12}
 "
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
 "
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
╝
[layer_regularization_losses
	variables
regularization_losses

\states
 trainable_variables
]non_trainable_variables
^metrics

_layers
`layer_metrics
Ы__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
alayer_regularization_losses
"regularization_losses
#	variables
$trainable_variables
bnon_trainable_variables
cmetrics

dlayers
elayer_metrics
Э__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
:	А2dense/kernel
:2
dense/bias
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
░
flayer_regularization_losses
(regularization_losses
)	variables
*trainable_variables
gnon_trainable_variables
hmetrics

ilayers
jlayer_metrics
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.:,А2time_distributed/kernel
$:"А2time_distributed/bias
):'
АА2lstm/lstm_cell/kernel
3:1
АА2lstm/lstm_cell/recurrent_kernel
": А2lstm/lstm_cell/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
k0"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
░
llayer_regularization_losses
;regularization_losses
<	variables
=trainable_variables
mnon_trainable_variables
nmetrics

olayers
player_metrics
в__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
qlayer_regularization_losses
Dregularization_losses
E	variables
Ftrainable_variables
rnon_trainable_variables
smetrics

tlayers
ulayer_metrics
д__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
vlayer_regularization_losses
Mregularization_losses
N	variables
Otrainable_variables
wnon_trainable_variables
xmetrics

ylayers
zlayer_metrics
ж__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
░
{layer_regularization_losses
Wregularization_losses
X	variables
Ytrainable_variables
|non_trainable_variables
}metrics

~layers
layer_metrics
и__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
╪

Аtotal

Бcount
В	variables
Г	keras_api"Э
_tf_keras_metricВ{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 27}
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
0
А0
Б1"
trackable_list_wrapper
.
В	variables"
_generic_user_object
$:"	А2Adam/dense/kernel/m
:2Adam/dense/bias/m
3:1А2Adam/time_distributed/kernel/m
):'А2Adam/time_distributed/bias/m
.:,
АА2Adam/lstm/lstm_cell/kernel/m
8:6
АА2&Adam/lstm/lstm_cell/recurrent_kernel/m
':%А2Adam/lstm/lstm_cell/bias/m
$:"	А2Adam/dense/kernel/v
:2Adam/dense/bias/v
3:1А2Adam/time_distributed/kernel/v
):'А2Adam/time_distributed/bias/v
.:,
АА2Adam/lstm/lstm_cell/kernel/v
8:6
АА2&Adam/lstm/lstm_cell/recurrent_kernel/v
':%А2Adam/lstm/lstm_cell/bias/v
·2ў
+__inference_sequential_layer_call_fn_379602
+__inference_sequential_layer_call_fn_380285
+__inference_sequential_layer_call_fn_380304
+__inference_sequential_layer_call_fn_380179└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 2№
!__inference__wrapped_model_376960╓
Л▓З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *FвC
AК>
time_distributed_input"                  
ц2у
F__inference_sequential_layer_call_and_return_conditional_losses_380805
F__inference_sequential_layer_call_and_return_conditional_losses_381313
F__inference_sequential_layer_call_and_return_conditional_losses_380209
F__inference_sequential_layer_call_and_return_conditional_losses_380239└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
м2й
1__inference_time_distributed_layer_call_fn_381322
1__inference_time_distributed_layer_call_fn_381331└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
т2▀
L__inference_time_distributed_layer_call_and_return_conditional_losses_381359
L__inference_time_distributed_layer_call_and_return_conditional_losses_381387└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
░2н
3__inference_time_distributed_1_layer_call_fn_381392
3__inference_time_distributed_1_layer_call_fn_381397└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ц2у
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_381417
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_381437└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
░2н
3__inference_time_distributed_2_layer_call_fn_381442
3__inference_time_distributed_2_layer_call_fn_381447└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ц2у
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_381464
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_381481└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ў2Ї
%__inference_lstm_layer_call_fn_381492
%__inference_lstm_layer_call_fn_381503
%__inference_lstm_layer_call_fn_381514
%__inference_lstm_layer_call_fn_381525╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
у2р
@__inference_lstm_layer_call_and_return_conditional_losses_381960
@__inference_lstm_layer_call_and_return_conditional_losses_382395
@__inference_lstm_layer_call_and_return_conditional_losses_382830
@__inference_lstm_layer_call_and_return_conditional_losses_383265╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
О2Л
(__inference_dropout_layer_call_fn_383270
(__inference_dropout_layer_call_fn_383275┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
─2┴
C__inference_dropout_layer_call_and_return_conditional_losses_383280
C__inference_dropout_layer_call_and_return_conditional_losses_383292┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╨2═
&__inference_dense_layer_call_fn_383301в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ы2ш
A__inference_dense_layer_call_and_return_conditional_losses_383311в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
┌B╫
$__inference_signature_wrapper_380266time_distributed_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╤2╬
'__inference_conv1d_layer_call_fn_383320в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ь2щ
B__inference_conv1d_layer_call_and_return_conditional_losses_383336в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Й2Ж
.__inference_max_pooling1d_layer_call_fn_377124╙
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *3в0
.К+'                           
д2б
I__inference_max_pooling1d_layer_call_and_return_conditional_losses_377118╙
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *3в0
.К+'                           
╥2╧
(__inference_flatten_layer_call_fn_383341в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
э2ъ
C__inference_flatten_layer_call_and_return_conditional_losses_383347в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
─2┴╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
─2┴╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 ░
!__inference__wrapped_model_376960К12345&'PвM
FвC
AК>
time_distributed_input"                  
к "-к*
(
denseК
dense         л
B__inference_conv1d_layer_call_and_return_conditional_losses_383336e123в0
)в&
$К!
inputs         
к "*в'
 К
0         А
Ъ Г
'__inference_conv1d_layer_call_fn_383320X123в0
)в&
$К!
inputs         
к "К         Ав
A__inference_dense_layer_call_and_return_conditional_losses_383311]&'0в-
&в#
!К
inputs         А
к "%в"
К
0         
Ъ z
&__inference_dense_layer_call_fn_383301P&'0в-
&в#
!К
inputs         А
к "К         е
C__inference_dropout_layer_call_and_return_conditional_losses_383280^4в1
*в'
!К
inputs         А
p 
к "&в#
К
0         А
Ъ е
C__inference_dropout_layer_call_and_return_conditional_losses_383292^4в1
*в'
!К
inputs         А
p
к "&в#
К
0         А
Ъ }
(__inference_dropout_layer_call_fn_383270Q4в1
*в'
!К
inputs         А
p 
к "К         А}
(__inference_dropout_layer_call_fn_383275Q4в1
*в'
!К
inputs         А
p
к "К         Ае
C__inference_flatten_layer_call_and_return_conditional_losses_383347^4в1
*в'
%К"
inputs         А
к "&в#
К
0         А
Ъ }
(__inference_flatten_layer_call_fn_383341Q4в1
*в'
%К"
inputs         А
к "К         А├
@__inference_lstm_layer_call_and_return_conditional_losses_381960345PвM
FвC
5Ъ2
0К-
inputs/0                  А

 
p 

 
к "&в#
К
0         А
Ъ ├
@__inference_lstm_layer_call_and_return_conditional_losses_382395345PвM
FвC
5Ъ2
0К-
inputs/0                  А

 
p

 
к "&в#
К
0         А
Ъ ╝
@__inference_lstm_layer_call_and_return_conditional_losses_382830x345IвF
?в<
.К+
inputs                  А

 
p 

 
к "&в#
К
0         А
Ъ ╝
@__inference_lstm_layer_call_and_return_conditional_losses_383265x345IвF
?в<
.К+
inputs                  А

 
p

 
к "&в#
К
0         А
Ъ Ы
%__inference_lstm_layer_call_fn_381492r345PвM
FвC
5Ъ2
0К-
inputs/0                  А

 
p 

 
к "К         АЫ
%__inference_lstm_layer_call_fn_381503r345PвM
FвC
5Ъ2
0К-
inputs/0                  А

 
p

 
к "К         АФ
%__inference_lstm_layer_call_fn_381514k345IвF
?в<
.К+
inputs                  А

 
p 

 
к "К         АФ
%__inference_lstm_layer_call_fn_381525k345IвF
?в<
.К+
inputs                  А

 
p

 
к "К         А╥
I__inference_max_pooling1d_layer_call_and_return_conditional_losses_377118ДEвB
;в8
6К3
inputs'                           
к ";в8
1К.
0'                           
Ъ й
.__inference_max_pooling1d_layer_call_fn_377124wEвB
;в8
6К3
inputs'                           
к ".К+'                           ╒
F__inference_sequential_layer_call_and_return_conditional_losses_380209К12345&'XвU
NвK
AК>
time_distributed_input"                  
p 

 
к "%в"
К
0         
Ъ ╒
F__inference_sequential_layer_call_and_return_conditional_losses_380239К12345&'XвU
NвK
AК>
time_distributed_input"                  
p

 
к "%в"
К
0         
Ъ ─
F__inference_sequential_layer_call_and_return_conditional_losses_380805z12345&'HвE
>в;
1К.
inputs"                  
p 

 
к "%в"
К
0         
Ъ ─
F__inference_sequential_layer_call_and_return_conditional_losses_381313z12345&'HвE
>в;
1К.
inputs"                  
p

 
к "%в"
К
0         
Ъ м
+__inference_sequential_layer_call_fn_379602}12345&'XвU
NвK
AК>
time_distributed_input"                  
p 

 
к "К         м
+__inference_sequential_layer_call_fn_380179}12345&'XвU
NвK
AК>
time_distributed_input"                  
p

 
к "К         Ь
+__inference_sequential_layer_call_fn_380285m12345&'HвE
>в;
1К.
inputs"                  
p 

 
к "К         Ь
+__inference_sequential_layer_call_fn_380304m12345&'HвE
>в;
1К.
inputs"                  
p

 
к "К         ═
$__inference_signature_wrapper_380266д12345&'jвg
в 
`к]
[
time_distributed_inputAК>
time_distributed_input"                  "-к*
(
denseК
dense         ╫
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_381417ДIвF
?в<
2К/
inputs#                  А
p 

 
к "7в4
-К*
0#                  А
Ъ ╫
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_381437ДIвF
?в<
2К/
inputs#                  А
p

 
к "7в4
-К*
0#                  А
Ъ о
3__inference_time_distributed_1_layer_call_fn_381392wIвF
?в<
2К/
inputs#                  А
p 

 
к "*К'#                  Ао
3__inference_time_distributed_1_layer_call_fn_381397wIвF
?в<
2К/
inputs#                  А
p

 
к "*К'#                  А╙
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_381464АIвF
?в<
2К/
inputs#                  А
p 

 
к "3в0
)К&
0                  А
Ъ ╙
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_381481АIвF
?в<
2К/
inputs#                  А
p

 
к "3в0
)К&
0                  А
Ъ к
3__inference_time_distributed_2_layer_call_fn_381442sIвF
?в<
2К/
inputs#                  А
p 

 
к "&К#                  Ак
3__inference_time_distributed_2_layer_call_fn_381447sIвF
?в<
2К/
inputs#                  А
p

 
к "&К#                  А╪
L__inference_time_distributed_layer_call_and_return_conditional_losses_381359З12HвE
>в;
1К.
inputs"                  
p 

 
к "7в4
-К*
0#                  А
Ъ ╪
L__inference_time_distributed_layer_call_and_return_conditional_losses_381387З12HвE
>в;
1К.
inputs"                  
p

 
к "7в4
-К*
0#                  А
Ъ п
1__inference_time_distributed_layer_call_fn_381322z12HвE
>в;
1К.
inputs"                  
p 

 
к "*К'#                  Ап
1__inference_time_distributed_layer_call_fn_381331z12HвE
>в;
1К.
inputs"                  
p

 
к "*К'#                  А