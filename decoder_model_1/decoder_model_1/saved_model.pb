®8
 Ú
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
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
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
¾
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
executor_typestring 

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
ö
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

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2

TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

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
"serve*2.5.02v2.5.0-0-ga4dfb8d1a718´Ç5

embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	íbd*'
shared_nameembedding_1/embeddings

*embedding_1/embeddings/Read/ReadVariableOpReadVariableOpembedding_1/embeddings*
_output_shapes
:	íbd*
dtype0

attention_layer/W_aVarHandleOp*
_output_shapes
: *
dtype0*
shape:
¬¬*$
shared_nameattention_layer/W_a
}
'attention_layer/W_a/Read/ReadVariableOpReadVariableOpattention_layer/W_a* 
_output_shapes
:
¬¬*
dtype0

attention_layer/U_aVarHandleOp*
_output_shapes
: *
dtype0*
shape:
¬¬*$
shared_nameattention_layer/U_a
}
'attention_layer/U_a/Read/ReadVariableOpReadVariableOpattention_layer/U_a* 
_output_shapes
:
¬¬*
dtype0

attention_layer/V_aVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¬*$
shared_nameattention_layer/V_a
|
'attention_layer/V_a/Read/ReadVariableOpReadVariableOpattention_layer/V_a*
_output_shapes
:	¬*
dtype0

lstm_3/lstm_cell_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d°	**
shared_namelstm_3/lstm_cell_3/kernel

-lstm_3/lstm_cell_3/kernel/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell_3/kernel*
_output_shapes
:	d°	*
dtype0
¤
#lstm_3/lstm_cell_3/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
¬°	*4
shared_name%#lstm_3/lstm_cell_3/recurrent_kernel

7lstm_3/lstm_cell_3/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_3/lstm_cell_3/recurrent_kernel* 
_output_shapes
:
¬°	*
dtype0

lstm_3/lstm_cell_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:°	*(
shared_namelstm_3/lstm_cell_3/bias

+lstm_3/lstm_cell_3/bias/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell_3/bias*
_output_shapes	
:°	*
dtype0

time_distributed/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Øíb*(
shared_nametime_distributed/kernel

+time_distributed/kernel/Read/ReadVariableOpReadVariableOptime_distributed/kernel* 
_output_shapes
:
Øíb*
dtype0

time_distributed/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:íb*&
shared_nametime_distributed/bias
|
)time_distributed/bias/Read/ReadVariableOpReadVariableOptime_distributed/bias*
_output_shapes	
:íb*
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

NoOpNoOp
»!
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ö 
valueì Bé  Bâ 
Ø
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

	optimizer
loss
trainable_variables
regularization_losses
	variables
	keras_api

signatures
 
b

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
 
 
l
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
 
m
W_a
U_a
V_a
trainable_variables
 regularization_losses
!	variables
"	keras_api
R
#trainable_variables
$regularization_losses
%	variables
&	keras_api
]
	'layer
(trainable_variables
)regularization_losses
*	variables
+	keras_api
 
 
?
0
,1
-2
.3
4
5
6
/7
08
 
?
0
,1
-2
.3
4
5
6
/7
08
­

1layers
2layer_regularization_losses
trainable_variables
3metrics
regularization_losses
4non_trainable_variables
5layer_metrics
	variables
 
fd
VARIABLE_VALUEembedding_1/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
­

6layers
7layer_regularization_losses
trainable_variables
8metrics
regularization_losses
9non_trainable_variables
:layer_metrics
	variables

;
state_size

,kernel
-recurrent_kernel
.bias
<trainable_variables
=regularization_losses
>	variables
?	keras_api
 

,0
-1
.2
 

,0
-1
.2
¹

@layers
Alayer_regularization_losses
trainable_variables
Bmetrics
regularization_losses
Cnon_trainable_variables
Dlayer_metrics
	variables

Estates
\Z
VARIABLE_VALUEattention_layer/W_a3layer_with_weights-2/W_a/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEattention_layer/U_a3layer_with_weights-2/U_a/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEattention_layer/V_a3layer_with_weights-2/V_a/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
 

0
1
2
­

Flayers
Glayer_regularization_losses
trainable_variables
Hmetrics
 regularization_losses
Inon_trainable_variables
Jlayer_metrics
!	variables
 
 
 
­

Klayers
Llayer_regularization_losses
#trainable_variables
Mmetrics
$regularization_losses
Nnon_trainable_variables
Olayer_metrics
%	variables
h

/kernel
0bias
Ptrainable_variables
Qregularization_losses
R	variables
S	keras_api

/0
01
 

/0
01
­

Tlayers
Ulayer_regularization_losses
(trainable_variables
Vmetrics
)regularization_losses
Wnon_trainable_variables
Xlayer_metrics
*	variables
_]
VARIABLE_VALUElstm_3/lstm_cell_3/kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#lstm_3/lstm_cell_3/recurrent_kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUElstm_3/lstm_cell_3/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEtime_distributed/kernel0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEtime_distributed/bias0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
?
0
1
2
3
4
5
6
7
	8
 

Y0
 
 
 
 
 
 
 
 

,0
-1
.2
 

,0
-1
.2
­

Zlayers
[layer_regularization_losses
<trainable_variables
\metrics
=regularization_losses
]non_trainable_variables
^layer_metrics
>	variables

0
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

/0
01
 

/0
01
­

_layers
`layer_regularization_losses
Ptrainable_variables
ametrics
Qregularization_losses
bnon_trainable_variables
clayer_metrics
R	variables

'0
 
 
 
 
4
	dtotal
	ecount
f	variables
g	keras_api
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

d0
e1

f	variables

serving_default_input_2Placeholder*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*%
shape:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
|
serving_default_input_3Placeholder*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ¬
|
serving_default_input_4Placeholder*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ¬

serving_default_input_5Placeholder*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬*
dtype0*!
shape:ÿÿÿÿÿÿÿÿÿP¬
¬
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2serving_default_input_3serving_default_input_4serving_default_input_5embedding_1/embeddingslstm_3/lstm_cell_3/kernellstm_3/lstm_cell_3/bias#lstm_3/lstm_cell_3/recurrent_kernelattention_layer/W_aattention_layer/U_aattention_layer/V_atime_distributed/kerneltime_distributed/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference_signature_wrapper_61591
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ò
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_1/embeddings/Read/ReadVariableOp'attention_layer/W_a/Read/ReadVariableOp'attention_layer/U_a/Read/ReadVariableOp'attention_layer/V_a/Read/ReadVariableOp-lstm_3/lstm_cell_3/kernel/Read/ReadVariableOp7lstm_3/lstm_cell_3/recurrent_kernel/Read/ReadVariableOp+lstm_3/lstm_cell_3/bias/Read/ReadVariableOp+time_distributed/kernel/Read/ReadVariableOp)time_distributed/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*
Tin
2*
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
GPU2*0J 8 *'
f"R 
__inference__traced_save_64840

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_1/embeddingsattention_layer/W_aattention_layer/U_aattention_layer/V_alstm_3/lstm_cell_3/kernel#lstm_3/lstm_cell_3/recurrent_kernellstm_3/lstm_cell_3/biastime_distributed/kerneltime_distributed/biastotalcount*
Tin
2*
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
GPU2*0J 8 **
f%R#
!__inference__traced_restore_64883£û4
æ
þ
&__inference_lstm_3_layer_call_fn_64140

inputs
initial_state_0
initial_state_1
unknown:	d°	
	unknown_0:	°	
	unknown_1:
¬°	
identity

identity_1

identity_2¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsinitial_state_0initial_state_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_613372
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:YU
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
)
_user_specified_nameinitial_state/0:YU
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
)
_user_specified_nameinitial_state/1
¬
k
A__inference_concat_layer_call_and_return_conditional_losses_60895

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ2
concatq
IdentityIdentityconcat:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_nameinputs:]Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_nameinputs
¼

ô
@__inference_dense_layer_call_and_return_conditional_losses_60226

inputs2
matmul_readvariableop_resource:
Øíb.
biasadd_readvariableop_resource:	íb
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Øíb*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:íb*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb2	
BiasAddb
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿØ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
 
_user_specified_nameinputs

R
&__inference_concat_layer_call_fn_64435
inputs_0
inputs_1
identityÝ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_concat_layer_call_and_return_conditional_losses_608952
PartitionedCallz
IdentityIdentityPartitionedCall:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬
"
_user_specified_name
inputs/0:_[
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬
"
_user_specified_name
inputs/1
ð%
×
while_body_59856
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_3_59880_0:	d°	(
while_lstm_cell_3_59882_0:	°	-
while_lstm_cell_3_59884_0:
¬°	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_3_59880:	d°	&
while_lstm_cell_3_59882:	°	+
while_lstm_cell_3_59884:
¬°	¢)while/lstm_cell_3/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÝ
)while/lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_3_59880_0while_lstm_cell_3_59882_0while_lstm_cell_3_59884_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_597742+
)while/lstm_cell_3/StatefulPartitionedCallö
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2¹
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ã
while/Identity_4Identity2while/lstm_cell_3/StatefulPartitionedCall:output:1*^while/lstm_cell_3/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/Identity_4Ã
while/Identity_5Identity2while/lstm_cell_3/StatefulPartitionedCall:output:2*^while/lstm_cell_3/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_3_59880while_lstm_cell_3_59880_0"4
while_lstm_cell_3_59882while_lstm_cell_3_59882_0"4
while_lstm_cell_3_59884while_lstm_cell_3_59884_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : 2V
)while/lstm_cell_3/StatefulPartitionedCall)while/lstm_cell_3/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ¬:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
: 
Ûq
ò
 attention_layer_while_body_62556<
8attention_layer_while_attention_layer_while_loop_counterB
>attention_layer_while_attention_layer_while_maximum_iterations%
!attention_layer_while_placeholder'
#attention_layer_while_placeholder_1'
#attention_layer_while_placeholder_29
5attention_layer_while_attention_layer_strided_slice_0w
sattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensor_0*
&attention_layer_while_shape_inputs_1_0K
7attention_layer_while_shape_1_readvariableop_resource_0:
¬¬L
8attention_layer_while_matmul_1_readvariableop_resource_0:
¬¬J
7attention_layer_while_shape_3_readvariableop_resource_0:	¬"
attention_layer_while_identity$
 attention_layer_while_identity_1$
 attention_layer_while_identity_2$
 attention_layer_while_identity_3$
 attention_layer_while_identity_47
3attention_layer_while_attention_layer_strided_sliceu
qattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensor(
$attention_layer_while_shape_inputs_1I
5attention_layer_while_shape_1_readvariableop_resource:
¬¬J
6attention_layer_while_matmul_1_readvariableop_resource:
¬¬H
5attention_layer_while_shape_3_readvariableop_resource:	¬¢-attention_layer/while/MatMul_1/ReadVariableOp¢.attention_layer/while/transpose/ReadVariableOp¢0attention_layer/while/transpose_1/ReadVariableOpã
Gattention_layer/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2I
Gattention_layer/while/TensorArrayV2Read/TensorListGetItem/element_shape´
9attention_layer/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensor_0!attention_layer_while_placeholderPattention_layer/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
element_dtype02;
9attention_layer/while/TensorArrayV2Read/TensorListGetItem
attention_layer/while/ShapeShape&attention_layer_while_shape_inputs_1_0*
T0*
_output_shapes
:2
attention_layer/while/Shape
attention_layer/while/unstackUnpack$attention_layer/while/Shape:output:0*
T0*
_output_shapes
: : : *	
num2
attention_layer/while/unstackÖ
,attention_layer/while/Shape_1/ReadVariableOpReadVariableOp7attention_layer_while_shape_1_readvariableop_resource_0* 
_output_shapes
:
¬¬*
dtype02.
,attention_layer/while/Shape_1/ReadVariableOp
attention_layer/while/Shape_1Const*
_output_shapes
:*
dtype0*
valueB",  ,  2
attention_layer/while/Shape_1¢
attention_layer/while/unstack_1Unpack&attention_layer/while/Shape_1:output:0*
T0*
_output_shapes
: : *	
num2!
attention_layer/while/unstack_1
#attention_layer/while/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2%
#attention_layer/while/Reshape/shapeÒ
attention_layer/while/ReshapeReshape&attention_layer_while_shape_inputs_1_0,attention_layer/while/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
attention_layer/while/ReshapeÚ
.attention_layer/while/transpose/ReadVariableOpReadVariableOp7attention_layer_while_shape_1_readvariableop_resource_0* 
_output_shapes
:
¬¬*
dtype020
.attention_layer/while/transpose/ReadVariableOp
$attention_layer/while/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2&
$attention_layer/while/transpose/permá
attention_layer/while/transpose	Transpose6attention_layer/while/transpose/ReadVariableOp:value:0-attention_layer/while/transpose/perm:output:0*
T0* 
_output_shapes
:
¬¬2!
attention_layer/while/transpose
%attention_layer/while/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB",  ÿÿÿÿ2'
%attention_layer/while/Reshape_1/shapeÍ
attention_layer/while/Reshape_1Reshape#attention_layer/while/transpose:y:0.attention_layer/while/Reshape_1/shape:output:0*
T0* 
_output_shapes
:
¬¬2!
attention_layer/while/Reshape_1Ë
attention_layer/while/MatMulMatMul&attention_layer/while/Reshape:output:0(attention_layer/while/Reshape_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
attention_layer/while/MatMul
'attention_layer/while/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :P2)
'attention_layer/while/Reshape_2/shape/1
'attention_layer/while/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value
B :¬2)
'attention_layer/while/Reshape_2/shape/2
%attention_layer/while/Reshape_2/shapePack&attention_layer/while/unstack:output:00attention_layer/while/Reshape_2/shape/1:output:00attention_layer/while/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2'
%attention_layer/while/Reshape_2/shapeÜ
attention_layer/while/Reshape_2Reshape&attention_layer/while/MatMul:product:0.attention_layer/while/Reshape_2/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2!
attention_layer/while/Reshape_2Ù
-attention_layer/while/MatMul_1/ReadVariableOpReadVariableOp8attention_layer_while_matmul_1_readvariableop_resource_0* 
_output_shapes
:
¬¬*
dtype02/
-attention_layer/while/MatMul_1/ReadVariableOpö
attention_layer/while/MatMul_1MatMul@attention_layer/while/TensorArrayV2Read/TensorListGetItem:item:05attention_layer/while/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
attention_layer/while/MatMul_1
$attention_layer/while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$attention_layer/while/ExpandDims/dimâ
 attention_layer/while/ExpandDims
ExpandDims(attention_layer/while/MatMul_1:product:0-attention_layer/while/ExpandDims/dim:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 attention_layer/while/ExpandDimsË
attention_layer/while/addAddV2(attention_layer/while/Reshape_2:output:0)attention_layer/while/ExpandDims:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
attention_layer/while/add
attention_layer/while/TanhTanhattention_layer/while/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
attention_layer/while/Tanh
attention_layer/while/Shape_2Shapeattention_layer/while/Tanh:y:0*
T0*
_output_shapes
:2
attention_layer/while/Shape_2¤
attention_layer/while/unstack_2Unpack&attention_layer/while/Shape_2:output:0*
T0*
_output_shapes
: : : *	
num2!
attention_layer/while/unstack_2Õ
,attention_layer/while/Shape_3/ReadVariableOpReadVariableOp7attention_layer_while_shape_3_readvariableop_resource_0*
_output_shapes
:	¬*
dtype02.
,attention_layer/while/Shape_3/ReadVariableOp
attention_layer/while/Shape_3Const*
_output_shapes
:*
dtype0*
valueB",     2
attention_layer/while/Shape_3¢
attention_layer/while/unstack_3Unpack&attention_layer/while/Shape_3:output:0*
T0*
_output_shapes
: : *	
num2!
attention_layer/while/unstack_3
%attention_layer/while/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2'
%attention_layer/while/Reshape_3/shapeÐ
attention_layer/while/Reshape_3Reshapeattention_layer/while/Tanh:y:0.attention_layer/while/Reshape_3/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2!
attention_layer/while/Reshape_3Ý
0attention_layer/while/transpose_1/ReadVariableOpReadVariableOp7attention_layer_while_shape_3_readvariableop_resource_0*
_output_shapes
:	¬*
dtype022
0attention_layer/while/transpose_1/ReadVariableOp¡
&attention_layer/while/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2(
&attention_layer/while/transpose_1/permè
!attention_layer/while/transpose_1	Transpose8attention_layer/while/transpose_1/ReadVariableOp:value:0/attention_layer/while/transpose_1/perm:output:0*
T0*
_output_shapes
:	¬2#
!attention_layer/while/transpose_1
%attention_layer/while/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB",  ÿÿÿÿ2'
%attention_layer/while/Reshape_4/shapeÎ
attention_layer/while/Reshape_4Reshape%attention_layer/while/transpose_1:y:0.attention_layer/while/Reshape_4/shape:output:0*
T0*
_output_shapes
:	¬2!
attention_layer/while/Reshape_4Ð
attention_layer/while/MatMul_2MatMul(attention_layer/while/Reshape_3:output:0(attention_layer/while/Reshape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
attention_layer/while/MatMul_2
'attention_layer/while/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :P2)
'attention_layer/while/Reshape_5/shape/1
'attention_layer/while/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2)
'attention_layer/while/Reshape_5/shape/2
%attention_layer/while/Reshape_5/shapePack(attention_layer/while/unstack_2:output:00attention_layer/while/Reshape_5/shape/1:output:00attention_layer/while/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:2'
%attention_layer/while/Reshape_5/shapeÝ
attention_layer/while/Reshape_5Reshape(attention_layer/while/MatMul_2:product:0.attention_layer/while/Reshape_5/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2!
attention_layer/while/Reshape_5Å
attention_layer/while/SqueezeSqueeze(attention_layer/while/Reshape_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ2
attention_layer/while/Squeeze£
attention_layer/while/SoftmaxSoftmax&attention_layer/while/Squeeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
attention_layer/while/Softmax«
:attention_layer/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#attention_layer_while_placeholder_1!attention_layer_while_placeholder'attention_layer/while/Softmax:softmax:0*
_output_shapes
: *
element_dtype02<
:attention_layer/while/TensorArrayV2Write/TensorListSetItem
attention_layer/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
attention_layer/while/add_1/y¯
attention_layer/while/add_1AddV2!attention_layer_while_placeholder&attention_layer/while/add_1/y:output:0*
T0*
_output_shapes
: 2
attention_layer/while/add_1
attention_layer/while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
attention_layer/while/add_2/yÆ
attention_layer/while/add_2AddV28attention_layer_while_attention_layer_while_loop_counter&attention_layer/while/add_2/y:output:0*
T0*
_output_shapes
: 2
attention_layer/while/add_2¢
attention_layer/while/IdentityIdentityattention_layer/while/add_2:z:0.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2 
attention_layer/while/IdentityÅ
 attention_layer/while/Identity_1Identity>attention_layer_while_attention_layer_while_maximum_iterations.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 attention_layer/while/Identity_1¦
 attention_layer/while/Identity_2Identityattention_layer/while/add_1:z:0.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 attention_layer/while/Identity_2Ñ
 attention_layer/while/Identity_3IdentityJattention_layer/while/TensorArrayV2Write/TensorListSetItem:output_handle:0.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 attention_layer/while/Identity_3¿
 attention_layer/while/Identity_4Identity'attention_layer/while/Softmax:softmax:0.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2"
 attention_layer/while/Identity_4"l
3attention_layer_while_attention_layer_strided_slice5attention_layer_while_attention_layer_strided_slice_0"I
attention_layer_while_identity'attention_layer/while/Identity:output:0"M
 attention_layer_while_identity_1)attention_layer/while/Identity_1:output:0"M
 attention_layer_while_identity_2)attention_layer/while/Identity_2:output:0"M
 attention_layer_while_identity_3)attention_layer/while/Identity_3:output:0"M
 attention_layer_while_identity_4)attention_layer/while/Identity_4:output:0"r
6attention_layer_while_matmul_1_readvariableop_resource8attention_layer_while_matmul_1_readvariableop_resource_0"p
5attention_layer_while_shape_1_readvariableop_resource7attention_layer_while_shape_1_readvariableop_resource_0"p
5attention_layer_while_shape_3_readvariableop_resource7attention_layer_while_shape_3_readvariableop_resource_0"N
$attention_layer_while_shape_inputs_1&attention_layer_while_shape_inputs_1_0"è
qattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensorsattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=: : : : :ÿÿÿÿÿÿÿÿÿP: : :ÿÿÿÿÿÿÿÿÿP¬: : : 2^
-attention_layer/while/MatMul_1/ReadVariableOp-attention_layer/while/MatMul_1/ReadVariableOp2`
.attention_layer/while/transpose/ReadVariableOp.attention_layer/while/transpose/ReadVariableOp2d
0attention_layer/while/transpose_1/ReadVariableOp0attention_layer/while/transpose_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿP:

_output_shapes
: :

_output_shapes
: :2.
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬
ý(

B__inference_model_2_layer_call_and_return_conditional_losses_61522
input_2
input_5
input_3
input_4$
embedding_1_61491:	íbd
lstm_3_61494:	d°	
lstm_3_61496:	°	 
lstm_3_61498:
¬°	)
attention_layer_61503:
¬¬)
attention_layer_61505:
¬¬(
attention_layer_61507:	¬*
time_distributed_61512:
Øíb%
time_distributed_61514:	íb
identity

identity_1

identity_2¢'attention_layer/StatefulPartitionedCall¢#embedding_1/StatefulPartitionedCall¢lstm_3/StatefulPartitionedCall¢(time_distributed/StatefulPartitionedCall
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_2embedding_1_61491*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_603642%
#embedding_1/StatefulPartitionedCall
lstm_3/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0input_3input_4lstm_3_61494lstm_3_61496lstm_3_61498*
Tin

2*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_606012 
lstm_3/StatefulPartitionedCallª
'attention_layer/StatefulPartitionedCallStatefulPartitionedCallinput_5'lstm_3/StatefulPartitionedCall:output:0attention_layer_61503attention_layer_61505attention_layer_61507*
Tin	
2*
Tout
2*
_collective_manager_ids
 *U
_output_shapesC
A:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_attention_layer_layer_call_and_return_conditional_losses_608792)
'attention_layer/StatefulPartitionedCall²
concat/PartitionedCallPartitionedCall'lstm_3/StatefulPartitionedCall:output:00attention_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_concat_layer_call_and_return_conditional_losses_608952
concat/PartitionedCallã
(time_distributed/StatefulPartitionedCallStatefulPartitionedCallconcat/PartitionedCall:output:0time_distributed_61512time_distributed_61514*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_602372*
(time_distributed/StatefulPartitionedCall
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿX  2 
time_distributed/Reshape/shape¼
time_distributed/ReshapeReshapeconcat/PartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
time_distributed/Reshape¯
IdentityIdentity1time_distributed/StatefulPartitionedCall:output:0(^attention_layer/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb2

Identity

Identity_1Identity'lstm_3/StatefulPartitionedCall:output:1(^attention_layer/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1

Identity_2Identity'lstm_3/StatefulPartitionedCall:output:2(^attention_layer/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapesp
n:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿP¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : : : : : 2R
'attention_layer/StatefulPartitionedCall'attention_layer/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall:Y U
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2:UQ
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬
!
_user_specified_name	input_5:QM
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
!
_user_specified_name	input_3:QM
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
!
_user_specified_name	input_4
Ó
´
'__inference_model_2_layer_call_fn_62799
inputs_0
inputs_1
inputs_2
inputs_3
unknown:	íbd
	unknown_0:	d°	
	unknown_1:	°	
	unknown_2:
¬°	
	unknown_3:
¬¬
	unknown_4:
¬¬
	unknown_5:	¬
	unknown_6:
Øíb
	unknown_7:	íb
identity

identity_1

identity_2¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_609072
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapesp
n:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿP¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
"
_user_specified_name
inputs/2:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
"
_user_specified_name
inputs/3

õ
+__inference_lstm_cell_3_layer_call_fn_64742

inputs
states_0
states_1
unknown:	d°	
	unknown_0:	°	
	unknown_1:
¬°	
identity

identity_1

identity_2¢StatefulPartitionedCallÇ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_595082
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
"
_user_specified_name
states/1

â
/__inference_attention_layer_layer_call_fn_64422
inputs_0
inputs_1
unknown:
¬¬
	unknown_0:
¬¬
	unknown_1:	¬
identity

identity_1¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *U
_output_shapesC
A:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_attention_layer_layer_call_and_return_conditional_losses_608792
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿP¬:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬: : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬
"
_user_specified_name
inputs/0:_[
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬
"
_user_specified_name
inputs/1
Ú,
½
"attention_layer_while_1_body_62035@
<attention_layer_while_1_attention_layer_while_1_loop_counterF
Battention_layer_while_1_attention_layer_while_1_maximum_iterations'
#attention_layer_while_1_placeholder)
%attention_layer_while_1_placeholder_1)
%attention_layer_while_1_placeholder_2=
9attention_layer_while_1_attention_layer_strided_slice_3_0{
wattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensor_0*
&attention_layer_while_1_mul_inputs_1_0$
 attention_layer_while_1_identity&
"attention_layer_while_1_identity_1&
"attention_layer_while_1_identity_2&
"attention_layer_while_1_identity_3&
"attention_layer_while_1_identity_4;
7attention_layer_while_1_attention_layer_strided_slice_3y
uattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensor(
$attention_layer_while_1_mul_inputs_1ç
Iattention_layer/while_1/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP   2K
Iattention_layer/while_1/TensorArrayV2Read/TensorListGetItem/element_shape¿
;attention_layer/while_1/TensorArrayV2Read/TensorListGetItemTensorListGetItemwattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensor_0#attention_layer_while_1_placeholderRattention_layer/while_1/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
element_dtype02=
;attention_layer/while_1/TensorArrayV2Read/TensorListGetItem
&attention_layer/while_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&attention_layer/while_1/ExpandDims/dim
"attention_layer/while_1/ExpandDims
ExpandDimsBattention_layer/while_1/TensorArrayV2Read/TensorListGetItem:item:0/attention_layer/while_1/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2$
"attention_layer/while_1/ExpandDimsÍ
attention_layer/while_1/mulMul&attention_layer_while_1_mul_inputs_1_0+attention_layer/while_1/ExpandDims:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
attention_layer/while_1/mul 
-attention_layer/while_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2/
-attention_layer/while_1/Sum/reduction_indicesÍ
attention_layer/while_1/SumSumattention_layer/while_1/mul:z:06attention_layer/while_1/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
attention_layer/while_1/Sum°
<attention_layer/while_1/TensorArrayV2Write/TensorListSetItemTensorListSetItem%attention_layer_while_1_placeholder_1#attention_layer_while_1_placeholder$attention_layer/while_1/Sum:output:0*
_output_shapes
: *
element_dtype02>
<attention_layer/while_1/TensorArrayV2Write/TensorListSetItem
attention_layer/while_1/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
attention_layer/while_1/add/y±
attention_layer/while_1/addAddV2#attention_layer_while_1_placeholder&attention_layer/while_1/add/y:output:0*
T0*
_output_shapes
: 2
attention_layer/while_1/add
attention_layer/while_1/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2!
attention_layer/while_1/add_1/yÐ
attention_layer/while_1/add_1AddV2<attention_layer_while_1_attention_layer_while_1_loop_counter(attention_layer/while_1/add_1/y:output:0*
T0*
_output_shapes
: 2
attention_layer/while_1/add_1
 attention_layer/while_1/IdentityIdentity!attention_layer/while_1/add_1:z:0*
T0*
_output_shapes
: 2"
 attention_layer/while_1/Identity¹
"attention_layer/while_1/Identity_1IdentityBattention_layer_while_1_attention_layer_while_1_maximum_iterations*
T0*
_output_shapes
: 2$
"attention_layer/while_1/Identity_1
"attention_layer/while_1/Identity_2Identityattention_layer/while_1/add:z:0*
T0*
_output_shapes
: 2$
"attention_layer/while_1/Identity_2Ã
"attention_layer/while_1/Identity_3IdentityLattention_layer/while_1/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2$
"attention_layer/while_1/Identity_3­
"attention_layer/while_1/Identity_4Identity$attention_layer/while_1/Sum:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"attention_layer/while_1/Identity_4"t
7attention_layer_while_1_attention_layer_strided_slice_39attention_layer_while_1_attention_layer_strided_slice_3_0"M
 attention_layer_while_1_identity)attention_layer/while_1/Identity:output:0"Q
"attention_layer_while_1_identity_1+attention_layer/while_1/Identity_1:output:0"Q
"attention_layer_while_1_identity_2+attention_layer/while_1/Identity_2:output:0"Q
"attention_layer_while_1_identity_3+attention_layer/while_1/Identity_3:output:0"Q
"attention_layer_while_1_identity_4+attention_layer/while_1/Identity_4:output:0"N
$attention_layer_while_1_mul_inputs_1&attention_layer_while_1_mul_inputs_1_0"ð
uattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensorwattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ¬: : :ÿÿÿÿÿÿÿÿÿP¬: 
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
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
: :2.
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬
¿ê
¢

B__inference_model_2_layer_call_and_return_conditional_losses_62769
inputs_0
inputs_1
inputs_2
inputs_35
"embedding_1_embedding_lookup_62123:	íbdC
0lstm_3_lstm_cell_3_split_readvariableop_resource:	d°	A
2lstm_3_lstm_cell_3_split_1_readvariableop_resource:	°	>
*lstm_3_lstm_cell_3_readvariableop_resource:
¬°	C
/attention_layer_shape_2_readvariableop_resource:
¬¬D
0attention_layer_matmul_1_readvariableop_resource:
¬¬B
/attention_layer_shape_4_readvariableop_resource:	¬I
5time_distributed_dense_matmul_readvariableop_resource:
ØíbE
6time_distributed_dense_biasadd_readvariableop_resource:	íb
identity

identity_1

identity_2¢'attention_layer/MatMul_1/ReadVariableOp¢*attention_layer/transpose_1/ReadVariableOp¢*attention_layer/transpose_2/ReadVariableOp¢attention_layer/while¢embedding_1/embedding_lookup¢!lstm_3/lstm_cell_3/ReadVariableOp¢#lstm_3/lstm_cell_3/ReadVariableOp_1¢#lstm_3/lstm_cell_3/ReadVariableOp_2¢#lstm_3/lstm_cell_3/ReadVariableOp_3¢'lstm_3/lstm_cell_3/split/ReadVariableOp¢)lstm_3/lstm_cell_3/split_1/ReadVariableOp¢lstm_3/while¢-time_distributed/dense/BiasAdd/ReadVariableOp¢,time_distributed/dense/MatMul/ReadVariableOp
embedding_1/CastCastinputs_0*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
embedding_1/CastÀ
embedding_1/embedding_lookupResourceGather"embedding_1_embedding_lookup_62123embedding_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_1/embedding_lookup/62123*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
dtype02
embedding_1/embedding_lookup¥
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_1/embedding_lookup/62123*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2'
%embedding_1/embedding_lookup/IdentityÍ
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2)
'embedding_1/embedding_lookup/Identity_1
lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose/permÂ
lstm_3/transpose	Transpose0embedding_1/embedding_lookup/Identity_1:output:0lstm_3/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2
lstm_3/transpose`
lstm_3/ShapeShapelstm_3/transpose:y:0*
T0*
_output_shapes
:2
lstm_3/Shape
lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice/stack
lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_1
lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_2
lstm_3/strided_sliceStridedSlicelstm_3/Shape:output:0#lstm_3/strided_slice/stack:output:0%lstm_3/strided_slice/stack_1:output:0%lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slice
"lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"lstm_3/TensorArrayV2/element_shapeÌ
lstm_3/TensorArrayV2TensorListReserve+lstm_3/TensorArrayV2/element_shape:output:0lstm_3/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2Í
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2>
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_3/transpose:y:0Elstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_3/TensorArrayUnstack/TensorListFromTensor
lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_1/stack
lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_1
lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_2¦
lstm_3/strided_slice_1StridedSlicelstm_3/transpose:y:0%lstm_3/strided_slice_1/stack:output:0'lstm_3/strided_slice_1/stack_1:output:0'lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
lstm_3/strided_slice_1
"lstm_3/lstm_cell_3/ones_like/ShapeShapelstm_3/strided_slice_1:output:0*
T0*
_output_shapes
:2$
"lstm_3/lstm_cell_3/ones_like/Shape
"lstm_3/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"lstm_3/lstm_cell_3/ones_like/ConstÐ
lstm_3/lstm_cell_3/ones_likeFill+lstm_3/lstm_cell_3/ones_like/Shape:output:0+lstm_3/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_3/lstm_cell_3/ones_like
 lstm_3/lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2"
 lstm_3/lstm_cell_3/dropout/ConstË
lstm_3/lstm_cell_3/dropout/MulMul%lstm_3/lstm_cell_3/ones_like:output:0)lstm_3/lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
lstm_3/lstm_cell_3/dropout/Mul
 lstm_3/lstm_cell_3/dropout/ShapeShape%lstm_3/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2"
 lstm_3/lstm_cell_3/dropout/Shape
7lstm_3/lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform)lstm_3/lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2øÀc29
7lstm_3/lstm_cell_3/dropout/random_uniform/RandomUniform
)lstm_3/lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2+
)lstm_3/lstm_cell_3/dropout/GreaterEqual/y
'lstm_3/lstm_cell_3/dropout/GreaterEqualGreaterEqual@lstm_3/lstm_cell_3/dropout/random_uniform/RandomUniform:output:02lstm_3/lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2)
'lstm_3/lstm_cell_3/dropout/GreaterEqual¸
lstm_3/lstm_cell_3/dropout/CastCast+lstm_3/lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
lstm_3/lstm_cell_3/dropout/CastÆ
 lstm_3/lstm_cell_3/dropout/Mul_1Mul"lstm_3/lstm_cell_3/dropout/Mul:z:0#lstm_3/lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 lstm_3/lstm_cell_3/dropout/Mul_1
"lstm_3/lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2$
"lstm_3/lstm_cell_3/dropout_1/ConstÑ
 lstm_3/lstm_cell_3/dropout_1/MulMul%lstm_3/lstm_cell_3/ones_like:output:0+lstm_3/lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 lstm_3/lstm_cell_3/dropout_1/Mul
"lstm_3/lstm_cell_3/dropout_1/ShapeShape%lstm_3/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_3/lstm_cell_3/dropout_1/Shape
9lstm_3/lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform+lstm_3/lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2óÂ2;
9lstm_3/lstm_cell_3/dropout_1/random_uniform/RandomUniform
+lstm_3/lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2-
+lstm_3/lstm_cell_3/dropout_1/GreaterEqual/y
)lstm_3/lstm_cell_3/dropout_1/GreaterEqualGreaterEqualBlstm_3/lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:04lstm_3/lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)lstm_3/lstm_cell_3/dropout_1/GreaterEqual¾
!lstm_3/lstm_cell_3/dropout_1/CastCast-lstm_3/lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!lstm_3/lstm_cell_3/dropout_1/CastÎ
"lstm_3/lstm_cell_3/dropout_1/Mul_1Mul$lstm_3/lstm_cell_3/dropout_1/Mul:z:0%lstm_3/lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_3/lstm_cell_3/dropout_1/Mul_1
"lstm_3/lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2$
"lstm_3/lstm_cell_3/dropout_2/ConstÑ
 lstm_3/lstm_cell_3/dropout_2/MulMul%lstm_3/lstm_cell_3/ones_like:output:0+lstm_3/lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 lstm_3/lstm_cell_3/dropout_2/Mul
"lstm_3/lstm_cell_3/dropout_2/ShapeShape%lstm_3/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_3/lstm_cell_3/dropout_2/Shape
9lstm_3/lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform+lstm_3/lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2À®2;
9lstm_3/lstm_cell_3/dropout_2/random_uniform/RandomUniform
+lstm_3/lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2-
+lstm_3/lstm_cell_3/dropout_2/GreaterEqual/y
)lstm_3/lstm_cell_3/dropout_2/GreaterEqualGreaterEqualBlstm_3/lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:04lstm_3/lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)lstm_3/lstm_cell_3/dropout_2/GreaterEqual¾
!lstm_3/lstm_cell_3/dropout_2/CastCast-lstm_3/lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!lstm_3/lstm_cell_3/dropout_2/CastÎ
"lstm_3/lstm_cell_3/dropout_2/Mul_1Mul$lstm_3/lstm_cell_3/dropout_2/Mul:z:0%lstm_3/lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_3/lstm_cell_3/dropout_2/Mul_1
"lstm_3/lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2$
"lstm_3/lstm_cell_3/dropout_3/ConstÑ
 lstm_3/lstm_cell_3/dropout_3/MulMul%lstm_3/lstm_cell_3/ones_like:output:0+lstm_3/lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 lstm_3/lstm_cell_3/dropout_3/Mul
"lstm_3/lstm_cell_3/dropout_3/ShapeShape%lstm_3/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_3/lstm_cell_3/dropout_3/Shape
9lstm_3/lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform+lstm_3/lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2Ò¼2;
9lstm_3/lstm_cell_3/dropout_3/random_uniform/RandomUniform
+lstm_3/lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2-
+lstm_3/lstm_cell_3/dropout_3/GreaterEqual/y
)lstm_3/lstm_cell_3/dropout_3/GreaterEqualGreaterEqualBlstm_3/lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:04lstm_3/lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2+
)lstm_3/lstm_cell_3/dropout_3/GreaterEqual¾
!lstm_3/lstm_cell_3/dropout_3/CastCast-lstm_3/lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!lstm_3/lstm_cell_3/dropout_3/CastÎ
"lstm_3/lstm_cell_3/dropout_3/Mul_1Mul$lstm_3/lstm_cell_3/dropout_3/Mul:z:0%lstm_3/lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_3/lstm_cell_3/dropout_3/Mul_1
$lstm_3/lstm_cell_3/ones_like_1/ShapeShapeinputs_2*
T0*
_output_shapes
:2&
$lstm_3/lstm_cell_3/ones_like_1/Shape
$lstm_3/lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$lstm_3/lstm_cell_3/ones_like_1/ConstÙ
lstm_3/lstm_cell_3/ones_like_1Fill-lstm_3/lstm_cell_3/ones_like_1/Shape:output:0-lstm_3/lstm_cell_3/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
lstm_3/lstm_cell_3/ones_like_1
"lstm_3/lstm_cell_3/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_3/lstm_cell_3/dropout_4/ConstÔ
 lstm_3/lstm_cell_3/dropout_4/MulMul'lstm_3/lstm_cell_3/ones_like_1:output:0+lstm_3/lstm_cell_3/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 lstm_3/lstm_cell_3/dropout_4/Mul
"lstm_3/lstm_cell_3/dropout_4/ShapeShape'lstm_3/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2$
"lstm_3/lstm_cell_3/dropout_4/Shape
9lstm_3/lstm_cell_3/dropout_4/random_uniform/RandomUniformRandomUniform+lstm_3/lstm_cell_3/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2á Ä2;
9lstm_3/lstm_cell_3/dropout_4/random_uniform/RandomUniform
+lstm_3/lstm_cell_3/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+lstm_3/lstm_cell_3/dropout_4/GreaterEqual/y
)lstm_3/lstm_cell_3/dropout_4/GreaterEqualGreaterEqualBlstm_3/lstm_cell_3/dropout_4/random_uniform/RandomUniform:output:04lstm_3/lstm_cell_3/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2+
)lstm_3/lstm_cell_3/dropout_4/GreaterEqual¿
!lstm_3/lstm_cell_3/dropout_4/CastCast-lstm_3/lstm_cell_3/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!lstm_3/lstm_cell_3/dropout_4/CastÏ
"lstm_3/lstm_cell_3/dropout_4/Mul_1Mul$lstm_3/lstm_cell_3/dropout_4/Mul:z:0%lstm_3/lstm_cell_3/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_3/lstm_cell_3/dropout_4/Mul_1
"lstm_3/lstm_cell_3/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_3/lstm_cell_3/dropout_5/ConstÔ
 lstm_3/lstm_cell_3/dropout_5/MulMul'lstm_3/lstm_cell_3/ones_like_1:output:0+lstm_3/lstm_cell_3/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 lstm_3/lstm_cell_3/dropout_5/Mul
"lstm_3/lstm_cell_3/dropout_5/ShapeShape'lstm_3/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2$
"lstm_3/lstm_cell_3/dropout_5/Shape
9lstm_3/lstm_cell_3/dropout_5/random_uniform/RandomUniformRandomUniform+lstm_3/lstm_cell_3/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2è¤2;
9lstm_3/lstm_cell_3/dropout_5/random_uniform/RandomUniform
+lstm_3/lstm_cell_3/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+lstm_3/lstm_cell_3/dropout_5/GreaterEqual/y
)lstm_3/lstm_cell_3/dropout_5/GreaterEqualGreaterEqualBlstm_3/lstm_cell_3/dropout_5/random_uniform/RandomUniform:output:04lstm_3/lstm_cell_3/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2+
)lstm_3/lstm_cell_3/dropout_5/GreaterEqual¿
!lstm_3/lstm_cell_3/dropout_5/CastCast-lstm_3/lstm_cell_3/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!lstm_3/lstm_cell_3/dropout_5/CastÏ
"lstm_3/lstm_cell_3/dropout_5/Mul_1Mul$lstm_3/lstm_cell_3/dropout_5/Mul:z:0%lstm_3/lstm_cell_3/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_3/lstm_cell_3/dropout_5/Mul_1
"lstm_3/lstm_cell_3/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_3/lstm_cell_3/dropout_6/ConstÔ
 lstm_3/lstm_cell_3/dropout_6/MulMul'lstm_3/lstm_cell_3/ones_like_1:output:0+lstm_3/lstm_cell_3/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 lstm_3/lstm_cell_3/dropout_6/Mul
"lstm_3/lstm_cell_3/dropout_6/ShapeShape'lstm_3/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2$
"lstm_3/lstm_cell_3/dropout_6/Shape
9lstm_3/lstm_cell_3/dropout_6/random_uniform/RandomUniformRandomUniform+lstm_3/lstm_cell_3/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2îî}2;
9lstm_3/lstm_cell_3/dropout_6/random_uniform/RandomUniform
+lstm_3/lstm_cell_3/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+lstm_3/lstm_cell_3/dropout_6/GreaterEqual/y
)lstm_3/lstm_cell_3/dropout_6/GreaterEqualGreaterEqualBlstm_3/lstm_cell_3/dropout_6/random_uniform/RandomUniform:output:04lstm_3/lstm_cell_3/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2+
)lstm_3/lstm_cell_3/dropout_6/GreaterEqual¿
!lstm_3/lstm_cell_3/dropout_6/CastCast-lstm_3/lstm_cell_3/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!lstm_3/lstm_cell_3/dropout_6/CastÏ
"lstm_3/lstm_cell_3/dropout_6/Mul_1Mul$lstm_3/lstm_cell_3/dropout_6/Mul:z:0%lstm_3/lstm_cell_3/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_3/lstm_cell_3/dropout_6/Mul_1
"lstm_3/lstm_cell_3/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_3/lstm_cell_3/dropout_7/ConstÔ
 lstm_3/lstm_cell_3/dropout_7/MulMul'lstm_3/lstm_cell_3/ones_like_1:output:0+lstm_3/lstm_cell_3/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 lstm_3/lstm_cell_3/dropout_7/Mul
"lstm_3/lstm_cell_3/dropout_7/ShapeShape'lstm_3/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2$
"lstm_3/lstm_cell_3/dropout_7/Shape
9lstm_3/lstm_cell_3/dropout_7/random_uniform/RandomUniformRandomUniform+lstm_3/lstm_cell_3/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2¦±e2;
9lstm_3/lstm_cell_3/dropout_7/random_uniform/RandomUniform
+lstm_3/lstm_cell_3/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+lstm_3/lstm_cell_3/dropout_7/GreaterEqual/y
)lstm_3/lstm_cell_3/dropout_7/GreaterEqualGreaterEqualBlstm_3/lstm_cell_3/dropout_7/random_uniform/RandomUniform:output:04lstm_3/lstm_cell_3/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2+
)lstm_3/lstm_cell_3/dropout_7/GreaterEqual¿
!lstm_3/lstm_cell_3/dropout_7/CastCast-lstm_3/lstm_cell_3/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!lstm_3/lstm_cell_3/dropout_7/CastÏ
"lstm_3/lstm_cell_3/dropout_7/Mul_1Mul$lstm_3/lstm_cell_3/dropout_7/Mul:z:0%lstm_3/lstm_cell_3/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_3/lstm_cell_3/dropout_7/Mul_1°
lstm_3/lstm_cell_3/mulMullstm_3/strided_slice_1:output:0$lstm_3/lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_3/lstm_cell_3/mul¶
lstm_3/lstm_cell_3/mul_1Mullstm_3/strided_slice_1:output:0&lstm_3/lstm_cell_3/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_3/lstm_cell_3/mul_1¶
lstm_3/lstm_cell_3/mul_2Mullstm_3/strided_slice_1:output:0&lstm_3/lstm_cell_3/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_3/lstm_cell_3/mul_2¶
lstm_3/lstm_cell_3/mul_3Mullstm_3/strided_slice_1:output:0&lstm_3/lstm_cell_3/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_3/lstm_cell_3/mul_3
"lstm_3/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_3/lstm_cell_3/split/split_dimÄ
'lstm_3/lstm_cell_3/split/ReadVariableOpReadVariableOp0lstm_3_lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	d°	*
dtype02)
'lstm_3/lstm_cell_3/split/ReadVariableOp÷
lstm_3/lstm_cell_3/splitSplit+lstm_3/lstm_cell_3/split/split_dim:output:0/lstm_3/lstm_cell_3/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d¬:	d¬:	d¬:	d¬*
	num_split2
lstm_3/lstm_cell_3/split²
lstm_3/lstm_cell_3/MatMulMatMullstm_3/lstm_cell_3/mul:z:0!lstm_3/lstm_cell_3/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/MatMul¸
lstm_3/lstm_cell_3/MatMul_1MatMullstm_3/lstm_cell_3/mul_1:z:0!lstm_3/lstm_cell_3/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/MatMul_1¸
lstm_3/lstm_cell_3/MatMul_2MatMullstm_3/lstm_cell_3/mul_2:z:0!lstm_3/lstm_cell_3/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/MatMul_2¸
lstm_3/lstm_cell_3/MatMul_3MatMullstm_3/lstm_cell_3/mul_3:z:0!lstm_3/lstm_cell_3/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/MatMul_3
$lstm_3/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$lstm_3/lstm_cell_3/split_1/split_dimÆ
)lstm_3/lstm_cell_3/split_1/ReadVariableOpReadVariableOp2lstm_3_lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:°	*
dtype02+
)lstm_3/lstm_cell_3/split_1/ReadVariableOpï
lstm_3/lstm_cell_3/split_1Split-lstm_3/lstm_cell_3/split_1/split_dim:output:01lstm_3/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:¬:¬:¬:¬*
	num_split2
lstm_3/lstm_cell_3/split_1À
lstm_3/lstm_cell_3/BiasAddBiasAdd#lstm_3/lstm_cell_3/MatMul:product:0#lstm_3/lstm_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/BiasAddÆ
lstm_3/lstm_cell_3/BiasAdd_1BiasAdd%lstm_3/lstm_cell_3/MatMul_1:product:0#lstm_3/lstm_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/BiasAdd_1Æ
lstm_3/lstm_cell_3/BiasAdd_2BiasAdd%lstm_3/lstm_cell_3/MatMul_2:product:0#lstm_3/lstm_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/BiasAdd_2Æ
lstm_3/lstm_cell_3/BiasAdd_3BiasAdd%lstm_3/lstm_cell_3/MatMul_3:product:0#lstm_3/lstm_cell_3/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/BiasAdd_3 
lstm_3/lstm_cell_3/mul_4Mulinputs_2&lstm_3/lstm_cell_3/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/mul_4 
lstm_3/lstm_cell_3/mul_5Mulinputs_2&lstm_3/lstm_cell_3/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/mul_5 
lstm_3/lstm_cell_3/mul_6Mulinputs_2&lstm_3/lstm_cell_3/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/mul_6 
lstm_3/lstm_cell_3/mul_7Mulinputs_2&lstm_3/lstm_cell_3/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/mul_7³
!lstm_3/lstm_cell_3/ReadVariableOpReadVariableOp*lstm_3_lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02#
!lstm_3/lstm_cell_3/ReadVariableOp¡
&lstm_3/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm_3/lstm_cell_3/strided_slice/stack¥
(lstm_3/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(lstm_3/lstm_cell_3/strided_slice/stack_1¥
(lstm_3/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_3/lstm_cell_3/strided_slice/stack_2ð
 lstm_3/lstm_cell_3/strided_sliceStridedSlice)lstm_3/lstm_cell_3/ReadVariableOp:value:0/lstm_3/lstm_cell_3/strided_slice/stack:output:01lstm_3/lstm_cell_3/strided_slice/stack_1:output:01lstm_3/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2"
 lstm_3/lstm_cell_3/strided_sliceÀ
lstm_3/lstm_cell_3/MatMul_4MatMullstm_3/lstm_cell_3/mul_4:z:0)lstm_3/lstm_cell_3/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/MatMul_4¸
lstm_3/lstm_cell_3/addAddV2#lstm_3/lstm_cell_3/BiasAdd:output:0%lstm_3/lstm_cell_3/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/add
lstm_3/lstm_cell_3/SigmoidSigmoidlstm_3/lstm_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/Sigmoid·
#lstm_3/lstm_cell_3/ReadVariableOp_1ReadVariableOp*lstm_3_lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02%
#lstm_3/lstm_cell_3/ReadVariableOp_1¥
(lstm_3/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(lstm_3/lstm_cell_3/strided_slice_1/stack©
*lstm_3/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  2,
*lstm_3/lstm_cell_3/strided_slice_1/stack_1©
*lstm_3/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_3/lstm_cell_3/strided_slice_1/stack_2ü
"lstm_3/lstm_cell_3/strided_slice_1StridedSlice+lstm_3/lstm_cell_3/ReadVariableOp_1:value:01lstm_3/lstm_cell_3/strided_slice_1/stack:output:03lstm_3/lstm_cell_3/strided_slice_1/stack_1:output:03lstm_3/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2$
"lstm_3/lstm_cell_3/strided_slice_1Â
lstm_3/lstm_cell_3/MatMul_5MatMullstm_3/lstm_cell_3/mul_5:z:0+lstm_3/lstm_cell_3/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/MatMul_5¾
lstm_3/lstm_cell_3/add_1AddV2%lstm_3/lstm_cell_3/BiasAdd_1:output:0%lstm_3/lstm_cell_3/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/add_1
lstm_3/lstm_cell_3/Sigmoid_1Sigmoidlstm_3/lstm_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/Sigmoid_1
lstm_3/lstm_cell_3/mul_8Mul lstm_3/lstm_cell_3/Sigmoid_1:y:0inputs_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/mul_8·
#lstm_3/lstm_cell_3/ReadVariableOp_2ReadVariableOp*lstm_3_lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02%
#lstm_3/lstm_cell_3/ReadVariableOp_2¥
(lstm_3/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  2*
(lstm_3/lstm_cell_3/strided_slice_2/stack©
*lstm_3/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_3/lstm_cell_3/strided_slice_2/stack_1©
*lstm_3/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_3/lstm_cell_3/strided_slice_2/stack_2ü
"lstm_3/lstm_cell_3/strided_slice_2StridedSlice+lstm_3/lstm_cell_3/ReadVariableOp_2:value:01lstm_3/lstm_cell_3/strided_slice_2/stack:output:03lstm_3/lstm_cell_3/strided_slice_2/stack_1:output:03lstm_3/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2$
"lstm_3/lstm_cell_3/strided_slice_2Â
lstm_3/lstm_cell_3/MatMul_6MatMullstm_3/lstm_cell_3/mul_6:z:0+lstm_3/lstm_cell_3/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/MatMul_6¾
lstm_3/lstm_cell_3/add_2AddV2%lstm_3/lstm_cell_3/BiasAdd_2:output:0%lstm_3/lstm_cell_3/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/add_2
lstm_3/lstm_cell_3/TanhTanhlstm_3/lstm_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/Tanh«
lstm_3/lstm_cell_3/mul_9Mullstm_3/lstm_cell_3/Sigmoid:y:0lstm_3/lstm_cell_3/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/mul_9¬
lstm_3/lstm_cell_3/add_3AddV2lstm_3/lstm_cell_3/mul_8:z:0lstm_3/lstm_cell_3/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/add_3·
#lstm_3/lstm_cell_3/ReadVariableOp_3ReadVariableOp*lstm_3_lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02%
#lstm_3/lstm_cell_3/ReadVariableOp_3¥
(lstm_3/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_3/lstm_cell_3/strided_slice_3/stack©
*lstm_3/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_3/lstm_cell_3/strided_slice_3/stack_1©
*lstm_3/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_3/lstm_cell_3/strided_slice_3/stack_2ü
"lstm_3/lstm_cell_3/strided_slice_3StridedSlice+lstm_3/lstm_cell_3/ReadVariableOp_3:value:01lstm_3/lstm_cell_3/strided_slice_3/stack:output:03lstm_3/lstm_cell_3/strided_slice_3/stack_1:output:03lstm_3/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2$
"lstm_3/lstm_cell_3/strided_slice_3Â
lstm_3/lstm_cell_3/MatMul_7MatMullstm_3/lstm_cell_3/mul_7:z:0+lstm_3/lstm_cell_3/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/MatMul_7¾
lstm_3/lstm_cell_3/add_4AddV2%lstm_3/lstm_cell_3/BiasAdd_3:output:0%lstm_3/lstm_cell_3/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/add_4
lstm_3/lstm_cell_3/Sigmoid_2Sigmoidlstm_3/lstm_cell_3/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/Sigmoid_2
lstm_3/lstm_cell_3/Tanh_1Tanhlstm_3/lstm_cell_3/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/Tanh_1±
lstm_3/lstm_cell_3/mul_10Mul lstm_3/lstm_cell_3/Sigmoid_2:y:0lstm_3/lstm_cell_3/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/mul_10
$lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2&
$lstm_3/TensorArrayV2_1/element_shapeÒ
lstm_3/TensorArrayV2_1TensorListReserve-lstm_3/TensorArrayV2_1/element_shape:output:0lstm_3/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2_1\
lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/time
lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2!
lstm_3/while/maximum_iterationsx
lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/while/loop_counter®
lstm_3/whileWhile"lstm_3/while/loop_counter:output:0(lstm_3/while/maximum_iterations:output:0lstm_3/time:output:0lstm_3/TensorArrayV2_1:handle:0inputs_2inputs_3lstm_3/strided_slice:output:0>lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_3_lstm_cell_3_split_readvariableop_resource2lstm_3_lstm_cell_3_split_1_readvariableop_resource*lstm_3_lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : *%
_read_only_resource_inputs
	
*#
bodyR
lstm_3_while_body_62285*#
condR
lstm_3_while_cond_62284*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : *
parallel_iterations 2
lstm_3/whileÃ
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  29
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_3/TensorArrayV2Stack/TensorListStackTensorListStacklstm_3/while:output:3@lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬*
element_dtype02+
)lstm_3/TensorArrayV2Stack/TensorListStack
lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_3/strided_slice_2/stack
lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_3/strided_slice_2/stack_1
lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_2Å
lstm_3/strided_slice_2StridedSlice2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_3/strided_slice_2/stack:output:0'lstm_3/strided_slice_2/stack_1:output:0'lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
shrink_axis_mask2
lstm_3/strided_slice_2
lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose_1/permË
lstm_3/transpose_1	Transpose2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_3/transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2
lstm_3/transpose_1t
lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/runtime
%attention_layer/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2'
%attention_layer/Sum/reduction_indices
attention_layer/SumSuminputs_1.attention_layer/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
attention_layer/Sum
'attention_layer/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2)
'attention_layer/Sum_1/reduction_indices£
attention_layer/Sum_1Suminputs_10attention_layer/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
attention_layer/Sum_1
attention_layer/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
attention_layer/transpose/permÄ
attention_layer/transpose	Transposelstm_3/transpose_1:y:0'attention_layer/transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2
attention_layer/transpose{
attention_layer/ShapeShapeattention_layer/transpose:y:0*
T0*
_output_shapes
:2
attention_layer/Shape
#attention_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#attention_layer/strided_slice/stack
%attention_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%attention_layer/strided_slice/stack_1
%attention_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%attention_layer/strided_slice/stack_2Â
attention_layer/strided_sliceStridedSliceattention_layer/Shape:output:0,attention_layer/strided_slice/stack:output:0.attention_layer/strided_slice/stack_1:output:0.attention_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
attention_layer/strided_slice¥
+attention_layer/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2-
+attention_layer/TensorArrayV2/element_shapeð
attention_layer/TensorArrayV2TensorListReserve4attention_layer/TensorArrayV2/element_shape:output:0&attention_layer/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
attention_layer/TensorArrayV2ß
Eattention_layer/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2G
Eattention_layer/TensorArrayUnstack/TensorListFromTensor/element_shape¸
7attention_layer/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorattention_layer/transpose:y:0Nattention_layer/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type029
7attention_layer/TensorArrayUnstack/TensorListFromTensor
%attention_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%attention_layer/strided_slice_1/stack
'attention_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_1/stack_1
'attention_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_1/stack_2Ý
attention_layer/strided_slice_1StridedSliceattention_layer/transpose:y:0.attention_layer/strided_slice_1/stack:output:00attention_layer/strided_slice_1/stack_1:output:00attention_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
shrink_axis_mask2!
attention_layer/strided_slice_1j
attention_layer/Shape_1Shapeinputs_1*
T0*
_output_shapes
:2
attention_layer/Shape_1
attention_layer/unstackUnpack attention_layer/Shape_1:output:0*
T0*
_output_shapes
: : : *	
num2
attention_layer/unstackÂ
&attention_layer/Shape_2/ReadVariableOpReadVariableOp/attention_layer_shape_2_readvariableop_resource* 
_output_shapes
:
¬¬*
dtype02(
&attention_layer/Shape_2/ReadVariableOp
attention_layer/Shape_2Const*
_output_shapes
:*
dtype0*
valueB",  ,  2
attention_layer/Shape_2
attention_layer/unstack_1Unpack attention_layer/Shape_2:output:0*
T0*
_output_shapes
: : *	
num2
attention_layer/unstack_1
attention_layer/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2
attention_layer/Reshape/shape¢
attention_layer/ReshapeReshapeinputs_1&attention_layer/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
attention_layer/ReshapeÊ
*attention_layer/transpose_1/ReadVariableOpReadVariableOp/attention_layer_shape_2_readvariableop_resource* 
_output_shapes
:
¬¬*
dtype02,
*attention_layer/transpose_1/ReadVariableOp
 attention_layer/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2"
 attention_layer/transpose_1/permÑ
attention_layer/transpose_1	Transpose2attention_layer/transpose_1/ReadVariableOp:value:0)attention_layer/transpose_1/perm:output:0*
T0* 
_output_shapes
:
¬¬2
attention_layer/transpose_1
attention_layer/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB",  ÿÿÿÿ2!
attention_layer/Reshape_1/shape·
attention_layer/Reshape_1Reshapeattention_layer/transpose_1:y:0(attention_layer/Reshape_1/shape:output:0*
T0* 
_output_shapes
:
¬¬2
attention_layer/Reshape_1³
attention_layer/MatMulMatMul attention_layer/Reshape:output:0"attention_layer/Reshape_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
attention_layer/MatMul
!attention_layer/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :P2#
!attention_layer/Reshape_2/shape/1
!attention_layer/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value
B :¬2#
!attention_layer/Reshape_2/shape/2ò
attention_layer/Reshape_2/shapePack attention_layer/unstack:output:0*attention_layer/Reshape_2/shape/1:output:0*attention_layer/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2!
attention_layer/Reshape_2/shapeÄ
attention_layer/Reshape_2Reshape attention_layer/MatMul:product:0(attention_layer/Reshape_2/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
attention_layer/Reshape_2Å
'attention_layer/MatMul_1/ReadVariableOpReadVariableOp0attention_layer_matmul_1_readvariableop_resource* 
_output_shapes
:
¬¬*
dtype02)
'attention_layer/MatMul_1/ReadVariableOpÌ
attention_layer/MatMul_1MatMul(attention_layer/strided_slice_1:output:0/attention_layer/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
attention_layer/MatMul_1
attention_layer/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
attention_layer/ExpandDims/dimÊ
attention_layer/ExpandDims
ExpandDims"attention_layer/MatMul_1:product:0'attention_layer/ExpandDims/dim:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
attention_layer/ExpandDims³
attention_layer/addAddV2"attention_layer/Reshape_2:output:0#attention_layer/ExpandDims:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
attention_layer/add
attention_layer/TanhTanhattention_layer/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
attention_layer/Tanhz
attention_layer/Shape_3Shapeattention_layer/Tanh:y:0*
T0*
_output_shapes
:2
attention_layer/Shape_3
attention_layer/unstack_2Unpack attention_layer/Shape_3:output:0*
T0*
_output_shapes
: : : *	
num2
attention_layer/unstack_2Á
&attention_layer/Shape_4/ReadVariableOpReadVariableOp/attention_layer_shape_4_readvariableop_resource*
_output_shapes
:	¬*
dtype02(
&attention_layer/Shape_4/ReadVariableOp
attention_layer/Shape_4Const*
_output_shapes
:*
dtype0*
valueB",     2
attention_layer/Shape_4
attention_layer/unstack_3Unpack attention_layer/Shape_4:output:0*
T0*
_output_shapes
: : *	
num2
attention_layer/unstack_3
attention_layer/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2!
attention_layer/Reshape_3/shape¸
attention_layer/Reshape_3Reshapeattention_layer/Tanh:y:0(attention_layer/Reshape_3/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
attention_layer/Reshape_3É
*attention_layer/transpose_2/ReadVariableOpReadVariableOp/attention_layer_shape_4_readvariableop_resource*
_output_shapes
:	¬*
dtype02,
*attention_layer/transpose_2/ReadVariableOp
 attention_layer/transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2"
 attention_layer/transpose_2/permÐ
attention_layer/transpose_2	Transpose2attention_layer/transpose_2/ReadVariableOp:value:0)attention_layer/transpose_2/perm:output:0*
T0*
_output_shapes
:	¬2
attention_layer/transpose_2
attention_layer/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB",  ÿÿÿÿ2!
attention_layer/Reshape_4/shape¶
attention_layer/Reshape_4Reshapeattention_layer/transpose_2:y:0(attention_layer/Reshape_4/shape:output:0*
T0*
_output_shapes
:	¬2
attention_layer/Reshape_4¸
attention_layer/MatMul_2MatMul"attention_layer/Reshape_3:output:0"attention_layer/Reshape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
attention_layer/MatMul_2
!attention_layer/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :P2#
!attention_layer/Reshape_5/shape/1
!attention_layer/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2#
!attention_layer/Reshape_5/shape/2ô
attention_layer/Reshape_5/shapePack"attention_layer/unstack_2:output:0*attention_layer/Reshape_5/shape/1:output:0*attention_layer/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:2!
attention_layer/Reshape_5/shapeÅ
attention_layer/Reshape_5Reshape"attention_layer/MatMul_2:product:0(attention_layer/Reshape_5/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
attention_layer/Reshape_5³
attention_layer/SqueezeSqueeze"attention_layer/Reshape_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ2
attention_layer/Squeeze
attention_layer/SoftmaxSoftmax attention_layer/Squeeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
attention_layer/Softmax¯
-attention_layer/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP   2/
-attention_layer/TensorArrayV2_1/element_shapeö
attention_layer/TensorArrayV2_1TensorListReserve6attention_layer/TensorArrayV2_1/element_shape:output:0&attention_layer/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
attention_layer/TensorArrayV2_1n
attention_layer/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
attention_layer/time
(attention_layer/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(attention_layer/while/maximum_iterations
"attention_layer/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2$
"attention_layer/while/loop_counter¦
attention_layer/whileWhile+attention_layer/while/loop_counter:output:01attention_layer/while/maximum_iterations:output:0attention_layer/time:output:0(attention_layer/TensorArrayV2_1:handle:0attention_layer/Sum_1:output:0&attention_layer/strided_slice:output:0Gattention_layer/TensorArrayUnstack/TensorListFromTensor:output_handle:0inputs_1/attention_layer_shape_2_readvariableop_resource0attention_layer_matmul_1_readvariableop_resource/attention_layer_shape_4_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*Q
_output_shapes?
=: : : : :ÿÿÿÿÿÿÿÿÿP: : :ÿÿÿÿÿÿÿÿÿP¬: : : *%
_read_only_resource_inputs
	
*,
body$R"
 attention_layer_while_body_62556*,
cond$R"
 attention_layer_while_cond_62555*P
output_shapes?
=: : : : :ÿÿÿÿÿÿÿÿÿP: : :ÿÿÿÿÿÿÿÿÿP¬: : : *
parallel_iterations 2
attention_layer/whileÕ
@attention_layer/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP   2B
@attention_layer/TensorArrayV2Stack/TensorListStack/element_shape±
2attention_layer/TensorArrayV2Stack/TensorListStackTensorListStackattention_layer/while:output:3Iattention_layer/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP*
element_dtype024
2attention_layer/TensorArrayV2Stack/TensorListStack¡
%attention_layer/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2'
%attention_layer/strided_slice_2/stack
'attention_layer/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'attention_layer/strided_slice_2/stack_1
'attention_layer/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_2/stack_2ú
attention_layer/strided_slice_2StridedSlice;attention_layer/TensorArrayV2Stack/TensorListStack:tensor:0.attention_layer/strided_slice_2/stack:output:00attention_layer/strided_slice_2/stack_1:output:00attention_layer/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
shrink_axis_mask2!
attention_layer/strided_slice_2
 attention_layer/transpose_3/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 attention_layer/transpose_3/permî
attention_layer/transpose_3	Transpose;attention_layer/TensorArrayV2Stack/TensorListStack:tensor:0)attention_layer/transpose_3/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP2
attention_layer/transpose_3
 attention_layer/transpose_4/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 attention_layer/transpose_4/permÒ
attention_layer/transpose_4	Transposeattention_layer/transpose_3:y:0)attention_layer/transpose_4/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP2
attention_layer/transpose_4
attention_layer/Shape_5Shapeattention_layer/transpose_4:y:0*
T0*
_output_shapes
:2
attention_layer/Shape_5
%attention_layer/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%attention_layer/strided_slice_3/stack
'attention_layer/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_3/stack_1
'attention_layer/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_3/stack_2Î
attention_layer/strided_slice_3StridedSlice attention_layer/Shape_5:output:0.attention_layer/strided_slice_3/stack:output:00attention_layer/strided_slice_3/stack_1:output:00attention_layer/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
attention_layer/strided_slice_3©
-attention_layer/TensorArrayV2_3/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2/
-attention_layer/TensorArrayV2_3/element_shapeø
attention_layer/TensorArrayV2_3TensorListReserve6attention_layer/TensorArrayV2_3/element_shape:output:0(attention_layer/strided_slice_3:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
attention_layer/TensorArrayV2_3ã
Gattention_layer/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP   2I
Gattention_layer/TensorArrayUnstack_1/TensorListFromTensor/element_shapeÀ
9attention_layer/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensorattention_layer/transpose_4:y:0Pattention_layer/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02;
9attention_layer/TensorArrayUnstack_1/TensorListFromTensor
%attention_layer/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%attention_layer/strided_slice_4/stack
'attention_layer/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_4/stack_1
'attention_layer/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_4/stack_2Þ
attention_layer/strided_slice_4StridedSliceattention_layer/transpose_4:y:0.attention_layer/strided_slice_4/stack:output:00attention_layer/strided_slice_4/stack_1:output:00attention_layer/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
shrink_axis_mask2!
attention_layer/strided_slice_4
 attention_layer/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 attention_layer/ExpandDims_1/dimÕ
attention_layer/ExpandDims_1
ExpandDims(attention_layer/strided_slice_4:output:0)attention_layer/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
attention_layer/ExpandDims_1
attention_layer/mulMulinputs_1%attention_layer/ExpandDims_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
attention_layer/mul
'attention_layer/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2)
'attention_layer/Sum_2/reduction_indices³
attention_layer/Sum_2Sumattention_layer/mul:z:00attention_layer/Sum_2/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
attention_layer/Sum_2¯
-attention_layer/TensorArrayV2_4/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2/
-attention_layer/TensorArrayV2_4/element_shapeø
attention_layer/TensorArrayV2_4TensorListReserve6attention_layer/TensorArrayV2_4/element_shape:output:0(attention_layer/strided_slice_3:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
attention_layer/TensorArrayV2_4r
attention_layer/time_1Const*
_output_shapes
: *
dtype0*
value	B : 2
attention_layer/time_1£
*attention_layer/while_1/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2,
*attention_layer/while_1/maximum_iterations
$attention_layer/while_1/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2&
$attention_layer/while_1/loop_counter
attention_layer/while_1StatelessWhile-attention_layer/while_1/loop_counter:output:03attention_layer/while_1/maximum_iterations:output:0attention_layer/time_1:output:0(attention_layer/TensorArrayV2_4:handle:0attention_layer/Sum:output:0(attention_layer/strided_slice_3:output:0Iattention_layer/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0inputs_1*
T

2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ¬: : :ÿÿÿÿÿÿÿÿÿP¬* 
_read_only_resource_inputs
 *.
body&R$
"attention_layer_while_1_body_62688*.
cond&R$
"attention_layer_while_1_cond_62687*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ¬: : :ÿÿÿÿÿÿÿÿÿP¬*
parallel_iterations 2
attention_layer/while_1Ù
Battention_layer/TensorArrayV2Stack_1/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2D
Battention_layer/TensorArrayV2Stack_1/TensorListStack/element_shapeº
4attention_layer/TensorArrayV2Stack_1/TensorListStackTensorListStack attention_layer/while_1:output:3Kattention_layer/TensorArrayV2Stack_1/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬*
element_dtype026
4attention_layer/TensorArrayV2Stack_1/TensorListStack¡
%attention_layer/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2'
%attention_layer/strided_slice_5/stack
'attention_layer/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'attention_layer/strided_slice_5/stack_1
'attention_layer/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_5/stack_2ý
attention_layer/strided_slice_5StridedSlice=attention_layer/TensorArrayV2Stack_1/TensorListStack:tensor:0.attention_layer/strided_slice_5/stack:output:00attention_layer/strided_slice_5/stack_1:output:00attention_layer/strided_slice_5/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
shrink_axis_mask2!
attention_layer/strided_slice_5
 attention_layer/transpose_5/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 attention_layer/transpose_5/permñ
attention_layer/transpose_5	Transpose=attention_layer/TensorArrayV2Stack_1/TensorListStack:tensor:0)attention_layer/transpose_5/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2
attention_layer/transpose_5j
concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/concat/axisÉ
concat/concatConcatV2lstm_3/transpose_1:y:0attention_layer/transpose_5:y:0concat/concat/axis:output:0*
N*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ2
concat/concatv
time_distributed/ShapeShapeconcat/concat:output:0*
T0*
_output_shapes
:2
time_distributed/Shape
$time_distributed/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2&
$time_distributed/strided_slice/stack
&time_distributed/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&time_distributed/strided_slice/stack_1
&time_distributed/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&time_distributed/strided_slice/stack_2È
time_distributed/strided_sliceStridedSlicetime_distributed/Shape:output:0-time_distributed/strided_slice/stack:output:0/time_distributed/strided_slice/stack_1:output:0/time_distributed/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
time_distributed/strided_slice
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿX  2 
time_distributed/Reshape/shape³
time_distributed/ReshapeReshapeconcat/concat:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
time_distributed/ReshapeÔ
,time_distributed/dense/MatMul/ReadVariableOpReadVariableOp5time_distributed_dense_matmul_readvariableop_resource* 
_output_shapes
:
Øíb*
dtype02.
,time_distributed/dense/MatMul/ReadVariableOpÔ
time_distributed/dense/MatMulMatMul!time_distributed/Reshape:output:04time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb2
time_distributed/dense/MatMulÒ
-time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOp6time_distributed_dense_biasadd_readvariableop_resource*
_output_shapes	
:íb*
dtype02/
-time_distributed/dense/BiasAdd/ReadVariableOpÞ
time_distributed/dense/BiasAddBiasAdd'time_distributed/dense/MatMul:product:05time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb2 
time_distributed/dense/BiasAdd§
time_distributed/dense/SoftmaxSoftmax'time_distributed/dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb2 
time_distributed/dense/Softmax
"time_distributed/Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"time_distributed/Reshape_1/shape/0
"time_distributed/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :íb2$
"time_distributed/Reshape_1/shape/2ý
 time_distributed/Reshape_1/shapePack+time_distributed/Reshape_1/shape/0:output:0'time_distributed/strided_slice:output:0+time_distributed/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2"
 time_distributed/Reshape_1/shapeØ
time_distributed/Reshape_1Reshape(time_distributed/dense/Softmax:softmax:0)time_distributed/Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb2
time_distributed/Reshape_1
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿX  2"
 time_distributed/Reshape_2/shape¹
time_distributed/Reshape_2Reshapeconcat/concat:output:0)time_distributed/Reshape_2/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
time_distributed/Reshape_2
IdentityIdentity#time_distributed/Reshape_1:output:0(^attention_layer/MatMul_1/ReadVariableOp+^attention_layer/transpose_1/ReadVariableOp+^attention_layer/transpose_2/ReadVariableOp^attention_layer/while^embedding_1/embedding_lookup"^lstm_3/lstm_cell_3/ReadVariableOp$^lstm_3/lstm_cell_3/ReadVariableOp_1$^lstm_3/lstm_cell_3/ReadVariableOp_2$^lstm_3/lstm_cell_3/ReadVariableOp_3(^lstm_3/lstm_cell_3/split/ReadVariableOp*^lstm_3/lstm_cell_3/split_1/ReadVariableOp^lstm_3/while.^time_distributed/dense/BiasAdd/ReadVariableOp-^time_distributed/dense/MatMul/ReadVariableOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb2

Identity

Identity_1Identitylstm_3/while:output:4(^attention_layer/MatMul_1/ReadVariableOp+^attention_layer/transpose_1/ReadVariableOp+^attention_layer/transpose_2/ReadVariableOp^attention_layer/while^embedding_1/embedding_lookup"^lstm_3/lstm_cell_3/ReadVariableOp$^lstm_3/lstm_cell_3/ReadVariableOp_1$^lstm_3/lstm_cell_3/ReadVariableOp_2$^lstm_3/lstm_cell_3/ReadVariableOp_3(^lstm_3/lstm_cell_3/split/ReadVariableOp*^lstm_3/lstm_cell_3/split_1/ReadVariableOp^lstm_3/while.^time_distributed/dense/BiasAdd/ReadVariableOp-^time_distributed/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1

Identity_2Identitylstm_3/while:output:5(^attention_layer/MatMul_1/ReadVariableOp+^attention_layer/transpose_1/ReadVariableOp+^attention_layer/transpose_2/ReadVariableOp^attention_layer/while^embedding_1/embedding_lookup"^lstm_3/lstm_cell_3/ReadVariableOp$^lstm_3/lstm_cell_3/ReadVariableOp_1$^lstm_3/lstm_cell_3/ReadVariableOp_2$^lstm_3/lstm_cell_3/ReadVariableOp_3(^lstm_3/lstm_cell_3/split/ReadVariableOp*^lstm_3/lstm_cell_3/split_1/ReadVariableOp^lstm_3/while.^time_distributed/dense/BiasAdd/ReadVariableOp-^time_distributed/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapesp
n:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿP¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : : : : : 2R
'attention_layer/MatMul_1/ReadVariableOp'attention_layer/MatMul_1/ReadVariableOp2X
*attention_layer/transpose_1/ReadVariableOp*attention_layer/transpose_1/ReadVariableOp2X
*attention_layer/transpose_2/ReadVariableOp*attention_layer/transpose_2/ReadVariableOp2.
attention_layer/whileattention_layer/while2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2F
!lstm_3/lstm_cell_3/ReadVariableOp!lstm_3/lstm_cell_3/ReadVariableOp2J
#lstm_3/lstm_cell_3/ReadVariableOp_1#lstm_3/lstm_cell_3/ReadVariableOp_12J
#lstm_3/lstm_cell_3/ReadVariableOp_2#lstm_3/lstm_cell_3/ReadVariableOp_22J
#lstm_3/lstm_cell_3/ReadVariableOp_3#lstm_3/lstm_cell_3/ReadVariableOp_32R
'lstm_3/lstm_cell_3/split/ReadVariableOp'lstm_3/lstm_cell_3/split/ReadVariableOp2V
)lstm_3/lstm_cell_3/split_1/ReadVariableOp)lstm_3/lstm_cell_3/split_1/ReadVariableOp2
lstm_3/whilelstm_3/while2^
-time_distributed/dense/BiasAdd/ReadVariableOp-time_distributed/dense/BiasAdd/ReadVariableOp2\
,time_distributed/dense/MatMul/ReadVariableOp,time_distributed/dense/MatMul/ReadVariableOp:Z V
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
"
_user_specified_name
inputs/2:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
"
_user_specified_name
inputs/3
¹H

A__inference_lstm_3_layer_call_and_return_conditional_losses_59927

inputs$
lstm_cell_3_59843:	d°	 
lstm_cell_3_59845:	°	%
lstm_cell_3_59847:
¬°	
identity

identity_1

identity_2¢#lstm_cell_3/StatefulPartitionedCall¢whileD
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
strided_slice/stack_2â
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
B :¬2
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
B :è2
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
B :¬2
zeros/packed/1
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
:ÿÿÿÿÿÿÿÿÿ¬2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :¬2
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
B :è2
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
B :¬2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ¬2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
strided_slice_2
#lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_3_59843lstm_cell_3_59845lstm_cell_3_59847*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_597742%
#lstm_cell_3/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_3_59843lstm_cell_3_59845lstm_cell_3_59847*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_59856*
condR
while_cond_59855*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitytranspose_1:y:0$^lstm_cell_3/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2

Identity

Identity_1Identitywhile:output:4$^lstm_cell_3/StatefulPartitionedCall^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1

Identity_2Identitywhile:output:5$^lstm_cell_3/StatefulPartitionedCall^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2J
#lstm_cell_3/StatefulPartitionedCall#lstm_cell_3/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ð
¼
while_cond_60464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_60464___redundant_placeholder03
/while_while_cond_60464___redundant_placeholder13
/while_while_cond_60464___redundant_placeholder23
/while_while_cond_60464___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ¬:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
:
¼

ô
@__inference_dense_layer_call_and_return_conditional_losses_64770

inputs2
matmul_readvariableop_resource:
Øíb.
biasadd_readvariableop_resource:	íb
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Øíb*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:íb*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb2	
BiasAddb
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿØ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
 
_user_specified_nameinputs
Ð
¼
while_cond_63577
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_63577___redundant_placeholder03
/while_while_cond_63577___redundant_placeholder13
/while_while_cond_63577___redundant_placeholder23
/while_while_cond_63577___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ¬:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
:
æ
þ
&__inference_lstm_3_layer_call_fn_64123

inputs
initial_state_0
initial_state_1
unknown:	d°	
	unknown_0:	°	
	unknown_1:
¬°	
identity

identity_1

identity_2¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsinitial_state_0initial_state_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_606012
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:YU
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
)
_user_specified_nameinitial_state/0:YU
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
)
_user_specified_nameinitial_state/1
§

+__inference_embedding_1_layer_call_fn_62846

inputs
unknown:	íbd
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_603642
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

	
while_body_63578
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_3_split_readvariableop_resource_0:	d°	B
3while_lstm_cell_3_split_1_readvariableop_resource_0:	°	?
+while_lstm_cell_3_readvariableop_resource_0:
¬°	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_3_split_readvariableop_resource:	d°	@
1while_lstm_cell_3_split_1_readvariableop_resource:	°	=
)while_lstm_cell_3_readvariableop_resource:
¬°	¢ while/lstm_cell_3/ReadVariableOp¢"while/lstm_cell_3/ReadVariableOp_1¢"while/lstm_cell_3/ReadVariableOp_2¢"while/lstm_cell_3/ReadVariableOp_3¢&while/lstm_cell_3/split/ReadVariableOp¢(while/lstm_cell_3/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¦
!while/lstm_cell_3/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/ones_like/Shape
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_3/ones_like/ConstÌ
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/ones_like
#while/lstm_cell_3/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_3/ones_like_1/Shape
#while/lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_3/ones_like_1/ConstÕ
while/lstm_cell_3/ones_like_1Fill,while/lstm_cell_3/ones_like_1/Shape:output:0,while/lstm_cell_3/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/ones_like_1¿
while/lstm_cell_3/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/mulÃ
while/lstm_cell_3/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/mul_1Ã
while/lstm_cell_3/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/mul_2Ã
while/lstm_cell_3/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/mul_3
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dimÃ
&while/lstm_cell_3/split/ReadVariableOpReadVariableOp1while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	d°	*
dtype02(
&while/lstm_cell_3/split/ReadVariableOpó
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0.while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d¬:	d¬:	d¬:	d¬*
	num_split2
while/lstm_cell_3/split®
while/lstm_cell_3/MatMulMatMulwhile/lstm_cell_3/mul:z:0 while/lstm_cell_3/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul´
while/lstm_cell_3/MatMul_1MatMulwhile/lstm_cell_3/mul_1:z:0 while/lstm_cell_3/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_1´
while/lstm_cell_3/MatMul_2MatMulwhile/lstm_cell_3/mul_2:z:0 while/lstm_cell_3/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_2´
while/lstm_cell_3/MatMul_3MatMulwhile/lstm_cell_3/mul_3:z:0 while/lstm_cell_3/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_3
#while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_3/split_1/split_dimÅ
(while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:°	*
dtype02*
(while/lstm_cell_3/split_1/ReadVariableOpë
while/lstm_cell_3/split_1Split,while/lstm_cell_3/split_1/split_dim:output:00while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:¬:¬:¬:¬*
	num_split2
while/lstm_cell_3/split_1¼
while/lstm_cell_3/BiasAddBiasAdd"while/lstm_cell_3/MatMul:product:0"while/lstm_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/BiasAddÂ
while/lstm_cell_3/BiasAdd_1BiasAdd$while/lstm_cell_3/MatMul_1:product:0"while/lstm_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/BiasAdd_1Â
while/lstm_cell_3/BiasAdd_2BiasAdd$while/lstm_cell_3/MatMul_2:product:0"while/lstm_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/BiasAdd_2Â
while/lstm_cell_3/BiasAdd_3BiasAdd$while/lstm_cell_3/MatMul_3:product:0"while/lstm_cell_3/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/BiasAdd_3©
while/lstm_cell_3/mul_4Mulwhile_placeholder_2&while/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_4©
while/lstm_cell_3/mul_5Mulwhile_placeholder_2&while/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_5©
while/lstm_cell_3/mul_6Mulwhile_placeholder_2&while/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_6©
while/lstm_cell_3/mul_7Mulwhile_placeholder_2&while/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_7²
 while/lstm_cell_3/ReadVariableOpReadVariableOp+while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02"
 while/lstm_cell_3/ReadVariableOp
%while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_3/strided_slice/stack£
'while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2)
'while/lstm_cell_3/strided_slice/stack_1£
'while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_3/strided_slice/stack_2ê
while/lstm_cell_3/strided_sliceStridedSlice(while/lstm_cell_3/ReadVariableOp:value:0.while/lstm_cell_3/strided_slice/stack:output:00while/lstm_cell_3/strided_slice/stack_1:output:00while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2!
while/lstm_cell_3/strided_slice¼
while/lstm_cell_3/MatMul_4MatMulwhile/lstm_cell_3/mul_4:z:0(while/lstm_cell_3/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_4´
while/lstm_cell_3/addAddV2"while/lstm_cell_3/BiasAdd:output:0$while/lstm_cell_3/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add
while/lstm_cell_3/SigmoidSigmoidwhile/lstm_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Sigmoid¶
"while/lstm_cell_3/ReadVariableOp_1ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02$
"while/lstm_cell_3/ReadVariableOp_1£
'while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2)
'while/lstm_cell_3/strided_slice_1/stack§
)while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  2+
)while/lstm_cell_3/strided_slice_1/stack_1§
)while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_1/stack_2ö
!while/lstm_cell_3/strided_slice_1StridedSlice*while/lstm_cell_3/ReadVariableOp_1:value:00while/lstm_cell_3/strided_slice_1/stack:output:02while/lstm_cell_3/strided_slice_1/stack_1:output:02while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_1¾
while/lstm_cell_3/MatMul_5MatMulwhile/lstm_cell_3/mul_5:z:0*while/lstm_cell_3/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_5º
while/lstm_cell_3/add_1AddV2$while/lstm_cell_3/BiasAdd_1:output:0$while/lstm_cell_3/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add_1
while/lstm_cell_3/Sigmoid_1Sigmoidwhile/lstm_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Sigmoid_1¢
while/lstm_cell_3/mul_8Mulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_8¶
"while/lstm_cell_3/ReadVariableOp_2ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02$
"while/lstm_cell_3/ReadVariableOp_2£
'while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  2)
'while/lstm_cell_3/strided_slice_2/stack§
)while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_2/stack_1§
)while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_2/stack_2ö
!while/lstm_cell_3/strided_slice_2StridedSlice*while/lstm_cell_3/ReadVariableOp_2:value:00while/lstm_cell_3/strided_slice_2/stack:output:02while/lstm_cell_3/strided_slice_2/stack_1:output:02while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_2¾
while/lstm_cell_3/MatMul_6MatMulwhile/lstm_cell_3/mul_6:z:0*while/lstm_cell_3/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_6º
while/lstm_cell_3/add_2AddV2$while/lstm_cell_3/BiasAdd_2:output:0$while/lstm_cell_3/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add_2
while/lstm_cell_3/TanhTanhwhile/lstm_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Tanh§
while/lstm_cell_3/mul_9Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_9¨
while/lstm_cell_3/add_3AddV2while/lstm_cell_3/mul_8:z:0while/lstm_cell_3/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add_3¶
"while/lstm_cell_3/ReadVariableOp_3ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02$
"while/lstm_cell_3/ReadVariableOp_3£
'while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_3/strided_slice_3/stack§
)while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_3/strided_slice_3/stack_1§
)while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_3/stack_2ö
!while/lstm_cell_3/strided_slice_3StridedSlice*while/lstm_cell_3/ReadVariableOp_3:value:00while/lstm_cell_3/strided_slice_3/stack:output:02while/lstm_cell_3/strided_slice_3/stack_1:output:02while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_3¾
while/lstm_cell_3/MatMul_7MatMulwhile/lstm_cell_3/mul_7:z:0*while/lstm_cell_3/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_7º
while/lstm_cell_3/add_4AddV2$while/lstm_cell_3/BiasAdd_3:output:0$while/lstm_cell_3/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add_4
while/lstm_cell_3/Sigmoid_2Sigmoidwhile/lstm_cell_3/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Sigmoid_2
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Tanh_1­
while/lstm_cell_3/mul_10Mulwhile/lstm_cell_3/Sigmoid_2:y:0while/lstm_cell_3/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_10à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ä
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity×
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Æ
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ó
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ç
while/Identity_4Identitywhile/lstm_cell_3/mul_10:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/Identity_4æ
while/Identity_5Identitywhile/lstm_cell_3/add_3:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_3_readvariableop_resource+while_lstm_cell_3_readvariableop_resource_0"h
1while_lstm_cell_3_split_1_readvariableop_resource3while_lstm_cell_3_split_1_readvariableop_resource_0"d
/while_lstm_cell_3_split_readvariableop_resource1while_lstm_cell_3_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : 2D
 while/lstm_cell_3/ReadVariableOp while/lstm_cell_3/ReadVariableOp2H
"while/lstm_cell_3/ReadVariableOp_1"while/lstm_cell_3/ReadVariableOp_12H
"while/lstm_cell_3/ReadVariableOp_2"while/lstm_cell_3/ReadVariableOp_22H
"while/lstm_cell_3/ReadVariableOp_3"while/lstm_cell_3/ReadVariableOp_32P
&while/lstm_cell_3/split/ReadVariableOp&while/lstm_cell_3/split/ReadVariableOp2T
(while/lstm_cell_3/split_1/ReadVariableOp(while/lstm_cell_3/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ¬:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
: 
R
î
while_body_60689
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_shape_inputs_0;
'while_shape_1_readvariableop_resource_0:
¬¬<
(while_matmul_1_readvariableop_resource_0:
¬¬:
'while_shape_3_readvariableop_resource_0:	¬
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_shape_inputs9
%while_shape_1_readvariableop_resource:
¬¬:
&while_matmul_1_readvariableop_resource:
¬¬8
%while_shape_3_readvariableop_resource:	¬¢while/MatMul_1/ReadVariableOp¢while/transpose/ReadVariableOp¢ while/transpose_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem^
while/ShapeShapewhile_shape_inputs_0*
T0*
_output_shapes
:2
while/Shapen
while/unstackUnpackwhile/Shape:output:0*
T0*
_output_shapes
: : : *	
num2
while/unstack¦
while/Shape_1/ReadVariableOpReadVariableOp'while_shape_1_readvariableop_resource_0* 
_output_shapes
:
¬¬*
dtype02
while/Shape_1/ReadVariableOpo
while/Shape_1Const*
_output_shapes
:*
dtype0*
valueB",  ,  2
while/Shape_1r
while/unstack_1Unpackwhile/Shape_1:output:0*
T0*
_output_shapes
: : *	
num2
while/unstack_1{
while/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2
while/Reshape/shape
while/ReshapeReshapewhile_shape_inputs_0while/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/Reshapeª
while/transpose/ReadVariableOpReadVariableOp'while_shape_1_readvariableop_resource_0* 
_output_shapes
:
¬¬*
dtype02 
while/transpose/ReadVariableOp}
while/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2
while/transpose/perm¡
while/transpose	Transpose&while/transpose/ReadVariableOp:value:0while/transpose/perm:output:0*
T0* 
_output_shapes
:
¬¬2
while/transpose
while/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB",  ÿÿÿÿ2
while/Reshape_1/shape
while/Reshape_1Reshapewhile/transpose:y:0while/Reshape_1/shape:output:0*
T0* 
_output_shapes
:
¬¬2
while/Reshape_1
while/MatMulMatMulwhile/Reshape:output:0while/Reshape_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/MatMult
while/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :P2
while/Reshape_2/shape/1u
while/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value
B :¬2
while/Reshape_2/shape/2À
while/Reshape_2/shapePackwhile/unstack:output:0 while/Reshape_2/shape/1:output:0 while/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/Reshape_2/shape
while/Reshape_2Reshapewhile/MatMul:product:0while/Reshape_2/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
while/Reshape_2©
while/MatMul_1/ReadVariableOpReadVariableOp(while_matmul_1_readvariableop_resource_0* 
_output_shapes
:
¬¬*
dtype02
while/MatMul_1/ReadVariableOp¶
while/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/MatMul_1n
while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/ExpandDims/dim¢
while/ExpandDims
ExpandDimswhile/MatMul_1:product:0while/ExpandDims/dim:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/ExpandDims
	while/addAddV2while/Reshape_2:output:0while/ExpandDims:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
	while/addf

while/TanhTanhwhile/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2

while/Tanh\
while/Shape_2Shapewhile/Tanh:y:0*
T0*
_output_shapes
:2
while/Shape_2t
while/unstack_2Unpackwhile/Shape_2:output:0*
T0*
_output_shapes
: : : *	
num2
while/unstack_2¥
while/Shape_3/ReadVariableOpReadVariableOp'while_shape_3_readvariableop_resource_0*
_output_shapes
:	¬*
dtype02
while/Shape_3/ReadVariableOpo
while/Shape_3Const*
_output_shapes
:*
dtype0*
valueB",     2
while/Shape_3r
while/unstack_3Unpackwhile/Shape_3:output:0*
T0*
_output_shapes
: : *	
num2
while/unstack_3
while/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2
while/Reshape_3/shape
while/Reshape_3Reshapewhile/Tanh:y:0while/Reshape_3/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/Reshape_3­
 while/transpose_1/ReadVariableOpReadVariableOp'while_shape_3_readvariableop_resource_0*
_output_shapes
:	¬*
dtype02"
 while/transpose_1/ReadVariableOp
while/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
while/transpose_1/perm¨
while/transpose_1	Transpose(while/transpose_1/ReadVariableOp:value:0while/transpose_1/perm:output:0*
T0*
_output_shapes
:	¬2
while/transpose_1
while/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB",  ÿÿÿÿ2
while/Reshape_4/shape
while/Reshape_4Reshapewhile/transpose_1:y:0while/Reshape_4/shape:output:0*
T0*
_output_shapes
:	¬2
while/Reshape_4
while/MatMul_2MatMulwhile/Reshape_3:output:0while/Reshape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/MatMul_2t
while/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :P2
while/Reshape_5/shape/1t
while/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/Reshape_5/shape/2Â
while/Reshape_5/shapePackwhile/unstack_2:output:0 while/Reshape_5/shape/1:output:0 while/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/Reshape_5/shape
while/Reshape_5Reshapewhile/MatMul_2:product:0while/Reshape_5/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
while/Reshape_5
while/SqueezeSqueezewhile/Reshape_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ2
while/Squeezes
while/SoftmaxSoftmaxwhile/Squeeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
while/SoftmaxÛ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/Softmax:softmax:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yo
while/add_1AddV2while_placeholderwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yv
while/add_2AddV2while_while_loop_counterwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2Â
while/IdentityIdentitywhile/add_2:z:0^while/MatMul_1/ReadVariableOp^while/transpose/ReadVariableOp!^while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityÕ
while/Identity_1Identitywhile_while_maximum_iterations^while/MatMul_1/ReadVariableOp^while/transpose/ReadVariableOp!^while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Æ
while/Identity_2Identitywhile/add_1:z:0^while/MatMul_1/ReadVariableOp^while/transpose/ReadVariableOp!^while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ñ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/MatMul_1/ReadVariableOp^while/transpose/ReadVariableOp!^while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ß
while/Identity_4Identitywhile/Softmax:softmax:0^while/MatMul_1/ReadVariableOp^while/transpose/ReadVariableOp!^while/transpose_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"R
&while_matmul_1_readvariableop_resource(while_matmul_1_readvariableop_resource_0"P
%while_shape_1_readvariableop_resource'while_shape_1_readvariableop_resource_0"P
%while_shape_3_readvariableop_resource'while_shape_3_readvariableop_resource_0"*
while_shape_inputswhile_shape_inputs_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=: : : : :ÿÿÿÿÿÿÿÿÿP: : :ÿÿÿÿÿÿÿÿÿP¬: : : 2>
while/MatMul_1/ReadVariableOpwhile/MatMul_1/ReadVariableOp2@
while/transpose/ReadVariableOpwhile/transpose/ReadVariableOp2D
 while/transpose_1/ReadVariableOp while/transpose_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿP:

_output_shapes
: :

_output_shapes
: :2.
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬
´
Ð
(model_2_attention_layer_while_cond_59169L
Hmodel_2_attention_layer_while_model_2_attention_layer_while_loop_counterR
Nmodel_2_attention_layer_while_model_2_attention_layer_while_maximum_iterations-
)model_2_attention_layer_while_placeholder/
+model_2_attention_layer_while_placeholder_1/
+model_2_attention_layer_while_placeholder_2L
Hmodel_2_attention_layer_while_less_model_2_attention_layer_strided_slicec
_model_2_attention_layer_while_model_2_attention_layer_while_cond_59169___redundant_placeholder0c
_model_2_attention_layer_while_model_2_attention_layer_while_cond_59169___redundant_placeholder1c
_model_2_attention_layer_while_model_2_attention_layer_while_cond_59169___redundant_placeholder2c
_model_2_attention_layer_while_model_2_attention_layer_while_cond_59169___redundant_placeholder3c
_model_2_attention_layer_while_model_2_attention_layer_while_cond_59169___redundant_placeholder4*
&model_2_attention_layer_while_identity
æ
"model_2/attention_layer/while/LessLess)model_2_attention_layer_while_placeholderHmodel_2_attention_layer_while_less_model_2_attention_layer_strided_slice*
T0*
_output_shapes
: 2$
"model_2/attention_layer/while/Less¥
&model_2/attention_layer/while/IdentityIdentity&model_2/attention_layer/while/Less:z:0*
T0
*
_output_shapes
: 2(
&model_2/attention_layer/while/Identity"Y
&model_2_attention_layer_while_identity/model_2/attention_layer/while/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :ÿÿÿÿÿÿÿÿÿP: :::::: 
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
:ÿÿÿÿÿÿÿÿÿP:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
Ó
×
while_1_cond_60820 
while_1_while_1_loop_counter&
"while_1_while_1_maximum_iterations
while_1_placeholder
while_1_placeholder_1
while_1_placeholder_2 
while_1_less_strided_slice_37
3while_1_while_1_cond_60820___redundant_placeholder07
3while_1_while_1_cond_60820___redundant_placeholder1
while_1_identity
x
while_1/LessLesswhile_1_placeholderwhile_1_less_strided_slice_3*
T0*
_output_shapes
: 2
while_1/Lessc
while_1/IdentityIdentitywhile_1/Less:z:0*
T0
*
_output_shapes
: 2
while_1/Identity"-
while_1_identitywhile_1/Identity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ¬: ::: 
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
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
ý(
 
B__inference_model_2_layer_call_and_return_conditional_losses_61430

inputs
inputs_1
inputs_2
inputs_3$
embedding_1_61399:	íbd
lstm_3_61402:	d°	
lstm_3_61404:	°	 
lstm_3_61406:
¬°	)
attention_layer_61411:
¬¬)
attention_layer_61413:
¬¬(
attention_layer_61415:	¬*
time_distributed_61420:
Øíb%
time_distributed_61422:	íb
identity

identity_1

identity_2¢'attention_layer/StatefulPartitionedCall¢#embedding_1/StatefulPartitionedCall¢lstm_3/StatefulPartitionedCall¢(time_distributed/StatefulPartitionedCall
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1_61399*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_603642%
#embedding_1/StatefulPartitionedCall
lstm_3/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0inputs_2inputs_3lstm_3_61402lstm_3_61404lstm_3_61406*
Tin

2*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_613372 
lstm_3/StatefulPartitionedCall«
'attention_layer/StatefulPartitionedCallStatefulPartitionedCallinputs_1'lstm_3/StatefulPartitionedCall:output:0attention_layer_61411attention_layer_61413attention_layer_61415*
Tin	
2*
Tout
2*
_collective_manager_ids
 *U
_output_shapesC
A:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_attention_layer_layer_call_and_return_conditional_losses_608792)
'attention_layer/StatefulPartitionedCall²
concat/PartitionedCallPartitionedCall'lstm_3/StatefulPartitionedCall:output:00attention_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_concat_layer_call_and_return_conditional_losses_608952
concat/PartitionedCallã
(time_distributed/StatefulPartitionedCallStatefulPartitionedCallconcat/PartitionedCall:output:0time_distributed_61420time_distributed_61422*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_602852*
(time_distributed/StatefulPartitionedCall
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿX  2 
time_distributed/Reshape/shape¼
time_distributed/ReshapeReshapeconcat/PartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
time_distributed/Reshape¯
IdentityIdentity1time_distributed/StatefulPartitionedCall:output:0(^attention_layer/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb2

Identity

Identity_1Identity'lstm_3/StatefulPartitionedCall:output:1(^attention_layer/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1

Identity_2Identity'lstm_3/StatefulPartitionedCall:output:2(^attention_layer/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapesp
n:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿP¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : : : : : 2R
'attention_layer/StatefulPartitionedCall'attention_layer/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:TP
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_nameinputs
å

Ç
"attention_layer_while_1_cond_62687@
<attention_layer_while_1_attention_layer_while_1_loop_counterF
Battention_layer_while_1_attention_layer_while_1_maximum_iterations'
#attention_layer_while_1_placeholder)
%attention_layer_while_1_placeholder_1)
%attention_layer_while_1_placeholder_2@
<attention_layer_while_1_less_attention_layer_strided_slice_3W
Sattention_layer_while_1_attention_layer_while_1_cond_62687___redundant_placeholder0W
Sattention_layer_while_1_attention_layer_while_1_cond_62687___redundant_placeholder1$
 attention_layer_while_1_identity
È
attention_layer/while_1/LessLess#attention_layer_while_1_placeholder<attention_layer_while_1_less_attention_layer_strided_slice_3*
T0*
_output_shapes
: 2
attention_layer/while_1/Less
 attention_layer/while_1/IdentityIdentity attention_layer/while_1/Less:z:0*
T0
*
_output_shapes
: 2"
 attention_layer/while_1/Identity"M
 attention_layer_while_1_identity)attention_layer/while_1/Identity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ¬: ::: 
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
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
Ðë
¥
A__inference_lstm_3_layer_call_and_return_conditional_losses_61337

inputs
initial_state
initial_state_1<
)lstm_cell_3_split_readvariableop_resource:	d°	:
+lstm_cell_3_split_1_readvariableop_resource:	°	7
#lstm_cell_3_readvariableop_resource:
¬°	
identity

identity_1

identity_2¢lstm_cell_3/ReadVariableOp¢lstm_cell_3/ReadVariableOp_1¢lstm_cell_3/ReadVariableOp_2¢lstm_cell_3/ReadVariableOp_3¢ lstm_cell_3/split/ReadVariableOp¢"lstm_cell_3/split_1/ReadVariableOp¢whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_1/stack_2ü
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
strided_slice_1
lstm_cell_3/ones_like/ShapeShapestrided_slice_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like/Shape
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like/Const´
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/ones_like{
lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
lstm_cell_3/dropout/Const¯
lstm_cell_3/dropout/MulMullstm_cell_3/ones_like:output:0"lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout/Mul
lstm_cell_3/dropout/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout/Shape÷
0lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2÷³22
0lstm_cell_3/dropout/random_uniform/RandomUniform
"lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2$
"lstm_cell_3/dropout/GreaterEqual/yî
 lstm_cell_3/dropout/GreaterEqualGreaterEqual9lstm_cell_3/dropout/random_uniform/RandomUniform:output:0+lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 lstm_cell_3/dropout/GreaterEqual£
lstm_cell_3/dropout/CastCast$lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout/Castª
lstm_cell_3/dropout/Mul_1Mullstm_cell_3/dropout/Mul:z:0lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout/Mul_1
lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
lstm_cell_3/dropout_1/Constµ
lstm_cell_3/dropout_1/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_1/Mul
lstm_cell_3/dropout_1/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_1/Shapeü
2lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2°24
2lstm_cell_3/dropout_1/random_uniform/RandomUniform
$lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2&
$lstm_cell_3/dropout_1/GreaterEqual/yö
"lstm_cell_3/dropout_1/GreaterEqualGreaterEqual;lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_cell_3/dropout_1/GreaterEqual©
lstm_cell_3/dropout_1/CastCast&lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_1/Cast²
lstm_cell_3/dropout_1/Mul_1Mullstm_cell_3/dropout_1/Mul:z:0lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_1/Mul_1
lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
lstm_cell_3/dropout_2/Constµ
lstm_cell_3/dropout_2/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_2/Mul
lstm_cell_3/dropout_2/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_2/Shapeý
2lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2­ÏÚ24
2lstm_cell_3/dropout_2/random_uniform/RandomUniform
$lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2&
$lstm_cell_3/dropout_2/GreaterEqual/yö
"lstm_cell_3/dropout_2/GreaterEqualGreaterEqual;lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_cell_3/dropout_2/GreaterEqual©
lstm_cell_3/dropout_2/CastCast&lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_2/Cast²
lstm_cell_3/dropout_2/Mul_1Mullstm_cell_3/dropout_2/Mul:z:0lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_2/Mul_1
lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
lstm_cell_3/dropout_3/Constµ
lstm_cell_3/dropout_3/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_3/Mul
lstm_cell_3/dropout_3/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_3/Shapeý
2lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2­û¤24
2lstm_cell_3/dropout_3/random_uniform/RandomUniform
$lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2&
$lstm_cell_3/dropout_3/GreaterEqual/yö
"lstm_cell_3/dropout_3/GreaterEqualGreaterEqual;lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_cell_3/dropout_3/GreaterEqual©
lstm_cell_3/dropout_3/CastCast&lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_3/Cast²
lstm_cell_3/dropout_3/Mul_1Mullstm_cell_3/dropout_3/Mul:z:0lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_3/Mul_1{
lstm_cell_3/ones_like_1/ShapeShapeinitial_state*
T0*
_output_shapes
:2
lstm_cell_3/ones_like_1/Shape
lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like_1/Const½
lstm_cell_3/ones_like_1Fill&lstm_cell_3/ones_like_1/Shape:output:0&lstm_cell_3/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/ones_like_1
lstm_cell_3/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/dropout_4/Const¸
lstm_cell_3/dropout_4/MulMul lstm_cell_3/ones_like_1:output:0$lstm_cell_3/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_4/Mul
lstm_cell_3/dropout_4/ShapeShape lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_4/Shapeþ
2lstm_cell_3/dropout_4/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2³£×24
2lstm_cell_3/dropout_4/random_uniform/RandomUniform
$lstm_cell_3/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_3/dropout_4/GreaterEqual/y÷
"lstm_cell_3/dropout_4/GreaterEqualGreaterEqual;lstm_cell_3/dropout_4/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_cell_3/dropout_4/GreaterEqualª
lstm_cell_3/dropout_4/CastCast&lstm_cell_3/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_4/Cast³
lstm_cell_3/dropout_4/Mul_1Mullstm_cell_3/dropout_4/Mul:z:0lstm_cell_3/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_4/Mul_1
lstm_cell_3/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/dropout_5/Const¸
lstm_cell_3/dropout_5/MulMul lstm_cell_3/ones_like_1:output:0$lstm_cell_3/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_5/Mul
lstm_cell_3/dropout_5/ShapeShape lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_5/Shapeý
2lstm_cell_3/dropout_5/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2Çø<24
2lstm_cell_3/dropout_5/random_uniform/RandomUniform
$lstm_cell_3/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_3/dropout_5/GreaterEqual/y÷
"lstm_cell_3/dropout_5/GreaterEqualGreaterEqual;lstm_cell_3/dropout_5/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_cell_3/dropout_5/GreaterEqualª
lstm_cell_3/dropout_5/CastCast&lstm_cell_3/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_5/Cast³
lstm_cell_3/dropout_5/Mul_1Mullstm_cell_3/dropout_5/Mul:z:0lstm_cell_3/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_5/Mul_1
lstm_cell_3/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/dropout_6/Const¸
lstm_cell_3/dropout_6/MulMul lstm_cell_3/ones_like_1:output:0$lstm_cell_3/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_6/Mul
lstm_cell_3/dropout_6/ShapeShape lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_6/Shapeþ
2lstm_cell_3/dropout_6/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2à¯24
2lstm_cell_3/dropout_6/random_uniform/RandomUniform
$lstm_cell_3/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_3/dropout_6/GreaterEqual/y÷
"lstm_cell_3/dropout_6/GreaterEqualGreaterEqual;lstm_cell_3/dropout_6/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_cell_3/dropout_6/GreaterEqualª
lstm_cell_3/dropout_6/CastCast&lstm_cell_3/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_6/Cast³
lstm_cell_3/dropout_6/Mul_1Mullstm_cell_3/dropout_6/Mul:z:0lstm_cell_3/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_6/Mul_1
lstm_cell_3/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/dropout_7/Const¸
lstm_cell_3/dropout_7/MulMul lstm_cell_3/ones_like_1:output:0$lstm_cell_3/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_7/Mul
lstm_cell_3/dropout_7/ShapeShape lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_7/Shapeþ
2lstm_cell_3/dropout_7/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2ÌÃ24
2lstm_cell_3/dropout_7/random_uniform/RandomUniform
$lstm_cell_3/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_3/dropout_7/GreaterEqual/y÷
"lstm_cell_3/dropout_7/GreaterEqualGreaterEqual;lstm_cell_3/dropout_7/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_cell_3/dropout_7/GreaterEqualª
lstm_cell_3/dropout_7/CastCast&lstm_cell_3/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_7/Cast³
lstm_cell_3/dropout_7/Mul_1Mullstm_cell_3/dropout_7/Mul:z:0lstm_cell_3/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_7/Mul_1
lstm_cell_3/mulMulstrided_slice_1:output:0lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/mul
lstm_cell_3/mul_1Mulstrided_slice_1:output:0lstm_cell_3/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/mul_1
lstm_cell_3/mul_2Mulstrided_slice_1:output:0lstm_cell_3/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/mul_2
lstm_cell_3/mul_3Mulstrided_slice_1:output:0lstm_cell_3/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/mul_3|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dim¯
 lstm_cell_3/split/ReadVariableOpReadVariableOp)lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	d°	*
dtype02"
 lstm_cell_3/split/ReadVariableOpÛ
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0(lstm_cell_3/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d¬:	d¬:	d¬:	d¬*
	num_split2
lstm_cell_3/split
lstm_cell_3/MatMulMatMullstm_cell_3/mul:z:0lstm_cell_3/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul
lstm_cell_3/MatMul_1MatMullstm_cell_3/mul_1:z:0lstm_cell_3/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_1
lstm_cell_3/MatMul_2MatMullstm_cell_3/mul_2:z:0lstm_cell_3/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_2
lstm_cell_3/MatMul_3MatMullstm_cell_3/mul_3:z:0lstm_cell_3/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_3
lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_3/split_1/split_dim±
"lstm_cell_3/split_1/ReadVariableOpReadVariableOp+lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:°	*
dtype02$
"lstm_cell_3/split_1/ReadVariableOpÓ
lstm_cell_3/split_1Split&lstm_cell_3/split_1/split_dim:output:0*lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:¬:¬:¬:¬*
	num_split2
lstm_cell_3/split_1¤
lstm_cell_3/BiasAddBiasAddlstm_cell_3/MatMul:product:0lstm_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/BiasAddª
lstm_cell_3/BiasAdd_1BiasAddlstm_cell_3/MatMul_1:product:0lstm_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/BiasAdd_1ª
lstm_cell_3/BiasAdd_2BiasAddlstm_cell_3/MatMul_2:product:0lstm_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/BiasAdd_2ª
lstm_cell_3/BiasAdd_3BiasAddlstm_cell_3/MatMul_3:product:0lstm_cell_3/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/BiasAdd_3
lstm_cell_3/mul_4Mulinitial_statelstm_cell_3/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_4
lstm_cell_3/mul_5Mulinitial_statelstm_cell_3/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_5
lstm_cell_3/mul_6Mulinitial_statelstm_cell_3/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_6
lstm_cell_3/mul_7Mulinitial_statelstm_cell_3/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_7
lstm_cell_3/ReadVariableOpReadVariableOp#lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
lstm_cell_3/ReadVariableOp
lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_3/strided_slice/stack
!lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2#
!lstm_cell_3/strided_slice/stack_1
!lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_3/strided_slice/stack_2Æ
lstm_cell_3/strided_sliceStridedSlice"lstm_cell_3/ReadVariableOp:value:0(lstm_cell_3/strided_slice/stack:output:0*lstm_cell_3/strided_slice/stack_1:output:0*lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
lstm_cell_3/strided_slice¤
lstm_cell_3/MatMul_4MatMullstm_cell_3/mul_4:z:0"lstm_cell_3/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_4
lstm_cell_3/addAddV2lstm_cell_3/BiasAdd:output:0lstm_cell_3/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add}
lstm_cell_3/SigmoidSigmoidlstm_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Sigmoid¢
lstm_cell_3/ReadVariableOp_1ReadVariableOp#lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
lstm_cell_3/ReadVariableOp_1
!lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2#
!lstm_cell_3/strided_slice_1/stack
#lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  2%
#lstm_cell_3/strided_slice_1/stack_1
#lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_1/stack_2Ò
lstm_cell_3/strided_slice_1StridedSlice$lstm_cell_3/ReadVariableOp_1:value:0*lstm_cell_3/strided_slice_1/stack:output:0,lstm_cell_3/strided_slice_1/stack_1:output:0,lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_1¦
lstm_cell_3/MatMul_5MatMullstm_cell_3/mul_5:z:0$lstm_cell_3/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_5¢
lstm_cell_3/add_1AddV2lstm_cell_3/BiasAdd_1:output:0lstm_cell_3/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add_1
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Sigmoid_1
lstm_cell_3/mul_8Mullstm_cell_3/Sigmoid_1:y:0initial_state_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_8¢
lstm_cell_3/ReadVariableOp_2ReadVariableOp#lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
lstm_cell_3/ReadVariableOp_2
!lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  2#
!lstm_cell_3/strided_slice_2/stack
#lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_2/stack_1
#lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_2/stack_2Ò
lstm_cell_3/strided_slice_2StridedSlice$lstm_cell_3/ReadVariableOp_2:value:0*lstm_cell_3/strided_slice_2/stack:output:0,lstm_cell_3/strided_slice_2/stack_1:output:0,lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_2¦
lstm_cell_3/MatMul_6MatMullstm_cell_3/mul_6:z:0$lstm_cell_3/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_6¢
lstm_cell_3/add_2AddV2lstm_cell_3/BiasAdd_2:output:0lstm_cell_3/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add_2v
lstm_cell_3/TanhTanhlstm_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Tanh
lstm_cell_3/mul_9Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_9
lstm_cell_3/add_3AddV2lstm_cell_3/mul_8:z:0lstm_cell_3/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add_3¢
lstm_cell_3/ReadVariableOp_3ReadVariableOp#lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
lstm_cell_3/ReadVariableOp_3
!lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_3/strided_slice_3/stack
#lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_3/strided_slice_3/stack_1
#lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_3/stack_2Ò
lstm_cell_3/strided_slice_3StridedSlice$lstm_cell_3/ReadVariableOp_3:value:0*lstm_cell_3/strided_slice_3/stack:output:0,lstm_cell_3/strided_slice_3/stack_1:output:0,lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_3¦
lstm_cell_3/MatMul_7MatMullstm_cell_3/mul_7:z:0$lstm_cell_3/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_7¢
lstm_cell_3/add_4AddV2lstm_cell_3/BiasAdd_3:output:0lstm_cell_3/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add_4
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Sigmoid_2z
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Tanh_1
lstm_cell_3/mul_10Mullstm_cell_3/Sigmoid_2:y:0lstm_cell_3/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2
TensorArrayV2_1/element_shape¶
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterß
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0initial_stateinitial_state_1strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_3_split_readvariableop_resource+lstm_cell_3_split_1_readvariableop_resource#lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_61137*
condR
while_cond_61136*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime»
IdentityIdentitytranspose_1:y:0^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2

Identity±

Identity_1Identitywhile:output:4^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1±

Identity_2Identitywhile:output:5^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : 28
lstm_cell_3/ReadVariableOplstm_cell_3/ReadVariableOp2<
lstm_cell_3/ReadVariableOp_1lstm_cell_3/ReadVariableOp_12<
lstm_cell_3/ReadVariableOp_2lstm_cell_3/ReadVariableOp_22<
lstm_cell_3/ReadVariableOp_3lstm_cell_3/ReadVariableOp_32D
 lstm_cell_3/split/ReadVariableOp lstm_cell_3/split/ReadVariableOp2H
"lstm_cell_3/split_1/ReadVariableOp"lstm_cell_3/split_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:WS
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
'
_user_specified_nameinitial_state:WS
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
'
_user_specified_nameinitial_state
Ç
°
'__inference_model_2_layer_call_fn_61485
input_2
input_5
input_3
input_4
unknown:	íbd
	unknown_0:	d°	
	unknown_1:	°	
	unknown_2:
¬°	
	unknown_3:
¬¬
	unknown_4:
¬¬
	unknown_5:	¬
	unknown_6:
Øíb
	unknown_7:	íb
identity

identity_1

identity_2¢StatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinput_2input_5input_3input_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_614302
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapesp
n:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿP¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2:UQ
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬
!
_user_specified_name	input_5:QM
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
!
_user_specified_name	input_3:QM
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
!
_user_specified_name	input_4
­
ª
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_64725

inputs
states_0
states_10
split_readvariableop_resource:	d°	.
split_1_readvariableop_resource:	°	+
readvariableop_resource:
¬°	
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/ShapeÒ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2æû2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2
dropout/GreaterEqual/y¾
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/ShapeÙ
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2ì¥Þ2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2
dropout_1/GreaterEqual/yÆ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/ShapeØ
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2¨¨[2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2
dropout_2/GreaterEqual/yÆ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/ShapeØ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2³2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2
dropout_3/GreaterEqual/yÆ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_3/Mul_1^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
ones_like_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_4/Const
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/ShapeÚ
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2å2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_4/GreaterEqual/yÇ
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_4/GreaterEqual
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_4/Cast
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_5/Const
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/ShapeÚ
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2Àà2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_5/GreaterEqual/yÇ
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_5/GreaterEqual
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_5/Cast
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_5/Mul_1g
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_6/Const
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/ShapeÚ
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2òì2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_6/GreaterEqual/yÇ
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_6/GreaterEqual
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_6/Cast
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_6/Mul_1g
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_7/Const
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/ShapeÚ
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2±º2(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_7/GreaterEqual/yÇ
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_7/GreaterEqual
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_7/Cast
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_7/Mul_1^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
muld
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_1d
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_2d
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_3d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	d°	*
dtype02
split/ReadVariableOp«
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d¬:	d¬:	d¬:	d¬*
	num_split2
splitf
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
MatMull
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_1l
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_2l
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:°	*
dtype02
split_1/ReadVariableOp£
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:¬:¬:¬:¬*
	num_split2	
split_1t
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2	
BiasAddz
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
	BiasAdd_1z
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
	BiasAdd_2z
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
	BiasAdd_3g
mul_4Mulstates_0dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_4g
mul_5Mulstates_0dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_5g
mul_6Mulstates_0dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_6g
mul_7Mulstates_0dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_7z
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
strided_slicet
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_4l
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2	
Sigmoid~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
strided_slice_1v
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_5r
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
	Sigmoid_1a
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_8~
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
strided_slice_2v
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_6r
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
Tanh_
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_9`
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
add_3~
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
strided_slice_3v
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_7r
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
add_4_
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
	Sigmoid_2V
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
Tanh_1e
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_10Ù
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

IdentityÝ

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1Ü

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
"
_user_specified_name
states/1
£

È
lstm_3_while_cond_61695*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3*
&lstm_3_while_less_lstm_3_strided_sliceA
=lstm_3_while_lstm_3_while_cond_61695___redundant_placeholder0A
=lstm_3_while_lstm_3_while_cond_61695___redundant_placeholder1A
=lstm_3_while_lstm_3_while_cond_61695___redundant_placeholder2A
=lstm_3_while_lstm_3_while_cond_61695___redundant_placeholder3
lstm_3_while_identity

lstm_3/while/LessLesslstm_3_while_placeholder&lstm_3_while_less_lstm_3_strided_slice*
T0*
_output_shapes
: 2
lstm_3/while/Lessr
lstm_3/while/IdentityIdentitylstm_3/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_3/while/Identity"7
lstm_3_while_identitylstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ¬:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
:

	
while_body_60465
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_3_split_readvariableop_resource_0:	d°	B
3while_lstm_cell_3_split_1_readvariableop_resource_0:	°	?
+while_lstm_cell_3_readvariableop_resource_0:
¬°	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_3_split_readvariableop_resource:	d°	@
1while_lstm_cell_3_split_1_readvariableop_resource:	°	=
)while_lstm_cell_3_readvariableop_resource:
¬°	¢ while/lstm_cell_3/ReadVariableOp¢"while/lstm_cell_3/ReadVariableOp_1¢"while/lstm_cell_3/ReadVariableOp_2¢"while/lstm_cell_3/ReadVariableOp_3¢&while/lstm_cell_3/split/ReadVariableOp¢(while/lstm_cell_3/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¦
!while/lstm_cell_3/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/ones_like/Shape
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_3/ones_like/ConstÌ
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/ones_like
#while/lstm_cell_3/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_3/ones_like_1/Shape
#while/lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_3/ones_like_1/ConstÕ
while/lstm_cell_3/ones_like_1Fill,while/lstm_cell_3/ones_like_1/Shape:output:0,while/lstm_cell_3/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/ones_like_1¿
while/lstm_cell_3/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/mulÃ
while/lstm_cell_3/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/mul_1Ã
while/lstm_cell_3/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/mul_2Ã
while/lstm_cell_3/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/mul_3
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dimÃ
&while/lstm_cell_3/split/ReadVariableOpReadVariableOp1while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	d°	*
dtype02(
&while/lstm_cell_3/split/ReadVariableOpó
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0.while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d¬:	d¬:	d¬:	d¬*
	num_split2
while/lstm_cell_3/split®
while/lstm_cell_3/MatMulMatMulwhile/lstm_cell_3/mul:z:0 while/lstm_cell_3/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul´
while/lstm_cell_3/MatMul_1MatMulwhile/lstm_cell_3/mul_1:z:0 while/lstm_cell_3/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_1´
while/lstm_cell_3/MatMul_2MatMulwhile/lstm_cell_3/mul_2:z:0 while/lstm_cell_3/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_2´
while/lstm_cell_3/MatMul_3MatMulwhile/lstm_cell_3/mul_3:z:0 while/lstm_cell_3/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_3
#while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_3/split_1/split_dimÅ
(while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:°	*
dtype02*
(while/lstm_cell_3/split_1/ReadVariableOpë
while/lstm_cell_3/split_1Split,while/lstm_cell_3/split_1/split_dim:output:00while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:¬:¬:¬:¬*
	num_split2
while/lstm_cell_3/split_1¼
while/lstm_cell_3/BiasAddBiasAdd"while/lstm_cell_3/MatMul:product:0"while/lstm_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/BiasAddÂ
while/lstm_cell_3/BiasAdd_1BiasAdd$while/lstm_cell_3/MatMul_1:product:0"while/lstm_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/BiasAdd_1Â
while/lstm_cell_3/BiasAdd_2BiasAdd$while/lstm_cell_3/MatMul_2:product:0"while/lstm_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/BiasAdd_2Â
while/lstm_cell_3/BiasAdd_3BiasAdd$while/lstm_cell_3/MatMul_3:product:0"while/lstm_cell_3/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/BiasAdd_3©
while/lstm_cell_3/mul_4Mulwhile_placeholder_2&while/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_4©
while/lstm_cell_3/mul_5Mulwhile_placeholder_2&while/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_5©
while/lstm_cell_3/mul_6Mulwhile_placeholder_2&while/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_6©
while/lstm_cell_3/mul_7Mulwhile_placeholder_2&while/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_7²
 while/lstm_cell_3/ReadVariableOpReadVariableOp+while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02"
 while/lstm_cell_3/ReadVariableOp
%while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_3/strided_slice/stack£
'while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2)
'while/lstm_cell_3/strided_slice/stack_1£
'while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_3/strided_slice/stack_2ê
while/lstm_cell_3/strided_sliceStridedSlice(while/lstm_cell_3/ReadVariableOp:value:0.while/lstm_cell_3/strided_slice/stack:output:00while/lstm_cell_3/strided_slice/stack_1:output:00while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2!
while/lstm_cell_3/strided_slice¼
while/lstm_cell_3/MatMul_4MatMulwhile/lstm_cell_3/mul_4:z:0(while/lstm_cell_3/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_4´
while/lstm_cell_3/addAddV2"while/lstm_cell_3/BiasAdd:output:0$while/lstm_cell_3/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add
while/lstm_cell_3/SigmoidSigmoidwhile/lstm_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Sigmoid¶
"while/lstm_cell_3/ReadVariableOp_1ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02$
"while/lstm_cell_3/ReadVariableOp_1£
'while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2)
'while/lstm_cell_3/strided_slice_1/stack§
)while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  2+
)while/lstm_cell_3/strided_slice_1/stack_1§
)while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_1/stack_2ö
!while/lstm_cell_3/strided_slice_1StridedSlice*while/lstm_cell_3/ReadVariableOp_1:value:00while/lstm_cell_3/strided_slice_1/stack:output:02while/lstm_cell_3/strided_slice_1/stack_1:output:02while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_1¾
while/lstm_cell_3/MatMul_5MatMulwhile/lstm_cell_3/mul_5:z:0*while/lstm_cell_3/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_5º
while/lstm_cell_3/add_1AddV2$while/lstm_cell_3/BiasAdd_1:output:0$while/lstm_cell_3/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add_1
while/lstm_cell_3/Sigmoid_1Sigmoidwhile/lstm_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Sigmoid_1¢
while/lstm_cell_3/mul_8Mulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_8¶
"while/lstm_cell_3/ReadVariableOp_2ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02$
"while/lstm_cell_3/ReadVariableOp_2£
'while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  2)
'while/lstm_cell_3/strided_slice_2/stack§
)while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_2/stack_1§
)while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_2/stack_2ö
!while/lstm_cell_3/strided_slice_2StridedSlice*while/lstm_cell_3/ReadVariableOp_2:value:00while/lstm_cell_3/strided_slice_2/stack:output:02while/lstm_cell_3/strided_slice_2/stack_1:output:02while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_2¾
while/lstm_cell_3/MatMul_6MatMulwhile/lstm_cell_3/mul_6:z:0*while/lstm_cell_3/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_6º
while/lstm_cell_3/add_2AddV2$while/lstm_cell_3/BiasAdd_2:output:0$while/lstm_cell_3/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add_2
while/lstm_cell_3/TanhTanhwhile/lstm_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Tanh§
while/lstm_cell_3/mul_9Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_9¨
while/lstm_cell_3/add_3AddV2while/lstm_cell_3/mul_8:z:0while/lstm_cell_3/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add_3¶
"while/lstm_cell_3/ReadVariableOp_3ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02$
"while/lstm_cell_3/ReadVariableOp_3£
'while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_3/strided_slice_3/stack§
)while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_3/strided_slice_3/stack_1§
)while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_3/stack_2ö
!while/lstm_cell_3/strided_slice_3StridedSlice*while/lstm_cell_3/ReadVariableOp_3:value:00while/lstm_cell_3/strided_slice_3/stack:output:02while/lstm_cell_3/strided_slice_3/stack_1:output:02while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_3¾
while/lstm_cell_3/MatMul_7MatMulwhile/lstm_cell_3/mul_7:z:0*while/lstm_cell_3/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_7º
while/lstm_cell_3/add_4AddV2$while/lstm_cell_3/BiasAdd_3:output:0$while/lstm_cell_3/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add_4
while/lstm_cell_3/Sigmoid_2Sigmoidwhile/lstm_cell_3/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Sigmoid_2
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Tanh_1­
while/lstm_cell_3/mul_10Mulwhile/lstm_cell_3/Sigmoid_2:y:0while/lstm_cell_3/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_10à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ä
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity×
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Æ
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ó
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ç
while/Identity_4Identitywhile/lstm_cell_3/mul_10:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/Identity_4æ
while/Identity_5Identitywhile/lstm_cell_3/add_3:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_3_readvariableop_resource+while_lstm_cell_3_readvariableop_resource_0"h
1while_lstm_cell_3_split_1_readvariableop_resource3while_lstm_cell_3_split_1_readvariableop_resource_0"d
/while_lstm_cell_3_split_readvariableop_resource1while_lstm_cell_3_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : 2D
 while/lstm_cell_3/ReadVariableOp while/lstm_cell_3/ReadVariableOp2H
"while/lstm_cell_3/ReadVariableOp_1"while/lstm_cell_3/ReadVariableOp_12H
"while/lstm_cell_3/ReadVariableOp_2"while/lstm_cell_3/ReadVariableOp_22H
"while/lstm_cell_3/ReadVariableOp_3"while/lstm_cell_3/ReadVariableOp_32P
&while/lstm_cell_3/split/ReadVariableOp&while/lstm_cell_3/split/ReadVariableOp2T
(while/lstm_cell_3/split_1/ReadVariableOp(while/lstm_cell_3/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ¬:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
: 
¹H

A__inference_lstm_3_layer_call_and_return_conditional_losses_59593

inputs$
lstm_cell_3_59509:	d°	 
lstm_cell_3_59511:	°	%
lstm_cell_3_59513:
¬°	
identity

identity_1

identity_2¢#lstm_cell_3/StatefulPartitionedCall¢whileD
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
strided_slice/stack_2â
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
B :¬2
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
B :è2
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
B :¬2
zeros/packed/1
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
:ÿÿÿÿÿÿÿÿÿ¬2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :¬2
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
B :è2
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
B :¬2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ¬2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
strided_slice_2
#lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_3_59509lstm_cell_3_59511lstm_cell_3_59513*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_595082%
#lstm_cell_3/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_3_59509lstm_cell_3_59511lstm_cell_3_59513*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_59522*
condR
while_cond_59521*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitytranspose_1:y:0$^lstm_cell_3/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2

Identity

Identity_1Identitywhile:output:4$^lstm_cell_3/StatefulPartitionedCall^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1

Identity_2Identitywhile:output:5$^lstm_cell_3/StatefulPartitionedCall^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2J
#lstm_cell_3/StatefulPartitionedCall#lstm_cell_3/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs

¨
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_59774

inputs

states
states_10
split_readvariableop_resource:	d°	.
split_1_readvariableop_resource:	°	+
readvariableop_resource:
¬°	
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/ShapeÓ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2ÈýÜ2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2
dropout/GreaterEqual/y¾
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/ShapeÙ
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2¾æ»2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2
dropout_1/GreaterEqual/yÆ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/ShapeÙ
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2Èä2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2
dropout_2/GreaterEqual/yÆ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/ShapeÙ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2»­û2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2
dropout_3/GreaterEqual/yÆ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dropout_3/Mul_1\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
ones_like_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_4/Const
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/ShapeÚ
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2æª2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_4/GreaterEqual/yÇ
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_4/GreaterEqual
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_4/Cast
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_5/Const
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/ShapeÙ
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2ÄT2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_5/GreaterEqual/yÇ
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_5/GreaterEqual
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_5/Cast
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_5/Mul_1g
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_6/Const
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/ShapeÚ
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2Èç¬2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_6/GreaterEqual/yÇ
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_6/GreaterEqual
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_6/Cast
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_6/Mul_1g
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_7/Const
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/ShapeÚ
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2¥©¤2(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_7/GreaterEqual/yÇ
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_7/GreaterEqual
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_7/Cast
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_7/Mul_1^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
muld
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_1d
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_2d
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_3d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	d°	*
dtype02
split/ReadVariableOp«
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d¬:	d¬:	d¬:	d¬*
	num_split2
splitf
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
MatMull
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_1l
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_2l
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:°	*
dtype02
split_1/ReadVariableOp£
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:¬:¬:¬:¬*
	num_split2	
split_1t
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2	
BiasAddz
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
	BiasAdd_1z
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
	BiasAdd_2z
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
	BiasAdd_3e
mul_4Mulstatesdropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_4e
mul_5Mulstatesdropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_5e
mul_6Mulstatesdropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_6e
mul_7Mulstatesdropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_7z
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
strided_slicet
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_4l
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2	
Sigmoid~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
strided_slice_1v
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_5r
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
	Sigmoid_1a
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_8~
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
strided_slice_2v
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_6r
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
Tanh_
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_9`
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
add_3~
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
strided_slice_3v
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_7r
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
add_4_
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
	Sigmoid_2V
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
Tanh_1e
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_10Ù
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

IdentityÝ

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1Ü

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_namestates
Ô
¾
while_cond_63279
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_63279___redundant_placeholder03
/while_while_cond_63279___redundant_placeholder13
/while_while_cond_63279___redundant_placeholder23
/while_while_cond_63279___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
B: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ¬:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
:
¼
¨
 attention_layer_while_cond_61902<
8attention_layer_while_attention_layer_while_loop_counterB
>attention_layer_while_attention_layer_while_maximum_iterations%
!attention_layer_while_placeholder'
#attention_layer_while_placeholder_1'
#attention_layer_while_placeholder_2<
8attention_layer_while_less_attention_layer_strided_sliceS
Oattention_layer_while_attention_layer_while_cond_61902___redundant_placeholder0S
Oattention_layer_while_attention_layer_while_cond_61902___redundant_placeholder1S
Oattention_layer_while_attention_layer_while_cond_61902___redundant_placeholder2S
Oattention_layer_while_attention_layer_while_cond_61902___redundant_placeholder3S
Oattention_layer_while_attention_layer_while_cond_61902___redundant_placeholder4"
attention_layer_while_identity
¾
attention_layer/while/LessLess!attention_layer_while_placeholder8attention_layer_while_less_attention_layer_strided_slice*
T0*
_output_shapes
: 2
attention_layer/while/Less
attention_layer/while/IdentityIdentityattention_layer/while/Less:z:0*
T0
*
_output_shapes
: 2 
attention_layer/while/Identity"I
attention_layer_while_identity'attention_layer/while/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :ÿÿÿÿÿÿÿÿÿP: :::::: 
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
:ÿÿÿÿÿÿÿÿÿP:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
Ûq
ò
 attention_layer_while_body_61903<
8attention_layer_while_attention_layer_while_loop_counterB
>attention_layer_while_attention_layer_while_maximum_iterations%
!attention_layer_while_placeholder'
#attention_layer_while_placeholder_1'
#attention_layer_while_placeholder_29
5attention_layer_while_attention_layer_strided_slice_0w
sattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensor_0*
&attention_layer_while_shape_inputs_1_0K
7attention_layer_while_shape_1_readvariableop_resource_0:
¬¬L
8attention_layer_while_matmul_1_readvariableop_resource_0:
¬¬J
7attention_layer_while_shape_3_readvariableop_resource_0:	¬"
attention_layer_while_identity$
 attention_layer_while_identity_1$
 attention_layer_while_identity_2$
 attention_layer_while_identity_3$
 attention_layer_while_identity_47
3attention_layer_while_attention_layer_strided_sliceu
qattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensor(
$attention_layer_while_shape_inputs_1I
5attention_layer_while_shape_1_readvariableop_resource:
¬¬J
6attention_layer_while_matmul_1_readvariableop_resource:
¬¬H
5attention_layer_while_shape_3_readvariableop_resource:	¬¢-attention_layer/while/MatMul_1/ReadVariableOp¢.attention_layer/while/transpose/ReadVariableOp¢0attention_layer/while/transpose_1/ReadVariableOpã
Gattention_layer/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2I
Gattention_layer/while/TensorArrayV2Read/TensorListGetItem/element_shape´
9attention_layer/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensor_0!attention_layer_while_placeholderPattention_layer/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
element_dtype02;
9attention_layer/while/TensorArrayV2Read/TensorListGetItem
attention_layer/while/ShapeShape&attention_layer_while_shape_inputs_1_0*
T0*
_output_shapes
:2
attention_layer/while/Shape
attention_layer/while/unstackUnpack$attention_layer/while/Shape:output:0*
T0*
_output_shapes
: : : *	
num2
attention_layer/while/unstackÖ
,attention_layer/while/Shape_1/ReadVariableOpReadVariableOp7attention_layer_while_shape_1_readvariableop_resource_0* 
_output_shapes
:
¬¬*
dtype02.
,attention_layer/while/Shape_1/ReadVariableOp
attention_layer/while/Shape_1Const*
_output_shapes
:*
dtype0*
valueB",  ,  2
attention_layer/while/Shape_1¢
attention_layer/while/unstack_1Unpack&attention_layer/while/Shape_1:output:0*
T0*
_output_shapes
: : *	
num2!
attention_layer/while/unstack_1
#attention_layer/while/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2%
#attention_layer/while/Reshape/shapeÒ
attention_layer/while/ReshapeReshape&attention_layer_while_shape_inputs_1_0,attention_layer/while/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
attention_layer/while/ReshapeÚ
.attention_layer/while/transpose/ReadVariableOpReadVariableOp7attention_layer_while_shape_1_readvariableop_resource_0* 
_output_shapes
:
¬¬*
dtype020
.attention_layer/while/transpose/ReadVariableOp
$attention_layer/while/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2&
$attention_layer/while/transpose/permá
attention_layer/while/transpose	Transpose6attention_layer/while/transpose/ReadVariableOp:value:0-attention_layer/while/transpose/perm:output:0*
T0* 
_output_shapes
:
¬¬2!
attention_layer/while/transpose
%attention_layer/while/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB",  ÿÿÿÿ2'
%attention_layer/while/Reshape_1/shapeÍ
attention_layer/while/Reshape_1Reshape#attention_layer/while/transpose:y:0.attention_layer/while/Reshape_1/shape:output:0*
T0* 
_output_shapes
:
¬¬2!
attention_layer/while/Reshape_1Ë
attention_layer/while/MatMulMatMul&attention_layer/while/Reshape:output:0(attention_layer/while/Reshape_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
attention_layer/while/MatMul
'attention_layer/while/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :P2)
'attention_layer/while/Reshape_2/shape/1
'attention_layer/while/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value
B :¬2)
'attention_layer/while/Reshape_2/shape/2
%attention_layer/while/Reshape_2/shapePack&attention_layer/while/unstack:output:00attention_layer/while/Reshape_2/shape/1:output:00attention_layer/while/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2'
%attention_layer/while/Reshape_2/shapeÜ
attention_layer/while/Reshape_2Reshape&attention_layer/while/MatMul:product:0.attention_layer/while/Reshape_2/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2!
attention_layer/while/Reshape_2Ù
-attention_layer/while/MatMul_1/ReadVariableOpReadVariableOp8attention_layer_while_matmul_1_readvariableop_resource_0* 
_output_shapes
:
¬¬*
dtype02/
-attention_layer/while/MatMul_1/ReadVariableOpö
attention_layer/while/MatMul_1MatMul@attention_layer/while/TensorArrayV2Read/TensorListGetItem:item:05attention_layer/while/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
attention_layer/while/MatMul_1
$attention_layer/while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$attention_layer/while/ExpandDims/dimâ
 attention_layer/while/ExpandDims
ExpandDims(attention_layer/while/MatMul_1:product:0-attention_layer/while/ExpandDims/dim:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 attention_layer/while/ExpandDimsË
attention_layer/while/addAddV2(attention_layer/while/Reshape_2:output:0)attention_layer/while/ExpandDims:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
attention_layer/while/add
attention_layer/while/TanhTanhattention_layer/while/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
attention_layer/while/Tanh
attention_layer/while/Shape_2Shapeattention_layer/while/Tanh:y:0*
T0*
_output_shapes
:2
attention_layer/while/Shape_2¤
attention_layer/while/unstack_2Unpack&attention_layer/while/Shape_2:output:0*
T0*
_output_shapes
: : : *	
num2!
attention_layer/while/unstack_2Õ
,attention_layer/while/Shape_3/ReadVariableOpReadVariableOp7attention_layer_while_shape_3_readvariableop_resource_0*
_output_shapes
:	¬*
dtype02.
,attention_layer/while/Shape_3/ReadVariableOp
attention_layer/while/Shape_3Const*
_output_shapes
:*
dtype0*
valueB",     2
attention_layer/while/Shape_3¢
attention_layer/while/unstack_3Unpack&attention_layer/while/Shape_3:output:0*
T0*
_output_shapes
: : *	
num2!
attention_layer/while/unstack_3
%attention_layer/while/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2'
%attention_layer/while/Reshape_3/shapeÐ
attention_layer/while/Reshape_3Reshapeattention_layer/while/Tanh:y:0.attention_layer/while/Reshape_3/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2!
attention_layer/while/Reshape_3Ý
0attention_layer/while/transpose_1/ReadVariableOpReadVariableOp7attention_layer_while_shape_3_readvariableop_resource_0*
_output_shapes
:	¬*
dtype022
0attention_layer/while/transpose_1/ReadVariableOp¡
&attention_layer/while/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2(
&attention_layer/while/transpose_1/permè
!attention_layer/while/transpose_1	Transpose8attention_layer/while/transpose_1/ReadVariableOp:value:0/attention_layer/while/transpose_1/perm:output:0*
T0*
_output_shapes
:	¬2#
!attention_layer/while/transpose_1
%attention_layer/while/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB",  ÿÿÿÿ2'
%attention_layer/while/Reshape_4/shapeÎ
attention_layer/while/Reshape_4Reshape%attention_layer/while/transpose_1:y:0.attention_layer/while/Reshape_4/shape:output:0*
T0*
_output_shapes
:	¬2!
attention_layer/while/Reshape_4Ð
attention_layer/while/MatMul_2MatMul(attention_layer/while/Reshape_3:output:0(attention_layer/while/Reshape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
attention_layer/while/MatMul_2
'attention_layer/while/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :P2)
'attention_layer/while/Reshape_5/shape/1
'attention_layer/while/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2)
'attention_layer/while/Reshape_5/shape/2
%attention_layer/while/Reshape_5/shapePack(attention_layer/while/unstack_2:output:00attention_layer/while/Reshape_5/shape/1:output:00attention_layer/while/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:2'
%attention_layer/while/Reshape_5/shapeÝ
attention_layer/while/Reshape_5Reshape(attention_layer/while/MatMul_2:product:0.attention_layer/while/Reshape_5/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2!
attention_layer/while/Reshape_5Å
attention_layer/while/SqueezeSqueeze(attention_layer/while/Reshape_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ2
attention_layer/while/Squeeze£
attention_layer/while/SoftmaxSoftmax&attention_layer/while/Squeeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
attention_layer/while/Softmax«
:attention_layer/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#attention_layer_while_placeholder_1!attention_layer_while_placeholder'attention_layer/while/Softmax:softmax:0*
_output_shapes
: *
element_dtype02<
:attention_layer/while/TensorArrayV2Write/TensorListSetItem
attention_layer/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
attention_layer/while/add_1/y¯
attention_layer/while/add_1AddV2!attention_layer_while_placeholder&attention_layer/while/add_1/y:output:0*
T0*
_output_shapes
: 2
attention_layer/while/add_1
attention_layer/while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
attention_layer/while/add_2/yÆ
attention_layer/while/add_2AddV28attention_layer_while_attention_layer_while_loop_counter&attention_layer/while/add_2/y:output:0*
T0*
_output_shapes
: 2
attention_layer/while/add_2¢
attention_layer/while/IdentityIdentityattention_layer/while/add_2:z:0.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2 
attention_layer/while/IdentityÅ
 attention_layer/while/Identity_1Identity>attention_layer_while_attention_layer_while_maximum_iterations.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 attention_layer/while/Identity_1¦
 attention_layer/while/Identity_2Identityattention_layer/while/add_1:z:0.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 attention_layer/while/Identity_2Ñ
 attention_layer/while/Identity_3IdentityJattention_layer/while/TensorArrayV2Write/TensorListSetItem:output_handle:0.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 attention_layer/while/Identity_3¿
 attention_layer/while/Identity_4Identity'attention_layer/while/Softmax:softmax:0.^attention_layer/while/MatMul_1/ReadVariableOp/^attention_layer/while/transpose/ReadVariableOp1^attention_layer/while/transpose_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2"
 attention_layer/while/Identity_4"l
3attention_layer_while_attention_layer_strided_slice5attention_layer_while_attention_layer_strided_slice_0"I
attention_layer_while_identity'attention_layer/while/Identity:output:0"M
 attention_layer_while_identity_1)attention_layer/while/Identity_1:output:0"M
 attention_layer_while_identity_2)attention_layer/while/Identity_2:output:0"M
 attention_layer_while_identity_3)attention_layer/while/Identity_3:output:0"M
 attention_layer_while_identity_4)attention_layer/while/Identity_4:output:0"r
6attention_layer_while_matmul_1_readvariableop_resource8attention_layer_while_matmul_1_readvariableop_resource_0"p
5attention_layer_while_shape_1_readvariableop_resource7attention_layer_while_shape_1_readvariableop_resource_0"p
5attention_layer_while_shape_3_readvariableop_resource7attention_layer_while_shape_3_readvariableop_resource_0"N
$attention_layer_while_shape_inputs_1&attention_layer_while_shape_inputs_1_0"è
qattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensorsattention_layer_while_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=: : : : :ÿÿÿÿÿÿÿÿÿP: : :ÿÿÿÿÿÿÿÿÿP¬: : : 2^
-attention_layer/while/MatMul_1/ReadVariableOp-attention_layer/while/MatMul_1/ReadVariableOp2`
.attention_layer/while/transpose/ReadVariableOp.attention_layer/while/transpose/ReadVariableOp2d
0attention_layer/while/transpose_1/ReadVariableOp0attention_layer/while/transpose_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿP:

_output_shapes
: :

_output_shapes
: :2.
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬
ç
 
0__inference_time_distributed_layer_call_fn_64497

inputs
unknown:
Øíb
	unknown_0:	íb
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_602852
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ
 
_user_specified_nameinputs
Ð
¼
while_cond_63875
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_63875___redundant_placeholder03
/while_while_cond_63875___redundant_placeholder13
/while_while_cond_63875___redundant_placeholder23
/while_while_cond_63875___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ¬:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
:
î

J__inference_attention_layer_layer_call_and_return_conditional_losses_60879

inputs
inputs_13
shape_2_readvariableop_resource:
¬¬4
 matmul_1_readvariableop_resource:
¬¬2
shape_4_readvariableop_resource:	¬
identity

identity_1¢MatMul_1/ReadVariableOp¢transpose_1/ReadVariableOp¢transpose_2/ReadVariableOp¢whilep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indicesl
SumSuminputsSum/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
Sumt
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_1/reduction_indicesq
Sum_1Suminputs Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
Sum_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_1transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_1/stack_2ý
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
shrink_axis_mask2
strided_slice_1H
Shape_1Shapeinputs*
T0*
_output_shapes
:2	
Shape_1^
unstackUnpackShape_1:output:0*
T0*
_output_shapes
: : : *	
num2	
unstack
Shape_2/ReadVariableOpReadVariableOpshape_2_readvariableop_resource* 
_output_shapes
:
¬¬*
dtype02
Shape_2/ReadVariableOpc
Shape_2Const*
_output_shapes
:*
dtype0*
valueB",  ,  2	
Shape_2`
	unstack_1UnpackShape_2:output:0*
T0*
_output_shapes
: : *	
num2
	unstack_1o
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2	
Reshape
transpose_1/ReadVariableOpReadVariableOpshape_2_readvariableop_resource* 
_output_shapes
:
¬¬*
dtype02
transpose_1/ReadVariableOpu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm
transpose_1	Transpose"transpose_1/ReadVariableOp:value:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
¬¬2
transpose_1s
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB",  ÿÿÿÿ2
Reshape_1/shapew
	Reshape_1Reshapetranspose_1:y:0Reshape_1/shape:output:0*
T0* 
_output_shapes
:
¬¬2
	Reshape_1s
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
MatMulh
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :P2
Reshape_2/shape/1i
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value
B :¬2
Reshape_2/shape/2¢
Reshape_2/shapePackunstack:output:0Reshape_2/shape/1:output:0Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_2/shape
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
	Reshape_2
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
¬¬*
dtype02
MatMul_1/ReadVariableOp
MatMul_1MatMulstrided_slice_1:output:0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_1b
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim

ExpandDims
ExpandDimsMatMul_1:product:0ExpandDims/dim:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

ExpandDimss
addAddV2Reshape_2:output:0ExpandDims:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
addT
TanhTanhadd:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
TanhJ
Shape_3ShapeTanh:y:0*
T0*
_output_shapes
:2	
Shape_3b
	unstack_2UnpackShape_3:output:0*
T0*
_output_shapes
: : : *	
num2
	unstack_2
Shape_4/ReadVariableOpReadVariableOpshape_4_readvariableop_resource*
_output_shapes
:	¬*
dtype02
Shape_4/ReadVariableOpc
Shape_4Const*
_output_shapes
:*
dtype0*
valueB",     2	
Shape_4`
	unstack_3UnpackShape_4:output:0*
T0*
_output_shapes
: : *	
num2
	unstack_3s
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2
Reshape_3/shapex
	Reshape_3ReshapeTanh:y:0Reshape_3/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
	Reshape_3
transpose_2/ReadVariableOpReadVariableOpshape_4_readvariableop_resource*
_output_shapes
:	¬*
dtype02
transpose_2/ReadVariableOpu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm
transpose_2	Transpose"transpose_2/ReadVariableOp:value:0transpose_2/perm:output:0*
T0*
_output_shapes
:	¬2
transpose_2s
Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB",  ÿÿÿÿ2
Reshape_4/shapev
	Reshape_4Reshapetranspose_2:y:0Reshape_4/shape:output:0*
T0*
_output_shapes
:	¬2
	Reshape_4x
MatMul_2MatMulReshape_3:output:0Reshape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_2h
Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :P2
Reshape_5/shape/1h
Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_5/shape/2¤
Reshape_5/shapePackunstack_2:output:0Reshape_5/shape/1:output:0Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_5/shape
	Reshape_5ReshapeMatMul_2:product:0Reshape_5/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
	Reshape_5
SqueezeSqueezeReshape_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ2	
Squeezea
SoftmaxSoftmaxSqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2	
Softmax
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP   2
TensorArrayV2_1/element_shape¶
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÄ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0Sum_1:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0inputsshape_2_readvariableop_resource matmul_1_readvariableop_resourceshape_4_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*Q
_output_shapes?
=: : : : :ÿÿÿÿÿÿÿÿÿP: : :ÿÿÿÿÿÿÿÿÿP¬: : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_60689*
condR
while_cond_60688*P
output_shapes?
=: : : : :ÿÿÿÿÿÿÿÿÿP: : :ÿÿÿÿÿÿÿÿÿP¬: : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
shrink_axis_mask2
strided_slice_2y
transpose_3/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_3/perm®
transpose_3	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_3/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP2
transpose_3y
transpose_4/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_4/perm
transpose_4	Transposetranspose_3:y:0transpose_4/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP2
transpose_4Q
Shape_5Shapetranspose_4:y:0*
T0*
_output_shapes
:2	
Shape_5x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2î
strided_slice_3StridedSliceShape_5:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3
TensorArrayV2_3/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2_3/element_shape¸
TensorArrayV2_3TensorListReserve&TensorArrayV2_3/element_shape:output:0strided_slice_3:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_3Ã
7TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP   29
7TensorArrayUnstack_1/TensorListFromTensor/element_shape
)TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensortranspose_4:y:0@TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02+
)TensorArrayUnstack_1/TensorListFromTensorx
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_4/stack|
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_1|
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_2þ
strided_slice_4StridedSlicetranspose_4:y:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
shrink_axis_mask2
strided_slice_4o
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsstrided_slice_4:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
ExpandDims_1g
mulMulinputsExpandDims_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
mult
Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_2/reduction_indicess
Sum_2Summul:z:0 Sum_2/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
Sum_2
TensorArrayV2_4/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2
TensorArrayV2_4/element_shape¸
TensorArrayV2_4TensorListReserve&TensorArrayV2_4/element_shape:output:0strided_slice_3:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_4R
time_1Const*
_output_shapes
: *
dtype0*
value	B : 2
time_1
while_1/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while_1/maximum_iterationsn
while_1/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while_1/loop_counterç
while_1StatelessWhilewhile_1/loop_counter:output:0#while_1/maximum_iterations:output:0time_1:output:0TensorArrayV2_4:handle:0Sum:output:0strided_slice_3:output:09TensorArrayUnstack_1/TensorListFromTensor:output_handle:0inputs*
T

2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ¬: : :ÿÿÿÿÿÿÿÿÿP¬* 
_read_only_resource_inputs
 *
bodyR
while_1_body_60821*
condR
while_1_cond_60820*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ¬: : :ÿÿÿÿÿÿÿÿÿP¬*
parallel_iterations 2	
while_1¹
2TensorArrayV2Stack_1/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  24
2TensorArrayV2Stack_1/TensorListStack/element_shapeú
$TensorArrayV2Stack_1/TensorListStackTensorListStackwhile_1:output:3;TensorArrayV2Stack_1/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬*
element_dtype02&
$TensorArrayV2Stack_1/TensorListStack
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_5/stack|
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_5/stack_1|
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_2
strided_slice_5StridedSlice-TensorArrayV2Stack_1/TensorListStack:tensor:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
shrink_axis_mask2
strided_slice_5y
transpose_5/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_5/perm±
transpose_5	Transpose-TensorArrayV2Stack_1/TensorListStack:tensor:0transpose_5/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2
transpose_5Í
IdentityIdentitytranspose_5:y:0^MatMul_1/ReadVariableOp^transpose_1/ReadVariableOp^transpose_2/ReadVariableOp^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2

IdentityÐ

Identity_1Identitytranspose_3:y:0^MatMul_1/ReadVariableOp^transpose_1/ReadVariableOp^transpose_2/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿP¬:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬: : : 22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp28
transpose_1/ReadVariableOptranspose_1/ReadVariableOp28
transpose_2/ReadVariableOptranspose_2/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬
 
_user_specified_nameinputs:]Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_nameinputs

õ
+__inference_lstm_cell_3_layer_call_fn_64759

inputs
states_0
states_1
unknown:	d°	
	unknown_0:	°	
	unknown_1:
¬°	
identity

identity_1

identity_2¢StatefulPartitionedCallÇ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_597742
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
"
_user_specified_name
states/1
ç
 
0__inference_time_distributed_layer_call_fn_64488

inputs
unknown:
Øíb
	unknown_0:	íb
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_602372
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ
 
_user_specified_nameinputs
¸
ô
(model_2_attention_layer_while_body_59170L
Hmodel_2_attention_layer_while_model_2_attention_layer_while_loop_counterR
Nmodel_2_attention_layer_while_model_2_attention_layer_while_maximum_iterations-
)model_2_attention_layer_while_placeholder/
+model_2_attention_layer_while_placeholder_1/
+model_2_attention_layer_while_placeholder_2I
Emodel_2_attention_layer_while_model_2_attention_layer_strided_slice_0
model_2_attention_layer_while_tensorarrayv2read_tensorlistgetitem_model_2_attention_layer_tensorarrayunstack_tensorlistfromtensor_01
-model_2_attention_layer_while_shape_input_5_0S
?model_2_attention_layer_while_shape_1_readvariableop_resource_0:
¬¬T
@model_2_attention_layer_while_matmul_1_readvariableop_resource_0:
¬¬R
?model_2_attention_layer_while_shape_3_readvariableop_resource_0:	¬*
&model_2_attention_layer_while_identity,
(model_2_attention_layer_while_identity_1,
(model_2_attention_layer_while_identity_2,
(model_2_attention_layer_while_identity_3,
(model_2_attention_layer_while_identity_4G
Cmodel_2_attention_layer_while_model_2_attention_layer_strided_slice
model_2_attention_layer_while_tensorarrayv2read_tensorlistgetitem_model_2_attention_layer_tensorarrayunstack_tensorlistfromtensor/
+model_2_attention_layer_while_shape_input_5Q
=model_2_attention_layer_while_shape_1_readvariableop_resource:
¬¬R
>model_2_attention_layer_while_matmul_1_readvariableop_resource:
¬¬P
=model_2_attention_layer_while_shape_3_readvariableop_resource:	¬¢5model_2/attention_layer/while/MatMul_1/ReadVariableOp¢6model_2/attention_layer/while/transpose/ReadVariableOp¢8model_2/attention_layer/while/transpose_1/ReadVariableOpó
Omodel_2/attention_layer/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2Q
Omodel_2/attention_layer/while/TensorArrayV2Read/TensorListGetItem/element_shapeå
Amodel_2/attention_layer/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmodel_2_attention_layer_while_tensorarrayv2read_tensorlistgetitem_model_2_attention_layer_tensorarrayunstack_tensorlistfromtensor_0)model_2_attention_layer_while_placeholderXmodel_2/attention_layer/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
element_dtype02C
Amodel_2/attention_layer/while/TensorArrayV2Read/TensorListGetItem§
#model_2/attention_layer/while/ShapeShape-model_2_attention_layer_while_shape_input_5_0*
T0*
_output_shapes
:2%
#model_2/attention_layer/while/Shape¶
%model_2/attention_layer/while/unstackUnpack,model_2/attention_layer/while/Shape:output:0*
T0*
_output_shapes
: : : *	
num2'
%model_2/attention_layer/while/unstackî
4model_2/attention_layer/while/Shape_1/ReadVariableOpReadVariableOp?model_2_attention_layer_while_shape_1_readvariableop_resource_0* 
_output_shapes
:
¬¬*
dtype026
4model_2/attention_layer/while/Shape_1/ReadVariableOp
%model_2/attention_layer/while/Shape_1Const*
_output_shapes
:*
dtype0*
valueB",  ,  2'
%model_2/attention_layer/while/Shape_1º
'model_2/attention_layer/while/unstack_1Unpack.model_2/attention_layer/while/Shape_1:output:0*
T0*
_output_shapes
: : *	
num2)
'model_2/attention_layer/while/unstack_1«
+model_2/attention_layer/while/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2-
+model_2/attention_layer/while/Reshape/shapeñ
%model_2/attention_layer/while/ReshapeReshape-model_2_attention_layer_while_shape_input_5_04model_2/attention_layer/while/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2'
%model_2/attention_layer/while/Reshapeò
6model_2/attention_layer/while/transpose/ReadVariableOpReadVariableOp?model_2_attention_layer_while_shape_1_readvariableop_resource_0* 
_output_shapes
:
¬¬*
dtype028
6model_2/attention_layer/while/transpose/ReadVariableOp­
,model_2/attention_layer/while/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2.
,model_2/attention_layer/while/transpose/perm
'model_2/attention_layer/while/transpose	Transpose>model_2/attention_layer/while/transpose/ReadVariableOp:value:05model_2/attention_layer/while/transpose/perm:output:0*
T0* 
_output_shapes
:
¬¬2)
'model_2/attention_layer/while/transpose¯
-model_2/attention_layer/while/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB",  ÿÿÿÿ2/
-model_2/attention_layer/while/Reshape_1/shapeí
'model_2/attention_layer/while/Reshape_1Reshape+model_2/attention_layer/while/transpose:y:06model_2/attention_layer/while/Reshape_1/shape:output:0*
T0* 
_output_shapes
:
¬¬2)
'model_2/attention_layer/while/Reshape_1ë
$model_2/attention_layer/while/MatMulMatMul.model_2/attention_layer/while/Reshape:output:00model_2/attention_layer/while/Reshape_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2&
$model_2/attention_layer/while/MatMul¤
/model_2/attention_layer/while/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :P21
/model_2/attention_layer/while/Reshape_2/shape/1¥
/model_2/attention_layer/while/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value
B :¬21
/model_2/attention_layer/while/Reshape_2/shape/2¸
-model_2/attention_layer/while/Reshape_2/shapePack.model_2/attention_layer/while/unstack:output:08model_2/attention_layer/while/Reshape_2/shape/1:output:08model_2/attention_layer/while/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2/
-model_2/attention_layer/while/Reshape_2/shapeü
'model_2/attention_layer/while/Reshape_2Reshape.model_2/attention_layer/while/MatMul:product:06model_2/attention_layer/while/Reshape_2/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2)
'model_2/attention_layer/while/Reshape_2ñ
5model_2/attention_layer/while/MatMul_1/ReadVariableOpReadVariableOp@model_2_attention_layer_while_matmul_1_readvariableop_resource_0* 
_output_shapes
:
¬¬*
dtype027
5model_2/attention_layer/while/MatMul_1/ReadVariableOp
&model_2/attention_layer/while/MatMul_1MatMulHmodel_2/attention_layer/while/TensorArrayV2Read/TensorListGetItem:item:0=model_2/attention_layer/while/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2(
&model_2/attention_layer/while/MatMul_1
,model_2/attention_layer/while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,model_2/attention_layer/while/ExpandDims/dim
(model_2/attention_layer/while/ExpandDims
ExpandDims0model_2/attention_layer/while/MatMul_1:product:05model_2/attention_layer/while/ExpandDims/dim:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2*
(model_2/attention_layer/while/ExpandDimsë
!model_2/attention_layer/while/addAddV20model_2/attention_layer/while/Reshape_2:output:01model_2/attention_layer/while/ExpandDims:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2#
!model_2/attention_layer/while/add®
"model_2/attention_layer/while/TanhTanh%model_2/attention_layer/while/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2$
"model_2/attention_layer/while/Tanh¤
%model_2/attention_layer/while/Shape_2Shape&model_2/attention_layer/while/Tanh:y:0*
T0*
_output_shapes
:2'
%model_2/attention_layer/while/Shape_2¼
'model_2/attention_layer/while/unstack_2Unpack.model_2/attention_layer/while/Shape_2:output:0*
T0*
_output_shapes
: : : *	
num2)
'model_2/attention_layer/while/unstack_2í
4model_2/attention_layer/while/Shape_3/ReadVariableOpReadVariableOp?model_2_attention_layer_while_shape_3_readvariableop_resource_0*
_output_shapes
:	¬*
dtype026
4model_2/attention_layer/while/Shape_3/ReadVariableOp
%model_2/attention_layer/while/Shape_3Const*
_output_shapes
:*
dtype0*
valueB",     2'
%model_2/attention_layer/while/Shape_3º
'model_2/attention_layer/while/unstack_3Unpack.model_2/attention_layer/while/Shape_3:output:0*
T0*
_output_shapes
: : *	
num2)
'model_2/attention_layer/while/unstack_3¯
-model_2/attention_layer/while/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2/
-model_2/attention_layer/while/Reshape_3/shapeð
'model_2/attention_layer/while/Reshape_3Reshape&model_2/attention_layer/while/Tanh:y:06model_2/attention_layer/while/Reshape_3/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2)
'model_2/attention_layer/while/Reshape_3õ
8model_2/attention_layer/while/transpose_1/ReadVariableOpReadVariableOp?model_2_attention_layer_while_shape_3_readvariableop_resource_0*
_output_shapes
:	¬*
dtype02:
8model_2/attention_layer/while/transpose_1/ReadVariableOp±
.model_2/attention_layer/while/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       20
.model_2/attention_layer/while/transpose_1/perm
)model_2/attention_layer/while/transpose_1	Transpose@model_2/attention_layer/while/transpose_1/ReadVariableOp:value:07model_2/attention_layer/while/transpose_1/perm:output:0*
T0*
_output_shapes
:	¬2+
)model_2/attention_layer/while/transpose_1¯
-model_2/attention_layer/while/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB",  ÿÿÿÿ2/
-model_2/attention_layer/while/Reshape_4/shapeî
'model_2/attention_layer/while/Reshape_4Reshape-model_2/attention_layer/while/transpose_1:y:06model_2/attention_layer/while/Reshape_4/shape:output:0*
T0*
_output_shapes
:	¬2)
'model_2/attention_layer/while/Reshape_4ð
&model_2/attention_layer/while/MatMul_2MatMul0model_2/attention_layer/while/Reshape_3:output:00model_2/attention_layer/while/Reshape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&model_2/attention_layer/while/MatMul_2¤
/model_2/attention_layer/while/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :P21
/model_2/attention_layer/while/Reshape_5/shape/1¤
/model_2/attention_layer/while/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :21
/model_2/attention_layer/while/Reshape_5/shape/2º
-model_2/attention_layer/while/Reshape_5/shapePack0model_2/attention_layer/while/unstack_2:output:08model_2/attention_layer/while/Reshape_5/shape/1:output:08model_2/attention_layer/while/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:2/
-model_2/attention_layer/while/Reshape_5/shapeý
'model_2/attention_layer/while/Reshape_5Reshape0model_2/attention_layer/while/MatMul_2:product:06model_2/attention_layer/while/Reshape_5/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2)
'model_2/attention_layer/while/Reshape_5Ý
%model_2/attention_layer/while/SqueezeSqueeze0model_2/attention_layer/while/Reshape_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ2'
%model_2/attention_layer/while/Squeeze»
%model_2/attention_layer/while/SoftmaxSoftmax.model_2/attention_layer/while/Squeeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2'
%model_2/attention_layer/while/SoftmaxÓ
Bmodel_2/attention_layer/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+model_2_attention_layer_while_placeholder_1)model_2_attention_layer_while_placeholder/model_2/attention_layer/while/Softmax:softmax:0*
_output_shapes
: *
element_dtype02D
Bmodel_2/attention_layer/while/TensorArrayV2Write/TensorListSetItem
%model_2/attention_layer/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%model_2/attention_layer/while/add_1/yÏ
#model_2/attention_layer/while/add_1AddV2)model_2_attention_layer_while_placeholder.model_2/attention_layer/while/add_1/y:output:0*
T0*
_output_shapes
: 2%
#model_2/attention_layer/while/add_1
%model_2/attention_layer/while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%model_2/attention_layer/while/add_2/yî
#model_2/attention_layer/while/add_2AddV2Hmodel_2_attention_layer_while_model_2_attention_layer_while_loop_counter.model_2/attention_layer/while/add_2/y:output:0*
T0*
_output_shapes
: 2%
#model_2/attention_layer/while/add_2Ò
&model_2/attention_layer/while/IdentityIdentity'model_2/attention_layer/while/add_2:z:06^model_2/attention_layer/while/MatMul_1/ReadVariableOp7^model_2/attention_layer/while/transpose/ReadVariableOp9^model_2/attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&model_2/attention_layer/while/Identityý
(model_2/attention_layer/while/Identity_1IdentityNmodel_2_attention_layer_while_model_2_attention_layer_while_maximum_iterations6^model_2/attention_layer/while/MatMul_1/ReadVariableOp7^model_2/attention_layer/while/transpose/ReadVariableOp9^model_2/attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2*
(model_2/attention_layer/while/Identity_1Ö
(model_2/attention_layer/while/Identity_2Identity'model_2/attention_layer/while/add_1:z:06^model_2/attention_layer/while/MatMul_1/ReadVariableOp7^model_2/attention_layer/while/transpose/ReadVariableOp9^model_2/attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2*
(model_2/attention_layer/while/Identity_2
(model_2/attention_layer/while/Identity_3IdentityRmodel_2/attention_layer/while/TensorArrayV2Write/TensorListSetItem:output_handle:06^model_2/attention_layer/while/MatMul_1/ReadVariableOp7^model_2/attention_layer/while/transpose/ReadVariableOp9^model_2/attention_layer/while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2*
(model_2/attention_layer/while/Identity_3ï
(model_2/attention_layer/while/Identity_4Identity/model_2/attention_layer/while/Softmax:softmax:06^model_2/attention_layer/while/MatMul_1/ReadVariableOp7^model_2/attention_layer/while/transpose/ReadVariableOp9^model_2/attention_layer/while/transpose_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2*
(model_2/attention_layer/while/Identity_4"Y
&model_2_attention_layer_while_identity/model_2/attention_layer/while/Identity:output:0"]
(model_2_attention_layer_while_identity_11model_2/attention_layer/while/Identity_1:output:0"]
(model_2_attention_layer_while_identity_21model_2/attention_layer/while/Identity_2:output:0"]
(model_2_attention_layer_while_identity_31model_2/attention_layer/while/Identity_3:output:0"]
(model_2_attention_layer_while_identity_41model_2/attention_layer/while/Identity_4:output:0"
>model_2_attention_layer_while_matmul_1_readvariableop_resource@model_2_attention_layer_while_matmul_1_readvariableop_resource_0"
Cmodel_2_attention_layer_while_model_2_attention_layer_strided_sliceEmodel_2_attention_layer_while_model_2_attention_layer_strided_slice_0"
=model_2_attention_layer_while_shape_1_readvariableop_resource?model_2_attention_layer_while_shape_1_readvariableop_resource_0"
=model_2_attention_layer_while_shape_3_readvariableop_resource?model_2_attention_layer_while_shape_3_readvariableop_resource_0"\
+model_2_attention_layer_while_shape_input_5-model_2_attention_layer_while_shape_input_5_0"
model_2_attention_layer_while_tensorarrayv2read_tensorlistgetitem_model_2_attention_layer_tensorarrayunstack_tensorlistfromtensormodel_2_attention_layer_while_tensorarrayv2read_tensorlistgetitem_model_2_attention_layer_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=: : : : :ÿÿÿÿÿÿÿÿÿP: : :ÿÿÿÿÿÿÿÿÿP¬: : : 2n
5model_2/attention_layer/while/MatMul_1/ReadVariableOp5model_2/attention_layer/while/MatMul_1/ReadVariableOp2p
6model_2/attention_layer/while/transpose/ReadVariableOp6model_2/attention_layer/while/transpose/ReadVariableOp2t
8model_2/attention_layer/while/transpose_1/ReadVariableOp8model_2/attention_layer/while/transpose_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿP:

_output_shapes
: :

_output_shapes
: :2.
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬
Õô
	
while_body_63876
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_3_split_readvariableop_resource_0:	d°	B
3while_lstm_cell_3_split_1_readvariableop_resource_0:	°	?
+while_lstm_cell_3_readvariableop_resource_0:
¬°	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_3_split_readvariableop_resource:	d°	@
1while_lstm_cell_3_split_1_readvariableop_resource:	°	=
)while_lstm_cell_3_readvariableop_resource:
¬°	¢ while/lstm_cell_3/ReadVariableOp¢"while/lstm_cell_3/ReadVariableOp_1¢"while/lstm_cell_3/ReadVariableOp_2¢"while/lstm_cell_3/ReadVariableOp_3¢&while/lstm_cell_3/split/ReadVariableOp¢(while/lstm_cell_3/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¦
!while/lstm_cell_3/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/ones_like/Shape
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_3/ones_like/ConstÌ
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/ones_like
while/lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2!
while/lstm_cell_3/dropout/ConstÇ
while/lstm_cell_3/dropout/MulMul$while/lstm_cell_3/ones_like:output:0(while/lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/dropout/Mul
while/lstm_cell_3/dropout/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_3/dropout/Shape
6while/lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2¥¨28
6while/lstm_cell_3/dropout/random_uniform/RandomUniform
(while/lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2*
(while/lstm_cell_3/dropout/GreaterEqual/y
&while/lstm_cell_3/dropout/GreaterEqualGreaterEqual?while/lstm_cell_3/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2(
&while/lstm_cell_3/dropout/GreaterEqualµ
while/lstm_cell_3/dropout/CastCast*while/lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
while/lstm_cell_3/dropout/CastÂ
while/lstm_cell_3/dropout/Mul_1Mul!while/lstm_cell_3/dropout/Mul:z:0"while/lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
while/lstm_cell_3/dropout/Mul_1
!while/lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2#
!while/lstm_cell_3/dropout_1/ConstÍ
while/lstm_cell_3/dropout_1/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
while/lstm_cell_3/dropout_1/Mul
!while/lstm_cell_3/dropout_1/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_1/Shape
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2Ö2:
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2,
*while/lstm_cell_3/dropout_1/GreaterEqual/y
(while/lstm_cell_3/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2*
(while/lstm_cell_3/dropout_1/GreaterEqual»
 while/lstm_cell_3/dropout_1/CastCast,while/lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 while/lstm_cell_3/dropout_1/CastÊ
!while/lstm_cell_3/dropout_1/Mul_1Mul#while/lstm_cell_3/dropout_1/Mul:z:0$while/lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!while/lstm_cell_3/dropout_1/Mul_1
!while/lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2#
!while/lstm_cell_3/dropout_2/ConstÍ
while/lstm_cell_3/dropout_2/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
while/lstm_cell_3/dropout_2/Mul
!while/lstm_cell_3/dropout_2/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_2/Shape
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2Ýh2:
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2,
*while/lstm_cell_3/dropout_2/GreaterEqual/y
(while/lstm_cell_3/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2*
(while/lstm_cell_3/dropout_2/GreaterEqual»
 while/lstm_cell_3/dropout_2/CastCast,while/lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 while/lstm_cell_3/dropout_2/CastÊ
!while/lstm_cell_3/dropout_2/Mul_1Mul#while/lstm_cell_3/dropout_2/Mul:z:0$while/lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!while/lstm_cell_3/dropout_2/Mul_1
!while/lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2#
!while/lstm_cell_3/dropout_3/ConstÍ
while/lstm_cell_3/dropout_3/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
while/lstm_cell_3/dropout_3/Mul
!while/lstm_cell_3/dropout_3/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_3/Shape
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2Ý2:
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2,
*while/lstm_cell_3/dropout_3/GreaterEqual/y
(while/lstm_cell_3/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2*
(while/lstm_cell_3/dropout_3/GreaterEqual»
 while/lstm_cell_3/dropout_3/CastCast,while/lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 while/lstm_cell_3/dropout_3/CastÊ
!while/lstm_cell_3/dropout_3/Mul_1Mul#while/lstm_cell_3/dropout_3/Mul:z:0$while/lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!while/lstm_cell_3/dropout_3/Mul_1
#while/lstm_cell_3/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_3/ones_like_1/Shape
#while/lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_3/ones_like_1/ConstÕ
while/lstm_cell_3/ones_like_1Fill,while/lstm_cell_3/ones_like_1/Shape:output:0,while/lstm_cell_3/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/ones_like_1
!while/lstm_cell_3/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_3/dropout_4/ConstÐ
while/lstm_cell_3/dropout_4/MulMul&while/lstm_cell_3/ones_like_1:output:0*while/lstm_cell_3/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2!
while/lstm_cell_3/dropout_4/Mul
!while/lstm_cell_3/dropout_4/ShapeShape&while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_4/Shape
8while/lstm_cell_3/dropout_4/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2Ùª¥2:
8while/lstm_cell_3/dropout_4/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_3/dropout_4/GreaterEqual/y
(while/lstm_cell_3/dropout_4/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_4/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2*
(while/lstm_cell_3/dropout_4/GreaterEqual¼
 while/lstm_cell_3/dropout_4/CastCast,while/lstm_cell_3/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 while/lstm_cell_3/dropout_4/CastË
!while/lstm_cell_3/dropout_4/Mul_1Mul#while/lstm_cell_3/dropout_4/Mul:z:0$while/lstm_cell_3/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!while/lstm_cell_3/dropout_4/Mul_1
!while/lstm_cell_3/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_3/dropout_5/ConstÐ
while/lstm_cell_3/dropout_5/MulMul&while/lstm_cell_3/ones_like_1:output:0*while/lstm_cell_3/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2!
while/lstm_cell_3/dropout_5/Mul
!while/lstm_cell_3/dropout_5/ShapeShape&while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_5/Shape
8while/lstm_cell_3/dropout_5/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2­Ü.2:
8while/lstm_cell_3/dropout_5/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_3/dropout_5/GreaterEqual/y
(while/lstm_cell_3/dropout_5/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_5/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2*
(while/lstm_cell_3/dropout_5/GreaterEqual¼
 while/lstm_cell_3/dropout_5/CastCast,while/lstm_cell_3/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 while/lstm_cell_3/dropout_5/CastË
!while/lstm_cell_3/dropout_5/Mul_1Mul#while/lstm_cell_3/dropout_5/Mul:z:0$while/lstm_cell_3/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!while/lstm_cell_3/dropout_5/Mul_1
!while/lstm_cell_3/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_3/dropout_6/ConstÐ
while/lstm_cell_3/dropout_6/MulMul&while/lstm_cell_3/ones_like_1:output:0*while/lstm_cell_3/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2!
while/lstm_cell_3/dropout_6/Mul
!while/lstm_cell_3/dropout_6/ShapeShape&while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_6/Shape
8while/lstm_cell_3/dropout_6/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2Ú2:
8while/lstm_cell_3/dropout_6/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_3/dropout_6/GreaterEqual/y
(while/lstm_cell_3/dropout_6/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_6/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2*
(while/lstm_cell_3/dropout_6/GreaterEqual¼
 while/lstm_cell_3/dropout_6/CastCast,while/lstm_cell_3/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 while/lstm_cell_3/dropout_6/CastË
!while/lstm_cell_3/dropout_6/Mul_1Mul#while/lstm_cell_3/dropout_6/Mul:z:0$while/lstm_cell_3/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!while/lstm_cell_3/dropout_6/Mul_1
!while/lstm_cell_3/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_3/dropout_7/ConstÐ
while/lstm_cell_3/dropout_7/MulMul&while/lstm_cell_3/ones_like_1:output:0*while/lstm_cell_3/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2!
while/lstm_cell_3/dropout_7/Mul
!while/lstm_cell_3/dropout_7/ShapeShape&while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_7/Shape
8while/lstm_cell_3/dropout_7/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2Ô±2:
8while/lstm_cell_3/dropout_7/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_3/dropout_7/GreaterEqual/y
(while/lstm_cell_3/dropout_7/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_7/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2*
(while/lstm_cell_3/dropout_7/GreaterEqual¼
 while/lstm_cell_3/dropout_7/CastCast,while/lstm_cell_3/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 while/lstm_cell_3/dropout_7/CastË
!while/lstm_cell_3/dropout_7/Mul_1Mul#while/lstm_cell_3/dropout_7/Mul:z:0$while/lstm_cell_3/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!while/lstm_cell_3/dropout_7/Mul_1¾
while/lstm_cell_3/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/mulÄ
while/lstm_cell_3/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_3/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/mul_1Ä
while/lstm_cell_3/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_3/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/mul_2Ä
while/lstm_cell_3/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_3/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/mul_3
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dimÃ
&while/lstm_cell_3/split/ReadVariableOpReadVariableOp1while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	d°	*
dtype02(
&while/lstm_cell_3/split/ReadVariableOpó
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0.while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d¬:	d¬:	d¬:	d¬*
	num_split2
while/lstm_cell_3/split®
while/lstm_cell_3/MatMulMatMulwhile/lstm_cell_3/mul:z:0 while/lstm_cell_3/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul´
while/lstm_cell_3/MatMul_1MatMulwhile/lstm_cell_3/mul_1:z:0 while/lstm_cell_3/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_1´
while/lstm_cell_3/MatMul_2MatMulwhile/lstm_cell_3/mul_2:z:0 while/lstm_cell_3/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_2´
while/lstm_cell_3/MatMul_3MatMulwhile/lstm_cell_3/mul_3:z:0 while/lstm_cell_3/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_3
#while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_3/split_1/split_dimÅ
(while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:°	*
dtype02*
(while/lstm_cell_3/split_1/ReadVariableOpë
while/lstm_cell_3/split_1Split,while/lstm_cell_3/split_1/split_dim:output:00while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:¬:¬:¬:¬*
	num_split2
while/lstm_cell_3/split_1¼
while/lstm_cell_3/BiasAddBiasAdd"while/lstm_cell_3/MatMul:product:0"while/lstm_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/BiasAddÂ
while/lstm_cell_3/BiasAdd_1BiasAdd$while/lstm_cell_3/MatMul_1:product:0"while/lstm_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/BiasAdd_1Â
while/lstm_cell_3/BiasAdd_2BiasAdd$while/lstm_cell_3/MatMul_2:product:0"while/lstm_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/BiasAdd_2Â
while/lstm_cell_3/BiasAdd_3BiasAdd$while/lstm_cell_3/MatMul_3:product:0"while/lstm_cell_3/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/BiasAdd_3¨
while/lstm_cell_3/mul_4Mulwhile_placeholder_2%while/lstm_cell_3/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_4¨
while/lstm_cell_3/mul_5Mulwhile_placeholder_2%while/lstm_cell_3/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_5¨
while/lstm_cell_3/mul_6Mulwhile_placeholder_2%while/lstm_cell_3/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_6¨
while/lstm_cell_3/mul_7Mulwhile_placeholder_2%while/lstm_cell_3/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_7²
 while/lstm_cell_3/ReadVariableOpReadVariableOp+while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02"
 while/lstm_cell_3/ReadVariableOp
%while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_3/strided_slice/stack£
'while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2)
'while/lstm_cell_3/strided_slice/stack_1£
'while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_3/strided_slice/stack_2ê
while/lstm_cell_3/strided_sliceStridedSlice(while/lstm_cell_3/ReadVariableOp:value:0.while/lstm_cell_3/strided_slice/stack:output:00while/lstm_cell_3/strided_slice/stack_1:output:00while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2!
while/lstm_cell_3/strided_slice¼
while/lstm_cell_3/MatMul_4MatMulwhile/lstm_cell_3/mul_4:z:0(while/lstm_cell_3/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_4´
while/lstm_cell_3/addAddV2"while/lstm_cell_3/BiasAdd:output:0$while/lstm_cell_3/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add
while/lstm_cell_3/SigmoidSigmoidwhile/lstm_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Sigmoid¶
"while/lstm_cell_3/ReadVariableOp_1ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02$
"while/lstm_cell_3/ReadVariableOp_1£
'while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2)
'while/lstm_cell_3/strided_slice_1/stack§
)while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  2+
)while/lstm_cell_3/strided_slice_1/stack_1§
)while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_1/stack_2ö
!while/lstm_cell_3/strided_slice_1StridedSlice*while/lstm_cell_3/ReadVariableOp_1:value:00while/lstm_cell_3/strided_slice_1/stack:output:02while/lstm_cell_3/strided_slice_1/stack_1:output:02while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_1¾
while/lstm_cell_3/MatMul_5MatMulwhile/lstm_cell_3/mul_5:z:0*while/lstm_cell_3/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_5º
while/lstm_cell_3/add_1AddV2$while/lstm_cell_3/BiasAdd_1:output:0$while/lstm_cell_3/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add_1
while/lstm_cell_3/Sigmoid_1Sigmoidwhile/lstm_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Sigmoid_1¢
while/lstm_cell_3/mul_8Mulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_8¶
"while/lstm_cell_3/ReadVariableOp_2ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02$
"while/lstm_cell_3/ReadVariableOp_2£
'while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  2)
'while/lstm_cell_3/strided_slice_2/stack§
)while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_2/stack_1§
)while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_2/stack_2ö
!while/lstm_cell_3/strided_slice_2StridedSlice*while/lstm_cell_3/ReadVariableOp_2:value:00while/lstm_cell_3/strided_slice_2/stack:output:02while/lstm_cell_3/strided_slice_2/stack_1:output:02while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_2¾
while/lstm_cell_3/MatMul_6MatMulwhile/lstm_cell_3/mul_6:z:0*while/lstm_cell_3/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_6º
while/lstm_cell_3/add_2AddV2$while/lstm_cell_3/BiasAdd_2:output:0$while/lstm_cell_3/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add_2
while/lstm_cell_3/TanhTanhwhile/lstm_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Tanh§
while/lstm_cell_3/mul_9Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_9¨
while/lstm_cell_3/add_3AddV2while/lstm_cell_3/mul_8:z:0while/lstm_cell_3/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add_3¶
"while/lstm_cell_3/ReadVariableOp_3ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02$
"while/lstm_cell_3/ReadVariableOp_3£
'while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_3/strided_slice_3/stack§
)while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_3/strided_slice_3/stack_1§
)while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_3/stack_2ö
!while/lstm_cell_3/strided_slice_3StridedSlice*while/lstm_cell_3/ReadVariableOp_3:value:00while/lstm_cell_3/strided_slice_3/stack:output:02while/lstm_cell_3/strided_slice_3/stack_1:output:02while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_3¾
while/lstm_cell_3/MatMul_7MatMulwhile/lstm_cell_3/mul_7:z:0*while/lstm_cell_3/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_7º
while/lstm_cell_3/add_4AddV2$while/lstm_cell_3/BiasAdd_3:output:0$while/lstm_cell_3/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add_4
while/lstm_cell_3/Sigmoid_2Sigmoidwhile/lstm_cell_3/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Sigmoid_2
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Tanh_1­
while/lstm_cell_3/mul_10Mulwhile/lstm_cell_3/Sigmoid_2:y:0while/lstm_cell_3/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_10à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ä
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity×
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Æ
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ó
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ç
while/Identity_4Identitywhile/lstm_cell_3/mul_10:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/Identity_4æ
while/Identity_5Identitywhile/lstm_cell_3/add_3:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_3_readvariableop_resource+while_lstm_cell_3_readvariableop_resource_0"h
1while_lstm_cell_3_split_1_readvariableop_resource3while_lstm_cell_3_split_1_readvariableop_resource_0"d
/while_lstm_cell_3_split_readvariableop_resource1while_lstm_cell_3_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : 2D
 while/lstm_cell_3/ReadVariableOp while/lstm_cell_3/ReadVariableOp2H
"while/lstm_cell_3/ReadVariableOp_1"while/lstm_cell_3/ReadVariableOp_12H
"while/lstm_cell_3/ReadVariableOp_2"while/lstm_cell_3/ReadVariableOp_22H
"while/lstm_cell_3/ReadVariableOp_3"while/lstm_cell_3/ReadVariableOp_32P
&while/lstm_cell_3/split/ReadVariableOp&while/lstm_cell_3/split/ReadVariableOp2T
(while/lstm_cell_3/split_1/ReadVariableOp(while/lstm_cell_3/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ¬:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
: 
Ô
¾
while_cond_59855
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_59855___redundant_placeholder03
/while_while_cond_59855___redundant_placeholder13
/while_while_cond_59855___redundant_placeholder23
/while_while_cond_59855___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
B: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ¬:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
:
3
÷
*model_2_attention_layer_while_1_body_59302P
Lmodel_2_attention_layer_while_1_model_2_attention_layer_while_1_loop_counterV
Rmodel_2_attention_layer_while_1_model_2_attention_layer_while_1_maximum_iterations/
+model_2_attention_layer_while_1_placeholder1
-model_2_attention_layer_while_1_placeholder_11
-model_2_attention_layer_while_1_placeholder_2M
Imodel_2_attention_layer_while_1_model_2_attention_layer_strided_slice_3_0
model_2_attention_layer_while_1_tensorarrayv2read_tensorlistgetitem_model_2_attention_layer_tensorarrayunstack_1_tensorlistfromtensor_01
-model_2_attention_layer_while_1_mul_input_5_0,
(model_2_attention_layer_while_1_identity.
*model_2_attention_layer_while_1_identity_1.
*model_2_attention_layer_while_1_identity_2.
*model_2_attention_layer_while_1_identity_3.
*model_2_attention_layer_while_1_identity_4K
Gmodel_2_attention_layer_while_1_model_2_attention_layer_strided_slice_3
model_2_attention_layer_while_1_tensorarrayv2read_tensorlistgetitem_model_2_attention_layer_tensorarrayunstack_1_tensorlistfromtensor/
+model_2_attention_layer_while_1_mul_input_5÷
Qmodel_2/attention_layer/while_1/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP   2S
Qmodel_2/attention_layer/while_1/TensorArrayV2Read/TensorListGetItem/element_shapeð
Cmodel_2/attention_layer/while_1/TensorArrayV2Read/TensorListGetItemTensorListGetItemmodel_2_attention_layer_while_1_tensorarrayv2read_tensorlistgetitem_model_2_attention_layer_tensorarrayunstack_1_tensorlistfromtensor_0+model_2_attention_layer_while_1_placeholderZmodel_2/attention_layer/while_1/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
element_dtype02E
Cmodel_2/attention_layer/while_1/TensorArrayV2Read/TensorListGetItem«
.model_2/attention_layer/while_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.model_2/attention_layer/while_1/ExpandDims/dim¡
*model_2/attention_layer/while_1/ExpandDims
ExpandDimsJmodel_2/attention_layer/while_1/TensorArrayV2Read/TensorListGetItem:item:07model_2/attention_layer/while_1/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2,
*model_2/attention_layer/while_1/ExpandDimsì
#model_2/attention_layer/while_1/mulMul-model_2_attention_layer_while_1_mul_input_5_03model_2/attention_layer/while_1/ExpandDims:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2%
#model_2/attention_layer/while_1/mul°
5model_2/attention_layer/while_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :27
5model_2/attention_layer/while_1/Sum/reduction_indicesí
#model_2/attention_layer/while_1/SumSum'model_2/attention_layer/while_1/mul:z:0>model_2/attention_layer/while_1/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2%
#model_2/attention_layer/while_1/SumØ
Dmodel_2/attention_layer/while_1/TensorArrayV2Write/TensorListSetItemTensorListSetItem-model_2_attention_layer_while_1_placeholder_1+model_2_attention_layer_while_1_placeholder,model_2/attention_layer/while_1/Sum:output:0*
_output_shapes
: *
element_dtype02F
Dmodel_2/attention_layer/while_1/TensorArrayV2Write/TensorListSetItem
%model_2/attention_layer/while_1/add/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%model_2/attention_layer/while_1/add/yÑ
#model_2/attention_layer/while_1/addAddV2+model_2_attention_layer_while_1_placeholder.model_2/attention_layer/while_1/add/y:output:0*
T0*
_output_shapes
: 2%
#model_2/attention_layer/while_1/add
'model_2/attention_layer/while_1/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'model_2/attention_layer/while_1/add_1/yø
%model_2/attention_layer/while_1/add_1AddV2Lmodel_2_attention_layer_while_1_model_2_attention_layer_while_1_loop_counter0model_2/attention_layer/while_1/add_1/y:output:0*
T0*
_output_shapes
: 2'
%model_2/attention_layer/while_1/add_1¬
(model_2/attention_layer/while_1/IdentityIdentity)model_2/attention_layer/while_1/add_1:z:0*
T0*
_output_shapes
: 2*
(model_2/attention_layer/while_1/IdentityÙ
*model_2/attention_layer/while_1/Identity_1IdentityRmodel_2_attention_layer_while_1_model_2_attention_layer_while_1_maximum_iterations*
T0*
_output_shapes
: 2,
*model_2/attention_layer/while_1/Identity_1®
*model_2/attention_layer/while_1/Identity_2Identity'model_2/attention_layer/while_1/add:z:0*
T0*
_output_shapes
: 2,
*model_2/attention_layer/while_1/Identity_2Û
*model_2/attention_layer/while_1/Identity_3IdentityTmodel_2/attention_layer/while_1/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2,
*model_2/attention_layer/while_1/Identity_3Å
*model_2/attention_layer/while_1/Identity_4Identity,model_2/attention_layer/while_1/Sum:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2,
*model_2/attention_layer/while_1/Identity_4"]
(model_2_attention_layer_while_1_identity1model_2/attention_layer/while_1/Identity:output:0"a
*model_2_attention_layer_while_1_identity_13model_2/attention_layer/while_1/Identity_1:output:0"a
*model_2_attention_layer_while_1_identity_23model_2/attention_layer/while_1/Identity_2:output:0"a
*model_2_attention_layer_while_1_identity_33model_2/attention_layer/while_1/Identity_3:output:0"a
*model_2_attention_layer_while_1_identity_43model_2/attention_layer/while_1/Identity_4:output:0"
Gmodel_2_attention_layer_while_1_model_2_attention_layer_strided_slice_3Imodel_2_attention_layer_while_1_model_2_attention_layer_strided_slice_3_0"\
+model_2_attention_layer_while_1_mul_input_5-model_2_attention_layer_while_1_mul_input_5_0"
model_2_attention_layer_while_1_tensorarrayv2read_tensorlistgetitem_model_2_attention_layer_tensorarrayunstack_1_tensorlistfromtensormodel_2_attention_layer_while_1_tensorarrayv2read_tensorlistgetitem_model_2_attention_layer_tensorarrayunstack_1_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ¬: : :ÿÿÿÿÿÿÿÿÿP¬: 
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
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
: :2.
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬
Ô
¾
while_cond_62962
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_62962___redundant_placeholder03
/while_while_cond_62962___redundant_placeholder13
/while_while_cond_62962___redundant_placeholder23
/while_while_cond_62962___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
B: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ¬:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
:
õ¡
ÿ
A__inference_lstm_3_layer_call_and_return_conditional_losses_63099
inputs_0<
)lstm_cell_3_split_readvariableop_resource:	d°	:
+lstm_cell_3_split_1_readvariableop_resource:	°	7
#lstm_cell_3_readvariableop_resource:
¬°	
identity

identity_1

identity_2¢lstm_cell_3/ReadVariableOp¢lstm_cell_3/ReadVariableOp_1¢lstm_cell_3/ReadVariableOp_2¢lstm_cell_3/ReadVariableOp_3¢ lstm_cell_3/split/ReadVariableOp¢"lstm_cell_3/split_1/ReadVariableOp¢whileF
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
strided_slice/stack_2â
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
B :¬2
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
B :è2
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
B :¬2
zeros/packed/1
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
:ÿÿÿÿÿÿÿÿÿ¬2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :¬2
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
B :è2
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
B :¬2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ¬2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
strided_slice_2
lstm_cell_3/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like/Shape
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like/Const´
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/ones_like|
lstm_cell_3/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like_1/Shape
lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like_1/Const½
lstm_cell_3/ones_like_1Fill&lstm_cell_3/ones_like_1/Shape:output:0&lstm_cell_3/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/ones_like_1
lstm_cell_3/mulMulstrided_slice_2:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/mul
lstm_cell_3/mul_1Mulstrided_slice_2:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/mul_1
lstm_cell_3/mul_2Mulstrided_slice_2:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/mul_2
lstm_cell_3/mul_3Mulstrided_slice_2:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/mul_3|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dim¯
 lstm_cell_3/split/ReadVariableOpReadVariableOp)lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	d°	*
dtype02"
 lstm_cell_3/split/ReadVariableOpÛ
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0(lstm_cell_3/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d¬:	d¬:	d¬:	d¬*
	num_split2
lstm_cell_3/split
lstm_cell_3/MatMulMatMullstm_cell_3/mul:z:0lstm_cell_3/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul
lstm_cell_3/MatMul_1MatMullstm_cell_3/mul_1:z:0lstm_cell_3/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_1
lstm_cell_3/MatMul_2MatMullstm_cell_3/mul_2:z:0lstm_cell_3/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_2
lstm_cell_3/MatMul_3MatMullstm_cell_3/mul_3:z:0lstm_cell_3/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_3
lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_3/split_1/split_dim±
"lstm_cell_3/split_1/ReadVariableOpReadVariableOp+lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:°	*
dtype02$
"lstm_cell_3/split_1/ReadVariableOpÓ
lstm_cell_3/split_1Split&lstm_cell_3/split_1/split_dim:output:0*lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:¬:¬:¬:¬*
	num_split2
lstm_cell_3/split_1¤
lstm_cell_3/BiasAddBiasAddlstm_cell_3/MatMul:product:0lstm_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/BiasAddª
lstm_cell_3/BiasAdd_1BiasAddlstm_cell_3/MatMul_1:product:0lstm_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/BiasAdd_1ª
lstm_cell_3/BiasAdd_2BiasAddlstm_cell_3/MatMul_2:product:0lstm_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/BiasAdd_2ª
lstm_cell_3/BiasAdd_3BiasAddlstm_cell_3/MatMul_3:product:0lstm_cell_3/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/BiasAdd_3
lstm_cell_3/mul_4Mulzeros:output:0 lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_4
lstm_cell_3/mul_5Mulzeros:output:0 lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_5
lstm_cell_3/mul_6Mulzeros:output:0 lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_6
lstm_cell_3/mul_7Mulzeros:output:0 lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_7
lstm_cell_3/ReadVariableOpReadVariableOp#lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
lstm_cell_3/ReadVariableOp
lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_3/strided_slice/stack
!lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2#
!lstm_cell_3/strided_slice/stack_1
!lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_3/strided_slice/stack_2Æ
lstm_cell_3/strided_sliceStridedSlice"lstm_cell_3/ReadVariableOp:value:0(lstm_cell_3/strided_slice/stack:output:0*lstm_cell_3/strided_slice/stack_1:output:0*lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
lstm_cell_3/strided_slice¤
lstm_cell_3/MatMul_4MatMullstm_cell_3/mul_4:z:0"lstm_cell_3/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_4
lstm_cell_3/addAddV2lstm_cell_3/BiasAdd:output:0lstm_cell_3/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add}
lstm_cell_3/SigmoidSigmoidlstm_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Sigmoid¢
lstm_cell_3/ReadVariableOp_1ReadVariableOp#lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
lstm_cell_3/ReadVariableOp_1
!lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2#
!lstm_cell_3/strided_slice_1/stack
#lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  2%
#lstm_cell_3/strided_slice_1/stack_1
#lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_1/stack_2Ò
lstm_cell_3/strided_slice_1StridedSlice$lstm_cell_3/ReadVariableOp_1:value:0*lstm_cell_3/strided_slice_1/stack:output:0,lstm_cell_3/strided_slice_1/stack_1:output:0,lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_1¦
lstm_cell_3/MatMul_5MatMullstm_cell_3/mul_5:z:0$lstm_cell_3/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_5¢
lstm_cell_3/add_1AddV2lstm_cell_3/BiasAdd_1:output:0lstm_cell_3/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add_1
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Sigmoid_1
lstm_cell_3/mul_8Mullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_8¢
lstm_cell_3/ReadVariableOp_2ReadVariableOp#lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
lstm_cell_3/ReadVariableOp_2
!lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  2#
!lstm_cell_3/strided_slice_2/stack
#lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_2/stack_1
#lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_2/stack_2Ò
lstm_cell_3/strided_slice_2StridedSlice$lstm_cell_3/ReadVariableOp_2:value:0*lstm_cell_3/strided_slice_2/stack:output:0,lstm_cell_3/strided_slice_2/stack_1:output:0,lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_2¦
lstm_cell_3/MatMul_6MatMullstm_cell_3/mul_6:z:0$lstm_cell_3/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_6¢
lstm_cell_3/add_2AddV2lstm_cell_3/BiasAdd_2:output:0lstm_cell_3/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add_2v
lstm_cell_3/TanhTanhlstm_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Tanh
lstm_cell_3/mul_9Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_9
lstm_cell_3/add_3AddV2lstm_cell_3/mul_8:z:0lstm_cell_3/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add_3¢
lstm_cell_3/ReadVariableOp_3ReadVariableOp#lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
lstm_cell_3/ReadVariableOp_3
!lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_3/strided_slice_3/stack
#lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_3/strided_slice_3/stack_1
#lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_3/stack_2Ò
lstm_cell_3/strided_slice_3StridedSlice$lstm_cell_3/ReadVariableOp_3:value:0*lstm_cell_3/strided_slice_3/stack:output:0,lstm_cell_3/strided_slice_3/stack_1:output:0,lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_3¦
lstm_cell_3/MatMul_7MatMullstm_cell_3/mul_7:z:0$lstm_cell_3/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_7¢
lstm_cell_3/add_4AddV2lstm_cell_3/BiasAdd_3:output:0lstm_cell_3/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add_4
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Sigmoid_2z
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Tanh_1
lstm_cell_3/mul_10Mullstm_cell_3/Sigmoid_2:y:0lstm_cell_3/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterã
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_3_split_readvariableop_resource+lstm_cell_3_split_1_readvariableop_resource#lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_62963*
condR
while_cond_62962*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime»
IdentityIdentitytranspose_1:y:0^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2

Identity±

Identity_1Identitywhile:output:4^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1±

Identity_2Identitywhile:output:5^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 28
lstm_cell_3/ReadVariableOplstm_cell_3/ReadVariableOp2<
lstm_cell_3/ReadVariableOp_1lstm_cell_3/ReadVariableOp_12<
lstm_cell_3/ReadVariableOp_2lstm_cell_3/ReadVariableOp_22<
lstm_cell_3/ReadVariableOp_3lstm_cell_3/ReadVariableOp_32D
 lstm_cell_3/split/ReadVariableOp lstm_cell_3/split/ReadVariableOp2H
"lstm_cell_3/split_1/ReadVariableOp"lstm_cell_3/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
¾
¢

B__inference_model_2_layer_call_and_return_conditional_losses_62116
inputs_0
inputs_1
inputs_2
inputs_35
"embedding_1_embedding_lookup_61598:	íbdC
0lstm_3_lstm_cell_3_split_readvariableop_resource:	d°	A
2lstm_3_lstm_cell_3_split_1_readvariableop_resource:	°	>
*lstm_3_lstm_cell_3_readvariableop_resource:
¬°	C
/attention_layer_shape_2_readvariableop_resource:
¬¬D
0attention_layer_matmul_1_readvariableop_resource:
¬¬B
/attention_layer_shape_4_readvariableop_resource:	¬I
5time_distributed_dense_matmul_readvariableop_resource:
ØíbE
6time_distributed_dense_biasadd_readvariableop_resource:	íb
identity

identity_1

identity_2¢'attention_layer/MatMul_1/ReadVariableOp¢*attention_layer/transpose_1/ReadVariableOp¢*attention_layer/transpose_2/ReadVariableOp¢attention_layer/while¢embedding_1/embedding_lookup¢!lstm_3/lstm_cell_3/ReadVariableOp¢#lstm_3/lstm_cell_3/ReadVariableOp_1¢#lstm_3/lstm_cell_3/ReadVariableOp_2¢#lstm_3/lstm_cell_3/ReadVariableOp_3¢'lstm_3/lstm_cell_3/split/ReadVariableOp¢)lstm_3/lstm_cell_3/split_1/ReadVariableOp¢lstm_3/while¢-time_distributed/dense/BiasAdd/ReadVariableOp¢,time_distributed/dense/MatMul/ReadVariableOp
embedding_1/CastCastinputs_0*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
embedding_1/CastÀ
embedding_1/embedding_lookupResourceGather"embedding_1_embedding_lookup_61598embedding_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_1/embedding_lookup/61598*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
dtype02
embedding_1/embedding_lookup¥
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_1/embedding_lookup/61598*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2'
%embedding_1/embedding_lookup/IdentityÍ
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2)
'embedding_1/embedding_lookup/Identity_1
lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose/permÂ
lstm_3/transpose	Transpose0embedding_1/embedding_lookup/Identity_1:output:0lstm_3/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2
lstm_3/transpose`
lstm_3/ShapeShapelstm_3/transpose:y:0*
T0*
_output_shapes
:2
lstm_3/Shape
lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice/stack
lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_1
lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_2
lstm_3/strided_sliceStridedSlicelstm_3/Shape:output:0#lstm_3/strided_slice/stack:output:0%lstm_3/strided_slice/stack_1:output:0%lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slice
"lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"lstm_3/TensorArrayV2/element_shapeÌ
lstm_3/TensorArrayV2TensorListReserve+lstm_3/TensorArrayV2/element_shape:output:0lstm_3/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2Í
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2>
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_3/transpose:y:0Elstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_3/TensorArrayUnstack/TensorListFromTensor
lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_1/stack
lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_1
lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_2¦
lstm_3/strided_slice_1StridedSlicelstm_3/transpose:y:0%lstm_3/strided_slice_1/stack:output:0'lstm_3/strided_slice_1/stack_1:output:0'lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
lstm_3/strided_slice_1
"lstm_3/lstm_cell_3/ones_like/ShapeShapelstm_3/strided_slice_1:output:0*
T0*
_output_shapes
:2$
"lstm_3/lstm_cell_3/ones_like/Shape
"lstm_3/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"lstm_3/lstm_cell_3/ones_like/ConstÐ
lstm_3/lstm_cell_3/ones_likeFill+lstm_3/lstm_cell_3/ones_like/Shape:output:0+lstm_3/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_3/lstm_cell_3/ones_like
$lstm_3/lstm_cell_3/ones_like_1/ShapeShapeinputs_2*
T0*
_output_shapes
:2&
$lstm_3/lstm_cell_3/ones_like_1/Shape
$lstm_3/lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$lstm_3/lstm_cell_3/ones_like_1/ConstÙ
lstm_3/lstm_cell_3/ones_like_1Fill-lstm_3/lstm_cell_3/ones_like_1/Shape:output:0-lstm_3/lstm_cell_3/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
lstm_3/lstm_cell_3/ones_like_1±
lstm_3/lstm_cell_3/mulMullstm_3/strided_slice_1:output:0%lstm_3/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_3/lstm_cell_3/mulµ
lstm_3/lstm_cell_3/mul_1Mullstm_3/strided_slice_1:output:0%lstm_3/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_3/lstm_cell_3/mul_1µ
lstm_3/lstm_cell_3/mul_2Mullstm_3/strided_slice_1:output:0%lstm_3/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_3/lstm_cell_3/mul_2µ
lstm_3/lstm_cell_3/mul_3Mullstm_3/strided_slice_1:output:0%lstm_3/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_3/lstm_cell_3/mul_3
"lstm_3/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_3/lstm_cell_3/split/split_dimÄ
'lstm_3/lstm_cell_3/split/ReadVariableOpReadVariableOp0lstm_3_lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	d°	*
dtype02)
'lstm_3/lstm_cell_3/split/ReadVariableOp÷
lstm_3/lstm_cell_3/splitSplit+lstm_3/lstm_cell_3/split/split_dim:output:0/lstm_3/lstm_cell_3/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d¬:	d¬:	d¬:	d¬*
	num_split2
lstm_3/lstm_cell_3/split²
lstm_3/lstm_cell_3/MatMulMatMullstm_3/lstm_cell_3/mul:z:0!lstm_3/lstm_cell_3/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/MatMul¸
lstm_3/lstm_cell_3/MatMul_1MatMullstm_3/lstm_cell_3/mul_1:z:0!lstm_3/lstm_cell_3/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/MatMul_1¸
lstm_3/lstm_cell_3/MatMul_2MatMullstm_3/lstm_cell_3/mul_2:z:0!lstm_3/lstm_cell_3/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/MatMul_2¸
lstm_3/lstm_cell_3/MatMul_3MatMullstm_3/lstm_cell_3/mul_3:z:0!lstm_3/lstm_cell_3/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/MatMul_3
$lstm_3/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$lstm_3/lstm_cell_3/split_1/split_dimÆ
)lstm_3/lstm_cell_3/split_1/ReadVariableOpReadVariableOp2lstm_3_lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:°	*
dtype02+
)lstm_3/lstm_cell_3/split_1/ReadVariableOpï
lstm_3/lstm_cell_3/split_1Split-lstm_3/lstm_cell_3/split_1/split_dim:output:01lstm_3/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:¬:¬:¬:¬*
	num_split2
lstm_3/lstm_cell_3/split_1À
lstm_3/lstm_cell_3/BiasAddBiasAdd#lstm_3/lstm_cell_3/MatMul:product:0#lstm_3/lstm_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/BiasAddÆ
lstm_3/lstm_cell_3/BiasAdd_1BiasAdd%lstm_3/lstm_cell_3/MatMul_1:product:0#lstm_3/lstm_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/BiasAdd_1Æ
lstm_3/lstm_cell_3/BiasAdd_2BiasAdd%lstm_3/lstm_cell_3/MatMul_2:product:0#lstm_3/lstm_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/BiasAdd_2Æ
lstm_3/lstm_cell_3/BiasAdd_3BiasAdd%lstm_3/lstm_cell_3/MatMul_3:product:0#lstm_3/lstm_cell_3/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/BiasAdd_3¡
lstm_3/lstm_cell_3/mul_4Mulinputs_2'lstm_3/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/mul_4¡
lstm_3/lstm_cell_3/mul_5Mulinputs_2'lstm_3/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/mul_5¡
lstm_3/lstm_cell_3/mul_6Mulinputs_2'lstm_3/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/mul_6¡
lstm_3/lstm_cell_3/mul_7Mulinputs_2'lstm_3/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/mul_7³
!lstm_3/lstm_cell_3/ReadVariableOpReadVariableOp*lstm_3_lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02#
!lstm_3/lstm_cell_3/ReadVariableOp¡
&lstm_3/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm_3/lstm_cell_3/strided_slice/stack¥
(lstm_3/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(lstm_3/lstm_cell_3/strided_slice/stack_1¥
(lstm_3/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_3/lstm_cell_3/strided_slice/stack_2ð
 lstm_3/lstm_cell_3/strided_sliceStridedSlice)lstm_3/lstm_cell_3/ReadVariableOp:value:0/lstm_3/lstm_cell_3/strided_slice/stack:output:01lstm_3/lstm_cell_3/strided_slice/stack_1:output:01lstm_3/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2"
 lstm_3/lstm_cell_3/strided_sliceÀ
lstm_3/lstm_cell_3/MatMul_4MatMullstm_3/lstm_cell_3/mul_4:z:0)lstm_3/lstm_cell_3/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/MatMul_4¸
lstm_3/lstm_cell_3/addAddV2#lstm_3/lstm_cell_3/BiasAdd:output:0%lstm_3/lstm_cell_3/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/add
lstm_3/lstm_cell_3/SigmoidSigmoidlstm_3/lstm_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/Sigmoid·
#lstm_3/lstm_cell_3/ReadVariableOp_1ReadVariableOp*lstm_3_lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02%
#lstm_3/lstm_cell_3/ReadVariableOp_1¥
(lstm_3/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2*
(lstm_3/lstm_cell_3/strided_slice_1/stack©
*lstm_3/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  2,
*lstm_3/lstm_cell_3/strided_slice_1/stack_1©
*lstm_3/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_3/lstm_cell_3/strided_slice_1/stack_2ü
"lstm_3/lstm_cell_3/strided_slice_1StridedSlice+lstm_3/lstm_cell_3/ReadVariableOp_1:value:01lstm_3/lstm_cell_3/strided_slice_1/stack:output:03lstm_3/lstm_cell_3/strided_slice_1/stack_1:output:03lstm_3/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2$
"lstm_3/lstm_cell_3/strided_slice_1Â
lstm_3/lstm_cell_3/MatMul_5MatMullstm_3/lstm_cell_3/mul_5:z:0+lstm_3/lstm_cell_3/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/MatMul_5¾
lstm_3/lstm_cell_3/add_1AddV2%lstm_3/lstm_cell_3/BiasAdd_1:output:0%lstm_3/lstm_cell_3/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/add_1
lstm_3/lstm_cell_3/Sigmoid_1Sigmoidlstm_3/lstm_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/Sigmoid_1
lstm_3/lstm_cell_3/mul_8Mul lstm_3/lstm_cell_3/Sigmoid_1:y:0inputs_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/mul_8·
#lstm_3/lstm_cell_3/ReadVariableOp_2ReadVariableOp*lstm_3_lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02%
#lstm_3/lstm_cell_3/ReadVariableOp_2¥
(lstm_3/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  2*
(lstm_3/lstm_cell_3/strided_slice_2/stack©
*lstm_3/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_3/lstm_cell_3/strided_slice_2/stack_1©
*lstm_3/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_3/lstm_cell_3/strided_slice_2/stack_2ü
"lstm_3/lstm_cell_3/strided_slice_2StridedSlice+lstm_3/lstm_cell_3/ReadVariableOp_2:value:01lstm_3/lstm_cell_3/strided_slice_2/stack:output:03lstm_3/lstm_cell_3/strided_slice_2/stack_1:output:03lstm_3/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2$
"lstm_3/lstm_cell_3/strided_slice_2Â
lstm_3/lstm_cell_3/MatMul_6MatMullstm_3/lstm_cell_3/mul_6:z:0+lstm_3/lstm_cell_3/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/MatMul_6¾
lstm_3/lstm_cell_3/add_2AddV2%lstm_3/lstm_cell_3/BiasAdd_2:output:0%lstm_3/lstm_cell_3/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/add_2
lstm_3/lstm_cell_3/TanhTanhlstm_3/lstm_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/Tanh«
lstm_3/lstm_cell_3/mul_9Mullstm_3/lstm_cell_3/Sigmoid:y:0lstm_3/lstm_cell_3/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/mul_9¬
lstm_3/lstm_cell_3/add_3AddV2lstm_3/lstm_cell_3/mul_8:z:0lstm_3/lstm_cell_3/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/add_3·
#lstm_3/lstm_cell_3/ReadVariableOp_3ReadVariableOp*lstm_3_lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02%
#lstm_3/lstm_cell_3/ReadVariableOp_3¥
(lstm_3/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_3/lstm_cell_3/strided_slice_3/stack©
*lstm_3/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_3/lstm_cell_3/strided_slice_3/stack_1©
*lstm_3/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_3/lstm_cell_3/strided_slice_3/stack_2ü
"lstm_3/lstm_cell_3/strided_slice_3StridedSlice+lstm_3/lstm_cell_3/ReadVariableOp_3:value:01lstm_3/lstm_cell_3/strided_slice_3/stack:output:03lstm_3/lstm_cell_3/strided_slice_3/stack_1:output:03lstm_3/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2$
"lstm_3/lstm_cell_3/strided_slice_3Â
lstm_3/lstm_cell_3/MatMul_7MatMullstm_3/lstm_cell_3/mul_7:z:0+lstm_3/lstm_cell_3/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/MatMul_7¾
lstm_3/lstm_cell_3/add_4AddV2%lstm_3/lstm_cell_3/BiasAdd_3:output:0%lstm_3/lstm_cell_3/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/add_4
lstm_3/lstm_cell_3/Sigmoid_2Sigmoidlstm_3/lstm_cell_3/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/Sigmoid_2
lstm_3/lstm_cell_3/Tanh_1Tanhlstm_3/lstm_cell_3/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/Tanh_1±
lstm_3/lstm_cell_3/mul_10Mul lstm_3/lstm_cell_3/Sigmoid_2:y:0lstm_3/lstm_cell_3/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/lstm_cell_3/mul_10
$lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2&
$lstm_3/TensorArrayV2_1/element_shapeÒ
lstm_3/TensorArrayV2_1TensorListReserve-lstm_3/TensorArrayV2_1/element_shape:output:0lstm_3/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2_1\
lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/time
lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2!
lstm_3/while/maximum_iterationsx
lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/while/loop_counter®
lstm_3/whileWhile"lstm_3/while/loop_counter:output:0(lstm_3/while/maximum_iterations:output:0lstm_3/time:output:0lstm_3/TensorArrayV2_1:handle:0inputs_2inputs_3lstm_3/strided_slice:output:0>lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_3_lstm_cell_3_split_readvariableop_resource2lstm_3_lstm_cell_3_split_1_readvariableop_resource*lstm_3_lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : *%
_read_only_resource_inputs
	
*#
bodyR
lstm_3_while_body_61696*#
condR
lstm_3_while_cond_61695*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : *
parallel_iterations 2
lstm_3/whileÃ
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  29
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_3/TensorArrayV2Stack/TensorListStackTensorListStacklstm_3/while:output:3@lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬*
element_dtype02+
)lstm_3/TensorArrayV2Stack/TensorListStack
lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_3/strided_slice_2/stack
lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_3/strided_slice_2/stack_1
lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_2Å
lstm_3/strided_slice_2StridedSlice2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_3/strided_slice_2/stack:output:0'lstm_3/strided_slice_2/stack_1:output:0'lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
shrink_axis_mask2
lstm_3/strided_slice_2
lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose_1/permË
lstm_3/transpose_1	Transpose2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_3/transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2
lstm_3/transpose_1t
lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/runtime
%attention_layer/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2'
%attention_layer/Sum/reduction_indices
attention_layer/SumSuminputs_1.attention_layer/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
attention_layer/Sum
'attention_layer/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2)
'attention_layer/Sum_1/reduction_indices£
attention_layer/Sum_1Suminputs_10attention_layer/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
attention_layer/Sum_1
attention_layer/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
attention_layer/transpose/permÄ
attention_layer/transpose	Transposelstm_3/transpose_1:y:0'attention_layer/transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2
attention_layer/transpose{
attention_layer/ShapeShapeattention_layer/transpose:y:0*
T0*
_output_shapes
:2
attention_layer/Shape
#attention_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#attention_layer/strided_slice/stack
%attention_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%attention_layer/strided_slice/stack_1
%attention_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%attention_layer/strided_slice/stack_2Â
attention_layer/strided_sliceStridedSliceattention_layer/Shape:output:0,attention_layer/strided_slice/stack:output:0.attention_layer/strided_slice/stack_1:output:0.attention_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
attention_layer/strided_slice¥
+attention_layer/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2-
+attention_layer/TensorArrayV2/element_shapeð
attention_layer/TensorArrayV2TensorListReserve4attention_layer/TensorArrayV2/element_shape:output:0&attention_layer/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
attention_layer/TensorArrayV2ß
Eattention_layer/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2G
Eattention_layer/TensorArrayUnstack/TensorListFromTensor/element_shape¸
7attention_layer/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorattention_layer/transpose:y:0Nattention_layer/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type029
7attention_layer/TensorArrayUnstack/TensorListFromTensor
%attention_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%attention_layer/strided_slice_1/stack
'attention_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_1/stack_1
'attention_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_1/stack_2Ý
attention_layer/strided_slice_1StridedSliceattention_layer/transpose:y:0.attention_layer/strided_slice_1/stack:output:00attention_layer/strided_slice_1/stack_1:output:00attention_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
shrink_axis_mask2!
attention_layer/strided_slice_1j
attention_layer/Shape_1Shapeinputs_1*
T0*
_output_shapes
:2
attention_layer/Shape_1
attention_layer/unstackUnpack attention_layer/Shape_1:output:0*
T0*
_output_shapes
: : : *	
num2
attention_layer/unstackÂ
&attention_layer/Shape_2/ReadVariableOpReadVariableOp/attention_layer_shape_2_readvariableop_resource* 
_output_shapes
:
¬¬*
dtype02(
&attention_layer/Shape_2/ReadVariableOp
attention_layer/Shape_2Const*
_output_shapes
:*
dtype0*
valueB",  ,  2
attention_layer/Shape_2
attention_layer/unstack_1Unpack attention_layer/Shape_2:output:0*
T0*
_output_shapes
: : *	
num2
attention_layer/unstack_1
attention_layer/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2
attention_layer/Reshape/shape¢
attention_layer/ReshapeReshapeinputs_1&attention_layer/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
attention_layer/ReshapeÊ
*attention_layer/transpose_1/ReadVariableOpReadVariableOp/attention_layer_shape_2_readvariableop_resource* 
_output_shapes
:
¬¬*
dtype02,
*attention_layer/transpose_1/ReadVariableOp
 attention_layer/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2"
 attention_layer/transpose_1/permÑ
attention_layer/transpose_1	Transpose2attention_layer/transpose_1/ReadVariableOp:value:0)attention_layer/transpose_1/perm:output:0*
T0* 
_output_shapes
:
¬¬2
attention_layer/transpose_1
attention_layer/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB",  ÿÿÿÿ2!
attention_layer/Reshape_1/shape·
attention_layer/Reshape_1Reshapeattention_layer/transpose_1:y:0(attention_layer/Reshape_1/shape:output:0*
T0* 
_output_shapes
:
¬¬2
attention_layer/Reshape_1³
attention_layer/MatMulMatMul attention_layer/Reshape:output:0"attention_layer/Reshape_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
attention_layer/MatMul
!attention_layer/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :P2#
!attention_layer/Reshape_2/shape/1
!attention_layer/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value
B :¬2#
!attention_layer/Reshape_2/shape/2ò
attention_layer/Reshape_2/shapePack attention_layer/unstack:output:0*attention_layer/Reshape_2/shape/1:output:0*attention_layer/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2!
attention_layer/Reshape_2/shapeÄ
attention_layer/Reshape_2Reshape attention_layer/MatMul:product:0(attention_layer/Reshape_2/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
attention_layer/Reshape_2Å
'attention_layer/MatMul_1/ReadVariableOpReadVariableOp0attention_layer_matmul_1_readvariableop_resource* 
_output_shapes
:
¬¬*
dtype02)
'attention_layer/MatMul_1/ReadVariableOpÌ
attention_layer/MatMul_1MatMul(attention_layer/strided_slice_1:output:0/attention_layer/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
attention_layer/MatMul_1
attention_layer/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
attention_layer/ExpandDims/dimÊ
attention_layer/ExpandDims
ExpandDims"attention_layer/MatMul_1:product:0'attention_layer/ExpandDims/dim:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
attention_layer/ExpandDims³
attention_layer/addAddV2"attention_layer/Reshape_2:output:0#attention_layer/ExpandDims:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
attention_layer/add
attention_layer/TanhTanhattention_layer/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
attention_layer/Tanhz
attention_layer/Shape_3Shapeattention_layer/Tanh:y:0*
T0*
_output_shapes
:2
attention_layer/Shape_3
attention_layer/unstack_2Unpack attention_layer/Shape_3:output:0*
T0*
_output_shapes
: : : *	
num2
attention_layer/unstack_2Á
&attention_layer/Shape_4/ReadVariableOpReadVariableOp/attention_layer_shape_4_readvariableop_resource*
_output_shapes
:	¬*
dtype02(
&attention_layer/Shape_4/ReadVariableOp
attention_layer/Shape_4Const*
_output_shapes
:*
dtype0*
valueB",     2
attention_layer/Shape_4
attention_layer/unstack_3Unpack attention_layer/Shape_4:output:0*
T0*
_output_shapes
: : *	
num2
attention_layer/unstack_3
attention_layer/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2!
attention_layer/Reshape_3/shape¸
attention_layer/Reshape_3Reshapeattention_layer/Tanh:y:0(attention_layer/Reshape_3/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
attention_layer/Reshape_3É
*attention_layer/transpose_2/ReadVariableOpReadVariableOp/attention_layer_shape_4_readvariableop_resource*
_output_shapes
:	¬*
dtype02,
*attention_layer/transpose_2/ReadVariableOp
 attention_layer/transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2"
 attention_layer/transpose_2/permÐ
attention_layer/transpose_2	Transpose2attention_layer/transpose_2/ReadVariableOp:value:0)attention_layer/transpose_2/perm:output:0*
T0*
_output_shapes
:	¬2
attention_layer/transpose_2
attention_layer/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB",  ÿÿÿÿ2!
attention_layer/Reshape_4/shape¶
attention_layer/Reshape_4Reshapeattention_layer/transpose_2:y:0(attention_layer/Reshape_4/shape:output:0*
T0*
_output_shapes
:	¬2
attention_layer/Reshape_4¸
attention_layer/MatMul_2MatMul"attention_layer/Reshape_3:output:0"attention_layer/Reshape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
attention_layer/MatMul_2
!attention_layer/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :P2#
!attention_layer/Reshape_5/shape/1
!attention_layer/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2#
!attention_layer/Reshape_5/shape/2ô
attention_layer/Reshape_5/shapePack"attention_layer/unstack_2:output:0*attention_layer/Reshape_5/shape/1:output:0*attention_layer/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:2!
attention_layer/Reshape_5/shapeÅ
attention_layer/Reshape_5Reshape"attention_layer/MatMul_2:product:0(attention_layer/Reshape_5/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
attention_layer/Reshape_5³
attention_layer/SqueezeSqueeze"attention_layer/Reshape_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ2
attention_layer/Squeeze
attention_layer/SoftmaxSoftmax attention_layer/Squeeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
attention_layer/Softmax¯
-attention_layer/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP   2/
-attention_layer/TensorArrayV2_1/element_shapeö
attention_layer/TensorArrayV2_1TensorListReserve6attention_layer/TensorArrayV2_1/element_shape:output:0&attention_layer/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
attention_layer/TensorArrayV2_1n
attention_layer/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
attention_layer/time
(attention_layer/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(attention_layer/while/maximum_iterations
"attention_layer/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2$
"attention_layer/while/loop_counter¦
attention_layer/whileWhile+attention_layer/while/loop_counter:output:01attention_layer/while/maximum_iterations:output:0attention_layer/time:output:0(attention_layer/TensorArrayV2_1:handle:0attention_layer/Sum_1:output:0&attention_layer/strided_slice:output:0Gattention_layer/TensorArrayUnstack/TensorListFromTensor:output_handle:0inputs_1/attention_layer_shape_2_readvariableop_resource0attention_layer_matmul_1_readvariableop_resource/attention_layer_shape_4_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*Q
_output_shapes?
=: : : : :ÿÿÿÿÿÿÿÿÿP: : :ÿÿÿÿÿÿÿÿÿP¬: : : *%
_read_only_resource_inputs
	
*,
body$R"
 attention_layer_while_body_61903*,
cond$R"
 attention_layer_while_cond_61902*P
output_shapes?
=: : : : :ÿÿÿÿÿÿÿÿÿP: : :ÿÿÿÿÿÿÿÿÿP¬: : : *
parallel_iterations 2
attention_layer/whileÕ
@attention_layer/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP   2B
@attention_layer/TensorArrayV2Stack/TensorListStack/element_shape±
2attention_layer/TensorArrayV2Stack/TensorListStackTensorListStackattention_layer/while:output:3Iattention_layer/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP*
element_dtype024
2attention_layer/TensorArrayV2Stack/TensorListStack¡
%attention_layer/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2'
%attention_layer/strided_slice_2/stack
'attention_layer/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'attention_layer/strided_slice_2/stack_1
'attention_layer/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_2/stack_2ú
attention_layer/strided_slice_2StridedSlice;attention_layer/TensorArrayV2Stack/TensorListStack:tensor:0.attention_layer/strided_slice_2/stack:output:00attention_layer/strided_slice_2/stack_1:output:00attention_layer/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
shrink_axis_mask2!
attention_layer/strided_slice_2
 attention_layer/transpose_3/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 attention_layer/transpose_3/permî
attention_layer/transpose_3	Transpose;attention_layer/TensorArrayV2Stack/TensorListStack:tensor:0)attention_layer/transpose_3/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP2
attention_layer/transpose_3
 attention_layer/transpose_4/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 attention_layer/transpose_4/permÒ
attention_layer/transpose_4	Transposeattention_layer/transpose_3:y:0)attention_layer/transpose_4/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP2
attention_layer/transpose_4
attention_layer/Shape_5Shapeattention_layer/transpose_4:y:0*
T0*
_output_shapes
:2
attention_layer/Shape_5
%attention_layer/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%attention_layer/strided_slice_3/stack
'attention_layer/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_3/stack_1
'attention_layer/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_3/stack_2Î
attention_layer/strided_slice_3StridedSlice attention_layer/Shape_5:output:0.attention_layer/strided_slice_3/stack:output:00attention_layer/strided_slice_3/stack_1:output:00attention_layer/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
attention_layer/strided_slice_3©
-attention_layer/TensorArrayV2_3/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2/
-attention_layer/TensorArrayV2_3/element_shapeø
attention_layer/TensorArrayV2_3TensorListReserve6attention_layer/TensorArrayV2_3/element_shape:output:0(attention_layer/strided_slice_3:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
attention_layer/TensorArrayV2_3ã
Gattention_layer/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP   2I
Gattention_layer/TensorArrayUnstack_1/TensorListFromTensor/element_shapeÀ
9attention_layer/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensorattention_layer/transpose_4:y:0Pattention_layer/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02;
9attention_layer/TensorArrayUnstack_1/TensorListFromTensor
%attention_layer/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%attention_layer/strided_slice_4/stack
'attention_layer/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_4/stack_1
'attention_layer/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_4/stack_2Þ
attention_layer/strided_slice_4StridedSliceattention_layer/transpose_4:y:0.attention_layer/strided_slice_4/stack:output:00attention_layer/strided_slice_4/stack_1:output:00attention_layer/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
shrink_axis_mask2!
attention_layer/strided_slice_4
 attention_layer/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 attention_layer/ExpandDims_1/dimÕ
attention_layer/ExpandDims_1
ExpandDims(attention_layer/strided_slice_4:output:0)attention_layer/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
attention_layer/ExpandDims_1
attention_layer/mulMulinputs_1%attention_layer/ExpandDims_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
attention_layer/mul
'attention_layer/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2)
'attention_layer/Sum_2/reduction_indices³
attention_layer/Sum_2Sumattention_layer/mul:z:00attention_layer/Sum_2/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
attention_layer/Sum_2¯
-attention_layer/TensorArrayV2_4/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2/
-attention_layer/TensorArrayV2_4/element_shapeø
attention_layer/TensorArrayV2_4TensorListReserve6attention_layer/TensorArrayV2_4/element_shape:output:0(attention_layer/strided_slice_3:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
attention_layer/TensorArrayV2_4r
attention_layer/time_1Const*
_output_shapes
: *
dtype0*
value	B : 2
attention_layer/time_1£
*attention_layer/while_1/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2,
*attention_layer/while_1/maximum_iterations
$attention_layer/while_1/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2&
$attention_layer/while_1/loop_counter
attention_layer/while_1StatelessWhile-attention_layer/while_1/loop_counter:output:03attention_layer/while_1/maximum_iterations:output:0attention_layer/time_1:output:0(attention_layer/TensorArrayV2_4:handle:0attention_layer/Sum:output:0(attention_layer/strided_slice_3:output:0Iattention_layer/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0inputs_1*
T

2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ¬: : :ÿÿÿÿÿÿÿÿÿP¬* 
_read_only_resource_inputs
 *.
body&R$
"attention_layer_while_1_body_62035*.
cond&R$
"attention_layer_while_1_cond_62034*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ¬: : :ÿÿÿÿÿÿÿÿÿP¬*
parallel_iterations 2
attention_layer/while_1Ù
Battention_layer/TensorArrayV2Stack_1/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2D
Battention_layer/TensorArrayV2Stack_1/TensorListStack/element_shapeº
4attention_layer/TensorArrayV2Stack_1/TensorListStackTensorListStack attention_layer/while_1:output:3Kattention_layer/TensorArrayV2Stack_1/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬*
element_dtype026
4attention_layer/TensorArrayV2Stack_1/TensorListStack¡
%attention_layer/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2'
%attention_layer/strided_slice_5/stack
'attention_layer/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'attention_layer/strided_slice_5/stack_1
'attention_layer/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'attention_layer/strided_slice_5/stack_2ý
attention_layer/strided_slice_5StridedSlice=attention_layer/TensorArrayV2Stack_1/TensorListStack:tensor:0.attention_layer/strided_slice_5/stack:output:00attention_layer/strided_slice_5/stack_1:output:00attention_layer/strided_slice_5/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
shrink_axis_mask2!
attention_layer/strided_slice_5
 attention_layer/transpose_5/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 attention_layer/transpose_5/permñ
attention_layer/transpose_5	Transpose=attention_layer/TensorArrayV2Stack_1/TensorListStack:tensor:0)attention_layer/transpose_5/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2
attention_layer/transpose_5j
concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/concat/axisÉ
concat/concatConcatV2lstm_3/transpose_1:y:0attention_layer/transpose_5:y:0concat/concat/axis:output:0*
N*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ2
concat/concatv
time_distributed/ShapeShapeconcat/concat:output:0*
T0*
_output_shapes
:2
time_distributed/Shape
$time_distributed/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2&
$time_distributed/strided_slice/stack
&time_distributed/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&time_distributed/strided_slice/stack_1
&time_distributed/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&time_distributed/strided_slice/stack_2È
time_distributed/strided_sliceStridedSlicetime_distributed/Shape:output:0-time_distributed/strided_slice/stack:output:0/time_distributed/strided_slice/stack_1:output:0/time_distributed/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
time_distributed/strided_slice
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿX  2 
time_distributed/Reshape/shape³
time_distributed/ReshapeReshapeconcat/concat:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
time_distributed/ReshapeÔ
,time_distributed/dense/MatMul/ReadVariableOpReadVariableOp5time_distributed_dense_matmul_readvariableop_resource* 
_output_shapes
:
Øíb*
dtype02.
,time_distributed/dense/MatMul/ReadVariableOpÔ
time_distributed/dense/MatMulMatMul!time_distributed/Reshape:output:04time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb2
time_distributed/dense/MatMulÒ
-time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOp6time_distributed_dense_biasadd_readvariableop_resource*
_output_shapes	
:íb*
dtype02/
-time_distributed/dense/BiasAdd/ReadVariableOpÞ
time_distributed/dense/BiasAddBiasAdd'time_distributed/dense/MatMul:product:05time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb2 
time_distributed/dense/BiasAdd§
time_distributed/dense/SoftmaxSoftmax'time_distributed/dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb2 
time_distributed/dense/Softmax
"time_distributed/Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"time_distributed/Reshape_1/shape/0
"time_distributed/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :íb2$
"time_distributed/Reshape_1/shape/2ý
 time_distributed/Reshape_1/shapePack+time_distributed/Reshape_1/shape/0:output:0'time_distributed/strided_slice:output:0+time_distributed/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2"
 time_distributed/Reshape_1/shapeØ
time_distributed/Reshape_1Reshape(time_distributed/dense/Softmax:softmax:0)time_distributed/Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb2
time_distributed/Reshape_1
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿX  2"
 time_distributed/Reshape_2/shape¹
time_distributed/Reshape_2Reshapeconcat/concat:output:0)time_distributed/Reshape_2/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
time_distributed/Reshape_2
IdentityIdentity#time_distributed/Reshape_1:output:0(^attention_layer/MatMul_1/ReadVariableOp+^attention_layer/transpose_1/ReadVariableOp+^attention_layer/transpose_2/ReadVariableOp^attention_layer/while^embedding_1/embedding_lookup"^lstm_3/lstm_cell_3/ReadVariableOp$^lstm_3/lstm_cell_3/ReadVariableOp_1$^lstm_3/lstm_cell_3/ReadVariableOp_2$^lstm_3/lstm_cell_3/ReadVariableOp_3(^lstm_3/lstm_cell_3/split/ReadVariableOp*^lstm_3/lstm_cell_3/split_1/ReadVariableOp^lstm_3/while.^time_distributed/dense/BiasAdd/ReadVariableOp-^time_distributed/dense/MatMul/ReadVariableOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb2

Identity

Identity_1Identitylstm_3/while:output:4(^attention_layer/MatMul_1/ReadVariableOp+^attention_layer/transpose_1/ReadVariableOp+^attention_layer/transpose_2/ReadVariableOp^attention_layer/while^embedding_1/embedding_lookup"^lstm_3/lstm_cell_3/ReadVariableOp$^lstm_3/lstm_cell_3/ReadVariableOp_1$^lstm_3/lstm_cell_3/ReadVariableOp_2$^lstm_3/lstm_cell_3/ReadVariableOp_3(^lstm_3/lstm_cell_3/split/ReadVariableOp*^lstm_3/lstm_cell_3/split_1/ReadVariableOp^lstm_3/while.^time_distributed/dense/BiasAdd/ReadVariableOp-^time_distributed/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1

Identity_2Identitylstm_3/while:output:5(^attention_layer/MatMul_1/ReadVariableOp+^attention_layer/transpose_1/ReadVariableOp+^attention_layer/transpose_2/ReadVariableOp^attention_layer/while^embedding_1/embedding_lookup"^lstm_3/lstm_cell_3/ReadVariableOp$^lstm_3/lstm_cell_3/ReadVariableOp_1$^lstm_3/lstm_cell_3/ReadVariableOp_2$^lstm_3/lstm_cell_3/ReadVariableOp_3(^lstm_3/lstm_cell_3/split/ReadVariableOp*^lstm_3/lstm_cell_3/split_1/ReadVariableOp^lstm_3/while.^time_distributed/dense/BiasAdd/ReadVariableOp-^time_distributed/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapesp
n:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿP¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : : : : : 2R
'attention_layer/MatMul_1/ReadVariableOp'attention_layer/MatMul_1/ReadVariableOp2X
*attention_layer/transpose_1/ReadVariableOp*attention_layer/transpose_1/ReadVariableOp2X
*attention_layer/transpose_2/ReadVariableOp*attention_layer/transpose_2/ReadVariableOp2.
attention_layer/whileattention_layer/while2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2F
!lstm_3/lstm_cell_3/ReadVariableOp!lstm_3/lstm_cell_3/ReadVariableOp2J
#lstm_3/lstm_cell_3/ReadVariableOp_1#lstm_3/lstm_cell_3/ReadVariableOp_12J
#lstm_3/lstm_cell_3/ReadVariableOp_2#lstm_3/lstm_cell_3/ReadVariableOp_22J
#lstm_3/lstm_cell_3/ReadVariableOp_3#lstm_3/lstm_cell_3/ReadVariableOp_32R
'lstm_3/lstm_cell_3/split/ReadVariableOp'lstm_3/lstm_cell_3/split/ReadVariableOp2V
)lstm_3/lstm_cell_3/split_1/ReadVariableOp)lstm_3/lstm_cell_3/split_1/ReadVariableOp2
lstm_3/whilelstm_3/while2^
-time_distributed/dense/BiasAdd/ReadVariableOp-time_distributed/dense/BiasAdd/ReadVariableOp2\
,time_distributed/dense/MatMul/ReadVariableOp,time_distributed/dense/MatMul/ReadVariableOp:Z V
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
"
_user_specified_name
inputs/2:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
"
_user_specified_name
inputs/3
Ó
´
'__inference_model_2_layer_call_fn_62829
inputs_0
inputs_1
inputs_2
inputs_3
unknown:	íbd
	unknown_0:	d°	
	unknown_1:	°	
	unknown_2:
¬°	
	unknown_3:
¬¬
	unknown_4:
¬¬
	unknown_5:	¬
	unknown_6:
Øíb
	unknown_7:	íb
identity

identity_1

identity_2¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_614302
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapesp
n:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿP¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
"
_user_specified_name
inputs/2:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
"
_user_specified_name
inputs/3
ßô
	
while_body_63280
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_3_split_readvariableop_resource_0:	d°	B
3while_lstm_cell_3_split_1_readvariableop_resource_0:	°	?
+while_lstm_cell_3_readvariableop_resource_0:
¬°	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_3_split_readvariableop_resource:	d°	@
1while_lstm_cell_3_split_1_readvariableop_resource:	°	=
)while_lstm_cell_3_readvariableop_resource:
¬°	¢ while/lstm_cell_3/ReadVariableOp¢"while/lstm_cell_3/ReadVariableOp_1¢"while/lstm_cell_3/ReadVariableOp_2¢"while/lstm_cell_3/ReadVariableOp_3¢&while/lstm_cell_3/split/ReadVariableOp¢(while/lstm_cell_3/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¦
!while/lstm_cell_3/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/ones_like/Shape
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_3/ones_like/ConstÌ
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/ones_like
while/lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2!
while/lstm_cell_3/dropout/ConstÇ
while/lstm_cell_3/dropout/MulMul$while/lstm_cell_3/ones_like:output:0(while/lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/dropout/Mul
while/lstm_cell_3/dropout/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_3/dropout/Shape
6while/lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2Íl28
6while/lstm_cell_3/dropout/random_uniform/RandomUniform
(while/lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2*
(while/lstm_cell_3/dropout/GreaterEqual/y
&while/lstm_cell_3/dropout/GreaterEqualGreaterEqual?while/lstm_cell_3/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2(
&while/lstm_cell_3/dropout/GreaterEqualµ
while/lstm_cell_3/dropout/CastCast*while/lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
while/lstm_cell_3/dropout/CastÂ
while/lstm_cell_3/dropout/Mul_1Mul!while/lstm_cell_3/dropout/Mul:z:0"while/lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
while/lstm_cell_3/dropout/Mul_1
!while/lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2#
!while/lstm_cell_3/dropout_1/ConstÍ
while/lstm_cell_3/dropout_1/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
while/lstm_cell_3/dropout_1/Mul
!while/lstm_cell_3/dropout_1/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_1/Shape
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2®2:
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2,
*while/lstm_cell_3/dropout_1/GreaterEqual/y
(while/lstm_cell_3/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2*
(while/lstm_cell_3/dropout_1/GreaterEqual»
 while/lstm_cell_3/dropout_1/CastCast,while/lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 while/lstm_cell_3/dropout_1/CastÊ
!while/lstm_cell_3/dropout_1/Mul_1Mul#while/lstm_cell_3/dropout_1/Mul:z:0$while/lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!while/lstm_cell_3/dropout_1/Mul_1
!while/lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2#
!while/lstm_cell_3/dropout_2/ConstÍ
while/lstm_cell_3/dropout_2/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
while/lstm_cell_3/dropout_2/Mul
!while/lstm_cell_3/dropout_2/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_2/Shape
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2Ôó¡2:
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2,
*while/lstm_cell_3/dropout_2/GreaterEqual/y
(while/lstm_cell_3/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2*
(while/lstm_cell_3/dropout_2/GreaterEqual»
 while/lstm_cell_3/dropout_2/CastCast,while/lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 while/lstm_cell_3/dropout_2/CastÊ
!while/lstm_cell_3/dropout_2/Mul_1Mul#while/lstm_cell_3/dropout_2/Mul:z:0$while/lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!while/lstm_cell_3/dropout_2/Mul_1
!while/lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2#
!while/lstm_cell_3/dropout_3/ConstÍ
while/lstm_cell_3/dropout_3/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
while/lstm_cell_3/dropout_3/Mul
!while/lstm_cell_3/dropout_3/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_3/Shape
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2Òí®2:
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2,
*while/lstm_cell_3/dropout_3/GreaterEqual/y
(while/lstm_cell_3/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2*
(while/lstm_cell_3/dropout_3/GreaterEqual»
 while/lstm_cell_3/dropout_3/CastCast,while/lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 while/lstm_cell_3/dropout_3/CastÊ
!while/lstm_cell_3/dropout_3/Mul_1Mul#while/lstm_cell_3/dropout_3/Mul:z:0$while/lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!while/lstm_cell_3/dropout_3/Mul_1
#while/lstm_cell_3/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_3/ones_like_1/Shape
#while/lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_3/ones_like_1/ConstÕ
while/lstm_cell_3/ones_like_1Fill,while/lstm_cell_3/ones_like_1/Shape:output:0,while/lstm_cell_3/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/ones_like_1
!while/lstm_cell_3/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_3/dropout_4/ConstÐ
while/lstm_cell_3/dropout_4/MulMul&while/lstm_cell_3/ones_like_1:output:0*while/lstm_cell_3/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2!
while/lstm_cell_3/dropout_4/Mul
!while/lstm_cell_3/dropout_4/ShapeShape&while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_4/Shape
8while/lstm_cell_3/dropout_4/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2ÿØ2:
8while/lstm_cell_3/dropout_4/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_3/dropout_4/GreaterEqual/y
(while/lstm_cell_3/dropout_4/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_4/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2*
(while/lstm_cell_3/dropout_4/GreaterEqual¼
 while/lstm_cell_3/dropout_4/CastCast,while/lstm_cell_3/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 while/lstm_cell_3/dropout_4/CastË
!while/lstm_cell_3/dropout_4/Mul_1Mul#while/lstm_cell_3/dropout_4/Mul:z:0$while/lstm_cell_3/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!while/lstm_cell_3/dropout_4/Mul_1
!while/lstm_cell_3/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_3/dropout_5/ConstÐ
while/lstm_cell_3/dropout_5/MulMul&while/lstm_cell_3/ones_like_1:output:0*while/lstm_cell_3/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2!
while/lstm_cell_3/dropout_5/Mul
!while/lstm_cell_3/dropout_5/ShapeShape&while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_5/Shape
8while/lstm_cell_3/dropout_5/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2§?2:
8while/lstm_cell_3/dropout_5/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_3/dropout_5/GreaterEqual/y
(while/lstm_cell_3/dropout_5/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_5/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2*
(while/lstm_cell_3/dropout_5/GreaterEqual¼
 while/lstm_cell_3/dropout_5/CastCast,while/lstm_cell_3/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 while/lstm_cell_3/dropout_5/CastË
!while/lstm_cell_3/dropout_5/Mul_1Mul#while/lstm_cell_3/dropout_5/Mul:z:0$while/lstm_cell_3/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!while/lstm_cell_3/dropout_5/Mul_1
!while/lstm_cell_3/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_3/dropout_6/ConstÐ
while/lstm_cell_3/dropout_6/MulMul&while/lstm_cell_3/ones_like_1:output:0*while/lstm_cell_3/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2!
while/lstm_cell_3/dropout_6/Mul
!while/lstm_cell_3/dropout_6/ShapeShape&while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_6/Shape
8while/lstm_cell_3/dropout_6/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2êô2:
8while/lstm_cell_3/dropout_6/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_3/dropout_6/GreaterEqual/y
(while/lstm_cell_3/dropout_6/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_6/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2*
(while/lstm_cell_3/dropout_6/GreaterEqual¼
 while/lstm_cell_3/dropout_6/CastCast,while/lstm_cell_3/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 while/lstm_cell_3/dropout_6/CastË
!while/lstm_cell_3/dropout_6/Mul_1Mul#while/lstm_cell_3/dropout_6/Mul:z:0$while/lstm_cell_3/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!while/lstm_cell_3/dropout_6/Mul_1
!while/lstm_cell_3/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_3/dropout_7/ConstÐ
while/lstm_cell_3/dropout_7/MulMul&while/lstm_cell_3/ones_like_1:output:0*while/lstm_cell_3/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2!
while/lstm_cell_3/dropout_7/Mul
!while/lstm_cell_3/dropout_7/ShapeShape&while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_7/Shape
8while/lstm_cell_3/dropout_7/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2óùí2:
8while/lstm_cell_3/dropout_7/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_3/dropout_7/GreaterEqual/y
(while/lstm_cell_3/dropout_7/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_7/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2*
(while/lstm_cell_3/dropout_7/GreaterEqual¼
 while/lstm_cell_3/dropout_7/CastCast,while/lstm_cell_3/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 while/lstm_cell_3/dropout_7/CastË
!while/lstm_cell_3/dropout_7/Mul_1Mul#while/lstm_cell_3/dropout_7/Mul:z:0$while/lstm_cell_3/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!while/lstm_cell_3/dropout_7/Mul_1¾
while/lstm_cell_3/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/mulÄ
while/lstm_cell_3/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_3/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/mul_1Ä
while/lstm_cell_3/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_3/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/mul_2Ä
while/lstm_cell_3/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_3/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/mul_3
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dimÃ
&while/lstm_cell_3/split/ReadVariableOpReadVariableOp1while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	d°	*
dtype02(
&while/lstm_cell_3/split/ReadVariableOpó
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0.while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d¬:	d¬:	d¬:	d¬*
	num_split2
while/lstm_cell_3/split®
while/lstm_cell_3/MatMulMatMulwhile/lstm_cell_3/mul:z:0 while/lstm_cell_3/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul´
while/lstm_cell_3/MatMul_1MatMulwhile/lstm_cell_3/mul_1:z:0 while/lstm_cell_3/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_1´
while/lstm_cell_3/MatMul_2MatMulwhile/lstm_cell_3/mul_2:z:0 while/lstm_cell_3/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_2´
while/lstm_cell_3/MatMul_3MatMulwhile/lstm_cell_3/mul_3:z:0 while/lstm_cell_3/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_3
#while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_3/split_1/split_dimÅ
(while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:°	*
dtype02*
(while/lstm_cell_3/split_1/ReadVariableOpë
while/lstm_cell_3/split_1Split,while/lstm_cell_3/split_1/split_dim:output:00while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:¬:¬:¬:¬*
	num_split2
while/lstm_cell_3/split_1¼
while/lstm_cell_3/BiasAddBiasAdd"while/lstm_cell_3/MatMul:product:0"while/lstm_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/BiasAddÂ
while/lstm_cell_3/BiasAdd_1BiasAdd$while/lstm_cell_3/MatMul_1:product:0"while/lstm_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/BiasAdd_1Â
while/lstm_cell_3/BiasAdd_2BiasAdd$while/lstm_cell_3/MatMul_2:product:0"while/lstm_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/BiasAdd_2Â
while/lstm_cell_3/BiasAdd_3BiasAdd$while/lstm_cell_3/MatMul_3:product:0"while/lstm_cell_3/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/BiasAdd_3¨
while/lstm_cell_3/mul_4Mulwhile_placeholder_2%while/lstm_cell_3/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_4¨
while/lstm_cell_3/mul_5Mulwhile_placeholder_2%while/lstm_cell_3/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_5¨
while/lstm_cell_3/mul_6Mulwhile_placeholder_2%while/lstm_cell_3/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_6¨
while/lstm_cell_3/mul_7Mulwhile_placeholder_2%while/lstm_cell_3/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_7²
 while/lstm_cell_3/ReadVariableOpReadVariableOp+while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02"
 while/lstm_cell_3/ReadVariableOp
%while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_3/strided_slice/stack£
'while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2)
'while/lstm_cell_3/strided_slice/stack_1£
'while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_3/strided_slice/stack_2ê
while/lstm_cell_3/strided_sliceStridedSlice(while/lstm_cell_3/ReadVariableOp:value:0.while/lstm_cell_3/strided_slice/stack:output:00while/lstm_cell_3/strided_slice/stack_1:output:00while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2!
while/lstm_cell_3/strided_slice¼
while/lstm_cell_3/MatMul_4MatMulwhile/lstm_cell_3/mul_4:z:0(while/lstm_cell_3/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_4´
while/lstm_cell_3/addAddV2"while/lstm_cell_3/BiasAdd:output:0$while/lstm_cell_3/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add
while/lstm_cell_3/SigmoidSigmoidwhile/lstm_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Sigmoid¶
"while/lstm_cell_3/ReadVariableOp_1ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02$
"while/lstm_cell_3/ReadVariableOp_1£
'while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2)
'while/lstm_cell_3/strided_slice_1/stack§
)while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  2+
)while/lstm_cell_3/strided_slice_1/stack_1§
)while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_1/stack_2ö
!while/lstm_cell_3/strided_slice_1StridedSlice*while/lstm_cell_3/ReadVariableOp_1:value:00while/lstm_cell_3/strided_slice_1/stack:output:02while/lstm_cell_3/strided_slice_1/stack_1:output:02while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_1¾
while/lstm_cell_3/MatMul_5MatMulwhile/lstm_cell_3/mul_5:z:0*while/lstm_cell_3/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_5º
while/lstm_cell_3/add_1AddV2$while/lstm_cell_3/BiasAdd_1:output:0$while/lstm_cell_3/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add_1
while/lstm_cell_3/Sigmoid_1Sigmoidwhile/lstm_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Sigmoid_1¢
while/lstm_cell_3/mul_8Mulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_8¶
"while/lstm_cell_3/ReadVariableOp_2ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02$
"while/lstm_cell_3/ReadVariableOp_2£
'while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  2)
'while/lstm_cell_3/strided_slice_2/stack§
)while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_2/stack_1§
)while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_2/stack_2ö
!while/lstm_cell_3/strided_slice_2StridedSlice*while/lstm_cell_3/ReadVariableOp_2:value:00while/lstm_cell_3/strided_slice_2/stack:output:02while/lstm_cell_3/strided_slice_2/stack_1:output:02while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_2¾
while/lstm_cell_3/MatMul_6MatMulwhile/lstm_cell_3/mul_6:z:0*while/lstm_cell_3/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_6º
while/lstm_cell_3/add_2AddV2$while/lstm_cell_3/BiasAdd_2:output:0$while/lstm_cell_3/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add_2
while/lstm_cell_3/TanhTanhwhile/lstm_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Tanh§
while/lstm_cell_3/mul_9Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_9¨
while/lstm_cell_3/add_3AddV2while/lstm_cell_3/mul_8:z:0while/lstm_cell_3/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add_3¶
"while/lstm_cell_3/ReadVariableOp_3ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02$
"while/lstm_cell_3/ReadVariableOp_3£
'while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_3/strided_slice_3/stack§
)while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_3/strided_slice_3/stack_1§
)while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_3/stack_2ö
!while/lstm_cell_3/strided_slice_3StridedSlice*while/lstm_cell_3/ReadVariableOp_3:value:00while/lstm_cell_3/strided_slice_3/stack:output:02while/lstm_cell_3/strided_slice_3/stack_1:output:02while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_3¾
while/lstm_cell_3/MatMul_7MatMulwhile/lstm_cell_3/mul_7:z:0*while/lstm_cell_3/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_7º
while/lstm_cell_3/add_4AddV2$while/lstm_cell_3/BiasAdd_3:output:0$while/lstm_cell_3/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add_4
while/lstm_cell_3/Sigmoid_2Sigmoidwhile/lstm_cell_3/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Sigmoid_2
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Tanh_1­
while/lstm_cell_3/mul_10Mulwhile/lstm_cell_3/Sigmoid_2:y:0while/lstm_cell_3/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_10à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ä
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity×
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Æ
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ó
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ç
while/Identity_4Identitywhile/lstm_cell_3/mul_10:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/Identity_4æ
while/Identity_5Identitywhile/lstm_cell_3/add_3:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_3_readvariableop_resource+while_lstm_cell_3_readvariableop_resource_0"h
1while_lstm_cell_3_split_1_readvariableop_resource3while_lstm_cell_3_split_1_readvariableop_resource_0"d
/while_lstm_cell_3_split_readvariableop_resource1while_lstm_cell_3_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : 2D
 while/lstm_cell_3/ReadVariableOp while/lstm_cell_3/ReadVariableOp2H
"while/lstm_cell_3/ReadVariableOp_1"while/lstm_cell_3/ReadVariableOp_12H
"while/lstm_cell_3/ReadVariableOp_2"while/lstm_cell_3/ReadVariableOp_22H
"while/lstm_cell_3/ReadVariableOp_3"while/lstm_cell_3/ReadVariableOp_32P
&while/lstm_cell_3/split/ReadVariableOp&while/lstm_cell_3/split/ReadVariableOp2T
(while/lstm_cell_3/split_1/ReadVariableOp(while/lstm_cell_3/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ¬:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
: 
´
m
A__inference_concat_layer_call_and_return_conditional_losses_64429
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ2
concatq
IdentityIdentityconcat:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬
"
_user_specified_name
inputs/0:_[
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬
"
_user_specified_name
inputs/1
î¤

lstm_3_while_body_61696*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3'
#lstm_3_while_lstm_3_strided_slice_0e
alstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0K
8lstm_3_while_lstm_cell_3_split_readvariableop_resource_0:	d°	I
:lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_0:	°	F
2lstm_3_while_lstm_cell_3_readvariableop_resource_0:
¬°	
lstm_3_while_identity
lstm_3_while_identity_1
lstm_3_while_identity_2
lstm_3_while_identity_3
lstm_3_while_identity_4
lstm_3_while_identity_5%
!lstm_3_while_lstm_3_strided_slicec
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensorI
6lstm_3_while_lstm_cell_3_split_readvariableop_resource:	d°	G
8lstm_3_while_lstm_cell_3_split_1_readvariableop_resource:	°	D
0lstm_3_while_lstm_cell_3_readvariableop_resource:
¬°	¢'lstm_3/while/lstm_cell_3/ReadVariableOp¢)lstm_3/while/lstm_cell_3/ReadVariableOp_1¢)lstm_3/while/lstm_cell_3/ReadVariableOp_2¢)lstm_3/while/lstm_cell_3/ReadVariableOp_3¢-lstm_3/while/lstm_cell_3/split/ReadVariableOp¢/lstm_3/while/lstm_cell_3/split_1/ReadVariableOpÑ
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2@
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeý
0lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0lstm_3_while_placeholderGlstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype022
0lstm_3/while/TensorArrayV2Read/TensorListGetItem»
(lstm_3/while/lstm_cell_3/ones_like/ShapeShape7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2*
(lstm_3/while/lstm_cell_3/ones_like/Shape
(lstm_3/while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(lstm_3/while/lstm_cell_3/ones_like/Constè
"lstm_3/while/lstm_cell_3/ones_likeFill1lstm_3/while/lstm_cell_3/ones_like/Shape:output:01lstm_3/while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_3/while/lstm_cell_3/ones_like¢
*lstm_3/while/lstm_cell_3/ones_like_1/ShapeShapelstm_3_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_3/while/lstm_cell_3/ones_like_1/Shape
*lstm_3/while/lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_3/while/lstm_cell_3/ones_like_1/Constñ
$lstm_3/while/lstm_cell_3/ones_like_1Fill3lstm_3/while/lstm_cell_3/ones_like_1/Shape:output:03lstm_3/while/lstm_cell_3/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2&
$lstm_3/while/lstm_cell_3/ones_like_1Û
lstm_3/while/lstm_cell_3/mulMul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_3/while/lstm_cell_3/mulß
lstm_3/while/lstm_cell_3/mul_1Mul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
lstm_3/while/lstm_cell_3/mul_1ß
lstm_3/while/lstm_cell_3/mul_2Mul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
lstm_3/while/lstm_cell_3/mul_2ß
lstm_3/while/lstm_cell_3/mul_3Mul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
lstm_3/while/lstm_cell_3/mul_3
(lstm_3/while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_3/while/lstm_cell_3/split/split_dimØ
-lstm_3/while/lstm_cell_3/split/ReadVariableOpReadVariableOp8lstm_3_while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	d°	*
dtype02/
-lstm_3/while/lstm_cell_3/split/ReadVariableOp
lstm_3/while/lstm_cell_3/splitSplit1lstm_3/while/lstm_cell_3/split/split_dim:output:05lstm_3/while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d¬:	d¬:	d¬:	d¬*
	num_split2 
lstm_3/while/lstm_cell_3/splitÊ
lstm_3/while/lstm_cell_3/MatMulMatMul lstm_3/while/lstm_cell_3/mul:z:0'lstm_3/while/lstm_cell_3/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2!
lstm_3/while/lstm_cell_3/MatMulÐ
!lstm_3/while/lstm_cell_3/MatMul_1MatMul"lstm_3/while/lstm_cell_3/mul_1:z:0'lstm_3/while/lstm_cell_3/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!lstm_3/while/lstm_cell_3/MatMul_1Ð
!lstm_3/while/lstm_cell_3/MatMul_2MatMul"lstm_3/while/lstm_cell_3/mul_2:z:0'lstm_3/while/lstm_cell_3/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!lstm_3/while/lstm_cell_3/MatMul_2Ð
!lstm_3/while/lstm_cell_3/MatMul_3MatMul"lstm_3/while/lstm_cell_3/mul_3:z:0'lstm_3/while/lstm_cell_3/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!lstm_3/while/lstm_cell_3/MatMul_3
*lstm_3/while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*lstm_3/while/lstm_cell_3/split_1/split_dimÚ
/lstm_3/while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp:lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:°	*
dtype021
/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp
 lstm_3/while/lstm_cell_3/split_1Split3lstm_3/while/lstm_cell_3/split_1/split_dim:output:07lstm_3/while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:¬:¬:¬:¬*
	num_split2"
 lstm_3/while/lstm_cell_3/split_1Ø
 lstm_3/while/lstm_cell_3/BiasAddBiasAdd)lstm_3/while/lstm_cell_3/MatMul:product:0)lstm_3/while/lstm_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 lstm_3/while/lstm_cell_3/BiasAddÞ
"lstm_3/while/lstm_cell_3/BiasAdd_1BiasAdd+lstm_3/while/lstm_cell_3/MatMul_1:product:0)lstm_3/while/lstm_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_3/while/lstm_cell_3/BiasAdd_1Þ
"lstm_3/while/lstm_cell_3/BiasAdd_2BiasAdd+lstm_3/while/lstm_cell_3/MatMul_2:product:0)lstm_3/while/lstm_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_3/while/lstm_cell_3/BiasAdd_2Þ
"lstm_3/while/lstm_cell_3/BiasAdd_3BiasAdd+lstm_3/while/lstm_cell_3/MatMul_3:product:0)lstm_3/while/lstm_cell_3/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_3/while/lstm_cell_3/BiasAdd_3Å
lstm_3/while/lstm_cell_3/mul_4Mullstm_3_while_placeholder_2-lstm_3/while/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
lstm_3/while/lstm_cell_3/mul_4Å
lstm_3/while/lstm_cell_3/mul_5Mullstm_3_while_placeholder_2-lstm_3/while/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
lstm_3/while/lstm_cell_3/mul_5Å
lstm_3/while/lstm_cell_3/mul_6Mullstm_3_while_placeholder_2-lstm_3/while/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
lstm_3/while/lstm_cell_3/mul_6Å
lstm_3/while/lstm_cell_3/mul_7Mullstm_3_while_placeholder_2-lstm_3/while/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
lstm_3/while/lstm_cell_3/mul_7Ç
'lstm_3/while/lstm_cell_3/ReadVariableOpReadVariableOp2lstm_3_while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02)
'lstm_3/while/lstm_cell_3/ReadVariableOp­
,lstm_3/while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_3/while/lstm_cell_3/strided_slice/stack±
.lstm_3/while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  20
.lstm_3/while/lstm_cell_3/strided_slice/stack_1±
.lstm_3/while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_3/while/lstm_cell_3/strided_slice/stack_2
&lstm_3/while/lstm_cell_3/strided_sliceStridedSlice/lstm_3/while/lstm_cell_3/ReadVariableOp:value:05lstm_3/while/lstm_cell_3/strided_slice/stack:output:07lstm_3/while/lstm_cell_3/strided_slice/stack_1:output:07lstm_3/while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2(
&lstm_3/while/lstm_cell_3/strided_sliceØ
!lstm_3/while/lstm_cell_3/MatMul_4MatMul"lstm_3/while/lstm_cell_3/mul_4:z:0/lstm_3/while/lstm_cell_3/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!lstm_3/while/lstm_cell_3/MatMul_4Ð
lstm_3/while/lstm_cell_3/addAddV2)lstm_3/while/lstm_cell_3/BiasAdd:output:0+lstm_3/while/lstm_cell_3/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/while/lstm_cell_3/add¤
 lstm_3/while/lstm_cell_3/SigmoidSigmoid lstm_3/while/lstm_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 lstm_3/while/lstm_cell_3/SigmoidË
)lstm_3/while/lstm_cell_3/ReadVariableOp_1ReadVariableOp2lstm_3_while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02+
)lstm_3/while/lstm_cell_3/ReadVariableOp_1±
.lstm_3/while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  20
.lstm_3/while/lstm_cell_3/strided_slice_1/stackµ
0lstm_3/while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  22
0lstm_3/while/lstm_cell_3/strided_slice_1/stack_1µ
0lstm_3/while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_3/while/lstm_cell_3/strided_slice_1/stack_2 
(lstm_3/while/lstm_cell_3/strided_slice_1StridedSlice1lstm_3/while/lstm_cell_3/ReadVariableOp_1:value:07lstm_3/while/lstm_cell_3/strided_slice_1/stack:output:09lstm_3/while/lstm_cell_3/strided_slice_1/stack_1:output:09lstm_3/while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2*
(lstm_3/while/lstm_cell_3/strided_slice_1Ú
!lstm_3/while/lstm_cell_3/MatMul_5MatMul"lstm_3/while/lstm_cell_3/mul_5:z:01lstm_3/while/lstm_cell_3/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!lstm_3/while/lstm_cell_3/MatMul_5Ö
lstm_3/while/lstm_cell_3/add_1AddV2+lstm_3/while/lstm_cell_3/BiasAdd_1:output:0+lstm_3/while/lstm_cell_3/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
lstm_3/while/lstm_cell_3/add_1ª
"lstm_3/while/lstm_cell_3/Sigmoid_1Sigmoid"lstm_3/while/lstm_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_3/while/lstm_cell_3/Sigmoid_1¾
lstm_3/while/lstm_cell_3/mul_8Mul&lstm_3/while/lstm_cell_3/Sigmoid_1:y:0lstm_3_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
lstm_3/while/lstm_cell_3/mul_8Ë
)lstm_3/while/lstm_cell_3/ReadVariableOp_2ReadVariableOp2lstm_3_while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02+
)lstm_3/while/lstm_cell_3/ReadVariableOp_2±
.lstm_3/while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  20
.lstm_3/while/lstm_cell_3/strided_slice_2/stackµ
0lstm_3/while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_3/while/lstm_cell_3/strided_slice_2/stack_1µ
0lstm_3/while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_3/while/lstm_cell_3/strided_slice_2/stack_2 
(lstm_3/while/lstm_cell_3/strided_slice_2StridedSlice1lstm_3/while/lstm_cell_3/ReadVariableOp_2:value:07lstm_3/while/lstm_cell_3/strided_slice_2/stack:output:09lstm_3/while/lstm_cell_3/strided_slice_2/stack_1:output:09lstm_3/while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2*
(lstm_3/while/lstm_cell_3/strided_slice_2Ú
!lstm_3/while/lstm_cell_3/MatMul_6MatMul"lstm_3/while/lstm_cell_3/mul_6:z:01lstm_3/while/lstm_cell_3/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!lstm_3/while/lstm_cell_3/MatMul_6Ö
lstm_3/while/lstm_cell_3/add_2AddV2+lstm_3/while/lstm_cell_3/BiasAdd_2:output:0+lstm_3/while/lstm_cell_3/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
lstm_3/while/lstm_cell_3/add_2
lstm_3/while/lstm_cell_3/TanhTanh"lstm_3/while/lstm_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/while/lstm_cell_3/TanhÃ
lstm_3/while/lstm_cell_3/mul_9Mul$lstm_3/while/lstm_cell_3/Sigmoid:y:0!lstm_3/while/lstm_cell_3/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
lstm_3/while/lstm_cell_3/mul_9Ä
lstm_3/while/lstm_cell_3/add_3AddV2"lstm_3/while/lstm_cell_3/mul_8:z:0"lstm_3/while/lstm_cell_3/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
lstm_3/while/lstm_cell_3/add_3Ë
)lstm_3/while/lstm_cell_3/ReadVariableOp_3ReadVariableOp2lstm_3_while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02+
)lstm_3/while/lstm_cell_3/ReadVariableOp_3±
.lstm_3/while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_3/while/lstm_cell_3/strided_slice_3/stackµ
0lstm_3/while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_3/while/lstm_cell_3/strided_slice_3/stack_1µ
0lstm_3/while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_3/while/lstm_cell_3/strided_slice_3/stack_2 
(lstm_3/while/lstm_cell_3/strided_slice_3StridedSlice1lstm_3/while/lstm_cell_3/ReadVariableOp_3:value:07lstm_3/while/lstm_cell_3/strided_slice_3/stack:output:09lstm_3/while/lstm_cell_3/strided_slice_3/stack_1:output:09lstm_3/while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2*
(lstm_3/while/lstm_cell_3/strided_slice_3Ú
!lstm_3/while/lstm_cell_3/MatMul_7MatMul"lstm_3/while/lstm_cell_3/mul_7:z:01lstm_3/while/lstm_cell_3/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!lstm_3/while/lstm_cell_3/MatMul_7Ö
lstm_3/while/lstm_cell_3/add_4AddV2+lstm_3/while/lstm_cell_3/BiasAdd_3:output:0+lstm_3/while/lstm_cell_3/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
lstm_3/while/lstm_cell_3/add_4ª
"lstm_3/while/lstm_cell_3/Sigmoid_2Sigmoid"lstm_3/while/lstm_cell_3/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_3/while/lstm_cell_3/Sigmoid_2¡
lstm_3/while/lstm_cell_3/Tanh_1Tanh"lstm_3/while/lstm_cell_3/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2!
lstm_3/while/lstm_cell_3/Tanh_1É
lstm_3/while/lstm_cell_3/mul_10Mul&lstm_3/while/lstm_cell_3/Sigmoid_2:y:0#lstm_3/while/lstm_cell_3/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2!
lstm_3/while/lstm_cell_3/mul_10
1lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_3_while_placeholder_1lstm_3_while_placeholder#lstm_3/while/lstm_cell_3/mul_10:z:0*
_output_shapes
: *
element_dtype023
1lstm_3/while/TensorArrayV2Write/TensorListSetItemj
lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add/y
lstm_3/while/addAddV2lstm_3_while_placeholderlstm_3/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/addn
lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add_1/y
lstm_3/while/add_1AddV2&lstm_3_while_lstm_3_while_loop_counterlstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/add_1
lstm_3/while/IdentityIdentitylstm_3/while/add_1:z:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity
lstm_3/while/Identity_1Identity,lstm_3_while_lstm_3_while_maximum_iterations(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_1
lstm_3/while/Identity_2Identitylstm_3/while/add:z:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_2²
lstm_3/while/Identity_3IdentityAlstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_3¦
lstm_3/while/Identity_4Identity#lstm_3/while/lstm_cell_3/mul_10:z:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/while/Identity_4¥
lstm_3/while/Identity_5Identity"lstm_3/while/lstm_cell_3/add_3:z:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/while/Identity_5"7
lstm_3_while_identitylstm_3/while/Identity:output:0";
lstm_3_while_identity_1 lstm_3/while/Identity_1:output:0";
lstm_3_while_identity_2 lstm_3/while/Identity_2:output:0";
lstm_3_while_identity_3 lstm_3/while/Identity_3:output:0";
lstm_3_while_identity_4 lstm_3/while/Identity_4:output:0";
lstm_3_while_identity_5 lstm_3/while/Identity_5:output:0"H
!lstm_3_while_lstm_3_strided_slice#lstm_3_while_lstm_3_strided_slice_0"f
0lstm_3_while_lstm_cell_3_readvariableop_resource2lstm_3_while_lstm_cell_3_readvariableop_resource_0"v
8lstm_3_while_lstm_cell_3_split_1_readvariableop_resource:lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_0"r
6lstm_3_while_lstm_cell_3_split_readvariableop_resource8lstm_3_while_lstm_cell_3_split_readvariableop_resource_0"Ä
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensoralstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : 2R
'lstm_3/while/lstm_cell_3/ReadVariableOp'lstm_3/while/lstm_cell_3/ReadVariableOp2V
)lstm_3/while/lstm_cell_3/ReadVariableOp_1)lstm_3/while/lstm_cell_3/ReadVariableOp_12V
)lstm_3/while/lstm_cell_3/ReadVariableOp_2)lstm_3/while/lstm_cell_3/ReadVariableOp_22V
)lstm_3/while/lstm_cell_3/ReadVariableOp_3)lstm_3/while/lstm_cell_3/ReadVariableOp_32^
-lstm_3/while/lstm_cell_3/split/ReadVariableOp-lstm_3/while/lstm_cell_3/split/ReadVariableOp2b
/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ¬:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
: 
×ô
	
while_body_61137
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_3_split_readvariableop_resource_0:	d°	B
3while_lstm_cell_3_split_1_readvariableop_resource_0:	°	?
+while_lstm_cell_3_readvariableop_resource_0:
¬°	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_3_split_readvariableop_resource:	d°	@
1while_lstm_cell_3_split_1_readvariableop_resource:	°	=
)while_lstm_cell_3_readvariableop_resource:
¬°	¢ while/lstm_cell_3/ReadVariableOp¢"while/lstm_cell_3/ReadVariableOp_1¢"while/lstm_cell_3/ReadVariableOp_2¢"while/lstm_cell_3/ReadVariableOp_3¢&while/lstm_cell_3/split/ReadVariableOp¢(while/lstm_cell_3/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¦
!while/lstm_cell_3/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/ones_like/Shape
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_3/ones_like/ConstÌ
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/ones_like
while/lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2!
while/lstm_cell_3/dropout/ConstÇ
while/lstm_cell_3/dropout/MulMul$while/lstm_cell_3/ones_like:output:0(while/lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/dropout/Mul
while/lstm_cell_3/dropout/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_3/dropout/Shape
6while/lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2Ùò28
6while/lstm_cell_3/dropout/random_uniform/RandomUniform
(while/lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2*
(while/lstm_cell_3/dropout/GreaterEqual/y
&while/lstm_cell_3/dropout/GreaterEqualGreaterEqual?while/lstm_cell_3/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2(
&while/lstm_cell_3/dropout/GreaterEqualµ
while/lstm_cell_3/dropout/CastCast*while/lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
while/lstm_cell_3/dropout/CastÂ
while/lstm_cell_3/dropout/Mul_1Mul!while/lstm_cell_3/dropout/Mul:z:0"while/lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
while/lstm_cell_3/dropout/Mul_1
!while/lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2#
!while/lstm_cell_3/dropout_1/ConstÍ
while/lstm_cell_3/dropout_1/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
while/lstm_cell_3/dropout_1/Mul
!while/lstm_cell_3/dropout_1/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_1/Shape
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2¥Õþ2:
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2,
*while/lstm_cell_3/dropout_1/GreaterEqual/y
(while/lstm_cell_3/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2*
(while/lstm_cell_3/dropout_1/GreaterEqual»
 while/lstm_cell_3/dropout_1/CastCast,while/lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 while/lstm_cell_3/dropout_1/CastÊ
!while/lstm_cell_3/dropout_1/Mul_1Mul#while/lstm_cell_3/dropout_1/Mul:z:0$while/lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!while/lstm_cell_3/dropout_1/Mul_1
!while/lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2#
!while/lstm_cell_3/dropout_2/ConstÍ
while/lstm_cell_3/dropout_2/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
while/lstm_cell_3/dropout_2/Mul
!while/lstm_cell_3/dropout_2/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_2/Shape
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2  2:
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2,
*while/lstm_cell_3/dropout_2/GreaterEqual/y
(while/lstm_cell_3/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2*
(while/lstm_cell_3/dropout_2/GreaterEqual»
 while/lstm_cell_3/dropout_2/CastCast,while/lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 while/lstm_cell_3/dropout_2/CastÊ
!while/lstm_cell_3/dropout_2/Mul_1Mul#while/lstm_cell_3/dropout_2/Mul:z:0$while/lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!while/lstm_cell_3/dropout_2/Mul_1
!while/lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2#
!while/lstm_cell_3/dropout_3/ConstÍ
while/lstm_cell_3/dropout_3/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
while/lstm_cell_3/dropout_3/Mul
!while/lstm_cell_3/dropout_3/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_3/Shape
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2½§2:
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2,
*while/lstm_cell_3/dropout_3/GreaterEqual/y
(while/lstm_cell_3/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2*
(while/lstm_cell_3/dropout_3/GreaterEqual»
 while/lstm_cell_3/dropout_3/CastCast,while/lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 while/lstm_cell_3/dropout_3/CastÊ
!while/lstm_cell_3/dropout_3/Mul_1Mul#while/lstm_cell_3/dropout_3/Mul:z:0$while/lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!while/lstm_cell_3/dropout_3/Mul_1
#while/lstm_cell_3/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_3/ones_like_1/Shape
#while/lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_3/ones_like_1/ConstÕ
while/lstm_cell_3/ones_like_1Fill,while/lstm_cell_3/ones_like_1/Shape:output:0,while/lstm_cell_3/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/ones_like_1
!while/lstm_cell_3/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_3/dropout_4/ConstÐ
while/lstm_cell_3/dropout_4/MulMul&while/lstm_cell_3/ones_like_1:output:0*while/lstm_cell_3/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2!
while/lstm_cell_3/dropout_4/Mul
!while/lstm_cell_3/dropout_4/ShapeShape&while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_4/Shape
8while/lstm_cell_3/dropout_4/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2Ô×2:
8while/lstm_cell_3/dropout_4/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_3/dropout_4/GreaterEqual/y
(while/lstm_cell_3/dropout_4/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_4/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2*
(while/lstm_cell_3/dropout_4/GreaterEqual¼
 while/lstm_cell_3/dropout_4/CastCast,while/lstm_cell_3/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 while/lstm_cell_3/dropout_4/CastË
!while/lstm_cell_3/dropout_4/Mul_1Mul#while/lstm_cell_3/dropout_4/Mul:z:0$while/lstm_cell_3/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!while/lstm_cell_3/dropout_4/Mul_1
!while/lstm_cell_3/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_3/dropout_5/ConstÐ
while/lstm_cell_3/dropout_5/MulMul&while/lstm_cell_3/ones_like_1:output:0*while/lstm_cell_3/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2!
while/lstm_cell_3/dropout_5/Mul
!while/lstm_cell_3/dropout_5/ShapeShape&while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_5/Shape
8while/lstm_cell_3/dropout_5/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2À2:
8while/lstm_cell_3/dropout_5/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_3/dropout_5/GreaterEqual/y
(while/lstm_cell_3/dropout_5/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_5/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2*
(while/lstm_cell_3/dropout_5/GreaterEqual¼
 while/lstm_cell_3/dropout_5/CastCast,while/lstm_cell_3/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 while/lstm_cell_3/dropout_5/CastË
!while/lstm_cell_3/dropout_5/Mul_1Mul#while/lstm_cell_3/dropout_5/Mul:z:0$while/lstm_cell_3/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!while/lstm_cell_3/dropout_5/Mul_1
!while/lstm_cell_3/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_3/dropout_6/ConstÐ
while/lstm_cell_3/dropout_6/MulMul&while/lstm_cell_3/ones_like_1:output:0*while/lstm_cell_3/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2!
while/lstm_cell_3/dropout_6/Mul
!while/lstm_cell_3/dropout_6/ShapeShape&while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_6/Shape
8while/lstm_cell_3/dropout_6/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2¾¾¡2:
8while/lstm_cell_3/dropout_6/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_3/dropout_6/GreaterEqual/y
(while/lstm_cell_3/dropout_6/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_6/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2*
(while/lstm_cell_3/dropout_6/GreaterEqual¼
 while/lstm_cell_3/dropout_6/CastCast,while/lstm_cell_3/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 while/lstm_cell_3/dropout_6/CastË
!while/lstm_cell_3/dropout_6/Mul_1Mul#while/lstm_cell_3/dropout_6/Mul:z:0$while/lstm_cell_3/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!while/lstm_cell_3/dropout_6/Mul_1
!while/lstm_cell_3/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_3/dropout_7/ConstÐ
while/lstm_cell_3/dropout_7/MulMul&while/lstm_cell_3/ones_like_1:output:0*while/lstm_cell_3/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2!
while/lstm_cell_3/dropout_7/Mul
!while/lstm_cell_3/dropout_7/ShapeShape&while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_7/Shape
8while/lstm_cell_3/dropout_7/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2Ò2:
8while/lstm_cell_3/dropout_7/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_3/dropout_7/GreaterEqual/y
(while/lstm_cell_3/dropout_7/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_7/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2*
(while/lstm_cell_3/dropout_7/GreaterEqual¼
 while/lstm_cell_3/dropout_7/CastCast,while/lstm_cell_3/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 while/lstm_cell_3/dropout_7/CastË
!while/lstm_cell_3/dropout_7/Mul_1Mul#while/lstm_cell_3/dropout_7/Mul:z:0$while/lstm_cell_3/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!while/lstm_cell_3/dropout_7/Mul_1¾
while/lstm_cell_3/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/mulÄ
while/lstm_cell_3/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_3/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/mul_1Ä
while/lstm_cell_3/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_3/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/mul_2Ä
while/lstm_cell_3/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_3/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/mul_3
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dimÃ
&while/lstm_cell_3/split/ReadVariableOpReadVariableOp1while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	d°	*
dtype02(
&while/lstm_cell_3/split/ReadVariableOpó
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0.while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d¬:	d¬:	d¬:	d¬*
	num_split2
while/lstm_cell_3/split®
while/lstm_cell_3/MatMulMatMulwhile/lstm_cell_3/mul:z:0 while/lstm_cell_3/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul´
while/lstm_cell_3/MatMul_1MatMulwhile/lstm_cell_3/mul_1:z:0 while/lstm_cell_3/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_1´
while/lstm_cell_3/MatMul_2MatMulwhile/lstm_cell_3/mul_2:z:0 while/lstm_cell_3/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_2´
while/lstm_cell_3/MatMul_3MatMulwhile/lstm_cell_3/mul_3:z:0 while/lstm_cell_3/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_3
#while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_3/split_1/split_dimÅ
(while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:°	*
dtype02*
(while/lstm_cell_3/split_1/ReadVariableOpë
while/lstm_cell_3/split_1Split,while/lstm_cell_3/split_1/split_dim:output:00while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:¬:¬:¬:¬*
	num_split2
while/lstm_cell_3/split_1¼
while/lstm_cell_3/BiasAddBiasAdd"while/lstm_cell_3/MatMul:product:0"while/lstm_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/BiasAddÂ
while/lstm_cell_3/BiasAdd_1BiasAdd$while/lstm_cell_3/MatMul_1:product:0"while/lstm_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/BiasAdd_1Â
while/lstm_cell_3/BiasAdd_2BiasAdd$while/lstm_cell_3/MatMul_2:product:0"while/lstm_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/BiasAdd_2Â
while/lstm_cell_3/BiasAdd_3BiasAdd$while/lstm_cell_3/MatMul_3:product:0"while/lstm_cell_3/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/BiasAdd_3¨
while/lstm_cell_3/mul_4Mulwhile_placeholder_2%while/lstm_cell_3/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_4¨
while/lstm_cell_3/mul_5Mulwhile_placeholder_2%while/lstm_cell_3/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_5¨
while/lstm_cell_3/mul_6Mulwhile_placeholder_2%while/lstm_cell_3/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_6¨
while/lstm_cell_3/mul_7Mulwhile_placeholder_2%while/lstm_cell_3/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_7²
 while/lstm_cell_3/ReadVariableOpReadVariableOp+while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02"
 while/lstm_cell_3/ReadVariableOp
%while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_3/strided_slice/stack£
'while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2)
'while/lstm_cell_3/strided_slice/stack_1£
'while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_3/strided_slice/stack_2ê
while/lstm_cell_3/strided_sliceStridedSlice(while/lstm_cell_3/ReadVariableOp:value:0.while/lstm_cell_3/strided_slice/stack:output:00while/lstm_cell_3/strided_slice/stack_1:output:00while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2!
while/lstm_cell_3/strided_slice¼
while/lstm_cell_3/MatMul_4MatMulwhile/lstm_cell_3/mul_4:z:0(while/lstm_cell_3/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_4´
while/lstm_cell_3/addAddV2"while/lstm_cell_3/BiasAdd:output:0$while/lstm_cell_3/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add
while/lstm_cell_3/SigmoidSigmoidwhile/lstm_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Sigmoid¶
"while/lstm_cell_3/ReadVariableOp_1ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02$
"while/lstm_cell_3/ReadVariableOp_1£
'while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2)
'while/lstm_cell_3/strided_slice_1/stack§
)while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  2+
)while/lstm_cell_3/strided_slice_1/stack_1§
)while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_1/stack_2ö
!while/lstm_cell_3/strided_slice_1StridedSlice*while/lstm_cell_3/ReadVariableOp_1:value:00while/lstm_cell_3/strided_slice_1/stack:output:02while/lstm_cell_3/strided_slice_1/stack_1:output:02while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_1¾
while/lstm_cell_3/MatMul_5MatMulwhile/lstm_cell_3/mul_5:z:0*while/lstm_cell_3/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_5º
while/lstm_cell_3/add_1AddV2$while/lstm_cell_3/BiasAdd_1:output:0$while/lstm_cell_3/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add_1
while/lstm_cell_3/Sigmoid_1Sigmoidwhile/lstm_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Sigmoid_1¢
while/lstm_cell_3/mul_8Mulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_8¶
"while/lstm_cell_3/ReadVariableOp_2ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02$
"while/lstm_cell_3/ReadVariableOp_2£
'while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  2)
'while/lstm_cell_3/strided_slice_2/stack§
)while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_2/stack_1§
)while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_2/stack_2ö
!while/lstm_cell_3/strided_slice_2StridedSlice*while/lstm_cell_3/ReadVariableOp_2:value:00while/lstm_cell_3/strided_slice_2/stack:output:02while/lstm_cell_3/strided_slice_2/stack_1:output:02while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_2¾
while/lstm_cell_3/MatMul_6MatMulwhile/lstm_cell_3/mul_6:z:0*while/lstm_cell_3/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_6º
while/lstm_cell_3/add_2AddV2$while/lstm_cell_3/BiasAdd_2:output:0$while/lstm_cell_3/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add_2
while/lstm_cell_3/TanhTanhwhile/lstm_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Tanh§
while/lstm_cell_3/mul_9Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_9¨
while/lstm_cell_3/add_3AddV2while/lstm_cell_3/mul_8:z:0while/lstm_cell_3/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add_3¶
"while/lstm_cell_3/ReadVariableOp_3ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02$
"while/lstm_cell_3/ReadVariableOp_3£
'while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_3/strided_slice_3/stack§
)while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_3/strided_slice_3/stack_1§
)while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_3/stack_2ö
!while/lstm_cell_3/strided_slice_3StridedSlice*while/lstm_cell_3/ReadVariableOp_3:value:00while/lstm_cell_3/strided_slice_3/stack:output:02while/lstm_cell_3/strided_slice_3/stack_1:output:02while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_3¾
while/lstm_cell_3/MatMul_7MatMulwhile/lstm_cell_3/mul_7:z:0*while/lstm_cell_3/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_7º
while/lstm_cell_3/add_4AddV2$while/lstm_cell_3/BiasAdd_3:output:0$while/lstm_cell_3/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add_4
while/lstm_cell_3/Sigmoid_2Sigmoidwhile/lstm_cell_3/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Sigmoid_2
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Tanh_1­
while/lstm_cell_3/mul_10Mulwhile/lstm_cell_3/Sigmoid_2:y:0while/lstm_cell_3/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_10à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ä
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity×
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Æ
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ó
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ç
while/Identity_4Identitywhile/lstm_cell_3/mul_10:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/Identity_4æ
while/Identity_5Identitywhile/lstm_cell_3/add_3:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_3_readvariableop_resource+while_lstm_cell_3_readvariableop_resource_0"h
1while_lstm_cell_3_split_1_readvariableop_resource3while_lstm_cell_3_split_1_readvariableop_resource_0"d
/while_lstm_cell_3_split_readvariableop_resource1while_lstm_cell_3_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : 2D
 while/lstm_cell_3/ReadVariableOp while/lstm_cell_3/ReadVariableOp2H
"while/lstm_cell_3/ReadVariableOp_1"while/lstm_cell_3/ReadVariableOp_12H
"while/lstm_cell_3/ReadVariableOp_2"while/lstm_cell_3/ReadVariableOp_22H
"while/lstm_cell_3/ReadVariableOp_3"while/lstm_cell_3/ReadVariableOp_32P
&while/lstm_cell_3/split/ReadVariableOp&while/lstm_cell_3/split/ReadVariableOp2T
(while/lstm_cell_3/split_1/ReadVariableOp(while/lstm_cell_3/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ¬:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
: 
à
§
A__inference_lstm_3_layer_call_and_return_conditional_losses_63714

inputs
initial_state_0
initial_state_1<
)lstm_cell_3_split_readvariableop_resource:	d°	:
+lstm_cell_3_split_1_readvariableop_resource:	°	7
#lstm_cell_3_readvariableop_resource:
¬°	
identity

identity_1

identity_2¢lstm_cell_3/ReadVariableOp¢lstm_cell_3/ReadVariableOp_1¢lstm_cell_3/ReadVariableOp_2¢lstm_cell_3/ReadVariableOp_3¢ lstm_cell_3/split/ReadVariableOp¢"lstm_cell_3/split_1/ReadVariableOp¢whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_1/stack_2ü
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
strided_slice_1
lstm_cell_3/ones_like/ShapeShapestrided_slice_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like/Shape
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like/Const´
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/ones_like}
lstm_cell_3/ones_like_1/ShapeShapeinitial_state_0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like_1/Shape
lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like_1/Const½
lstm_cell_3/ones_like_1Fill&lstm_cell_3/ones_like_1/Shape:output:0&lstm_cell_3/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/ones_like_1
lstm_cell_3/mulMulstrided_slice_1:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/mul
lstm_cell_3/mul_1Mulstrided_slice_1:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/mul_1
lstm_cell_3/mul_2Mulstrided_slice_1:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/mul_2
lstm_cell_3/mul_3Mulstrided_slice_1:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/mul_3|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dim¯
 lstm_cell_3/split/ReadVariableOpReadVariableOp)lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	d°	*
dtype02"
 lstm_cell_3/split/ReadVariableOpÛ
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0(lstm_cell_3/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d¬:	d¬:	d¬:	d¬*
	num_split2
lstm_cell_3/split
lstm_cell_3/MatMulMatMullstm_cell_3/mul:z:0lstm_cell_3/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul
lstm_cell_3/MatMul_1MatMullstm_cell_3/mul_1:z:0lstm_cell_3/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_1
lstm_cell_3/MatMul_2MatMullstm_cell_3/mul_2:z:0lstm_cell_3/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_2
lstm_cell_3/MatMul_3MatMullstm_cell_3/mul_3:z:0lstm_cell_3/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_3
lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_3/split_1/split_dim±
"lstm_cell_3/split_1/ReadVariableOpReadVariableOp+lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:°	*
dtype02$
"lstm_cell_3/split_1/ReadVariableOpÓ
lstm_cell_3/split_1Split&lstm_cell_3/split_1/split_dim:output:0*lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:¬:¬:¬:¬*
	num_split2
lstm_cell_3/split_1¤
lstm_cell_3/BiasAddBiasAddlstm_cell_3/MatMul:product:0lstm_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/BiasAddª
lstm_cell_3/BiasAdd_1BiasAddlstm_cell_3/MatMul_1:product:0lstm_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/BiasAdd_1ª
lstm_cell_3/BiasAdd_2BiasAddlstm_cell_3/MatMul_2:product:0lstm_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/BiasAdd_2ª
lstm_cell_3/BiasAdd_3BiasAddlstm_cell_3/MatMul_3:product:0lstm_cell_3/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/BiasAdd_3
lstm_cell_3/mul_4Mulinitial_state_0 lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_4
lstm_cell_3/mul_5Mulinitial_state_0 lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_5
lstm_cell_3/mul_6Mulinitial_state_0 lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_6
lstm_cell_3/mul_7Mulinitial_state_0 lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_7
lstm_cell_3/ReadVariableOpReadVariableOp#lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
lstm_cell_3/ReadVariableOp
lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_3/strided_slice/stack
!lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2#
!lstm_cell_3/strided_slice/stack_1
!lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_3/strided_slice/stack_2Æ
lstm_cell_3/strided_sliceStridedSlice"lstm_cell_3/ReadVariableOp:value:0(lstm_cell_3/strided_slice/stack:output:0*lstm_cell_3/strided_slice/stack_1:output:0*lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
lstm_cell_3/strided_slice¤
lstm_cell_3/MatMul_4MatMullstm_cell_3/mul_4:z:0"lstm_cell_3/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_4
lstm_cell_3/addAddV2lstm_cell_3/BiasAdd:output:0lstm_cell_3/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add}
lstm_cell_3/SigmoidSigmoidlstm_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Sigmoid¢
lstm_cell_3/ReadVariableOp_1ReadVariableOp#lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
lstm_cell_3/ReadVariableOp_1
!lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2#
!lstm_cell_3/strided_slice_1/stack
#lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  2%
#lstm_cell_3/strided_slice_1/stack_1
#lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_1/stack_2Ò
lstm_cell_3/strided_slice_1StridedSlice$lstm_cell_3/ReadVariableOp_1:value:0*lstm_cell_3/strided_slice_1/stack:output:0,lstm_cell_3/strided_slice_1/stack_1:output:0,lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_1¦
lstm_cell_3/MatMul_5MatMullstm_cell_3/mul_5:z:0$lstm_cell_3/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_5¢
lstm_cell_3/add_1AddV2lstm_cell_3/BiasAdd_1:output:0lstm_cell_3/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add_1
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Sigmoid_1
lstm_cell_3/mul_8Mullstm_cell_3/Sigmoid_1:y:0initial_state_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_8¢
lstm_cell_3/ReadVariableOp_2ReadVariableOp#lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
lstm_cell_3/ReadVariableOp_2
!lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  2#
!lstm_cell_3/strided_slice_2/stack
#lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_2/stack_1
#lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_2/stack_2Ò
lstm_cell_3/strided_slice_2StridedSlice$lstm_cell_3/ReadVariableOp_2:value:0*lstm_cell_3/strided_slice_2/stack:output:0,lstm_cell_3/strided_slice_2/stack_1:output:0,lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_2¦
lstm_cell_3/MatMul_6MatMullstm_cell_3/mul_6:z:0$lstm_cell_3/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_6¢
lstm_cell_3/add_2AddV2lstm_cell_3/BiasAdd_2:output:0lstm_cell_3/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add_2v
lstm_cell_3/TanhTanhlstm_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Tanh
lstm_cell_3/mul_9Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_9
lstm_cell_3/add_3AddV2lstm_cell_3/mul_8:z:0lstm_cell_3/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add_3¢
lstm_cell_3/ReadVariableOp_3ReadVariableOp#lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
lstm_cell_3/ReadVariableOp_3
!lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_3/strided_slice_3/stack
#lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_3/strided_slice_3/stack_1
#lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_3/stack_2Ò
lstm_cell_3/strided_slice_3StridedSlice$lstm_cell_3/ReadVariableOp_3:value:0*lstm_cell_3/strided_slice_3/stack:output:0,lstm_cell_3/strided_slice_3/stack_1:output:0,lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_3¦
lstm_cell_3/MatMul_7MatMullstm_cell_3/mul_7:z:0$lstm_cell_3/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_7¢
lstm_cell_3/add_4AddV2lstm_cell_3/BiasAdd_3:output:0lstm_cell_3/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add_4
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Sigmoid_2z
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Tanh_1
lstm_cell_3/mul_10Mullstm_cell_3/Sigmoid_2:y:0lstm_cell_3/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2
TensorArrayV2_1/element_shape¶
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterá
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0initial_state_0initial_state_1strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_3_split_readvariableop_resource+lstm_cell_3_split_1_readvariableop_resource#lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_63578*
condR
while_cond_63577*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime»
IdentityIdentitytranspose_1:y:0^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2

Identity±

Identity_1Identitywhile:output:4^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1±

Identity_2Identitywhile:output:5^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : 28
lstm_cell_3/ReadVariableOplstm_cell_3/ReadVariableOp2<
lstm_cell_3/ReadVariableOp_1lstm_cell_3/ReadVariableOp_12<
lstm_cell_3/ReadVariableOp_2lstm_cell_3/ReadVariableOp_22<
lstm_cell_3/ReadVariableOp_3lstm_cell_3/ReadVariableOp_32D
 lstm_cell_3/split/ReadVariableOp lstm_cell_3/split/ReadVariableOp2H
"lstm_cell_3/split_1/ReadVariableOp"lstm_cell_3/split_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:YU
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
)
_user_specified_nameinitial_state/0:YU
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
)
_user_specified_nameinitial_state/1
®

K__inference_time_distributed_layer_call_and_return_conditional_losses_64457

inputs8
$dense_matmul_readvariableop_resource:
Øíb4
%dense_biasadd_readvariableop_resource:	íb
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿX  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2	
Reshape¡
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
Øíb*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:íb*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb2
dense/BiasAddt
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb2
dense/Softmaxq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :íb2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape
	Reshape_1Reshapedense/Softmax:softmax:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb2
	Reshape_1±
IdentityIdentityReshape_1:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ
 
_user_specified_nameinputs


J__inference_attention_layer_layer_call_and_return_conditional_losses_64408
inputs_0
inputs_13
shape_2_readvariableop_resource:
¬¬4
 matmul_1_readvariableop_resource:
¬¬2
shape_4_readvariableop_resource:	¬
identity

identity_1¢MatMul_1/ReadVariableOp¢transpose_1/ReadVariableOp¢transpose_2/ReadVariableOp¢whilep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indicesn
SumSuminputs_0Sum/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
Sumt
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_1/reduction_indicess
Sum_1Suminputs_0 Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
Sum_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_1transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_1/stack_2ý
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
shrink_axis_mask2
strided_slice_1J
Shape_1Shapeinputs_0*
T0*
_output_shapes
:2	
Shape_1^
unstackUnpackShape_1:output:0*
T0*
_output_shapes
: : : *	
num2	
unstack
Shape_2/ReadVariableOpReadVariableOpshape_2_readvariableop_resource* 
_output_shapes
:
¬¬*
dtype02
Shape_2/ReadVariableOpc
Shape_2Const*
_output_shapes
:*
dtype0*
valueB",  ,  2	
Shape_2`
	unstack_1UnpackShape_2:output:0*
T0*
_output_shapes
: : *	
num2
	unstack_1o
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2
Reshape/shaper
ReshapeReshapeinputs_0Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2	
Reshape
transpose_1/ReadVariableOpReadVariableOpshape_2_readvariableop_resource* 
_output_shapes
:
¬¬*
dtype02
transpose_1/ReadVariableOpu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm
transpose_1	Transpose"transpose_1/ReadVariableOp:value:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
¬¬2
transpose_1s
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB",  ÿÿÿÿ2
Reshape_1/shapew
	Reshape_1Reshapetranspose_1:y:0Reshape_1/shape:output:0*
T0* 
_output_shapes
:
¬¬2
	Reshape_1s
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
MatMulh
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :P2
Reshape_2/shape/1i
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value
B :¬2
Reshape_2/shape/2¢
Reshape_2/shapePackunstack:output:0Reshape_2/shape/1:output:0Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_2/shape
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
	Reshape_2
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
¬¬*
dtype02
MatMul_1/ReadVariableOp
MatMul_1MatMulstrided_slice_1:output:0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_1b
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim

ExpandDims
ExpandDimsMatMul_1:product:0ExpandDims/dim:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

ExpandDimss
addAddV2Reshape_2:output:0ExpandDims:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
addT
TanhTanhadd:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
TanhJ
Shape_3ShapeTanh:y:0*
T0*
_output_shapes
:2	
Shape_3b
	unstack_2UnpackShape_3:output:0*
T0*
_output_shapes
: : : *	
num2
	unstack_2
Shape_4/ReadVariableOpReadVariableOpshape_4_readvariableop_resource*
_output_shapes
:	¬*
dtype02
Shape_4/ReadVariableOpc
Shape_4Const*
_output_shapes
:*
dtype0*
valueB",     2	
Shape_4`
	unstack_3UnpackShape_4:output:0*
T0*
_output_shapes
: : *	
num2
	unstack_3s
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2
Reshape_3/shapex
	Reshape_3ReshapeTanh:y:0Reshape_3/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
	Reshape_3
transpose_2/ReadVariableOpReadVariableOpshape_4_readvariableop_resource*
_output_shapes
:	¬*
dtype02
transpose_2/ReadVariableOpu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm
transpose_2	Transpose"transpose_2/ReadVariableOp:value:0transpose_2/perm:output:0*
T0*
_output_shapes
:	¬2
transpose_2s
Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB",  ÿÿÿÿ2
Reshape_4/shapev
	Reshape_4Reshapetranspose_2:y:0Reshape_4/shape:output:0*
T0*
_output_shapes
:	¬2
	Reshape_4x
MatMul_2MatMulReshape_3:output:0Reshape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_2h
Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :P2
Reshape_5/shape/1h
Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_5/shape/2¤
Reshape_5/shapePackunstack_2:output:0Reshape_5/shape/1:output:0Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_5/shape
	Reshape_5ReshapeMatMul_2:product:0Reshape_5/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
	Reshape_5
SqueezeSqueezeReshape_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ2	
Squeezea
SoftmaxSoftmaxSqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2	
Softmax
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP   2
TensorArrayV2_1/element_shape¶
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÆ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0Sum_1:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0inputs_0shape_2_readvariableop_resource matmul_1_readvariableop_resourceshape_4_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*Q
_output_shapes?
=: : : : :ÿÿÿÿÿÿÿÿÿP: : :ÿÿÿÿÿÿÿÿÿP¬: : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_64218*
condR
while_cond_64217*P
output_shapes?
=: : : : :ÿÿÿÿÿÿÿÿÿP: : :ÿÿÿÿÿÿÿÿÿP¬: : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
shrink_axis_mask2
strided_slice_2y
transpose_3/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_3/perm®
transpose_3	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_3/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP2
transpose_3y
transpose_4/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_4/perm
transpose_4	Transposetranspose_3:y:0transpose_4/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP2
transpose_4Q
Shape_5Shapetranspose_4:y:0*
T0*
_output_shapes
:2	
Shape_5x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2î
strided_slice_3StridedSliceShape_5:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3
TensorArrayV2_3/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2_3/element_shape¸
TensorArrayV2_3TensorListReserve&TensorArrayV2_3/element_shape:output:0strided_slice_3:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_3Ã
7TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP   29
7TensorArrayUnstack_1/TensorListFromTensor/element_shape
)TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensortranspose_4:y:0@TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02+
)TensorArrayUnstack_1/TensorListFromTensorx
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_4/stack|
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_1|
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_4/stack_2þ
strided_slice_4StridedSlicetranspose_4:y:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
shrink_axis_mask2
strided_slice_4o
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
ExpandDims_1/dim
ExpandDims_1
ExpandDimsstrided_slice_4:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
ExpandDims_1i
mulMulinputs_0ExpandDims_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
mult
Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_2/reduction_indicess
Sum_2Summul:z:0 Sum_2/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
Sum_2
TensorArrayV2_4/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2
TensorArrayV2_4/element_shape¸
TensorArrayV2_4TensorListReserve&TensorArrayV2_4/element_shape:output:0strided_slice_3:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_4R
time_1Const*
_output_shapes
: *
dtype0*
value	B : 2
time_1
while_1/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while_1/maximum_iterationsn
while_1/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while_1/loop_counteré
while_1StatelessWhilewhile_1/loop_counter:output:0#while_1/maximum_iterations:output:0time_1:output:0TensorArrayV2_4:handle:0Sum:output:0strided_slice_3:output:09TensorArrayUnstack_1/TensorListFromTensor:output_handle:0inputs_0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ¬: : :ÿÿÿÿÿÿÿÿÿP¬* 
_read_only_resource_inputs
 *
bodyR
while_1_body_64350*
condR
while_1_cond_64349*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ¬: : :ÿÿÿÿÿÿÿÿÿP¬*
parallel_iterations 2	
while_1¹
2TensorArrayV2Stack_1/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  24
2TensorArrayV2Stack_1/TensorListStack/element_shapeú
$TensorArrayV2Stack_1/TensorListStackTensorListStackwhile_1:output:3;TensorArrayV2Stack_1/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬*
element_dtype02&
$TensorArrayV2Stack_1/TensorListStack
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_5/stack|
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_5/stack_1|
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_5/stack_2
strided_slice_5StridedSlice-TensorArrayV2Stack_1/TensorListStack:tensor:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
shrink_axis_mask2
strided_slice_5y
transpose_5/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_5/perm±
transpose_5	Transpose-TensorArrayV2Stack_1/TensorListStack:tensor:0transpose_5/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2
transpose_5Í
IdentityIdentitytranspose_5:y:0^MatMul_1/ReadVariableOp^transpose_1/ReadVariableOp^transpose_2/ReadVariableOp^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2

IdentityÐ

Identity_1Identitytranspose_3:y:0^MatMul_1/ReadVariableOp^transpose_1/ReadVariableOp^transpose_2/ReadVariableOp^while*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿP¬:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬: : : 22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp28
transpose_1/ReadVariableOptranspose_1/ReadVariableOp28
transpose_2/ReadVariableOptranspose_2/ReadVariableOp2
whilewhile:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬
"
_user_specified_name
inputs/0:_[
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬
"
_user_specified_name
inputs/1
Ð

£
F__inference_embedding_1_layer_call_and_return_conditional_losses_60364

inputs)
embedding_lookup_60358:	íbd
identity¢embedding_lookupf
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Cast
embedding_lookupResourceGatherembedding_lookup_60358Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/60358*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
dtype02
embedding_lookupõ
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/60358*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2
embedding_lookup/Identity©
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
3
§
!__inference__traced_restore_64883
file_prefix:
'assignvariableop_embedding_1_embeddings:	íbd:
&assignvariableop_1_attention_layer_w_a:
¬¬:
&assignvariableop_2_attention_layer_u_a:
¬¬9
&assignvariableop_3_attention_layer_v_a:	¬?
,assignvariableop_4_lstm_3_lstm_cell_3_kernel:	d°	J
6assignvariableop_5_lstm_3_lstm_cell_3_recurrent_kernel:
¬°	9
*assignvariableop_6_lstm_3_lstm_cell_3_bias:	°	>
*assignvariableop_7_time_distributed_kernel:
Øíb7
(assignvariableop_8_time_distributed_bias:	íb"
assignvariableop_9_total: #
assignvariableop_10_count: 
identity_12¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9è
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ô
valueêBçB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-2/W_a/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-2/U_a/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-2/V_a/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names¦
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*+
value"B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesç
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*D
_output_shapes2
0::::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity¦
AssignVariableOpAssignVariableOp'assignvariableop_embedding_1_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1«
AssignVariableOp_1AssignVariableOp&assignvariableop_1_attention_layer_w_aIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2«
AssignVariableOp_2AssignVariableOp&assignvariableop_2_attention_layer_u_aIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3«
AssignVariableOp_3AssignVariableOp&assignvariableop_3_attention_layer_v_aIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4±
AssignVariableOp_4AssignVariableOp,assignvariableop_4_lstm_3_lstm_cell_3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5»
AssignVariableOp_5AssignVariableOp6assignvariableop_5_lstm_3_lstm_cell_3_recurrent_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¯
AssignVariableOp_6AssignVariableOp*assignvariableop_6_lstm_3_lstm_cell_3_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¯
AssignVariableOp_7AssignVariableOp*assignvariableop_7_time_distributed_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8­
AssignVariableOp_8AssignVariableOp(assignvariableop_8_time_distributed_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10¡
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_109
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpÐ
Identity_11Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_11Ã
Identity_12IdentityIdentity_11:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_12"#
identity_12Identity_12:output:0*+
_input_shapes
: : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102(
AssignVariableOp_2AssignVariableOp_22(
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
¥
	
while_body_62963
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_3_split_readvariableop_resource_0:	d°	B
3while_lstm_cell_3_split_1_readvariableop_resource_0:	°	?
+while_lstm_cell_3_readvariableop_resource_0:
¬°	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_3_split_readvariableop_resource:	d°	@
1while_lstm_cell_3_split_1_readvariableop_resource:	°	=
)while_lstm_cell_3_readvariableop_resource:
¬°	¢ while/lstm_cell_3/ReadVariableOp¢"while/lstm_cell_3/ReadVariableOp_1¢"while/lstm_cell_3/ReadVariableOp_2¢"while/lstm_cell_3/ReadVariableOp_3¢&while/lstm_cell_3/split/ReadVariableOp¢(while/lstm_cell_3/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¦
!while/lstm_cell_3/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/ones_like/Shape
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_3/ones_like/ConstÌ
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/ones_like
#while/lstm_cell_3/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_3/ones_like_1/Shape
#while/lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_3/ones_like_1/ConstÕ
while/lstm_cell_3/ones_like_1Fill,while/lstm_cell_3/ones_like_1/Shape:output:0,while/lstm_cell_3/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/ones_like_1¿
while/lstm_cell_3/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/mulÃ
while/lstm_cell_3/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/mul_1Ã
while/lstm_cell_3/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/mul_2Ã
while/lstm_cell_3/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
while/lstm_cell_3/mul_3
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dimÃ
&while/lstm_cell_3/split/ReadVariableOpReadVariableOp1while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	d°	*
dtype02(
&while/lstm_cell_3/split/ReadVariableOpó
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0.while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d¬:	d¬:	d¬:	d¬*
	num_split2
while/lstm_cell_3/split®
while/lstm_cell_3/MatMulMatMulwhile/lstm_cell_3/mul:z:0 while/lstm_cell_3/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul´
while/lstm_cell_3/MatMul_1MatMulwhile/lstm_cell_3/mul_1:z:0 while/lstm_cell_3/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_1´
while/lstm_cell_3/MatMul_2MatMulwhile/lstm_cell_3/mul_2:z:0 while/lstm_cell_3/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_2´
while/lstm_cell_3/MatMul_3MatMulwhile/lstm_cell_3/mul_3:z:0 while/lstm_cell_3/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_3
#while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_3/split_1/split_dimÅ
(while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:°	*
dtype02*
(while/lstm_cell_3/split_1/ReadVariableOpë
while/lstm_cell_3/split_1Split,while/lstm_cell_3/split_1/split_dim:output:00while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:¬:¬:¬:¬*
	num_split2
while/lstm_cell_3/split_1¼
while/lstm_cell_3/BiasAddBiasAdd"while/lstm_cell_3/MatMul:product:0"while/lstm_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/BiasAddÂ
while/lstm_cell_3/BiasAdd_1BiasAdd$while/lstm_cell_3/MatMul_1:product:0"while/lstm_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/BiasAdd_1Â
while/lstm_cell_3/BiasAdd_2BiasAdd$while/lstm_cell_3/MatMul_2:product:0"while/lstm_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/BiasAdd_2Â
while/lstm_cell_3/BiasAdd_3BiasAdd$while/lstm_cell_3/MatMul_3:product:0"while/lstm_cell_3/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/BiasAdd_3©
while/lstm_cell_3/mul_4Mulwhile_placeholder_2&while/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_4©
while/lstm_cell_3/mul_5Mulwhile_placeholder_2&while/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_5©
while/lstm_cell_3/mul_6Mulwhile_placeholder_2&while/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_6©
while/lstm_cell_3/mul_7Mulwhile_placeholder_2&while/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_7²
 while/lstm_cell_3/ReadVariableOpReadVariableOp+while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02"
 while/lstm_cell_3/ReadVariableOp
%while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_3/strided_slice/stack£
'while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2)
'while/lstm_cell_3/strided_slice/stack_1£
'while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_3/strided_slice/stack_2ê
while/lstm_cell_3/strided_sliceStridedSlice(while/lstm_cell_3/ReadVariableOp:value:0.while/lstm_cell_3/strided_slice/stack:output:00while/lstm_cell_3/strided_slice/stack_1:output:00while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2!
while/lstm_cell_3/strided_slice¼
while/lstm_cell_3/MatMul_4MatMulwhile/lstm_cell_3/mul_4:z:0(while/lstm_cell_3/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_4´
while/lstm_cell_3/addAddV2"while/lstm_cell_3/BiasAdd:output:0$while/lstm_cell_3/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add
while/lstm_cell_3/SigmoidSigmoidwhile/lstm_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Sigmoid¶
"while/lstm_cell_3/ReadVariableOp_1ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02$
"while/lstm_cell_3/ReadVariableOp_1£
'while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2)
'while/lstm_cell_3/strided_slice_1/stack§
)while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  2+
)while/lstm_cell_3/strided_slice_1/stack_1§
)while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_1/stack_2ö
!while/lstm_cell_3/strided_slice_1StridedSlice*while/lstm_cell_3/ReadVariableOp_1:value:00while/lstm_cell_3/strided_slice_1/stack:output:02while/lstm_cell_3/strided_slice_1/stack_1:output:02while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_1¾
while/lstm_cell_3/MatMul_5MatMulwhile/lstm_cell_3/mul_5:z:0*while/lstm_cell_3/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_5º
while/lstm_cell_3/add_1AddV2$while/lstm_cell_3/BiasAdd_1:output:0$while/lstm_cell_3/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add_1
while/lstm_cell_3/Sigmoid_1Sigmoidwhile/lstm_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Sigmoid_1¢
while/lstm_cell_3/mul_8Mulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_8¶
"while/lstm_cell_3/ReadVariableOp_2ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02$
"while/lstm_cell_3/ReadVariableOp_2£
'while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  2)
'while/lstm_cell_3/strided_slice_2/stack§
)while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_2/stack_1§
)while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_2/stack_2ö
!while/lstm_cell_3/strided_slice_2StridedSlice*while/lstm_cell_3/ReadVariableOp_2:value:00while/lstm_cell_3/strided_slice_2/stack:output:02while/lstm_cell_3/strided_slice_2/stack_1:output:02while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_2¾
while/lstm_cell_3/MatMul_6MatMulwhile/lstm_cell_3/mul_6:z:0*while/lstm_cell_3/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_6º
while/lstm_cell_3/add_2AddV2$while/lstm_cell_3/BiasAdd_2:output:0$while/lstm_cell_3/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add_2
while/lstm_cell_3/TanhTanhwhile/lstm_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Tanh§
while/lstm_cell_3/mul_9Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_9¨
while/lstm_cell_3/add_3AddV2while/lstm_cell_3/mul_8:z:0while/lstm_cell_3/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add_3¶
"while/lstm_cell_3/ReadVariableOp_3ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02$
"while/lstm_cell_3/ReadVariableOp_3£
'while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_3/strided_slice_3/stack§
)while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_3/strided_slice_3/stack_1§
)while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_3/stack_2ö
!while/lstm_cell_3/strided_slice_3StridedSlice*while/lstm_cell_3/ReadVariableOp_3:value:00while/lstm_cell_3/strided_slice_3/stack:output:02while/lstm_cell_3/strided_slice_3/stack_1:output:02while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_3¾
while/lstm_cell_3/MatMul_7MatMulwhile/lstm_cell_3/mul_7:z:0*while/lstm_cell_3/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/MatMul_7º
while/lstm_cell_3/add_4AddV2$while/lstm_cell_3/BiasAdd_3:output:0$while/lstm_cell_3/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/add_4
while/lstm_cell_3/Sigmoid_2Sigmoidwhile/lstm_cell_3/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Sigmoid_2
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/Tanh_1­
while/lstm_cell_3/mul_10Mulwhile/lstm_cell_3/Sigmoid_2:y:0while/lstm_cell_3/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/lstm_cell_3/mul_10à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ä
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity×
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Æ
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ó
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ç
while/Identity_4Identitywhile/lstm_cell_3/mul_10:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/Identity_4æ
while/Identity_5Identitywhile/lstm_cell_3/add_3:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_3_readvariableop_resource+while_lstm_cell_3_readvariableop_resource_0"h
1while_lstm_cell_3_split_1_readvariableop_resource3while_lstm_cell_3_split_1_readvariableop_resource_0"d
/while_lstm_cell_3_split_readvariableop_resource1while_lstm_cell_3_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : 2D
 while/lstm_cell_3/ReadVariableOp while/lstm_cell_3/ReadVariableOp2H
"while/lstm_cell_3/ReadVariableOp_1"while/lstm_cell_3/ReadVariableOp_12H
"while/lstm_cell_3/ReadVariableOp_2"while/lstm_cell_3/ReadVariableOp_22H
"while/lstm_cell_3/ReadVariableOp_3"while/lstm_cell_3/ReadVariableOp_32P
&while/lstm_cell_3/split/ReadVariableOp&while/lstm_cell_3/split/ReadVariableOp2T
(while/lstm_cell_3/split_1/ReadVariableOp(while/lstm_cell_3/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ¬:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
: 
Ô
¾
while_cond_59521
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_59521___redundant_placeholder03
/while_while_cond_59521___redundant_placeholder13
/while_while_cond_59521___redundant_placeholder23
/while_while_cond_59521___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
B: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ¬:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
:
Î
¥
A__inference_lstm_3_layer_call_and_return_conditional_losses_60601

inputs
initial_state
initial_state_1<
)lstm_cell_3_split_readvariableop_resource:	d°	:
+lstm_cell_3_split_1_readvariableop_resource:	°	7
#lstm_cell_3_readvariableop_resource:
¬°	
identity

identity_1

identity_2¢lstm_cell_3/ReadVariableOp¢lstm_cell_3/ReadVariableOp_1¢lstm_cell_3/ReadVariableOp_2¢lstm_cell_3/ReadVariableOp_3¢ lstm_cell_3/split/ReadVariableOp¢"lstm_cell_3/split_1/ReadVariableOp¢whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_1/stack_2ü
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
strided_slice_1
lstm_cell_3/ones_like/ShapeShapestrided_slice_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like/Shape
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like/Const´
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/ones_like{
lstm_cell_3/ones_like_1/ShapeShapeinitial_state*
T0*
_output_shapes
:2
lstm_cell_3/ones_like_1/Shape
lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like_1/Const½
lstm_cell_3/ones_like_1Fill&lstm_cell_3/ones_like_1/Shape:output:0&lstm_cell_3/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/ones_like_1
lstm_cell_3/mulMulstrided_slice_1:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/mul
lstm_cell_3/mul_1Mulstrided_slice_1:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/mul_1
lstm_cell_3/mul_2Mulstrided_slice_1:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/mul_2
lstm_cell_3/mul_3Mulstrided_slice_1:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/mul_3|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dim¯
 lstm_cell_3/split/ReadVariableOpReadVariableOp)lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	d°	*
dtype02"
 lstm_cell_3/split/ReadVariableOpÛ
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0(lstm_cell_3/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d¬:	d¬:	d¬:	d¬*
	num_split2
lstm_cell_3/split
lstm_cell_3/MatMulMatMullstm_cell_3/mul:z:0lstm_cell_3/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul
lstm_cell_3/MatMul_1MatMullstm_cell_3/mul_1:z:0lstm_cell_3/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_1
lstm_cell_3/MatMul_2MatMullstm_cell_3/mul_2:z:0lstm_cell_3/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_2
lstm_cell_3/MatMul_3MatMullstm_cell_3/mul_3:z:0lstm_cell_3/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_3
lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_3/split_1/split_dim±
"lstm_cell_3/split_1/ReadVariableOpReadVariableOp+lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:°	*
dtype02$
"lstm_cell_3/split_1/ReadVariableOpÓ
lstm_cell_3/split_1Split&lstm_cell_3/split_1/split_dim:output:0*lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:¬:¬:¬:¬*
	num_split2
lstm_cell_3/split_1¤
lstm_cell_3/BiasAddBiasAddlstm_cell_3/MatMul:product:0lstm_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/BiasAddª
lstm_cell_3/BiasAdd_1BiasAddlstm_cell_3/MatMul_1:product:0lstm_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/BiasAdd_1ª
lstm_cell_3/BiasAdd_2BiasAddlstm_cell_3/MatMul_2:product:0lstm_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/BiasAdd_2ª
lstm_cell_3/BiasAdd_3BiasAddlstm_cell_3/MatMul_3:product:0lstm_cell_3/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/BiasAdd_3
lstm_cell_3/mul_4Mulinitial_state lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_4
lstm_cell_3/mul_5Mulinitial_state lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_5
lstm_cell_3/mul_6Mulinitial_state lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_6
lstm_cell_3/mul_7Mulinitial_state lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_7
lstm_cell_3/ReadVariableOpReadVariableOp#lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
lstm_cell_3/ReadVariableOp
lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_3/strided_slice/stack
!lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2#
!lstm_cell_3/strided_slice/stack_1
!lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_3/strided_slice/stack_2Æ
lstm_cell_3/strided_sliceStridedSlice"lstm_cell_3/ReadVariableOp:value:0(lstm_cell_3/strided_slice/stack:output:0*lstm_cell_3/strided_slice/stack_1:output:0*lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
lstm_cell_3/strided_slice¤
lstm_cell_3/MatMul_4MatMullstm_cell_3/mul_4:z:0"lstm_cell_3/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_4
lstm_cell_3/addAddV2lstm_cell_3/BiasAdd:output:0lstm_cell_3/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add}
lstm_cell_3/SigmoidSigmoidlstm_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Sigmoid¢
lstm_cell_3/ReadVariableOp_1ReadVariableOp#lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
lstm_cell_3/ReadVariableOp_1
!lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2#
!lstm_cell_3/strided_slice_1/stack
#lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  2%
#lstm_cell_3/strided_slice_1/stack_1
#lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_1/stack_2Ò
lstm_cell_3/strided_slice_1StridedSlice$lstm_cell_3/ReadVariableOp_1:value:0*lstm_cell_3/strided_slice_1/stack:output:0,lstm_cell_3/strided_slice_1/stack_1:output:0,lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_1¦
lstm_cell_3/MatMul_5MatMullstm_cell_3/mul_5:z:0$lstm_cell_3/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_5¢
lstm_cell_3/add_1AddV2lstm_cell_3/BiasAdd_1:output:0lstm_cell_3/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add_1
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Sigmoid_1
lstm_cell_3/mul_8Mullstm_cell_3/Sigmoid_1:y:0initial_state_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_8¢
lstm_cell_3/ReadVariableOp_2ReadVariableOp#lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
lstm_cell_3/ReadVariableOp_2
!lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  2#
!lstm_cell_3/strided_slice_2/stack
#lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_2/stack_1
#lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_2/stack_2Ò
lstm_cell_3/strided_slice_2StridedSlice$lstm_cell_3/ReadVariableOp_2:value:0*lstm_cell_3/strided_slice_2/stack:output:0,lstm_cell_3/strided_slice_2/stack_1:output:0,lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_2¦
lstm_cell_3/MatMul_6MatMullstm_cell_3/mul_6:z:0$lstm_cell_3/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_6¢
lstm_cell_3/add_2AddV2lstm_cell_3/BiasAdd_2:output:0lstm_cell_3/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add_2v
lstm_cell_3/TanhTanhlstm_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Tanh
lstm_cell_3/mul_9Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_9
lstm_cell_3/add_3AddV2lstm_cell_3/mul_8:z:0lstm_cell_3/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add_3¢
lstm_cell_3/ReadVariableOp_3ReadVariableOp#lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
lstm_cell_3/ReadVariableOp_3
!lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_3/strided_slice_3/stack
#lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_3/strided_slice_3/stack_1
#lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_3/stack_2Ò
lstm_cell_3/strided_slice_3StridedSlice$lstm_cell_3/ReadVariableOp_3:value:0*lstm_cell_3/strided_slice_3/stack:output:0,lstm_cell_3/strided_slice_3/stack_1:output:0,lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_3¦
lstm_cell_3/MatMul_7MatMullstm_cell_3/mul_7:z:0$lstm_cell_3/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_7¢
lstm_cell_3/add_4AddV2lstm_cell_3/BiasAdd_3:output:0lstm_cell_3/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add_4
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Sigmoid_2z
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Tanh_1
lstm_cell_3/mul_10Mullstm_cell_3/Sigmoid_2:y:0lstm_cell_3/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2
TensorArrayV2_1/element_shape¶
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterß
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0initial_stateinitial_state_1strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_3_split_readvariableop_resource+lstm_cell_3_split_1_readvariableop_resource#lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_60465*
condR
while_cond_60464*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime»
IdentityIdentitytranspose_1:y:0^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2

Identity±

Identity_1Identitywhile:output:4^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1±

Identity_2Identitywhile:output:5^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : 28
lstm_cell_3/ReadVariableOplstm_cell_3/ReadVariableOp2<
lstm_cell_3/ReadVariableOp_1lstm_cell_3/ReadVariableOp_12<
lstm_cell_3/ReadVariableOp_2lstm_cell_3/ReadVariableOp_22<
lstm_cell_3/ReadVariableOp_3lstm_cell_3/ReadVariableOp_32D
 lstm_cell_3/split/ReadVariableOp lstm_cell_3/split/ReadVariableOp2H
"lstm_cell_3/split_1/ReadVariableOp"lstm_cell_3/split_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:WS
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
'
_user_specified_nameinitial_state:WS
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
'
_user_specified_nameinitial_state
ø
É
while_1_body_60821 
while_1_while_1_loop_counter&
"while_1_while_1_maximum_iterations
while_1_placeholder
while_1_placeholder_1
while_1_placeholder_2
while_1_strided_slice_3_0[
Wwhile_1_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0
while_1_mul_inputs_0
while_1_identity
while_1_identity_1
while_1_identity_2
while_1_identity_3
while_1_identity_4
while_1_strided_slice_3Y
Uwhile_1_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor
while_1_mul_inputsÇ
9while_1/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP   2;
9while_1/TensorArrayV2Read/TensorListGetItem/element_shapeß
+while_1/TensorArrayV2Read/TensorListGetItemTensorListGetItemWwhile_1_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0while_1_placeholderBwhile_1/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
element_dtype02-
+while_1/TensorArrayV2Read/TensorListGetItem{
while_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while_1/ExpandDims/dimÁ
while_1/ExpandDims
ExpandDims2while_1/TensorArrayV2Read/TensorListGetItem:item:0while_1/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
while_1/ExpandDims
while_1/mulMulwhile_1_mul_inputs_0while_1/ExpandDims:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
while_1/mul
while_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
while_1/Sum/reduction_indices
while_1/SumSumwhile_1/mul:z:0&while_1/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while_1/Sumà
,while_1/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_1_placeholder_1while_1_placeholderwhile_1/Sum:output:0*
_output_shapes
: *
element_dtype02.
,while_1/TensorArrayV2Write/TensorListSetItem`
while_1/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while_1/add/yq
while_1/addAddV2while_1_placeholderwhile_1/add/y:output:0*
T0*
_output_shapes
: 2
while_1/addd
while_1/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while_1/add_1/y
while_1/add_1AddV2while_1_while_1_loop_counterwhile_1/add_1/y:output:0*
T0*
_output_shapes
: 2
while_1/add_1d
while_1/IdentityIdentitywhile_1/add_1:z:0*
T0*
_output_shapes
: 2
while_1/Identityy
while_1/Identity_1Identity"while_1_while_1_maximum_iterations*
T0*
_output_shapes
: 2
while_1/Identity_1f
while_1/Identity_2Identitywhile_1/add:z:0*
T0*
_output_shapes
: 2
while_1/Identity_2
while_1/Identity_3Identity<while_1/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while_1/Identity_3}
while_1/Identity_4Identitywhile_1/Sum:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while_1/Identity_4"-
while_1_identitywhile_1/Identity:output:0"1
while_1_identity_1while_1/Identity_1:output:0"1
while_1_identity_2while_1/Identity_2:output:0"1
while_1_identity_3while_1/Identity_3:output:0"1
while_1_identity_4while_1/Identity_4:output:0"*
while_1_mul_inputswhile_1_mul_inputs_0"4
while_1_strided_slice_3while_1_strided_slice_3_0"°
Uwhile_1_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorWwhile_1_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ¬: : :ÿÿÿÿÿÿÿÿÿP¬: 
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
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
: :2.
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬
 
Í
while_1_body_64350 
while_1_while_1_loop_counter&
"while_1_while_1_maximum_iterations
while_1_placeholder
while_1_placeholder_1
while_1_placeholder_2
while_1_strided_slice_3_0[
Wwhile_1_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0
while_1_mul_inputs_0_0
while_1_identity
while_1_identity_1
while_1_identity_2
while_1_identity_3
while_1_identity_4
while_1_strided_slice_3Y
Uwhile_1_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor
while_1_mul_inputs_0Ç
9while_1/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP   2;
9while_1/TensorArrayV2Read/TensorListGetItem/element_shapeß
+while_1/TensorArrayV2Read/TensorListGetItemTensorListGetItemWwhile_1_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0while_1_placeholderBwhile_1/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
element_dtype02-
+while_1/TensorArrayV2Read/TensorListGetItem{
while_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while_1/ExpandDims/dimÁ
while_1/ExpandDims
ExpandDims2while_1/TensorArrayV2Read/TensorListGetItem:item:0while_1/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
while_1/ExpandDims
while_1/mulMulwhile_1_mul_inputs_0_0while_1/ExpandDims:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
while_1/mul
while_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
while_1/Sum/reduction_indices
while_1/SumSumwhile_1/mul:z:0&while_1/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while_1/Sumà
,while_1/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_1_placeholder_1while_1_placeholderwhile_1/Sum:output:0*
_output_shapes
: *
element_dtype02.
,while_1/TensorArrayV2Write/TensorListSetItem`
while_1/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while_1/add/yq
while_1/addAddV2while_1_placeholderwhile_1/add/y:output:0*
T0*
_output_shapes
: 2
while_1/addd
while_1/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while_1/add_1/y
while_1/add_1AddV2while_1_while_1_loop_counterwhile_1/add_1/y:output:0*
T0*
_output_shapes
: 2
while_1/add_1d
while_1/IdentityIdentitywhile_1/add_1:z:0*
T0*
_output_shapes
: 2
while_1/Identityy
while_1/Identity_1Identity"while_1_while_1_maximum_iterations*
T0*
_output_shapes
: 2
while_1/Identity_1f
while_1/Identity_2Identitywhile_1/add:z:0*
T0*
_output_shapes
: 2
while_1/Identity_2
while_1/Identity_3Identity<while_1/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while_1/Identity_3}
while_1/Identity_4Identitywhile_1/Sum:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while_1/Identity_4"-
while_1_identitywhile_1/Identity:output:0"1
while_1_identity_1while_1/Identity_1:output:0"1
while_1_identity_2while_1/Identity_2:output:0"1
while_1_identity_3while_1/Identity_3:output:0"1
while_1_identity_4while_1/Identity_4:output:0".
while_1_mul_inputs_0while_1_mul_inputs_0_0"4
while_1_strided_slice_3while_1_strided_slice_3_0"°
Uwhile_1_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorWwhile_1_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ¬: : :ÿÿÿÿÿÿÿÿÿP¬: 
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
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
: :2.
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬
½
Ç
K__inference_time_distributed_layer_call_and_return_conditional_losses_60237

inputs
dense_60227:
Øíb
dense_60229:	íb
identity¢dense/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿX  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2	
Reshape
dense/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_60227dense_60229*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_602262
dense/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :íb2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape£
	Reshape_1Reshape&dense/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb2
	Reshape_1
IdentityIdentityReshape_1:output:0^dense/StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ: : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ
 
_user_specified_nameinputs
ý(
 
B__inference_model_2_layer_call_and_return_conditional_losses_60907

inputs
inputs_1
inputs_2
inputs_3$
embedding_1_60365:	íbd
lstm_3_60602:	d°	
lstm_3_60604:	°	 
lstm_3_60606:
¬°	)
attention_layer_60880:
¬¬)
attention_layer_60882:
¬¬(
attention_layer_60884:	¬*
time_distributed_60897:
Øíb%
time_distributed_60899:	íb
identity

identity_1

identity_2¢'attention_layer/StatefulPartitionedCall¢#embedding_1/StatefulPartitionedCall¢lstm_3/StatefulPartitionedCall¢(time_distributed/StatefulPartitionedCall
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1_60365*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_603642%
#embedding_1/StatefulPartitionedCall
lstm_3/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0inputs_2inputs_3lstm_3_60602lstm_3_60604lstm_3_60606*
Tin

2*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_606012 
lstm_3/StatefulPartitionedCall«
'attention_layer/StatefulPartitionedCallStatefulPartitionedCallinputs_1'lstm_3/StatefulPartitionedCall:output:0attention_layer_60880attention_layer_60882attention_layer_60884*
Tin	
2*
Tout
2*
_collective_manager_ids
 *U
_output_shapesC
A:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_attention_layer_layer_call_and_return_conditional_losses_608792)
'attention_layer/StatefulPartitionedCall²
concat/PartitionedCallPartitionedCall'lstm_3/StatefulPartitionedCall:output:00attention_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_concat_layer_call_and_return_conditional_losses_608952
concat/PartitionedCallã
(time_distributed/StatefulPartitionedCallStatefulPartitionedCallconcat/PartitionedCall:output:0time_distributed_60897time_distributed_60899*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_602372*
(time_distributed/StatefulPartitionedCall
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿX  2 
time_distributed/Reshape/shape¼
time_distributed/ReshapeReshapeconcat/PartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
time_distributed/Reshape¯
IdentityIdentity1time_distributed/StatefulPartitionedCall:output:0(^attention_layer/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb2

Identity

Identity_1Identity'lstm_3/StatefulPartitionedCall:output:1(^attention_layer/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1

Identity_2Identity'lstm_3/StatefulPartitionedCall:output:2(^attention_layer/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapesp
n:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿP¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : : : : : 2R
'attention_layer/StatefulPartitionedCall'attention_layer/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:TP
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_nameinputs
Ê
Ø
while_cond_64217
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_64217___redundant_placeholder03
/while_while_cond_64217___redundant_placeholder13
/while_while_cond_64217___redundant_placeholder23
/while_while_cond_64217___redundant_placeholder33
/while_while_cond_64217___redundant_placeholder4
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
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :ÿÿÿÿÿÿÿÿÿP: :::::: 
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
:ÿÿÿÿÿÿÿÿÿP:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
¸¼
¢
model_2_lstm_3_while_body_58963:
6model_2_lstm_3_while_model_2_lstm_3_while_loop_counter@
<model_2_lstm_3_while_model_2_lstm_3_while_maximum_iterations$
 model_2_lstm_3_while_placeholder&
"model_2_lstm_3_while_placeholder_1&
"model_2_lstm_3_while_placeholder_2&
"model_2_lstm_3_while_placeholder_37
3model_2_lstm_3_while_model_2_lstm_3_strided_slice_0u
qmodel_2_lstm_3_while_tensorarrayv2read_tensorlistgetitem_model_2_lstm_3_tensorarrayunstack_tensorlistfromtensor_0S
@model_2_lstm_3_while_lstm_cell_3_split_readvariableop_resource_0:	d°	Q
Bmodel_2_lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_0:	°	N
:model_2_lstm_3_while_lstm_cell_3_readvariableop_resource_0:
¬°	!
model_2_lstm_3_while_identity#
model_2_lstm_3_while_identity_1#
model_2_lstm_3_while_identity_2#
model_2_lstm_3_while_identity_3#
model_2_lstm_3_while_identity_4#
model_2_lstm_3_while_identity_55
1model_2_lstm_3_while_model_2_lstm_3_strided_slices
omodel_2_lstm_3_while_tensorarrayv2read_tensorlistgetitem_model_2_lstm_3_tensorarrayunstack_tensorlistfromtensorQ
>model_2_lstm_3_while_lstm_cell_3_split_readvariableop_resource:	d°	O
@model_2_lstm_3_while_lstm_cell_3_split_1_readvariableop_resource:	°	L
8model_2_lstm_3_while_lstm_cell_3_readvariableop_resource:
¬°	¢/model_2/lstm_3/while/lstm_cell_3/ReadVariableOp¢1model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_1¢1model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_2¢1model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_3¢5model_2/lstm_3/while/lstm_cell_3/split/ReadVariableOp¢7model_2/lstm_3/while/lstm_cell_3/split_1/ReadVariableOpá
Fmodel_2/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2H
Fmodel_2/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape­
8model_2/lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqmodel_2_lstm_3_while_tensorarrayv2read_tensorlistgetitem_model_2_lstm_3_tensorarrayunstack_tensorlistfromtensor_0 model_2_lstm_3_while_placeholderOmodel_2/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype02:
8model_2/lstm_3/while/TensorArrayV2Read/TensorListGetItemÓ
0model_2/lstm_3/while/lstm_cell_3/ones_like/ShapeShape?model_2/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:22
0model_2/lstm_3/while/lstm_cell_3/ones_like/Shape©
0model_2/lstm_3/while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?22
0model_2/lstm_3/while/lstm_cell_3/ones_like/Const
*model_2/lstm_3/while/lstm_cell_3/ones_likeFill9model_2/lstm_3/while/lstm_cell_3/ones_like/Shape:output:09model_2/lstm_3/while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2,
*model_2/lstm_3/while/lstm_cell_3/ones_likeº
2model_2/lstm_3/while/lstm_cell_3/ones_like_1/ShapeShape"model_2_lstm_3_while_placeholder_2*
T0*
_output_shapes
:24
2model_2/lstm_3/while/lstm_cell_3/ones_like_1/Shape­
2model_2/lstm_3/while/lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?24
2model_2/lstm_3/while/lstm_cell_3/ones_like_1/Const
,model_2/lstm_3/while/lstm_cell_3/ones_like_1Fill;model_2/lstm_3/while/lstm_cell_3/ones_like_1/Shape:output:0;model_2/lstm_3/while/lstm_cell_3/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2.
,model_2/lstm_3/while/lstm_cell_3/ones_like_1û
$model_2/lstm_3/while/lstm_cell_3/mulMul?model_2/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:03model_2/lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2&
$model_2/lstm_3/while/lstm_cell_3/mulÿ
&model_2/lstm_3/while/lstm_cell_3/mul_1Mul?model_2/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:03model_2/lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2(
&model_2/lstm_3/while/lstm_cell_3/mul_1ÿ
&model_2/lstm_3/while/lstm_cell_3/mul_2Mul?model_2/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:03model_2/lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2(
&model_2/lstm_3/while/lstm_cell_3/mul_2ÿ
&model_2/lstm_3/while/lstm_cell_3/mul_3Mul?model_2/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:03model_2/lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2(
&model_2/lstm_3/while/lstm_cell_3/mul_3¦
0model_2/lstm_3/while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0model_2/lstm_3/while/lstm_cell_3/split/split_dimð
5model_2/lstm_3/while/lstm_cell_3/split/ReadVariableOpReadVariableOp@model_2_lstm_3_while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	d°	*
dtype027
5model_2/lstm_3/while/lstm_cell_3/split/ReadVariableOp¯
&model_2/lstm_3/while/lstm_cell_3/splitSplit9model_2/lstm_3/while/lstm_cell_3/split/split_dim:output:0=model_2/lstm_3/while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d¬:	d¬:	d¬:	d¬*
	num_split2(
&model_2/lstm_3/while/lstm_cell_3/splitê
'model_2/lstm_3/while/lstm_cell_3/MatMulMatMul(model_2/lstm_3/while/lstm_cell_3/mul:z:0/model_2/lstm_3/while/lstm_cell_3/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2)
'model_2/lstm_3/while/lstm_cell_3/MatMulð
)model_2/lstm_3/while/lstm_cell_3/MatMul_1MatMul*model_2/lstm_3/while/lstm_cell_3/mul_1:z:0/model_2/lstm_3/while/lstm_cell_3/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2+
)model_2/lstm_3/while/lstm_cell_3/MatMul_1ð
)model_2/lstm_3/while/lstm_cell_3/MatMul_2MatMul*model_2/lstm_3/while/lstm_cell_3/mul_2:z:0/model_2/lstm_3/while/lstm_cell_3/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2+
)model_2/lstm_3/while/lstm_cell_3/MatMul_2ð
)model_2/lstm_3/while/lstm_cell_3/MatMul_3MatMul*model_2/lstm_3/while/lstm_cell_3/mul_3:z:0/model_2/lstm_3/while/lstm_cell_3/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2+
)model_2/lstm_3/while/lstm_cell_3/MatMul_3ª
2model_2/lstm_3/while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 24
2model_2/lstm_3/while/lstm_cell_3/split_1/split_dimò
7model_2/lstm_3/while/lstm_cell_3/split_1/ReadVariableOpReadVariableOpBmodel_2_lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:°	*
dtype029
7model_2/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp§
(model_2/lstm_3/while/lstm_cell_3/split_1Split;model_2/lstm_3/while/lstm_cell_3/split_1/split_dim:output:0?model_2/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:¬:¬:¬:¬*
	num_split2*
(model_2/lstm_3/while/lstm_cell_3/split_1ø
(model_2/lstm_3/while/lstm_cell_3/BiasAddBiasAdd1model_2/lstm_3/while/lstm_cell_3/MatMul:product:01model_2/lstm_3/while/lstm_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2*
(model_2/lstm_3/while/lstm_cell_3/BiasAddþ
*model_2/lstm_3/while/lstm_cell_3/BiasAdd_1BiasAdd3model_2/lstm_3/while/lstm_cell_3/MatMul_1:product:01model_2/lstm_3/while/lstm_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2,
*model_2/lstm_3/while/lstm_cell_3/BiasAdd_1þ
*model_2/lstm_3/while/lstm_cell_3/BiasAdd_2BiasAdd3model_2/lstm_3/while/lstm_cell_3/MatMul_2:product:01model_2/lstm_3/while/lstm_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2,
*model_2/lstm_3/while/lstm_cell_3/BiasAdd_2þ
*model_2/lstm_3/while/lstm_cell_3/BiasAdd_3BiasAdd3model_2/lstm_3/while/lstm_cell_3/MatMul_3:product:01model_2/lstm_3/while/lstm_cell_3/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2,
*model_2/lstm_3/while/lstm_cell_3/BiasAdd_3å
&model_2/lstm_3/while/lstm_cell_3/mul_4Mul"model_2_lstm_3_while_placeholder_25model_2/lstm_3/while/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2(
&model_2/lstm_3/while/lstm_cell_3/mul_4å
&model_2/lstm_3/while/lstm_cell_3/mul_5Mul"model_2_lstm_3_while_placeholder_25model_2/lstm_3/while/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2(
&model_2/lstm_3/while/lstm_cell_3/mul_5å
&model_2/lstm_3/while/lstm_cell_3/mul_6Mul"model_2_lstm_3_while_placeholder_25model_2/lstm_3/while/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2(
&model_2/lstm_3/while/lstm_cell_3/mul_6å
&model_2/lstm_3/while/lstm_cell_3/mul_7Mul"model_2_lstm_3_while_placeholder_25model_2/lstm_3/while/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2(
&model_2/lstm_3/while/lstm_cell_3/mul_7ß
/model_2/lstm_3/while/lstm_cell_3/ReadVariableOpReadVariableOp:model_2_lstm_3_while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype021
/model_2/lstm_3/while/lstm_cell_3/ReadVariableOp½
4model_2/lstm_3/while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        26
4model_2/lstm_3/while/lstm_cell_3/strided_slice/stackÁ
6model_2/lstm_3/while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  28
6model_2/lstm_3/while/lstm_cell_3/strided_slice/stack_1Á
6model_2/lstm_3/while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6model_2/lstm_3/while/lstm_cell_3/strided_slice/stack_2Ä
.model_2/lstm_3/while/lstm_cell_3/strided_sliceStridedSlice7model_2/lstm_3/while/lstm_cell_3/ReadVariableOp:value:0=model_2/lstm_3/while/lstm_cell_3/strided_slice/stack:output:0?model_2/lstm_3/while/lstm_cell_3/strided_slice/stack_1:output:0?model_2/lstm_3/while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask20
.model_2/lstm_3/while/lstm_cell_3/strided_sliceø
)model_2/lstm_3/while/lstm_cell_3/MatMul_4MatMul*model_2/lstm_3/while/lstm_cell_3/mul_4:z:07model_2/lstm_3/while/lstm_cell_3/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2+
)model_2/lstm_3/while/lstm_cell_3/MatMul_4ð
$model_2/lstm_3/while/lstm_cell_3/addAddV21model_2/lstm_3/while/lstm_cell_3/BiasAdd:output:03model_2/lstm_3/while/lstm_cell_3/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2&
$model_2/lstm_3/while/lstm_cell_3/add¼
(model_2/lstm_3/while/lstm_cell_3/SigmoidSigmoid(model_2/lstm_3/while/lstm_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2*
(model_2/lstm_3/while/lstm_cell_3/Sigmoidã
1model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_1ReadVariableOp:model_2_lstm_3_while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype023
1model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_1Á
6model_2/lstm_3/while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  28
6model_2/lstm_3/while/lstm_cell_3/strided_slice_1/stackÅ
8model_2/lstm_3/while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  2:
8model_2/lstm_3/while/lstm_cell_3/strided_slice_1/stack_1Å
8model_2/lstm_3/while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8model_2/lstm_3/while/lstm_cell_3/strided_slice_1/stack_2Ð
0model_2/lstm_3/while/lstm_cell_3/strided_slice_1StridedSlice9model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_1:value:0?model_2/lstm_3/while/lstm_cell_3/strided_slice_1/stack:output:0Amodel_2/lstm_3/while/lstm_cell_3/strided_slice_1/stack_1:output:0Amodel_2/lstm_3/while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask22
0model_2/lstm_3/while/lstm_cell_3/strided_slice_1ú
)model_2/lstm_3/while/lstm_cell_3/MatMul_5MatMul*model_2/lstm_3/while/lstm_cell_3/mul_5:z:09model_2/lstm_3/while/lstm_cell_3/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2+
)model_2/lstm_3/while/lstm_cell_3/MatMul_5ö
&model_2/lstm_3/while/lstm_cell_3/add_1AddV23model_2/lstm_3/while/lstm_cell_3/BiasAdd_1:output:03model_2/lstm_3/while/lstm_cell_3/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2(
&model_2/lstm_3/while/lstm_cell_3/add_1Â
*model_2/lstm_3/while/lstm_cell_3/Sigmoid_1Sigmoid*model_2/lstm_3/while/lstm_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2,
*model_2/lstm_3/while/lstm_cell_3/Sigmoid_1Þ
&model_2/lstm_3/while/lstm_cell_3/mul_8Mul.model_2/lstm_3/while/lstm_cell_3/Sigmoid_1:y:0"model_2_lstm_3_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2(
&model_2/lstm_3/while/lstm_cell_3/mul_8ã
1model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_2ReadVariableOp:model_2_lstm_3_while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype023
1model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_2Á
6model_2/lstm_3/while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  28
6model_2/lstm_3/while/lstm_cell_3/strided_slice_2/stackÅ
8model_2/lstm_3/while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2:
8model_2/lstm_3/while/lstm_cell_3/strided_slice_2/stack_1Å
8model_2/lstm_3/while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8model_2/lstm_3/while/lstm_cell_3/strided_slice_2/stack_2Ð
0model_2/lstm_3/while/lstm_cell_3/strided_slice_2StridedSlice9model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_2:value:0?model_2/lstm_3/while/lstm_cell_3/strided_slice_2/stack:output:0Amodel_2/lstm_3/while/lstm_cell_3/strided_slice_2/stack_1:output:0Amodel_2/lstm_3/while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask22
0model_2/lstm_3/while/lstm_cell_3/strided_slice_2ú
)model_2/lstm_3/while/lstm_cell_3/MatMul_6MatMul*model_2/lstm_3/while/lstm_cell_3/mul_6:z:09model_2/lstm_3/while/lstm_cell_3/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2+
)model_2/lstm_3/while/lstm_cell_3/MatMul_6ö
&model_2/lstm_3/while/lstm_cell_3/add_2AddV23model_2/lstm_3/while/lstm_cell_3/BiasAdd_2:output:03model_2/lstm_3/while/lstm_cell_3/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2(
&model_2/lstm_3/while/lstm_cell_3/add_2µ
%model_2/lstm_3/while/lstm_cell_3/TanhTanh*model_2/lstm_3/while/lstm_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2'
%model_2/lstm_3/while/lstm_cell_3/Tanhã
&model_2/lstm_3/while/lstm_cell_3/mul_9Mul,model_2/lstm_3/while/lstm_cell_3/Sigmoid:y:0)model_2/lstm_3/while/lstm_cell_3/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2(
&model_2/lstm_3/while/lstm_cell_3/mul_9ä
&model_2/lstm_3/while/lstm_cell_3/add_3AddV2*model_2/lstm_3/while/lstm_cell_3/mul_8:z:0*model_2/lstm_3/while/lstm_cell_3/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2(
&model_2/lstm_3/while/lstm_cell_3/add_3ã
1model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_3ReadVariableOp:model_2_lstm_3_while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype023
1model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_3Á
6model_2/lstm_3/while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      28
6model_2/lstm_3/while/lstm_cell_3/strided_slice_3/stackÅ
8model_2/lstm_3/while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2:
8model_2/lstm_3/while/lstm_cell_3/strided_slice_3/stack_1Å
8model_2/lstm_3/while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8model_2/lstm_3/while/lstm_cell_3/strided_slice_3/stack_2Ð
0model_2/lstm_3/while/lstm_cell_3/strided_slice_3StridedSlice9model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_3:value:0?model_2/lstm_3/while/lstm_cell_3/strided_slice_3/stack:output:0Amodel_2/lstm_3/while/lstm_cell_3/strided_slice_3/stack_1:output:0Amodel_2/lstm_3/while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask22
0model_2/lstm_3/while/lstm_cell_3/strided_slice_3ú
)model_2/lstm_3/while/lstm_cell_3/MatMul_7MatMul*model_2/lstm_3/while/lstm_cell_3/mul_7:z:09model_2/lstm_3/while/lstm_cell_3/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2+
)model_2/lstm_3/while/lstm_cell_3/MatMul_7ö
&model_2/lstm_3/while/lstm_cell_3/add_4AddV23model_2/lstm_3/while/lstm_cell_3/BiasAdd_3:output:03model_2/lstm_3/while/lstm_cell_3/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2(
&model_2/lstm_3/while/lstm_cell_3/add_4Â
*model_2/lstm_3/while/lstm_cell_3/Sigmoid_2Sigmoid*model_2/lstm_3/while/lstm_cell_3/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2,
*model_2/lstm_3/while/lstm_cell_3/Sigmoid_2¹
'model_2/lstm_3/while/lstm_cell_3/Tanh_1Tanh*model_2/lstm_3/while/lstm_cell_3/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2)
'model_2/lstm_3/while/lstm_cell_3/Tanh_1é
'model_2/lstm_3/while/lstm_cell_3/mul_10Mul.model_2/lstm_3/while/lstm_cell_3/Sigmoid_2:y:0+model_2/lstm_3/while/lstm_cell_3/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2)
'model_2/lstm_3/while/lstm_cell_3/mul_10«
9model_2/lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"model_2_lstm_3_while_placeholder_1 model_2_lstm_3_while_placeholder+model_2/lstm_3/while/lstm_cell_3/mul_10:z:0*
_output_shapes
: *
element_dtype02;
9model_2/lstm_3/while/TensorArrayV2Write/TensorListSetItemz
model_2/lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
model_2/lstm_3/while/add/y¥
model_2/lstm_3/while/addAddV2 model_2_lstm_3_while_placeholder#model_2/lstm_3/while/add/y:output:0*
T0*
_output_shapes
: 2
model_2/lstm_3/while/add~
model_2/lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
model_2/lstm_3/while/add_1/yÁ
model_2/lstm_3/while/add_1AddV26model_2_lstm_3_while_model_2_lstm_3_while_loop_counter%model_2/lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2
model_2/lstm_3/while/add_1Ë
model_2/lstm_3/while/IdentityIdentitymodel_2/lstm_3/while/add_1:z:00^model_2/lstm_3/while/lstm_cell_3/ReadVariableOp2^model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_12^model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_22^model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_36^model_2/lstm_3/while/lstm_cell_3/split/ReadVariableOp8^model_2/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
model_2/lstm_3/while/Identityí
model_2/lstm_3/while/Identity_1Identity<model_2_lstm_3_while_model_2_lstm_3_while_maximum_iterations0^model_2/lstm_3/while/lstm_cell_3/ReadVariableOp2^model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_12^model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_22^model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_36^model_2/lstm_3/while/lstm_cell_3/split/ReadVariableOp8^model_2/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2!
model_2/lstm_3/while/Identity_1Í
model_2/lstm_3/while/Identity_2Identitymodel_2/lstm_3/while/add:z:00^model_2/lstm_3/while/lstm_cell_3/ReadVariableOp2^model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_12^model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_22^model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_36^model_2/lstm_3/while/lstm_cell_3/split/ReadVariableOp8^model_2/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2!
model_2/lstm_3/while/Identity_2ú
model_2/lstm_3/while/Identity_3IdentityImodel_2/lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^model_2/lstm_3/while/lstm_cell_3/ReadVariableOp2^model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_12^model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_22^model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_36^model_2/lstm_3/while/lstm_cell_3/split/ReadVariableOp8^model_2/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2!
model_2/lstm_3/while/Identity_3î
model_2/lstm_3/while/Identity_4Identity+model_2/lstm_3/while/lstm_cell_3/mul_10:z:00^model_2/lstm_3/while/lstm_cell_3/ReadVariableOp2^model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_12^model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_22^model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_36^model_2/lstm_3/while/lstm_cell_3/split/ReadVariableOp8^model_2/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2!
model_2/lstm_3/while/Identity_4í
model_2/lstm_3/while/Identity_5Identity*model_2/lstm_3/while/lstm_cell_3/add_3:z:00^model_2/lstm_3/while/lstm_cell_3/ReadVariableOp2^model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_12^model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_22^model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_36^model_2/lstm_3/while/lstm_cell_3/split/ReadVariableOp8^model_2/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2!
model_2/lstm_3/while/Identity_5"G
model_2_lstm_3_while_identity&model_2/lstm_3/while/Identity:output:0"K
model_2_lstm_3_while_identity_1(model_2/lstm_3/while/Identity_1:output:0"K
model_2_lstm_3_while_identity_2(model_2/lstm_3/while/Identity_2:output:0"K
model_2_lstm_3_while_identity_3(model_2/lstm_3/while/Identity_3:output:0"K
model_2_lstm_3_while_identity_4(model_2/lstm_3/while/Identity_4:output:0"K
model_2_lstm_3_while_identity_5(model_2/lstm_3/while/Identity_5:output:0"v
8model_2_lstm_3_while_lstm_cell_3_readvariableop_resource:model_2_lstm_3_while_lstm_cell_3_readvariableop_resource_0"
@model_2_lstm_3_while_lstm_cell_3_split_1_readvariableop_resourceBmodel_2_lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_0"
>model_2_lstm_3_while_lstm_cell_3_split_readvariableop_resource@model_2_lstm_3_while_lstm_cell_3_split_readvariableop_resource_0"h
1model_2_lstm_3_while_model_2_lstm_3_strided_slice3model_2_lstm_3_while_model_2_lstm_3_strided_slice_0"ä
omodel_2_lstm_3_while_tensorarrayv2read_tensorlistgetitem_model_2_lstm_3_tensorarrayunstack_tensorlistfromtensorqmodel_2_lstm_3_while_tensorarrayv2read_tensorlistgetitem_model_2_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : 2b
/model_2/lstm_3/while/lstm_cell_3/ReadVariableOp/model_2/lstm_3/while/lstm_cell_3/ReadVariableOp2f
1model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_11model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_12f
1model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_21model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_22f
1model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_31model_2/lstm_3/while/lstm_cell_3/ReadVariableOp_32n
5model_2/lstm_3/while/lstm_cell_3/split/ReadVariableOp5model_2/lstm_3/while/lstm_cell_3/split/ReadVariableOp2r
7model_2/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp7model_2/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ¬:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
: 
å

Ç
"attention_layer_while_1_cond_62034@
<attention_layer_while_1_attention_layer_while_1_loop_counterF
Battention_layer_while_1_attention_layer_while_1_maximum_iterations'
#attention_layer_while_1_placeholder)
%attention_layer_while_1_placeholder_1)
%attention_layer_while_1_placeholder_2@
<attention_layer_while_1_less_attention_layer_strided_slice_3W
Sattention_layer_while_1_attention_layer_while_1_cond_62034___redundant_placeholder0W
Sattention_layer_while_1_attention_layer_while_1_cond_62034___redundant_placeholder1$
 attention_layer_while_1_identity
È
attention_layer/while_1/LessLess#attention_layer_while_1_placeholder<attention_layer_while_1_less_attention_layer_strided_slice_3*
T0*
_output_shapes
: 2
attention_layer/while_1/Less
 attention_layer/while_1/IdentityIdentity attention_layer/while_1/Less:z:0*
T0
*
_output_shapes
: 2"
 attention_layer/while_1/Identity"M
 attention_layer_while_1_identity)attention_layer/while_1/Identity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ¬: ::: 
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
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
Ð

£
F__inference_embedding_1_layer_call_and_return_conditional_losses_62839

inputs)
embedding_lookup_62833:	íbd
identity¢embedding_lookupf
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Cast
embedding_lookupResourceGatherembedding_lookup_62833Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/62833*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
dtype02
embedding_lookupõ
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/62833*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2
embedding_lookup/Identity©
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý(

B__inference_model_2_layer_call_and_return_conditional_losses_61559
input_2
input_5
input_3
input_4$
embedding_1_61528:	íbd
lstm_3_61531:	d°	
lstm_3_61533:	°	 
lstm_3_61535:
¬°	)
attention_layer_61540:
¬¬)
attention_layer_61542:
¬¬(
attention_layer_61544:	¬*
time_distributed_61549:
Øíb%
time_distributed_61551:	íb
identity

identity_1

identity_2¢'attention_layer/StatefulPartitionedCall¢#embedding_1/StatefulPartitionedCall¢lstm_3/StatefulPartitionedCall¢(time_distributed/StatefulPartitionedCall
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_2embedding_1_61528*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_603642%
#embedding_1/StatefulPartitionedCall
lstm_3/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0input_3input_4lstm_3_61531lstm_3_61533lstm_3_61535*
Tin

2*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_613372 
lstm_3/StatefulPartitionedCallª
'attention_layer/StatefulPartitionedCallStatefulPartitionedCallinput_5'lstm_3/StatefulPartitionedCall:output:0attention_layer_61540attention_layer_61542attention_layer_61544*
Tin	
2*
Tout
2*
_collective_manager_ids
 *U
_output_shapesC
A:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_attention_layer_layer_call_and_return_conditional_losses_608792)
'attention_layer/StatefulPartitionedCall²
concat/PartitionedCallPartitionedCall'lstm_3/StatefulPartitionedCall:output:00attention_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_concat_layer_call_and_return_conditional_losses_608952
concat/PartitionedCallã
(time_distributed/StatefulPartitionedCallStatefulPartitionedCallconcat/PartitionedCall:output:0time_distributed_61549time_distributed_61551*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_602852*
(time_distributed/StatefulPartitionedCall
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿX  2 
time_distributed/Reshape/shape¼
time_distributed/ReshapeReshapeconcat/PartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
time_distributed/Reshape¯
IdentityIdentity1time_distributed/StatefulPartitionedCall:output:0(^attention_layer/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb2

Identity

Identity_1Identity'lstm_3/StatefulPartitionedCall:output:1(^attention_layer/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1

Identity_2Identity'lstm_3/StatefulPartitionedCall:output:2(^attention_layer/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapesp
n:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿP¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : : : : : 2R
'attention_layer/StatefulPartitionedCall'attention_layer/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall:Y U
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2:UQ
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬
!
_user_specified_name	input_5:QM
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
!
_user_specified_name	input_3:QM
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
!
_user_specified_name	input_4
À
Ö
&__inference_lstm_3_layer_call_fn_64106
inputs_0
unknown:	d°	
	unknown_0:	°	
	unknown_1:
¬°	
identity

identity_1

identity_2¢StatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_599272
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
Ð
¼
while_cond_61136
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_61136___redundant_placeholder03
/while_while_cond_61136___redundant_placeholder13
/while_while_cond_61136___redundant_placeholder23
/while_while_cond_61136___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ¬:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
:
â·
´
 __inference__wrapped_model_59383
input_2
input_5
input_3
input_4=
*model_2_embedding_1_embedding_lookup_58865:	íbdK
8model_2_lstm_3_lstm_cell_3_split_readvariableop_resource:	d°	I
:model_2_lstm_3_lstm_cell_3_split_1_readvariableop_resource:	°	F
2model_2_lstm_3_lstm_cell_3_readvariableop_resource:
¬°	K
7model_2_attention_layer_shape_2_readvariableop_resource:
¬¬L
8model_2_attention_layer_matmul_1_readvariableop_resource:
¬¬J
7model_2_attention_layer_shape_4_readvariableop_resource:	¬Q
=model_2_time_distributed_dense_matmul_readvariableop_resource:
ØíbM
>model_2_time_distributed_dense_biasadd_readvariableop_resource:	íb
identity

identity_1

identity_2¢/model_2/attention_layer/MatMul_1/ReadVariableOp¢2model_2/attention_layer/transpose_1/ReadVariableOp¢2model_2/attention_layer/transpose_2/ReadVariableOp¢model_2/attention_layer/while¢$model_2/embedding_1/embedding_lookup¢)model_2/lstm_3/lstm_cell_3/ReadVariableOp¢+model_2/lstm_3/lstm_cell_3/ReadVariableOp_1¢+model_2/lstm_3/lstm_cell_3/ReadVariableOp_2¢+model_2/lstm_3/lstm_cell_3/ReadVariableOp_3¢/model_2/lstm_3/lstm_cell_3/split/ReadVariableOp¢1model_2/lstm_3/lstm_cell_3/split_1/ReadVariableOp¢model_2/lstm_3/while¢5model_2/time_distributed/dense/BiasAdd/ReadVariableOp¢4model_2/time_distributed/dense/MatMul/ReadVariableOp
model_2/embedding_1/CastCastinput_2*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
model_2/embedding_1/Castè
$model_2/embedding_1/embedding_lookupResourceGather*model_2_embedding_1_embedding_lookup_58865model_2/embedding_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*=
_class3
1/loc:@model_2/embedding_1/embedding_lookup/58865*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
dtype02&
$model_2/embedding_1/embedding_lookupÅ
-model_2/embedding_1/embedding_lookup/IdentityIdentity-model_2/embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*=
_class3
1/loc:@model_2/embedding_1/embedding_lookup/58865*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2/
-model_2/embedding_1/embedding_lookup/Identityå
/model_2/embedding_1/embedding_lookup/Identity_1Identity6model_2/embedding_1/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd21
/model_2/embedding_1/embedding_lookup/Identity_1
model_2/lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
model_2/lstm_3/transpose/permâ
model_2/lstm_3/transpose	Transpose8model_2/embedding_1/embedding_lookup/Identity_1:output:0&model_2/lstm_3/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2
model_2/lstm_3/transposex
model_2/lstm_3/ShapeShapemodel_2/lstm_3/transpose:y:0*
T0*
_output_shapes
:2
model_2/lstm_3/Shape
"model_2/lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"model_2/lstm_3/strided_slice/stack
$model_2/lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$model_2/lstm_3/strided_slice/stack_1
$model_2/lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$model_2/lstm_3/strided_slice/stack_2¼
model_2/lstm_3/strided_sliceStridedSlicemodel_2/lstm_3/Shape:output:0+model_2/lstm_3/strided_slice/stack:output:0-model_2/lstm_3/strided_slice/stack_1:output:0-model_2/lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
model_2/lstm_3/strided_slice£
*model_2/lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2,
*model_2/lstm_3/TensorArrayV2/element_shapeì
model_2/lstm_3/TensorArrayV2TensorListReserve3model_2/lstm_3/TensorArrayV2/element_shape:output:0%model_2/lstm_3/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
model_2/lstm_3/TensorArrayV2Ý
Dmodel_2/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2F
Dmodel_2/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape´
6model_2/lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel_2/lstm_3/transpose:y:0Mmodel_2/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type028
6model_2/lstm_3/TensorArrayUnstack/TensorListFromTensor
$model_2/lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$model_2/lstm_3/strided_slice_1/stack
&model_2/lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&model_2/lstm_3/strided_slice_1/stack_1
&model_2/lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&model_2/lstm_3/strided_slice_1/stack_2Ö
model_2/lstm_3/strided_slice_1StridedSlicemodel_2/lstm_3/transpose:y:0-model_2/lstm_3/strided_slice_1/stack:output:0/model_2/lstm_3/strided_slice_1/stack_1:output:0/model_2/lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2 
model_2/lstm_3/strided_slice_1¯
*model_2/lstm_3/lstm_cell_3/ones_like/ShapeShape'model_2/lstm_3/strided_slice_1:output:0*
T0*
_output_shapes
:2,
*model_2/lstm_3/lstm_cell_3/ones_like/Shape
*model_2/lstm_3/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*model_2/lstm_3/lstm_cell_3/ones_like/Constð
$model_2/lstm_3/lstm_cell_3/ones_likeFill3model_2/lstm_3/lstm_cell_3/ones_like/Shape:output:03model_2/lstm_3/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2&
$model_2/lstm_3/lstm_cell_3/ones_like
,model_2/lstm_3/lstm_cell_3/ones_like_1/ShapeShapeinput_3*
T0*
_output_shapes
:2.
,model_2/lstm_3/lstm_cell_3/ones_like_1/Shape¡
,model_2/lstm_3/lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2.
,model_2/lstm_3/lstm_cell_3/ones_like_1/Constù
&model_2/lstm_3/lstm_cell_3/ones_like_1Fill5model_2/lstm_3/lstm_cell_3/ones_like_1/Shape:output:05model_2/lstm_3/lstm_cell_3/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2(
&model_2/lstm_3/lstm_cell_3/ones_like_1Ñ
model_2/lstm_3/lstm_cell_3/mulMul'model_2/lstm_3/strided_slice_1:output:0-model_2/lstm_3/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
model_2/lstm_3/lstm_cell_3/mulÕ
 model_2/lstm_3/lstm_cell_3/mul_1Mul'model_2/lstm_3/strided_slice_1:output:0-model_2/lstm_3/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 model_2/lstm_3/lstm_cell_3/mul_1Õ
 model_2/lstm_3/lstm_cell_3/mul_2Mul'model_2/lstm_3/strided_slice_1:output:0-model_2/lstm_3/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 model_2/lstm_3/lstm_cell_3/mul_2Õ
 model_2/lstm_3/lstm_cell_3/mul_3Mul'model_2/lstm_3/strided_slice_1:output:0-model_2/lstm_3/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 model_2/lstm_3/lstm_cell_3/mul_3
*model_2/lstm_3/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*model_2/lstm_3/lstm_cell_3/split/split_dimÜ
/model_2/lstm_3/lstm_cell_3/split/ReadVariableOpReadVariableOp8model_2_lstm_3_lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	d°	*
dtype021
/model_2/lstm_3/lstm_cell_3/split/ReadVariableOp
 model_2/lstm_3/lstm_cell_3/splitSplit3model_2/lstm_3/lstm_cell_3/split/split_dim:output:07model_2/lstm_3/lstm_cell_3/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d¬:	d¬:	d¬:	d¬*
	num_split2"
 model_2/lstm_3/lstm_cell_3/splitÒ
!model_2/lstm_3/lstm_cell_3/MatMulMatMul"model_2/lstm_3/lstm_cell_3/mul:z:0)model_2/lstm_3/lstm_cell_3/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!model_2/lstm_3/lstm_cell_3/MatMulØ
#model_2/lstm_3/lstm_cell_3/MatMul_1MatMul$model_2/lstm_3/lstm_cell_3/mul_1:z:0)model_2/lstm_3/lstm_cell_3/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2%
#model_2/lstm_3/lstm_cell_3/MatMul_1Ø
#model_2/lstm_3/lstm_cell_3/MatMul_2MatMul$model_2/lstm_3/lstm_cell_3/mul_2:z:0)model_2/lstm_3/lstm_cell_3/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2%
#model_2/lstm_3/lstm_cell_3/MatMul_2Ø
#model_2/lstm_3/lstm_cell_3/MatMul_3MatMul$model_2/lstm_3/lstm_cell_3/mul_3:z:0)model_2/lstm_3/lstm_cell_3/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2%
#model_2/lstm_3/lstm_cell_3/MatMul_3
,model_2/lstm_3/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2.
,model_2/lstm_3/lstm_cell_3/split_1/split_dimÞ
1model_2/lstm_3/lstm_cell_3/split_1/ReadVariableOpReadVariableOp:model_2_lstm_3_lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:°	*
dtype023
1model_2/lstm_3/lstm_cell_3/split_1/ReadVariableOp
"model_2/lstm_3/lstm_cell_3/split_1Split5model_2/lstm_3/lstm_cell_3/split_1/split_dim:output:09model_2/lstm_3/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:¬:¬:¬:¬*
	num_split2$
"model_2/lstm_3/lstm_cell_3/split_1à
"model_2/lstm_3/lstm_cell_3/BiasAddBiasAdd+model_2/lstm_3/lstm_cell_3/MatMul:product:0+model_2/lstm_3/lstm_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"model_2/lstm_3/lstm_cell_3/BiasAddæ
$model_2/lstm_3/lstm_cell_3/BiasAdd_1BiasAdd-model_2/lstm_3/lstm_cell_3/MatMul_1:product:0+model_2/lstm_3/lstm_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2&
$model_2/lstm_3/lstm_cell_3/BiasAdd_1æ
$model_2/lstm_3/lstm_cell_3/BiasAdd_2BiasAdd-model_2/lstm_3/lstm_cell_3/MatMul_2:product:0+model_2/lstm_3/lstm_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2&
$model_2/lstm_3/lstm_cell_3/BiasAdd_2æ
$model_2/lstm_3/lstm_cell_3/BiasAdd_3BiasAdd-model_2/lstm_3/lstm_cell_3/MatMul_3:product:0+model_2/lstm_3/lstm_cell_3/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2&
$model_2/lstm_3/lstm_cell_3/BiasAdd_3¸
 model_2/lstm_3/lstm_cell_3/mul_4Mulinput_3/model_2/lstm_3/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 model_2/lstm_3/lstm_cell_3/mul_4¸
 model_2/lstm_3/lstm_cell_3/mul_5Mulinput_3/model_2/lstm_3/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 model_2/lstm_3/lstm_cell_3/mul_5¸
 model_2/lstm_3/lstm_cell_3/mul_6Mulinput_3/model_2/lstm_3/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 model_2/lstm_3/lstm_cell_3/mul_6¸
 model_2/lstm_3/lstm_cell_3/mul_7Mulinput_3/model_2/lstm_3/lstm_cell_3/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 model_2/lstm_3/lstm_cell_3/mul_7Ë
)model_2/lstm_3/lstm_cell_3/ReadVariableOpReadVariableOp2model_2_lstm_3_lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02+
)model_2/lstm_3/lstm_cell_3/ReadVariableOp±
.model_2/lstm_3/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.model_2/lstm_3/lstm_cell_3/strided_slice/stackµ
0model_2/lstm_3/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  22
0model_2/lstm_3/lstm_cell_3/strided_slice/stack_1µ
0model_2/lstm_3/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0model_2/lstm_3/lstm_cell_3/strided_slice/stack_2 
(model_2/lstm_3/lstm_cell_3/strided_sliceStridedSlice1model_2/lstm_3/lstm_cell_3/ReadVariableOp:value:07model_2/lstm_3/lstm_cell_3/strided_slice/stack:output:09model_2/lstm_3/lstm_cell_3/strided_slice/stack_1:output:09model_2/lstm_3/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2*
(model_2/lstm_3/lstm_cell_3/strided_sliceà
#model_2/lstm_3/lstm_cell_3/MatMul_4MatMul$model_2/lstm_3/lstm_cell_3/mul_4:z:01model_2/lstm_3/lstm_cell_3/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2%
#model_2/lstm_3/lstm_cell_3/MatMul_4Ø
model_2/lstm_3/lstm_cell_3/addAddV2+model_2/lstm_3/lstm_cell_3/BiasAdd:output:0-model_2/lstm_3/lstm_cell_3/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
model_2/lstm_3/lstm_cell_3/addª
"model_2/lstm_3/lstm_cell_3/SigmoidSigmoid"model_2/lstm_3/lstm_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"model_2/lstm_3/lstm_cell_3/SigmoidÏ
+model_2/lstm_3/lstm_cell_3/ReadVariableOp_1ReadVariableOp2model_2_lstm_3_lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02-
+model_2/lstm_3/lstm_cell_3/ReadVariableOp_1µ
0model_2/lstm_3/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  22
0model_2/lstm_3/lstm_cell_3/strided_slice_1/stack¹
2model_2/lstm_3/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  24
2model_2/lstm_3/lstm_cell_3/strided_slice_1/stack_1¹
2model_2/lstm_3/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2model_2/lstm_3/lstm_cell_3/strided_slice_1/stack_2¬
*model_2/lstm_3/lstm_cell_3/strided_slice_1StridedSlice3model_2/lstm_3/lstm_cell_3/ReadVariableOp_1:value:09model_2/lstm_3/lstm_cell_3/strided_slice_1/stack:output:0;model_2/lstm_3/lstm_cell_3/strided_slice_1/stack_1:output:0;model_2/lstm_3/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2,
*model_2/lstm_3/lstm_cell_3/strided_slice_1â
#model_2/lstm_3/lstm_cell_3/MatMul_5MatMul$model_2/lstm_3/lstm_cell_3/mul_5:z:03model_2/lstm_3/lstm_cell_3/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2%
#model_2/lstm_3/lstm_cell_3/MatMul_5Þ
 model_2/lstm_3/lstm_cell_3/add_1AddV2-model_2/lstm_3/lstm_cell_3/BiasAdd_1:output:0-model_2/lstm_3/lstm_cell_3/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 model_2/lstm_3/lstm_cell_3/add_1°
$model_2/lstm_3/lstm_cell_3/Sigmoid_1Sigmoid$model_2/lstm_3/lstm_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2&
$model_2/lstm_3/lstm_cell_3/Sigmoid_1±
 model_2/lstm_3/lstm_cell_3/mul_8Mul(model_2/lstm_3/lstm_cell_3/Sigmoid_1:y:0input_4*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 model_2/lstm_3/lstm_cell_3/mul_8Ï
+model_2/lstm_3/lstm_cell_3/ReadVariableOp_2ReadVariableOp2model_2_lstm_3_lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02-
+model_2/lstm_3/lstm_cell_3/ReadVariableOp_2µ
0model_2/lstm_3/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  22
0model_2/lstm_3/lstm_cell_3/strided_slice_2/stack¹
2model_2/lstm_3/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      24
2model_2/lstm_3/lstm_cell_3/strided_slice_2/stack_1¹
2model_2/lstm_3/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2model_2/lstm_3/lstm_cell_3/strided_slice_2/stack_2¬
*model_2/lstm_3/lstm_cell_3/strided_slice_2StridedSlice3model_2/lstm_3/lstm_cell_3/ReadVariableOp_2:value:09model_2/lstm_3/lstm_cell_3/strided_slice_2/stack:output:0;model_2/lstm_3/lstm_cell_3/strided_slice_2/stack_1:output:0;model_2/lstm_3/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2,
*model_2/lstm_3/lstm_cell_3/strided_slice_2â
#model_2/lstm_3/lstm_cell_3/MatMul_6MatMul$model_2/lstm_3/lstm_cell_3/mul_6:z:03model_2/lstm_3/lstm_cell_3/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2%
#model_2/lstm_3/lstm_cell_3/MatMul_6Þ
 model_2/lstm_3/lstm_cell_3/add_2AddV2-model_2/lstm_3/lstm_cell_3/BiasAdd_2:output:0-model_2/lstm_3/lstm_cell_3/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 model_2/lstm_3/lstm_cell_3/add_2£
model_2/lstm_3/lstm_cell_3/TanhTanh$model_2/lstm_3/lstm_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2!
model_2/lstm_3/lstm_cell_3/TanhË
 model_2/lstm_3/lstm_cell_3/mul_9Mul&model_2/lstm_3/lstm_cell_3/Sigmoid:y:0#model_2/lstm_3/lstm_cell_3/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 model_2/lstm_3/lstm_cell_3/mul_9Ì
 model_2/lstm_3/lstm_cell_3/add_3AddV2$model_2/lstm_3/lstm_cell_3/mul_8:z:0$model_2/lstm_3/lstm_cell_3/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 model_2/lstm_3/lstm_cell_3/add_3Ï
+model_2/lstm_3/lstm_cell_3/ReadVariableOp_3ReadVariableOp2model_2_lstm_3_lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02-
+model_2/lstm_3/lstm_cell_3/ReadVariableOp_3µ
0model_2/lstm_3/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      22
0model_2/lstm_3/lstm_cell_3/strided_slice_3/stack¹
2model_2/lstm_3/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2model_2/lstm_3/lstm_cell_3/strided_slice_3/stack_1¹
2model_2/lstm_3/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2model_2/lstm_3/lstm_cell_3/strided_slice_3/stack_2¬
*model_2/lstm_3/lstm_cell_3/strided_slice_3StridedSlice3model_2/lstm_3/lstm_cell_3/ReadVariableOp_3:value:09model_2/lstm_3/lstm_cell_3/strided_slice_3/stack:output:0;model_2/lstm_3/lstm_cell_3/strided_slice_3/stack_1:output:0;model_2/lstm_3/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2,
*model_2/lstm_3/lstm_cell_3/strided_slice_3â
#model_2/lstm_3/lstm_cell_3/MatMul_7MatMul$model_2/lstm_3/lstm_cell_3/mul_7:z:03model_2/lstm_3/lstm_cell_3/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2%
#model_2/lstm_3/lstm_cell_3/MatMul_7Þ
 model_2/lstm_3/lstm_cell_3/add_4AddV2-model_2/lstm_3/lstm_cell_3/BiasAdd_3:output:0-model_2/lstm_3/lstm_cell_3/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 model_2/lstm_3/lstm_cell_3/add_4°
$model_2/lstm_3/lstm_cell_3/Sigmoid_2Sigmoid$model_2/lstm_3/lstm_cell_3/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2&
$model_2/lstm_3/lstm_cell_3/Sigmoid_2§
!model_2/lstm_3/lstm_cell_3/Tanh_1Tanh$model_2/lstm_3/lstm_cell_3/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!model_2/lstm_3/lstm_cell_3/Tanh_1Ñ
!model_2/lstm_3/lstm_cell_3/mul_10Mul(model_2/lstm_3/lstm_cell_3/Sigmoid_2:y:0%model_2/lstm_3/lstm_cell_3/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!model_2/lstm_3/lstm_cell_3/mul_10­
,model_2/lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2.
,model_2/lstm_3/TensorArrayV2_1/element_shapeò
model_2/lstm_3/TensorArrayV2_1TensorListReserve5model_2/lstm_3/TensorArrayV2_1/element_shape:output:0%model_2/lstm_3/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02 
model_2/lstm_3/TensorArrayV2_1l
model_2/lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
model_2/lstm_3/time
'model_2/lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2)
'model_2/lstm_3/while/maximum_iterations
!model_2/lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2#
!model_2/lstm_3/while/loop_counter
model_2/lstm_3/whileWhile*model_2/lstm_3/while/loop_counter:output:00model_2/lstm_3/while/maximum_iterations:output:0model_2/lstm_3/time:output:0'model_2/lstm_3/TensorArrayV2_1:handle:0input_3input_4%model_2/lstm_3/strided_slice:output:0Fmodel_2/lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:08model_2_lstm_3_lstm_cell_3_split_readvariableop_resource:model_2_lstm_3_lstm_cell_3_split_1_readvariableop_resource2model_2_lstm_3_lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : *%
_read_only_resource_inputs
	
*+
body#R!
model_2_lstm_3_while_body_58963*+
cond#R!
model_2_lstm_3_while_cond_58962*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : *
parallel_iterations 2
model_2/lstm_3/whileÓ
?model_2/lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2A
?model_2/lstm_3/TensorArrayV2Stack/TensorListStack/element_shape®
1model_2/lstm_3/TensorArrayV2Stack/TensorListStackTensorListStackmodel_2/lstm_3/while:output:3Hmodel_2/lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬*
element_dtype023
1model_2/lstm_3/TensorArrayV2Stack/TensorListStack
$model_2/lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2&
$model_2/lstm_3/strided_slice_2/stack
&model_2/lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&model_2/lstm_3/strided_slice_2/stack_1
&model_2/lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&model_2/lstm_3/strided_slice_2/stack_2õ
model_2/lstm_3/strided_slice_2StridedSlice:model_2/lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0-model_2/lstm_3/strided_slice_2/stack:output:0/model_2/lstm_3/strided_slice_2/stack_1:output:0/model_2/lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
shrink_axis_mask2 
model_2/lstm_3/strided_slice_2
model_2/lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2!
model_2/lstm_3/transpose_1/permë
model_2/lstm_3/transpose_1	Transpose:model_2/lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0(model_2/lstm_3/transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2
model_2/lstm_3/transpose_1
model_2/lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
model_2/lstm_3/runtime 
-model_2/attention_layer/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2/
-model_2/attention_layer/Sum/reduction_indicesµ
model_2/attention_layer/SumSuminput_56model_2/attention_layer/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
model_2/attention_layer/Sum¤
/model_2/attention_layer/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :21
/model_2/attention_layer/Sum_1/reduction_indicesº
model_2/attention_layer/Sum_1Suminput_58model_2/attention_layer/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
model_2/attention_layer/Sum_1¥
&model_2/attention_layer/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&model_2/attention_layer/transpose/permä
!model_2/attention_layer/transpose	Transposemodel_2/lstm_3/transpose_1:y:0/model_2/attention_layer/transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2#
!model_2/attention_layer/transpose
model_2/attention_layer/ShapeShape%model_2/attention_layer/transpose:y:0*
T0*
_output_shapes
:2
model_2/attention_layer/Shape¤
+model_2/attention_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+model_2/attention_layer/strided_slice/stack¨
-model_2/attention_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-model_2/attention_layer/strided_slice/stack_1¨
-model_2/attention_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-model_2/attention_layer/strided_slice/stack_2ò
%model_2/attention_layer/strided_sliceStridedSlice&model_2/attention_layer/Shape:output:04model_2/attention_layer/strided_slice/stack:output:06model_2/attention_layer/strided_slice/stack_1:output:06model_2/attention_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%model_2/attention_layer/strided_sliceµ
3model_2/attention_layer/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ25
3model_2/attention_layer/TensorArrayV2/element_shape
%model_2/attention_layer/TensorArrayV2TensorListReserve<model_2/attention_layer/TensorArrayV2/element_shape:output:0.model_2/attention_layer/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%model_2/attention_layer/TensorArrayV2ï
Mmodel_2/attention_layer/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2O
Mmodel_2/attention_layer/TensorArrayUnstack/TensorListFromTensor/element_shapeØ
?model_2/attention_layer/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%model_2/attention_layer/transpose:y:0Vmodel_2/attention_layer/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02A
?model_2/attention_layer/TensorArrayUnstack/TensorListFromTensor¨
-model_2/attention_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-model_2/attention_layer/strided_slice_1/stack¬
/model_2/attention_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/model_2/attention_layer/strided_slice_1/stack_1¬
/model_2/attention_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/model_2/attention_layer/strided_slice_1/stack_2
'model_2/attention_layer/strided_slice_1StridedSlice%model_2/attention_layer/transpose:y:06model_2/attention_layer/strided_slice_1/stack:output:08model_2/attention_layer/strided_slice_1/stack_1:output:08model_2/attention_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
shrink_axis_mask2)
'model_2/attention_layer/strided_slice_1y
model_2/attention_layer/Shape_1Shapeinput_5*
T0*
_output_shapes
:2!
model_2/attention_layer/Shape_1¦
model_2/attention_layer/unstackUnpack(model_2/attention_layer/Shape_1:output:0*
T0*
_output_shapes
: : : *	
num2!
model_2/attention_layer/unstackÚ
.model_2/attention_layer/Shape_2/ReadVariableOpReadVariableOp7model_2_attention_layer_shape_2_readvariableop_resource* 
_output_shapes
:
¬¬*
dtype020
.model_2/attention_layer/Shape_2/ReadVariableOp
model_2/attention_layer/Shape_2Const*
_output_shapes
:*
dtype0*
valueB",  ,  2!
model_2/attention_layer/Shape_2¨
!model_2/attention_layer/unstack_1Unpack(model_2/attention_layer/Shape_2:output:0*
T0*
_output_shapes
: : *	
num2#
!model_2/attention_layer/unstack_1
%model_2/attention_layer/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2'
%model_2/attention_layer/Reshape/shape¹
model_2/attention_layer/ReshapeReshapeinput_5.model_2/attention_layer/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2!
model_2/attention_layer/Reshapeâ
2model_2/attention_layer/transpose_1/ReadVariableOpReadVariableOp7model_2_attention_layer_shape_2_readvariableop_resource* 
_output_shapes
:
¬¬*
dtype024
2model_2/attention_layer/transpose_1/ReadVariableOp¥
(model_2/attention_layer/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2*
(model_2/attention_layer/transpose_1/permñ
#model_2/attention_layer/transpose_1	Transpose:model_2/attention_layer/transpose_1/ReadVariableOp:value:01model_2/attention_layer/transpose_1/perm:output:0*
T0* 
_output_shapes
:
¬¬2%
#model_2/attention_layer/transpose_1£
'model_2/attention_layer/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB",  ÿÿÿÿ2)
'model_2/attention_layer/Reshape_1/shape×
!model_2/attention_layer/Reshape_1Reshape'model_2/attention_layer/transpose_1:y:00model_2/attention_layer/Reshape_1/shape:output:0*
T0* 
_output_shapes
:
¬¬2#
!model_2/attention_layer/Reshape_1Ó
model_2/attention_layer/MatMulMatMul(model_2/attention_layer/Reshape:output:0*model_2/attention_layer/Reshape_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
model_2/attention_layer/MatMul
)model_2/attention_layer/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :P2+
)model_2/attention_layer/Reshape_2/shape/1
)model_2/attention_layer/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value
B :¬2+
)model_2/attention_layer/Reshape_2/shape/2
'model_2/attention_layer/Reshape_2/shapePack(model_2/attention_layer/unstack:output:02model_2/attention_layer/Reshape_2/shape/1:output:02model_2/attention_layer/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2)
'model_2/attention_layer/Reshape_2/shapeä
!model_2/attention_layer/Reshape_2Reshape(model_2/attention_layer/MatMul:product:00model_2/attention_layer/Reshape_2/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2#
!model_2/attention_layer/Reshape_2Ý
/model_2/attention_layer/MatMul_1/ReadVariableOpReadVariableOp8model_2_attention_layer_matmul_1_readvariableop_resource* 
_output_shapes
:
¬¬*
dtype021
/model_2/attention_layer/MatMul_1/ReadVariableOpì
 model_2/attention_layer/MatMul_1MatMul0model_2/attention_layer/strided_slice_1:output:07model_2/attention_layer/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 model_2/attention_layer/MatMul_1
&model_2/attention_layer/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&model_2/attention_layer/ExpandDims/dimê
"model_2/attention_layer/ExpandDims
ExpandDims*model_2/attention_layer/MatMul_1:product:0/model_2/attention_layer/ExpandDims/dim:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"model_2/attention_layer/ExpandDimsÓ
model_2/attention_layer/addAddV2*model_2/attention_layer/Reshape_2:output:0+model_2/attention_layer/ExpandDims:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
model_2/attention_layer/add
model_2/attention_layer/TanhTanhmodel_2/attention_layer/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
model_2/attention_layer/Tanh
model_2/attention_layer/Shape_3Shape model_2/attention_layer/Tanh:y:0*
T0*
_output_shapes
:2!
model_2/attention_layer/Shape_3ª
!model_2/attention_layer/unstack_2Unpack(model_2/attention_layer/Shape_3:output:0*
T0*
_output_shapes
: : : *	
num2#
!model_2/attention_layer/unstack_2Ù
.model_2/attention_layer/Shape_4/ReadVariableOpReadVariableOp7model_2_attention_layer_shape_4_readvariableop_resource*
_output_shapes
:	¬*
dtype020
.model_2/attention_layer/Shape_4/ReadVariableOp
model_2/attention_layer/Shape_4Const*
_output_shapes
:*
dtype0*
valueB",     2!
model_2/attention_layer/Shape_4¨
!model_2/attention_layer/unstack_3Unpack(model_2/attention_layer/Shape_4:output:0*
T0*
_output_shapes
: : *	
num2#
!model_2/attention_layer/unstack_3£
'model_2/attention_layer/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2)
'model_2/attention_layer/Reshape_3/shapeØ
!model_2/attention_layer/Reshape_3Reshape model_2/attention_layer/Tanh:y:00model_2/attention_layer/Reshape_3/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!model_2/attention_layer/Reshape_3á
2model_2/attention_layer/transpose_2/ReadVariableOpReadVariableOp7model_2_attention_layer_shape_4_readvariableop_resource*
_output_shapes
:	¬*
dtype024
2model_2/attention_layer/transpose_2/ReadVariableOp¥
(model_2/attention_layer/transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2*
(model_2/attention_layer/transpose_2/permð
#model_2/attention_layer/transpose_2	Transpose:model_2/attention_layer/transpose_2/ReadVariableOp:value:01model_2/attention_layer/transpose_2/perm:output:0*
T0*
_output_shapes
:	¬2%
#model_2/attention_layer/transpose_2£
'model_2/attention_layer/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB",  ÿÿÿÿ2)
'model_2/attention_layer/Reshape_4/shapeÖ
!model_2/attention_layer/Reshape_4Reshape'model_2/attention_layer/transpose_2:y:00model_2/attention_layer/Reshape_4/shape:output:0*
T0*
_output_shapes
:	¬2#
!model_2/attention_layer/Reshape_4Ø
 model_2/attention_layer/MatMul_2MatMul*model_2/attention_layer/Reshape_3:output:0*model_2/attention_layer/Reshape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 model_2/attention_layer/MatMul_2
)model_2/attention_layer/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :P2+
)model_2/attention_layer/Reshape_5/shape/1
)model_2/attention_layer/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2+
)model_2/attention_layer/Reshape_5/shape/2
'model_2/attention_layer/Reshape_5/shapePack*model_2/attention_layer/unstack_2:output:02model_2/attention_layer/Reshape_5/shape/1:output:02model_2/attention_layer/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:2)
'model_2/attention_layer/Reshape_5/shapeå
!model_2/attention_layer/Reshape_5Reshape*model_2/attention_layer/MatMul_2:product:00model_2/attention_layer/Reshape_5/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2#
!model_2/attention_layer/Reshape_5Ë
model_2/attention_layer/SqueezeSqueeze*model_2/attention_layer/Reshape_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ2!
model_2/attention_layer/Squeeze©
model_2/attention_layer/SoftmaxSoftmax(model_2/attention_layer/Squeeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2!
model_2/attention_layer/Softmax¿
5model_2/attention_layer/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP   27
5model_2/attention_layer/TensorArrayV2_1/element_shape
'model_2/attention_layer/TensorArrayV2_1TensorListReserve>model_2/attention_layer/TensorArrayV2_1/element_shape:output:0.model_2/attention_layer/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'model_2/attention_layer/TensorArrayV2_1~
model_2/attention_layer/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
model_2/attention_layer/time¯
0model_2/attention_layer/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0model_2/attention_layer/while/maximum_iterations
*model_2/attention_layer/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2,
*model_2/attention_layer/while/loop_counter
model_2/attention_layer/whileWhile3model_2/attention_layer/while/loop_counter:output:09model_2/attention_layer/while/maximum_iterations:output:0%model_2/attention_layer/time:output:00model_2/attention_layer/TensorArrayV2_1:handle:0&model_2/attention_layer/Sum_1:output:0.model_2/attention_layer/strided_slice:output:0Omodel_2/attention_layer/TensorArrayUnstack/TensorListFromTensor:output_handle:0input_57model_2_attention_layer_shape_2_readvariableop_resource8model_2_attention_layer_matmul_1_readvariableop_resource7model_2_attention_layer_shape_4_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*Q
_output_shapes?
=: : : : :ÿÿÿÿÿÿÿÿÿP: : :ÿÿÿÿÿÿÿÿÿP¬: : : *%
_read_only_resource_inputs
	
*4
body,R*
(model_2_attention_layer_while_body_59170*4
cond,R*
(model_2_attention_layer_while_cond_59169*P
output_shapes?
=: : : : :ÿÿÿÿÿÿÿÿÿP: : :ÿÿÿÿÿÿÿÿÿP¬: : : *
parallel_iterations 2
model_2/attention_layer/whileå
Hmodel_2/attention_layer/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP   2J
Hmodel_2/attention_layer/TensorArrayV2Stack/TensorListStack/element_shapeÑ
:model_2/attention_layer/TensorArrayV2Stack/TensorListStackTensorListStack&model_2/attention_layer/while:output:3Qmodel_2/attention_layer/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP*
element_dtype02<
:model_2/attention_layer/TensorArrayV2Stack/TensorListStack±
-model_2/attention_layer/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2/
-model_2/attention_layer/strided_slice_2/stack¬
/model_2/attention_layer/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/model_2/attention_layer/strided_slice_2/stack_1¬
/model_2/attention_layer/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/model_2/attention_layer/strided_slice_2/stack_2ª
'model_2/attention_layer/strided_slice_2StridedSliceCmodel_2/attention_layer/TensorArrayV2Stack/TensorListStack:tensor:06model_2/attention_layer/strided_slice_2/stack:output:08model_2/attention_layer/strided_slice_2/stack_1:output:08model_2/attention_layer/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
shrink_axis_mask2)
'model_2/attention_layer/strided_slice_2©
(model_2/attention_layer/transpose_3/permConst*
_output_shapes
:*
dtype0*!
valueB"          2*
(model_2/attention_layer/transpose_3/perm
#model_2/attention_layer/transpose_3	TransposeCmodel_2/attention_layer/TensorArrayV2Stack/TensorListStack:tensor:01model_2/attention_layer/transpose_3/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP2%
#model_2/attention_layer/transpose_3©
(model_2/attention_layer/transpose_4/permConst*
_output_shapes
:*
dtype0*!
valueB"          2*
(model_2/attention_layer/transpose_4/permò
#model_2/attention_layer/transpose_4	Transpose'model_2/attention_layer/transpose_3:y:01model_2/attention_layer/transpose_4/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP2%
#model_2/attention_layer/transpose_4
model_2/attention_layer/Shape_5Shape'model_2/attention_layer/transpose_4:y:0*
T0*
_output_shapes
:2!
model_2/attention_layer/Shape_5¨
-model_2/attention_layer/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-model_2/attention_layer/strided_slice_3/stack¬
/model_2/attention_layer/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/model_2/attention_layer/strided_slice_3/stack_1¬
/model_2/attention_layer/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/model_2/attention_layer/strided_slice_3/stack_2þ
'model_2/attention_layer/strided_slice_3StridedSlice(model_2/attention_layer/Shape_5:output:06model_2/attention_layer/strided_slice_3/stack:output:08model_2/attention_layer/strided_slice_3/stack_1:output:08model_2/attention_layer/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'model_2/attention_layer/strided_slice_3¹
5model_2/attention_layer/TensorArrayV2_3/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ27
5model_2/attention_layer/TensorArrayV2_3/element_shape
'model_2/attention_layer/TensorArrayV2_3TensorListReserve>model_2/attention_layer/TensorArrayV2_3/element_shape:output:00model_2/attention_layer/strided_slice_3:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'model_2/attention_layer/TensorArrayV2_3ó
Omodel_2/attention_layer/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP   2Q
Omodel_2/attention_layer/TensorArrayUnstack_1/TensorListFromTensor/element_shapeà
Amodel_2/attention_layer/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor'model_2/attention_layer/transpose_4:y:0Xmodel_2/attention_layer/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02C
Amodel_2/attention_layer/TensorArrayUnstack_1/TensorListFromTensor¨
-model_2/attention_layer/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-model_2/attention_layer/strided_slice_4/stack¬
/model_2/attention_layer/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/model_2/attention_layer/strided_slice_4/stack_1¬
/model_2/attention_layer/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/model_2/attention_layer/strided_slice_4/stack_2
'model_2/attention_layer/strided_slice_4StridedSlice'model_2/attention_layer/transpose_4:y:06model_2/attention_layer/strided_slice_4/stack:output:08model_2/attention_layer/strided_slice_4/stack_1:output:08model_2/attention_layer/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
shrink_axis_mask2)
'model_2/attention_layer/strided_slice_4
(model_2/attention_layer/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(model_2/attention_layer/ExpandDims_1/dimõ
$model_2/attention_layer/ExpandDims_1
ExpandDims0model_2/attention_layer/strided_slice_4:output:01model_2/attention_layer/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2&
$model_2/attention_layer/ExpandDims_1°
model_2/attention_layer/mulMulinput_5-model_2/attention_layer/ExpandDims_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
model_2/attention_layer/mul¤
/model_2/attention_layer/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :21
/model_2/attention_layer/Sum_2/reduction_indicesÓ
model_2/attention_layer/Sum_2Summodel_2/attention_layer/mul:z:08model_2/attention_layer/Sum_2/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
model_2/attention_layer/Sum_2¿
5model_2/attention_layer/TensorArrayV2_4/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  27
5model_2/attention_layer/TensorArrayV2_4/element_shape
'model_2/attention_layer/TensorArrayV2_4TensorListReserve>model_2/attention_layer/TensorArrayV2_4/element_shape:output:00model_2/attention_layer/strided_slice_3:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'model_2/attention_layer/TensorArrayV2_4
model_2/attention_layer/time_1Const*
_output_shapes
: *
dtype0*
value	B : 2 
model_2/attention_layer/time_1³
2model_2/attention_layer/while_1/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ24
2model_2/attention_layer/while_1/maximum_iterations
,model_2/attention_layer/while_1/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2.
,model_2/attention_layer/while_1/loop_counterð
model_2/attention_layer/while_1StatelessWhile5model_2/attention_layer/while_1/loop_counter:output:0;model_2/attention_layer/while_1/maximum_iterations:output:0'model_2/attention_layer/time_1:output:00model_2/attention_layer/TensorArrayV2_4:handle:0$model_2/attention_layer/Sum:output:00model_2/attention_layer/strided_slice_3:output:0Qmodel_2/attention_layer/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0input_5*
T

2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ¬: : :ÿÿÿÿÿÿÿÿÿP¬* 
_read_only_resource_inputs
 *6
body.R,
*model_2_attention_layer_while_1_body_59302*6
cond.R,
*model_2_attention_layer_while_1_cond_59301*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ¬: : :ÿÿÿÿÿÿÿÿÿP¬*
parallel_iterations 2!
model_2/attention_layer/while_1é
Jmodel_2/attention_layer/TensorArrayV2Stack_1/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2L
Jmodel_2/attention_layer/TensorArrayV2Stack_1/TensorListStack/element_shapeÚ
<model_2/attention_layer/TensorArrayV2Stack_1/TensorListStackTensorListStack(model_2/attention_layer/while_1:output:3Smodel_2/attention_layer/TensorArrayV2Stack_1/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬*
element_dtype02>
<model_2/attention_layer/TensorArrayV2Stack_1/TensorListStack±
-model_2/attention_layer/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2/
-model_2/attention_layer/strided_slice_5/stack¬
/model_2/attention_layer/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/model_2/attention_layer/strided_slice_5/stack_1¬
/model_2/attention_layer/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/model_2/attention_layer/strided_slice_5/stack_2­
'model_2/attention_layer/strided_slice_5StridedSliceEmodel_2/attention_layer/TensorArrayV2Stack_1/TensorListStack:tensor:06model_2/attention_layer/strided_slice_5/stack:output:08model_2/attention_layer/strided_slice_5/stack_1:output:08model_2/attention_layer/strided_slice_5/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
shrink_axis_mask2)
'model_2/attention_layer/strided_slice_5©
(model_2/attention_layer/transpose_5/permConst*
_output_shapes
:*
dtype0*!
valueB"          2*
(model_2/attention_layer/transpose_5/perm
#model_2/attention_layer/transpose_5	TransposeEmodel_2/attention_layer/TensorArrayV2Stack_1/TensorListStack:tensor:01model_2/attention_layer/transpose_5/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2%
#model_2/attention_layer/transpose_5z
model_2/concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
model_2/concat/concat/axisñ
model_2/concat/concatConcatV2model_2/lstm_3/transpose_1:y:0'model_2/attention_layer/transpose_5:y:0#model_2/concat/concat/axis:output:0*
N*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ2
model_2/concat/concat
model_2/time_distributed/ShapeShapemodel_2/concat/concat:output:0*
T0*
_output_shapes
:2 
model_2/time_distributed/Shape¦
,model_2/time_distributed/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,model_2/time_distributed/strided_slice/stackª
.model_2/time_distributed/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.model_2/time_distributed/strided_slice/stack_1ª
.model_2/time_distributed/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.model_2/time_distributed/strided_slice/stack_2ø
&model_2/time_distributed/strided_sliceStridedSlice'model_2/time_distributed/Shape:output:05model_2/time_distributed/strided_slice/stack:output:07model_2/time_distributed/strided_slice/stack_1:output:07model_2/time_distributed/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&model_2/time_distributed/strided_slice¡
&model_2/time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿX  2(
&model_2/time_distributed/Reshape/shapeÓ
 model_2/time_distributed/ReshapeReshapemodel_2/concat/concat:output:0/model_2/time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2"
 model_2/time_distributed/Reshapeì
4model_2/time_distributed/dense/MatMul/ReadVariableOpReadVariableOp=model_2_time_distributed_dense_matmul_readvariableop_resource* 
_output_shapes
:
Øíb*
dtype026
4model_2/time_distributed/dense/MatMul/ReadVariableOpô
%model_2/time_distributed/dense/MatMulMatMul)model_2/time_distributed/Reshape:output:0<model_2/time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb2'
%model_2/time_distributed/dense/MatMulê
5model_2/time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOp>model_2_time_distributed_dense_biasadd_readvariableop_resource*
_output_shapes	
:íb*
dtype027
5model_2/time_distributed/dense/BiasAdd/ReadVariableOpþ
&model_2/time_distributed/dense/BiasAddBiasAdd/model_2/time_distributed/dense/MatMul:product:0=model_2/time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb2(
&model_2/time_distributed/dense/BiasAdd¿
&model_2/time_distributed/dense/SoftmaxSoftmax/model_2/time_distributed/dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb2(
&model_2/time_distributed/dense/Softmax£
*model_2/time_distributed/Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2,
*model_2/time_distributed/Reshape_1/shape/0
*model_2/time_distributed/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :íb2,
*model_2/time_distributed/Reshape_1/shape/2¥
(model_2/time_distributed/Reshape_1/shapePack3model_2/time_distributed/Reshape_1/shape/0:output:0/model_2/time_distributed/strided_slice:output:03model_2/time_distributed/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2*
(model_2/time_distributed/Reshape_1/shapeø
"model_2/time_distributed/Reshape_1Reshape0model_2/time_distributed/dense/Softmax:softmax:01model_2/time_distributed/Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb2$
"model_2/time_distributed/Reshape_1¥
(model_2/time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿX  2*
(model_2/time_distributed/Reshape_2/shapeÙ
"model_2/time_distributed/Reshape_2Reshapemodel_2/concat/concat:output:01model_2/time_distributed/Reshape_2/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2$
"model_2/time_distributed/Reshape_2÷
IdentityIdentitymodel_2/lstm_3/while:output:40^model_2/attention_layer/MatMul_1/ReadVariableOp3^model_2/attention_layer/transpose_1/ReadVariableOp3^model_2/attention_layer/transpose_2/ReadVariableOp^model_2/attention_layer/while%^model_2/embedding_1/embedding_lookup*^model_2/lstm_3/lstm_cell_3/ReadVariableOp,^model_2/lstm_3/lstm_cell_3/ReadVariableOp_1,^model_2/lstm_3/lstm_cell_3/ReadVariableOp_2,^model_2/lstm_3/lstm_cell_3/ReadVariableOp_30^model_2/lstm_3/lstm_cell_3/split/ReadVariableOp2^model_2/lstm_3/lstm_cell_3/split_1/ReadVariableOp^model_2/lstm_3/while6^model_2/time_distributed/dense/BiasAdd/ReadVariableOp5^model_2/time_distributed/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identityû

Identity_1Identitymodel_2/lstm_3/while:output:50^model_2/attention_layer/MatMul_1/ReadVariableOp3^model_2/attention_layer/transpose_1/ReadVariableOp3^model_2/attention_layer/transpose_2/ReadVariableOp^model_2/attention_layer/while%^model_2/embedding_1/embedding_lookup*^model_2/lstm_3/lstm_cell_3/ReadVariableOp,^model_2/lstm_3/lstm_cell_3/ReadVariableOp_1,^model_2/lstm_3/lstm_cell_3/ReadVariableOp_2,^model_2/lstm_3/lstm_cell_3/ReadVariableOp_30^model_2/lstm_3/lstm_cell_3/split/ReadVariableOp2^model_2/lstm_3/lstm_cell_3/split_1/ReadVariableOp^model_2/lstm_3/while6^model_2/time_distributed/dense/BiasAdd/ReadVariableOp5^model_2/time_distributed/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1

Identity_2Identity+model_2/time_distributed/Reshape_1:output:00^model_2/attention_layer/MatMul_1/ReadVariableOp3^model_2/attention_layer/transpose_1/ReadVariableOp3^model_2/attention_layer/transpose_2/ReadVariableOp^model_2/attention_layer/while%^model_2/embedding_1/embedding_lookup*^model_2/lstm_3/lstm_cell_3/ReadVariableOp,^model_2/lstm_3/lstm_cell_3/ReadVariableOp_1,^model_2/lstm_3/lstm_cell_3/ReadVariableOp_2,^model_2/lstm_3/lstm_cell_3/ReadVariableOp_30^model_2/lstm_3/lstm_cell_3/split/ReadVariableOp2^model_2/lstm_3/lstm_cell_3/split_1/ReadVariableOp^model_2/lstm_3/while6^model_2/time_distributed/dense/BiasAdd/ReadVariableOp5^model_2/time_distributed/dense/MatMul/ReadVariableOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapesp
n:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿP¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : : : : : 2b
/model_2/attention_layer/MatMul_1/ReadVariableOp/model_2/attention_layer/MatMul_1/ReadVariableOp2h
2model_2/attention_layer/transpose_1/ReadVariableOp2model_2/attention_layer/transpose_1/ReadVariableOp2h
2model_2/attention_layer/transpose_2/ReadVariableOp2model_2/attention_layer/transpose_2/ReadVariableOp2>
model_2/attention_layer/whilemodel_2/attention_layer/while2L
$model_2/embedding_1/embedding_lookup$model_2/embedding_1/embedding_lookup2V
)model_2/lstm_3/lstm_cell_3/ReadVariableOp)model_2/lstm_3/lstm_cell_3/ReadVariableOp2Z
+model_2/lstm_3/lstm_cell_3/ReadVariableOp_1+model_2/lstm_3/lstm_cell_3/ReadVariableOp_12Z
+model_2/lstm_3/lstm_cell_3/ReadVariableOp_2+model_2/lstm_3/lstm_cell_3/ReadVariableOp_22Z
+model_2/lstm_3/lstm_cell_3/ReadVariableOp_3+model_2/lstm_3/lstm_cell_3/ReadVariableOp_32b
/model_2/lstm_3/lstm_cell_3/split/ReadVariableOp/model_2/lstm_3/lstm_cell_3/split/ReadVariableOp2f
1model_2/lstm_3/lstm_cell_3/split_1/ReadVariableOp1model_2/lstm_3/lstm_cell_3/split_1/ReadVariableOp2,
model_2/lstm_3/whilemodel_2/lstm_3/while2n
5model_2/time_distributed/dense/BiasAdd/ReadVariableOp5model_2/time_distributed/dense/BiasAdd/ReadVariableOp2l
4model_2/time_distributed/dense/MatMul/ReadVariableOp4model_2/time_distributed/dense/MatMul/ReadVariableOp:Y U
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2:UQ
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬
!
_user_specified_name	input_5:QM
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
!
_user_specified_name	input_3:QM
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
!
_user_specified_name	input_4
Ó
×
while_1_cond_64349 
while_1_while_1_loop_counter&
"while_1_while_1_maximum_iterations
while_1_placeholder
while_1_placeholder_1
while_1_placeholder_2 
while_1_less_strided_slice_37
3while_1_while_1_cond_64349___redundant_placeholder07
3while_1_while_1_cond_64349___redundant_placeholder1
while_1_identity
x
while_1/LessLesswhile_1_placeholderwhile_1_less_strided_slice_3*
T0*
_output_shapes
: 2
while_1/Lessc
while_1/IdentityIdentitywhile_1/Less:z:0*
T0
*
_output_shapes
: 2
while_1/Identity"-
while_1_identitywhile_1/Identity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ¬: ::: 
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
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
¡
¬
#__inference_signature_wrapper_61591
input_2
input_3
input_4
input_5
unknown:	íbd
	unknown_0:	d°	
	unknown_1:	°	
	unknown_2:
¬°	
	unknown_3:
¬¬
	unknown_4:
¬¬
	unknown_5:	¬
	unknown_6:
Øíb
	unknown_7:	íb
identity

identity_1

identity_2¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_2input_5input_3input_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__wrapped_model_593832
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1 

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapesp
n:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿP¬: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2:QM
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
!
_user_specified_name	input_3:QM
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
!
_user_specified_name	input_4:UQ
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬
!
_user_specified_name	input_5


%__inference_dense_layer_call_fn_64779

inputs
unknown:
Øíb
	unknown_0:	íb
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_602262
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿØ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
 
_user_specified_nameinputs
$
®
__inference__traced_save_64840
file_prefix5
1savev2_embedding_1_embeddings_read_readvariableop2
.savev2_attention_layer_w_a_read_readvariableop2
.savev2_attention_layer_u_a_read_readvariableop2
.savev2_attention_layer_v_a_read_readvariableop8
4savev2_lstm_3_lstm_cell_3_kernel_read_readvariableopB
>savev2_lstm_3_lstm_cell_3_recurrent_kernel_read_readvariableop6
2savev2_lstm_3_lstm_cell_3_bias_read_readvariableop6
2savev2_time_distributed_kernel_read_readvariableop4
0savev2_time_distributed_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
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
Const_1
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameâ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ô
valueêBçB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-2/W_a/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-2/U_a/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-2/V_a/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names 
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*+
value"B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesÜ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_1_embeddings_read_readvariableop.savev2_attention_layer_w_a_read_readvariableop.savev2_attention_layer_u_a_read_readvariableop.savev2_attention_layer_v_a_read_readvariableop4savev2_lstm_3_lstm_cell_3_kernel_read_readvariableop>savev2_lstm_3_lstm_cell_3_recurrent_kernel_read_readvariableop2savev2_lstm_3_lstm_cell_3_bias_read_readvariableop2savev2_time_distributed_kernel_read_readvariableop0savev2_time_distributed_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
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

identity_1Identity_1:output:0*z
_input_shapesi
g: :	íbd:
¬¬:
¬¬:	¬:	d°	:
¬°	:°	:
Øíb:íb: : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	íbd:&"
 
_output_shapes
:
¬¬:&"
 
_output_shapes
:
¬¬:%!

_output_shapes
:	¬:%!

_output_shapes
:	d°	:&"
 
_output_shapes
:
¬°	:!

_output_shapes	
:°	:&"
 
_output_shapes
:
Øíb:!	

_output_shapes	
:íb:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ç
°
'__inference_model_2_layer_call_fn_60932
input_2
input_5
input_3
input_4
unknown:	íbd
	unknown_0:	d°	
	unknown_1:	°	
	unknown_2:
¬°	
	unknown_3:
¬¬
	unknown_4:
¬¬
	unknown_5:	¬
	unknown_6:
Øíb
	unknown_7:	íb
identity

identity_1

identity_2¢StatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinput_2input_5input_3input_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_609072
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapesp
n:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿP¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2:UQ
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬
!
_user_specified_name	input_5:QM
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
!
_user_specified_name	input_3:QM
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
!
_user_specified_name	input_4
­
¿
*model_2_attention_layer_while_1_cond_59301P
Lmodel_2_attention_layer_while_1_model_2_attention_layer_while_1_loop_counterV
Rmodel_2_attention_layer_while_1_model_2_attention_layer_while_1_maximum_iterations/
+model_2_attention_layer_while_1_placeholder1
-model_2_attention_layer_while_1_placeholder_11
-model_2_attention_layer_while_1_placeholder_2P
Lmodel_2_attention_layer_while_1_less_model_2_attention_layer_strided_slice_3g
cmodel_2_attention_layer_while_1_model_2_attention_layer_while_1_cond_59301___redundant_placeholder0g
cmodel_2_attention_layer_while_1_model_2_attention_layer_while_1_cond_59301___redundant_placeholder1,
(model_2_attention_layer_while_1_identity
ð
$model_2/attention_layer/while_1/LessLess+model_2_attention_layer_while_1_placeholderLmodel_2_attention_layer_while_1_less_model_2_attention_layer_strided_slice_3*
T0*
_output_shapes
: 2&
$model_2/attention_layer/while_1/Less«
(model_2/attention_layer/while_1/IdentityIdentity(model_2/attention_layer/while_1/Less:z:0*
T0
*
_output_shapes
: 2*
(model_2/attention_layer/while_1/Identity"]
(model_2_attention_layer_while_1_identity1model_2/attention_layer/while_1/Identity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ¬: ::: 
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
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
÷ü
ÿ
A__inference_lstm_3_layer_call_and_return_conditional_losses_63480
inputs_0<
)lstm_cell_3_split_readvariableop_resource:	d°	:
+lstm_cell_3_split_1_readvariableop_resource:	°	7
#lstm_cell_3_readvariableop_resource:
¬°	
identity

identity_1

identity_2¢lstm_cell_3/ReadVariableOp¢lstm_cell_3/ReadVariableOp_1¢lstm_cell_3/ReadVariableOp_2¢lstm_cell_3/ReadVariableOp_3¢ lstm_cell_3/split/ReadVariableOp¢"lstm_cell_3/split_1/ReadVariableOp¢whileF
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
strided_slice/stack_2â
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
B :¬2
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
B :è2
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
B :¬2
zeros/packed/1
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
:ÿÿÿÿÿÿÿÿÿ¬2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :¬2
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
B :è2
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
B :¬2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ¬2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
strided_slice_2
lstm_cell_3/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like/Shape
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like/Const´
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/ones_like{
lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
lstm_cell_3/dropout/Const¯
lstm_cell_3/dropout/MulMullstm_cell_3/ones_like:output:0"lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout/Mul
lstm_cell_3/dropout/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout/Shape÷
0lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2êÉ22
0lstm_cell_3/dropout/random_uniform/RandomUniform
"lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2$
"lstm_cell_3/dropout/GreaterEqual/yî
 lstm_cell_3/dropout/GreaterEqualGreaterEqual9lstm_cell_3/dropout/random_uniform/RandomUniform:output:0+lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 lstm_cell_3/dropout/GreaterEqual£
lstm_cell_3/dropout/CastCast$lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout/Castª
lstm_cell_3/dropout/Mul_1Mullstm_cell_3/dropout/Mul:z:0lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout/Mul_1
lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
lstm_cell_3/dropout_1/Constµ
lstm_cell_3/dropout_1/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_1/Mul
lstm_cell_3/dropout_1/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_1/Shapeý
2lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2ÆË24
2lstm_cell_3/dropout_1/random_uniform/RandomUniform
$lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2&
$lstm_cell_3/dropout_1/GreaterEqual/yö
"lstm_cell_3/dropout_1/GreaterEqualGreaterEqual;lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_cell_3/dropout_1/GreaterEqual©
lstm_cell_3/dropout_1/CastCast&lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_1/Cast²
lstm_cell_3/dropout_1/Mul_1Mullstm_cell_3/dropout_1/Mul:z:0lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_1/Mul_1
lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
lstm_cell_3/dropout_2/Constµ
lstm_cell_3/dropout_2/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_2/Mul
lstm_cell_3/dropout_2/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_2/Shapeü
2lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2Æ¶N24
2lstm_cell_3/dropout_2/random_uniform/RandomUniform
$lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2&
$lstm_cell_3/dropout_2/GreaterEqual/yö
"lstm_cell_3/dropout_2/GreaterEqualGreaterEqual;lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_cell_3/dropout_2/GreaterEqual©
lstm_cell_3/dropout_2/CastCast&lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_2/Cast²
lstm_cell_3/dropout_2/Mul_1Mullstm_cell_3/dropout_2/Mul:z:0lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_2/Mul_1
lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
lstm_cell_3/dropout_3/Constµ
lstm_cell_3/dropout_3/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_3/Mul
lstm_cell_3/dropout_3/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_3/Shapeü
2lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2÷m24
2lstm_cell_3/dropout_3/random_uniform/RandomUniform
$lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2&
$lstm_cell_3/dropout_3/GreaterEqual/yö
"lstm_cell_3/dropout_3/GreaterEqualGreaterEqual;lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_cell_3/dropout_3/GreaterEqual©
lstm_cell_3/dropout_3/CastCast&lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_3/Cast²
lstm_cell_3/dropout_3/Mul_1Mullstm_cell_3/dropout_3/Mul:z:0lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_3/Mul_1|
lstm_cell_3/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like_1/Shape
lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like_1/Const½
lstm_cell_3/ones_like_1Fill&lstm_cell_3/ones_like_1/Shape:output:0&lstm_cell_3/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/ones_like_1
lstm_cell_3/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/dropout_4/Const¸
lstm_cell_3/dropout_4/MulMul lstm_cell_3/ones_like_1:output:0$lstm_cell_3/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_4/Mul
lstm_cell_3/dropout_4/ShapeShape lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_4/Shapeþ
2lstm_cell_3/dropout_4/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2òÜ24
2lstm_cell_3/dropout_4/random_uniform/RandomUniform
$lstm_cell_3/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_3/dropout_4/GreaterEqual/y÷
"lstm_cell_3/dropout_4/GreaterEqualGreaterEqual;lstm_cell_3/dropout_4/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_cell_3/dropout_4/GreaterEqualª
lstm_cell_3/dropout_4/CastCast&lstm_cell_3/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_4/Cast³
lstm_cell_3/dropout_4/Mul_1Mullstm_cell_3/dropout_4/Mul:z:0lstm_cell_3/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_4/Mul_1
lstm_cell_3/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/dropout_5/Const¸
lstm_cell_3/dropout_5/MulMul lstm_cell_3/ones_like_1:output:0$lstm_cell_3/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_5/Mul
lstm_cell_3/dropout_5/ShapeShape lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_5/Shapeþ
2lstm_cell_3/dropout_5/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2Á¶24
2lstm_cell_3/dropout_5/random_uniform/RandomUniform
$lstm_cell_3/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_3/dropout_5/GreaterEqual/y÷
"lstm_cell_3/dropout_5/GreaterEqualGreaterEqual;lstm_cell_3/dropout_5/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_cell_3/dropout_5/GreaterEqualª
lstm_cell_3/dropout_5/CastCast&lstm_cell_3/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_5/Cast³
lstm_cell_3/dropout_5/Mul_1Mullstm_cell_3/dropout_5/Mul:z:0lstm_cell_3/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_5/Mul_1
lstm_cell_3/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/dropout_6/Const¸
lstm_cell_3/dropout_6/MulMul lstm_cell_3/ones_like_1:output:0$lstm_cell_3/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_6/Mul
lstm_cell_3/dropout_6/ShapeShape lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_6/Shapeþ
2lstm_cell_3/dropout_6/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2å£·24
2lstm_cell_3/dropout_6/random_uniform/RandomUniform
$lstm_cell_3/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_3/dropout_6/GreaterEqual/y÷
"lstm_cell_3/dropout_6/GreaterEqualGreaterEqual;lstm_cell_3/dropout_6/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_cell_3/dropout_6/GreaterEqualª
lstm_cell_3/dropout_6/CastCast&lstm_cell_3/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_6/Cast³
lstm_cell_3/dropout_6/Mul_1Mullstm_cell_3/dropout_6/Mul:z:0lstm_cell_3/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_6/Mul_1
lstm_cell_3/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/dropout_7/Const¸
lstm_cell_3/dropout_7/MulMul lstm_cell_3/ones_like_1:output:0$lstm_cell_3/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_7/Mul
lstm_cell_3/dropout_7/ShapeShape lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_7/Shapeþ
2lstm_cell_3/dropout_7/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2ú¿24
2lstm_cell_3/dropout_7/random_uniform/RandomUniform
$lstm_cell_3/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_3/dropout_7/GreaterEqual/y÷
"lstm_cell_3/dropout_7/GreaterEqualGreaterEqual;lstm_cell_3/dropout_7/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_cell_3/dropout_7/GreaterEqualª
lstm_cell_3/dropout_7/CastCast&lstm_cell_3/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_7/Cast³
lstm_cell_3/dropout_7/Mul_1Mullstm_cell_3/dropout_7/Mul:z:0lstm_cell_3/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_7/Mul_1
lstm_cell_3/mulMulstrided_slice_2:output:0lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/mul
lstm_cell_3/mul_1Mulstrided_slice_2:output:0lstm_cell_3/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/mul_1
lstm_cell_3/mul_2Mulstrided_slice_2:output:0lstm_cell_3/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/mul_2
lstm_cell_3/mul_3Mulstrided_slice_2:output:0lstm_cell_3/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/mul_3|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dim¯
 lstm_cell_3/split/ReadVariableOpReadVariableOp)lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	d°	*
dtype02"
 lstm_cell_3/split/ReadVariableOpÛ
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0(lstm_cell_3/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d¬:	d¬:	d¬:	d¬*
	num_split2
lstm_cell_3/split
lstm_cell_3/MatMulMatMullstm_cell_3/mul:z:0lstm_cell_3/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul
lstm_cell_3/MatMul_1MatMullstm_cell_3/mul_1:z:0lstm_cell_3/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_1
lstm_cell_3/MatMul_2MatMullstm_cell_3/mul_2:z:0lstm_cell_3/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_2
lstm_cell_3/MatMul_3MatMullstm_cell_3/mul_3:z:0lstm_cell_3/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_3
lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_3/split_1/split_dim±
"lstm_cell_3/split_1/ReadVariableOpReadVariableOp+lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:°	*
dtype02$
"lstm_cell_3/split_1/ReadVariableOpÓ
lstm_cell_3/split_1Split&lstm_cell_3/split_1/split_dim:output:0*lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:¬:¬:¬:¬*
	num_split2
lstm_cell_3/split_1¤
lstm_cell_3/BiasAddBiasAddlstm_cell_3/MatMul:product:0lstm_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/BiasAddª
lstm_cell_3/BiasAdd_1BiasAddlstm_cell_3/MatMul_1:product:0lstm_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/BiasAdd_1ª
lstm_cell_3/BiasAdd_2BiasAddlstm_cell_3/MatMul_2:product:0lstm_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/BiasAdd_2ª
lstm_cell_3/BiasAdd_3BiasAddlstm_cell_3/MatMul_3:product:0lstm_cell_3/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/BiasAdd_3
lstm_cell_3/mul_4Mulzeros:output:0lstm_cell_3/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_4
lstm_cell_3/mul_5Mulzeros:output:0lstm_cell_3/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_5
lstm_cell_3/mul_6Mulzeros:output:0lstm_cell_3/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_6
lstm_cell_3/mul_7Mulzeros:output:0lstm_cell_3/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_7
lstm_cell_3/ReadVariableOpReadVariableOp#lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
lstm_cell_3/ReadVariableOp
lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_3/strided_slice/stack
!lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2#
!lstm_cell_3/strided_slice/stack_1
!lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_3/strided_slice/stack_2Æ
lstm_cell_3/strided_sliceStridedSlice"lstm_cell_3/ReadVariableOp:value:0(lstm_cell_3/strided_slice/stack:output:0*lstm_cell_3/strided_slice/stack_1:output:0*lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
lstm_cell_3/strided_slice¤
lstm_cell_3/MatMul_4MatMullstm_cell_3/mul_4:z:0"lstm_cell_3/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_4
lstm_cell_3/addAddV2lstm_cell_3/BiasAdd:output:0lstm_cell_3/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add}
lstm_cell_3/SigmoidSigmoidlstm_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Sigmoid¢
lstm_cell_3/ReadVariableOp_1ReadVariableOp#lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
lstm_cell_3/ReadVariableOp_1
!lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2#
!lstm_cell_3/strided_slice_1/stack
#lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  2%
#lstm_cell_3/strided_slice_1/stack_1
#lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_1/stack_2Ò
lstm_cell_3/strided_slice_1StridedSlice$lstm_cell_3/ReadVariableOp_1:value:0*lstm_cell_3/strided_slice_1/stack:output:0,lstm_cell_3/strided_slice_1/stack_1:output:0,lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_1¦
lstm_cell_3/MatMul_5MatMullstm_cell_3/mul_5:z:0$lstm_cell_3/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_5¢
lstm_cell_3/add_1AddV2lstm_cell_3/BiasAdd_1:output:0lstm_cell_3/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add_1
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Sigmoid_1
lstm_cell_3/mul_8Mullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_8¢
lstm_cell_3/ReadVariableOp_2ReadVariableOp#lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
lstm_cell_3/ReadVariableOp_2
!lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  2#
!lstm_cell_3/strided_slice_2/stack
#lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_2/stack_1
#lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_2/stack_2Ò
lstm_cell_3/strided_slice_2StridedSlice$lstm_cell_3/ReadVariableOp_2:value:0*lstm_cell_3/strided_slice_2/stack:output:0,lstm_cell_3/strided_slice_2/stack_1:output:0,lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_2¦
lstm_cell_3/MatMul_6MatMullstm_cell_3/mul_6:z:0$lstm_cell_3/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_6¢
lstm_cell_3/add_2AddV2lstm_cell_3/BiasAdd_2:output:0lstm_cell_3/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add_2v
lstm_cell_3/TanhTanhlstm_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Tanh
lstm_cell_3/mul_9Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_9
lstm_cell_3/add_3AddV2lstm_cell_3/mul_8:z:0lstm_cell_3/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add_3¢
lstm_cell_3/ReadVariableOp_3ReadVariableOp#lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
lstm_cell_3/ReadVariableOp_3
!lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_3/strided_slice_3/stack
#lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_3/strided_slice_3/stack_1
#lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_3/stack_2Ò
lstm_cell_3/strided_slice_3StridedSlice$lstm_cell_3/ReadVariableOp_3:value:0*lstm_cell_3/strided_slice_3/stack:output:0,lstm_cell_3/strided_slice_3/stack_1:output:0,lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_3¦
lstm_cell_3/MatMul_7MatMullstm_cell_3/mul_7:z:0$lstm_cell_3/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_7¢
lstm_cell_3/add_4AddV2lstm_cell_3/BiasAdd_3:output:0lstm_cell_3/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add_4
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Sigmoid_2z
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Tanh_1
lstm_cell_3/mul_10Mullstm_cell_3/Sigmoid_2:y:0lstm_cell_3/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterã
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_3_split_readvariableop_resource+lstm_cell_3_split_1_readvariableop_resource#lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_63280*
condR
while_cond_63279*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime»
IdentityIdentitytranspose_1:y:0^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2

Identity±

Identity_1Identitywhile:output:4^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1±

Identity_2Identitywhile:output:5^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 28
lstm_cell_3/ReadVariableOplstm_cell_3/ReadVariableOp2<
lstm_cell_3/ReadVariableOp_1lstm_cell_3/ReadVariableOp_12<
lstm_cell_3/ReadVariableOp_2lstm_cell_3/ReadVariableOp_22<
lstm_cell_3/ReadVariableOp_3lstm_cell_3/ReadVariableOp_32D
 lstm_cell_3/split/ReadVariableOp lstm_cell_3/split/ReadVariableOp2H
"lstm_cell_3/split_1/ReadVariableOp"lstm_cell_3/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
®

K__inference_time_distributed_layer_call_and_return_conditional_losses_64479

inputs8
$dense_matmul_readvariableop_resource:
Øíb4
%dense_biasadd_readvariableop_resource:	íb
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿX  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2	
Reshape¡
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
Øíb*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:íb*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb2
dense/BiasAddt
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb2
dense/Softmaxq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :íb2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape
	Reshape_1Reshapedense/Softmax:softmax:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb2
	Reshape_1±
IdentityIdentityReshape_1:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ
 
_user_specified_nameinputs
À
Ö
&__inference_lstm_3_layer_call_fn_64091
inputs_0
unknown:	d°	
	unknown_0:	°	
	unknown_1:
¬°	
identity

identity_1

identity_2¢StatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_595932
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
£

È
lstm_3_while_cond_62284*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3*
&lstm_3_while_less_lstm_3_strided_sliceA
=lstm_3_while_lstm_3_while_cond_62284___redundant_placeholder0A
=lstm_3_while_lstm_3_while_cond_62284___redundant_placeholder1A
=lstm_3_while_lstm_3_while_cond_62284___redundant_placeholder2A
=lstm_3_while_lstm_3_while_cond_62284___redundant_placeholder3
lstm_3_while_identity

lstm_3/while/LessLesslstm_3_while_placeholder&lstm_3_while_less_lstm_3_strided_slice*
T0*
_output_shapes
: 2
lstm_3/while/Lessr
lstm_3/while/IdentityIdentitylstm_3/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_3/while/Identity"7
lstm_3_while_identitylstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ¬:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
:
 

lstm_3_while_body_62285*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3'
#lstm_3_while_lstm_3_strided_slice_0e
alstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0K
8lstm_3_while_lstm_cell_3_split_readvariableop_resource_0:	d°	I
:lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_0:	°	F
2lstm_3_while_lstm_cell_3_readvariableop_resource_0:
¬°	
lstm_3_while_identity
lstm_3_while_identity_1
lstm_3_while_identity_2
lstm_3_while_identity_3
lstm_3_while_identity_4
lstm_3_while_identity_5%
!lstm_3_while_lstm_3_strided_slicec
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensorI
6lstm_3_while_lstm_cell_3_split_readvariableop_resource:	d°	G
8lstm_3_while_lstm_cell_3_split_1_readvariableop_resource:	°	D
0lstm_3_while_lstm_cell_3_readvariableop_resource:
¬°	¢'lstm_3/while/lstm_cell_3/ReadVariableOp¢)lstm_3/while/lstm_cell_3/ReadVariableOp_1¢)lstm_3/while/lstm_cell_3/ReadVariableOp_2¢)lstm_3/while/lstm_cell_3/ReadVariableOp_3¢-lstm_3/while/lstm_cell_3/split/ReadVariableOp¢/lstm_3/while/lstm_cell_3/split_1/ReadVariableOpÑ
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   2@
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeý
0lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0lstm_3_while_placeholderGlstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype022
0lstm_3/while/TensorArrayV2Read/TensorListGetItem»
(lstm_3/while/lstm_cell_3/ones_like/ShapeShape7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2*
(lstm_3/while/lstm_cell_3/ones_like/Shape
(lstm_3/while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(lstm_3/while/lstm_cell_3/ones_like/Constè
"lstm_3/while/lstm_cell_3/ones_likeFill1lstm_3/while/lstm_cell_3/ones_like/Shape:output:01lstm_3/while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_3/while/lstm_cell_3/ones_like
&lstm_3/while/lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2(
&lstm_3/while/lstm_cell_3/dropout/Constã
$lstm_3/while/lstm_cell_3/dropout/MulMul+lstm_3/while/lstm_cell_3/ones_like:output:0/lstm_3/while/lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2&
$lstm_3/while/lstm_cell_3/dropout/Mul«
&lstm_3/while/lstm_cell_3/dropout/ShapeShape+lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2(
&lstm_3/while/lstm_cell_3/dropout/Shape
=lstm_3/while/lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform/lstm_3/while/lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed22?
=lstm_3/while/lstm_cell_3/dropout/random_uniform/RandomUniform§
/lstm_3/while/lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>21
/lstm_3/while/lstm_cell_3/dropout/GreaterEqual/y¢
-lstm_3/while/lstm_cell_3/dropout/GreaterEqualGreaterEqualFlstm_3/while/lstm_cell_3/dropout/random_uniform/RandomUniform:output:08lstm_3/while/lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2/
-lstm_3/while/lstm_cell_3/dropout/GreaterEqualÊ
%lstm_3/while/lstm_cell_3/dropout/CastCast1lstm_3/while/lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2'
%lstm_3/while/lstm_cell_3/dropout/CastÞ
&lstm_3/while/lstm_cell_3/dropout/Mul_1Mul(lstm_3/while/lstm_cell_3/dropout/Mul:z:0)lstm_3/while/lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2(
&lstm_3/while/lstm_cell_3/dropout/Mul_1
(lstm_3/while/lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2*
(lstm_3/while/lstm_cell_3/dropout_1/Consté
&lstm_3/while/lstm_cell_3/dropout_1/MulMul+lstm_3/while/lstm_cell_3/ones_like:output:01lstm_3/while/lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2(
&lstm_3/while/lstm_cell_3/dropout_1/Mul¯
(lstm_3/while/lstm_cell_3/dropout_1/ShapeShape+lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_3/while/lstm_cell_3/dropout_1/Shape£
?lstm_3/while/lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform1lstm_3/while/lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2Åj2A
?lstm_3/while/lstm_cell_3/dropout_1/random_uniform/RandomUniform«
1lstm_3/while/lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>23
1lstm_3/while/lstm_cell_3/dropout_1/GreaterEqual/yª
/lstm_3/while/lstm_cell_3/dropout_1/GreaterEqualGreaterEqualHlstm_3/while/lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:0:lstm_3/while/lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd21
/lstm_3/while/lstm_cell_3/dropout_1/GreaterEqualÐ
'lstm_3/while/lstm_cell_3/dropout_1/CastCast3lstm_3/while/lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2)
'lstm_3/while/lstm_cell_3/dropout_1/Castæ
(lstm_3/while/lstm_cell_3/dropout_1/Mul_1Mul*lstm_3/while/lstm_cell_3/dropout_1/Mul:z:0+lstm_3/while/lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2*
(lstm_3/while/lstm_cell_3/dropout_1/Mul_1
(lstm_3/while/lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2*
(lstm_3/while/lstm_cell_3/dropout_2/Consté
&lstm_3/while/lstm_cell_3/dropout_2/MulMul+lstm_3/while/lstm_cell_3/ones_like:output:01lstm_3/while/lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2(
&lstm_3/while/lstm_cell_3/dropout_2/Mul¯
(lstm_3/while/lstm_cell_3/dropout_2/ShapeShape+lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_3/while/lstm_cell_3/dropout_2/Shape¤
?lstm_3/while/lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform1lstm_3/while/lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2¬ÿ¤2A
?lstm_3/while/lstm_cell_3/dropout_2/random_uniform/RandomUniform«
1lstm_3/while/lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>23
1lstm_3/while/lstm_cell_3/dropout_2/GreaterEqual/yª
/lstm_3/while/lstm_cell_3/dropout_2/GreaterEqualGreaterEqualHlstm_3/while/lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:0:lstm_3/while/lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd21
/lstm_3/while/lstm_cell_3/dropout_2/GreaterEqualÐ
'lstm_3/while/lstm_cell_3/dropout_2/CastCast3lstm_3/while/lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2)
'lstm_3/while/lstm_cell_3/dropout_2/Castæ
(lstm_3/while/lstm_cell_3/dropout_2/Mul_1Mul*lstm_3/while/lstm_cell_3/dropout_2/Mul:z:0+lstm_3/while/lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2*
(lstm_3/while/lstm_cell_3/dropout_2/Mul_1
(lstm_3/while/lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2*
(lstm_3/while/lstm_cell_3/dropout_3/Consté
&lstm_3/while/lstm_cell_3/dropout_3/MulMul+lstm_3/while/lstm_cell_3/ones_like:output:01lstm_3/while/lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2(
&lstm_3/while/lstm_cell_3/dropout_3/Mul¯
(lstm_3/while/lstm_cell_3/dropout_3/ShapeShape+lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_3/while/lstm_cell_3/dropout_3/Shape¤
?lstm_3/while/lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform1lstm_3/while/lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2Î²À2A
?lstm_3/while/lstm_cell_3/dropout_3/random_uniform/RandomUniform«
1lstm_3/while/lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>23
1lstm_3/while/lstm_cell_3/dropout_3/GreaterEqual/yª
/lstm_3/while/lstm_cell_3/dropout_3/GreaterEqualGreaterEqualHlstm_3/while/lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:0:lstm_3/while/lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd21
/lstm_3/while/lstm_cell_3/dropout_3/GreaterEqualÐ
'lstm_3/while/lstm_cell_3/dropout_3/CastCast3lstm_3/while/lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2)
'lstm_3/while/lstm_cell_3/dropout_3/Castæ
(lstm_3/while/lstm_cell_3/dropout_3/Mul_1Mul*lstm_3/while/lstm_cell_3/dropout_3/Mul:z:0+lstm_3/while/lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2*
(lstm_3/while/lstm_cell_3/dropout_3/Mul_1¢
*lstm_3/while/lstm_cell_3/ones_like_1/ShapeShapelstm_3_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_3/while/lstm_cell_3/ones_like_1/Shape
*lstm_3/while/lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_3/while/lstm_cell_3/ones_like_1/Constñ
$lstm_3/while/lstm_cell_3/ones_like_1Fill3lstm_3/while/lstm_cell_3/ones_like_1/Shape:output:03lstm_3/while/lstm_cell_3/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2&
$lstm_3/while/lstm_cell_3/ones_like_1
(lstm_3/while/lstm_cell_3/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_3/while/lstm_cell_3/dropout_4/Constì
&lstm_3/while/lstm_cell_3/dropout_4/MulMul-lstm_3/while/lstm_cell_3/ones_like_1:output:01lstm_3/while/lstm_cell_3/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2(
&lstm_3/while/lstm_cell_3/dropout_4/Mul±
(lstm_3/while/lstm_cell_3/dropout_4/ShapeShape-lstm_3/while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2*
(lstm_3/while/lstm_cell_3/dropout_4/Shape¥
?lstm_3/while/lstm_cell_3/dropout_4/random_uniform/RandomUniformRandomUniform1lstm_3/while/lstm_cell_3/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2á²2A
?lstm_3/while/lstm_cell_3/dropout_4/random_uniform/RandomUniform«
1lstm_3/while/lstm_cell_3/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>23
1lstm_3/while/lstm_cell_3/dropout_4/GreaterEqual/y«
/lstm_3/while/lstm_cell_3/dropout_4/GreaterEqualGreaterEqualHlstm_3/while/lstm_cell_3/dropout_4/random_uniform/RandomUniform:output:0:lstm_3/while/lstm_cell_3/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬21
/lstm_3/while/lstm_cell_3/dropout_4/GreaterEqualÑ
'lstm_3/while/lstm_cell_3/dropout_4/CastCast3lstm_3/while/lstm_cell_3/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2)
'lstm_3/while/lstm_cell_3/dropout_4/Castç
(lstm_3/while/lstm_cell_3/dropout_4/Mul_1Mul*lstm_3/while/lstm_cell_3/dropout_4/Mul:z:0+lstm_3/while/lstm_cell_3/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2*
(lstm_3/while/lstm_cell_3/dropout_4/Mul_1
(lstm_3/while/lstm_cell_3/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_3/while/lstm_cell_3/dropout_5/Constì
&lstm_3/while/lstm_cell_3/dropout_5/MulMul-lstm_3/while/lstm_cell_3/ones_like_1:output:01lstm_3/while/lstm_cell_3/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2(
&lstm_3/while/lstm_cell_3/dropout_5/Mul±
(lstm_3/while/lstm_cell_3/dropout_5/ShapeShape-lstm_3/while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2*
(lstm_3/while/lstm_cell_3/dropout_5/Shape¥
?lstm_3/while/lstm_cell_3/dropout_5/random_uniform/RandomUniformRandomUniform1lstm_3/while/lstm_cell_3/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2ó2A
?lstm_3/while/lstm_cell_3/dropout_5/random_uniform/RandomUniform«
1lstm_3/while/lstm_cell_3/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>23
1lstm_3/while/lstm_cell_3/dropout_5/GreaterEqual/y«
/lstm_3/while/lstm_cell_3/dropout_5/GreaterEqualGreaterEqualHlstm_3/while/lstm_cell_3/dropout_5/random_uniform/RandomUniform:output:0:lstm_3/while/lstm_cell_3/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬21
/lstm_3/while/lstm_cell_3/dropout_5/GreaterEqualÑ
'lstm_3/while/lstm_cell_3/dropout_5/CastCast3lstm_3/while/lstm_cell_3/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2)
'lstm_3/while/lstm_cell_3/dropout_5/Castç
(lstm_3/while/lstm_cell_3/dropout_5/Mul_1Mul*lstm_3/while/lstm_cell_3/dropout_5/Mul:z:0+lstm_3/while/lstm_cell_3/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2*
(lstm_3/while/lstm_cell_3/dropout_5/Mul_1
(lstm_3/while/lstm_cell_3/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_3/while/lstm_cell_3/dropout_6/Constì
&lstm_3/while/lstm_cell_3/dropout_6/MulMul-lstm_3/while/lstm_cell_3/ones_like_1:output:01lstm_3/while/lstm_cell_3/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2(
&lstm_3/while/lstm_cell_3/dropout_6/Mul±
(lstm_3/while/lstm_cell_3/dropout_6/ShapeShape-lstm_3/while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2*
(lstm_3/while/lstm_cell_3/dropout_6/Shape¥
?lstm_3/while/lstm_cell_3/dropout_6/random_uniform/RandomUniformRandomUniform1lstm_3/while/lstm_cell_3/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2ÌÇÕ2A
?lstm_3/while/lstm_cell_3/dropout_6/random_uniform/RandomUniform«
1lstm_3/while/lstm_cell_3/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>23
1lstm_3/while/lstm_cell_3/dropout_6/GreaterEqual/y«
/lstm_3/while/lstm_cell_3/dropout_6/GreaterEqualGreaterEqualHlstm_3/while/lstm_cell_3/dropout_6/random_uniform/RandomUniform:output:0:lstm_3/while/lstm_cell_3/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬21
/lstm_3/while/lstm_cell_3/dropout_6/GreaterEqualÑ
'lstm_3/while/lstm_cell_3/dropout_6/CastCast3lstm_3/while/lstm_cell_3/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2)
'lstm_3/while/lstm_cell_3/dropout_6/Castç
(lstm_3/while/lstm_cell_3/dropout_6/Mul_1Mul*lstm_3/while/lstm_cell_3/dropout_6/Mul:z:0+lstm_3/while/lstm_cell_3/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2*
(lstm_3/while/lstm_cell_3/dropout_6/Mul_1
(lstm_3/while/lstm_cell_3/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_3/while/lstm_cell_3/dropout_7/Constì
&lstm_3/while/lstm_cell_3/dropout_7/MulMul-lstm_3/while/lstm_cell_3/ones_like_1:output:01lstm_3/while/lstm_cell_3/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2(
&lstm_3/while/lstm_cell_3/dropout_7/Mul±
(lstm_3/while/lstm_cell_3/dropout_7/ShapeShape-lstm_3/while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2*
(lstm_3/while/lstm_cell_3/dropout_7/Shape¥
?lstm_3/while/lstm_cell_3/dropout_7/random_uniform/RandomUniformRandomUniform1lstm_3/while/lstm_cell_3/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2°ß¨2A
?lstm_3/while/lstm_cell_3/dropout_7/random_uniform/RandomUniform«
1lstm_3/while/lstm_cell_3/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>23
1lstm_3/while/lstm_cell_3/dropout_7/GreaterEqual/y«
/lstm_3/while/lstm_cell_3/dropout_7/GreaterEqualGreaterEqualHlstm_3/while/lstm_cell_3/dropout_7/random_uniform/RandomUniform:output:0:lstm_3/while/lstm_cell_3/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬21
/lstm_3/while/lstm_cell_3/dropout_7/GreaterEqualÑ
'lstm_3/while/lstm_cell_3/dropout_7/CastCast3lstm_3/while/lstm_cell_3/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2)
'lstm_3/while/lstm_cell_3/dropout_7/Castç
(lstm_3/while/lstm_cell_3/dropout_7/Mul_1Mul*lstm_3/while/lstm_cell_3/dropout_7/Mul:z:0+lstm_3/while/lstm_cell_3/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2*
(lstm_3/while/lstm_cell_3/dropout_7/Mul_1Ú
lstm_3/while/lstm_cell_3/mulMul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0*lstm_3/while/lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_3/while/lstm_cell_3/mulà
lstm_3/while/lstm_cell_3/mul_1Mul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_3/while/lstm_cell_3/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
lstm_3/while/lstm_cell_3/mul_1à
lstm_3/while/lstm_cell_3/mul_2Mul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_3/while/lstm_cell_3/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
lstm_3/while/lstm_cell_3/mul_2à
lstm_3/while/lstm_cell_3/mul_3Mul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_3/while/lstm_cell_3/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
lstm_3/while/lstm_cell_3/mul_3
(lstm_3/while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_3/while/lstm_cell_3/split/split_dimØ
-lstm_3/while/lstm_cell_3/split/ReadVariableOpReadVariableOp8lstm_3_while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	d°	*
dtype02/
-lstm_3/while/lstm_cell_3/split/ReadVariableOp
lstm_3/while/lstm_cell_3/splitSplit1lstm_3/while/lstm_cell_3/split/split_dim:output:05lstm_3/while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d¬:	d¬:	d¬:	d¬*
	num_split2 
lstm_3/while/lstm_cell_3/splitÊ
lstm_3/while/lstm_cell_3/MatMulMatMul lstm_3/while/lstm_cell_3/mul:z:0'lstm_3/while/lstm_cell_3/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2!
lstm_3/while/lstm_cell_3/MatMulÐ
!lstm_3/while/lstm_cell_3/MatMul_1MatMul"lstm_3/while/lstm_cell_3/mul_1:z:0'lstm_3/while/lstm_cell_3/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!lstm_3/while/lstm_cell_3/MatMul_1Ð
!lstm_3/while/lstm_cell_3/MatMul_2MatMul"lstm_3/while/lstm_cell_3/mul_2:z:0'lstm_3/while/lstm_cell_3/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!lstm_3/while/lstm_cell_3/MatMul_2Ð
!lstm_3/while/lstm_cell_3/MatMul_3MatMul"lstm_3/while/lstm_cell_3/mul_3:z:0'lstm_3/while/lstm_cell_3/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!lstm_3/while/lstm_cell_3/MatMul_3
*lstm_3/while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*lstm_3/while/lstm_cell_3/split_1/split_dimÚ
/lstm_3/while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp:lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:°	*
dtype021
/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp
 lstm_3/while/lstm_cell_3/split_1Split3lstm_3/while/lstm_cell_3/split_1/split_dim:output:07lstm_3/while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:¬:¬:¬:¬*
	num_split2"
 lstm_3/while/lstm_cell_3/split_1Ø
 lstm_3/while/lstm_cell_3/BiasAddBiasAdd)lstm_3/while/lstm_cell_3/MatMul:product:0)lstm_3/while/lstm_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 lstm_3/while/lstm_cell_3/BiasAddÞ
"lstm_3/while/lstm_cell_3/BiasAdd_1BiasAdd+lstm_3/while/lstm_cell_3/MatMul_1:product:0)lstm_3/while/lstm_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_3/while/lstm_cell_3/BiasAdd_1Þ
"lstm_3/while/lstm_cell_3/BiasAdd_2BiasAdd+lstm_3/while/lstm_cell_3/MatMul_2:product:0)lstm_3/while/lstm_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_3/while/lstm_cell_3/BiasAdd_2Þ
"lstm_3/while/lstm_cell_3/BiasAdd_3BiasAdd+lstm_3/while/lstm_cell_3/MatMul_3:product:0)lstm_3/while/lstm_cell_3/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_3/while/lstm_cell_3/BiasAdd_3Ä
lstm_3/while/lstm_cell_3/mul_4Mullstm_3_while_placeholder_2,lstm_3/while/lstm_cell_3/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
lstm_3/while/lstm_cell_3/mul_4Ä
lstm_3/while/lstm_cell_3/mul_5Mullstm_3_while_placeholder_2,lstm_3/while/lstm_cell_3/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
lstm_3/while/lstm_cell_3/mul_5Ä
lstm_3/while/lstm_cell_3/mul_6Mullstm_3_while_placeholder_2,lstm_3/while/lstm_cell_3/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
lstm_3/while/lstm_cell_3/mul_6Ä
lstm_3/while/lstm_cell_3/mul_7Mullstm_3_while_placeholder_2,lstm_3/while/lstm_cell_3/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
lstm_3/while/lstm_cell_3/mul_7Ç
'lstm_3/while/lstm_cell_3/ReadVariableOpReadVariableOp2lstm_3_while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02)
'lstm_3/while/lstm_cell_3/ReadVariableOp­
,lstm_3/while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_3/while/lstm_cell_3/strided_slice/stack±
.lstm_3/while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  20
.lstm_3/while/lstm_cell_3/strided_slice/stack_1±
.lstm_3/while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_3/while/lstm_cell_3/strided_slice/stack_2
&lstm_3/while/lstm_cell_3/strided_sliceStridedSlice/lstm_3/while/lstm_cell_3/ReadVariableOp:value:05lstm_3/while/lstm_cell_3/strided_slice/stack:output:07lstm_3/while/lstm_cell_3/strided_slice/stack_1:output:07lstm_3/while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2(
&lstm_3/while/lstm_cell_3/strided_sliceØ
!lstm_3/while/lstm_cell_3/MatMul_4MatMul"lstm_3/while/lstm_cell_3/mul_4:z:0/lstm_3/while/lstm_cell_3/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!lstm_3/while/lstm_cell_3/MatMul_4Ð
lstm_3/while/lstm_cell_3/addAddV2)lstm_3/while/lstm_cell_3/BiasAdd:output:0+lstm_3/while/lstm_cell_3/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/while/lstm_cell_3/add¤
 lstm_3/while/lstm_cell_3/SigmoidSigmoid lstm_3/while/lstm_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 lstm_3/while/lstm_cell_3/SigmoidË
)lstm_3/while/lstm_cell_3/ReadVariableOp_1ReadVariableOp2lstm_3_while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02+
)lstm_3/while/lstm_cell_3/ReadVariableOp_1±
.lstm_3/while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  20
.lstm_3/while/lstm_cell_3/strided_slice_1/stackµ
0lstm_3/while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  22
0lstm_3/while/lstm_cell_3/strided_slice_1/stack_1µ
0lstm_3/while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_3/while/lstm_cell_3/strided_slice_1/stack_2 
(lstm_3/while/lstm_cell_3/strided_slice_1StridedSlice1lstm_3/while/lstm_cell_3/ReadVariableOp_1:value:07lstm_3/while/lstm_cell_3/strided_slice_1/stack:output:09lstm_3/while/lstm_cell_3/strided_slice_1/stack_1:output:09lstm_3/while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2*
(lstm_3/while/lstm_cell_3/strided_slice_1Ú
!lstm_3/while/lstm_cell_3/MatMul_5MatMul"lstm_3/while/lstm_cell_3/mul_5:z:01lstm_3/while/lstm_cell_3/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!lstm_3/while/lstm_cell_3/MatMul_5Ö
lstm_3/while/lstm_cell_3/add_1AddV2+lstm_3/while/lstm_cell_3/BiasAdd_1:output:0+lstm_3/while/lstm_cell_3/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
lstm_3/while/lstm_cell_3/add_1ª
"lstm_3/while/lstm_cell_3/Sigmoid_1Sigmoid"lstm_3/while/lstm_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_3/while/lstm_cell_3/Sigmoid_1¾
lstm_3/while/lstm_cell_3/mul_8Mul&lstm_3/while/lstm_cell_3/Sigmoid_1:y:0lstm_3_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
lstm_3/while/lstm_cell_3/mul_8Ë
)lstm_3/while/lstm_cell_3/ReadVariableOp_2ReadVariableOp2lstm_3_while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02+
)lstm_3/while/lstm_cell_3/ReadVariableOp_2±
.lstm_3/while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  20
.lstm_3/while/lstm_cell_3/strided_slice_2/stackµ
0lstm_3/while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_3/while/lstm_cell_3/strided_slice_2/stack_1µ
0lstm_3/while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_3/while/lstm_cell_3/strided_slice_2/stack_2 
(lstm_3/while/lstm_cell_3/strided_slice_2StridedSlice1lstm_3/while/lstm_cell_3/ReadVariableOp_2:value:07lstm_3/while/lstm_cell_3/strided_slice_2/stack:output:09lstm_3/while/lstm_cell_3/strided_slice_2/stack_1:output:09lstm_3/while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2*
(lstm_3/while/lstm_cell_3/strided_slice_2Ú
!lstm_3/while/lstm_cell_3/MatMul_6MatMul"lstm_3/while/lstm_cell_3/mul_6:z:01lstm_3/while/lstm_cell_3/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!lstm_3/while/lstm_cell_3/MatMul_6Ö
lstm_3/while/lstm_cell_3/add_2AddV2+lstm_3/while/lstm_cell_3/BiasAdd_2:output:0+lstm_3/while/lstm_cell_3/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
lstm_3/while/lstm_cell_3/add_2
lstm_3/while/lstm_cell_3/TanhTanh"lstm_3/while/lstm_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/while/lstm_cell_3/TanhÃ
lstm_3/while/lstm_cell_3/mul_9Mul$lstm_3/while/lstm_cell_3/Sigmoid:y:0!lstm_3/while/lstm_cell_3/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
lstm_3/while/lstm_cell_3/mul_9Ä
lstm_3/while/lstm_cell_3/add_3AddV2"lstm_3/while/lstm_cell_3/mul_8:z:0"lstm_3/while/lstm_cell_3/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
lstm_3/while/lstm_cell_3/add_3Ë
)lstm_3/while/lstm_cell_3/ReadVariableOp_3ReadVariableOp2lstm_3_while_lstm_cell_3_readvariableop_resource_0* 
_output_shapes
:
¬°	*
dtype02+
)lstm_3/while/lstm_cell_3/ReadVariableOp_3±
.lstm_3/while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_3/while/lstm_cell_3/strided_slice_3/stackµ
0lstm_3/while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_3/while/lstm_cell_3/strided_slice_3/stack_1µ
0lstm_3/while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_3/while/lstm_cell_3/strided_slice_3/stack_2 
(lstm_3/while/lstm_cell_3/strided_slice_3StridedSlice1lstm_3/while/lstm_cell_3/ReadVariableOp_3:value:07lstm_3/while/lstm_cell_3/strided_slice_3/stack:output:09lstm_3/while/lstm_cell_3/strided_slice_3/stack_1:output:09lstm_3/while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2*
(lstm_3/while/lstm_cell_3/strided_slice_3Ú
!lstm_3/while/lstm_cell_3/MatMul_7MatMul"lstm_3/while/lstm_cell_3/mul_7:z:01lstm_3/while/lstm_cell_3/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!lstm_3/while/lstm_cell_3/MatMul_7Ö
lstm_3/while/lstm_cell_3/add_4AddV2+lstm_3/while/lstm_cell_3/BiasAdd_3:output:0+lstm_3/while/lstm_cell_3/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
lstm_3/while/lstm_cell_3/add_4ª
"lstm_3/while/lstm_cell_3/Sigmoid_2Sigmoid"lstm_3/while/lstm_cell_3/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_3/while/lstm_cell_3/Sigmoid_2¡
lstm_3/while/lstm_cell_3/Tanh_1Tanh"lstm_3/while/lstm_cell_3/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2!
lstm_3/while/lstm_cell_3/Tanh_1É
lstm_3/while/lstm_cell_3/mul_10Mul&lstm_3/while/lstm_cell_3/Sigmoid_2:y:0#lstm_3/while/lstm_cell_3/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2!
lstm_3/while/lstm_cell_3/mul_10
1lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_3_while_placeholder_1lstm_3_while_placeholder#lstm_3/while/lstm_cell_3/mul_10:z:0*
_output_shapes
: *
element_dtype023
1lstm_3/while/TensorArrayV2Write/TensorListSetItemj
lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add/y
lstm_3/while/addAddV2lstm_3_while_placeholderlstm_3/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/addn
lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add_1/y
lstm_3/while/add_1AddV2&lstm_3_while_lstm_3_while_loop_counterlstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/add_1
lstm_3/while/IdentityIdentitylstm_3/while/add_1:z:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity
lstm_3/while/Identity_1Identity,lstm_3_while_lstm_3_while_maximum_iterations(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_1
lstm_3/while/Identity_2Identitylstm_3/while/add:z:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_2²
lstm_3/while/Identity_3IdentityAlstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_3¦
lstm_3/while/Identity_4Identity#lstm_3/while/lstm_cell_3/mul_10:z:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/while/Identity_4¥
lstm_3/while/Identity_5Identity"lstm_3/while/lstm_cell_3/add_3:z:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_3/while/Identity_5"7
lstm_3_while_identitylstm_3/while/Identity:output:0";
lstm_3_while_identity_1 lstm_3/while/Identity_1:output:0";
lstm_3_while_identity_2 lstm_3/while/Identity_2:output:0";
lstm_3_while_identity_3 lstm_3/while/Identity_3:output:0";
lstm_3_while_identity_4 lstm_3/while/Identity_4:output:0";
lstm_3_while_identity_5 lstm_3/while/Identity_5:output:0"H
!lstm_3_while_lstm_3_strided_slice#lstm_3_while_lstm_3_strided_slice_0"f
0lstm_3_while_lstm_cell_3_readvariableop_resource2lstm_3_while_lstm_cell_3_readvariableop_resource_0"v
8lstm_3_while_lstm_cell_3_split_1_readvariableop_resource:lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_0"r
6lstm_3_while_lstm_cell_3_split_readvariableop_resource8lstm_3_while_lstm_cell_3_split_readvariableop_resource_0"Ä
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensoralstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : 2R
'lstm_3/while/lstm_cell_3/ReadVariableOp'lstm_3/while/lstm_cell_3/ReadVariableOp2V
)lstm_3/while/lstm_cell_3/ReadVariableOp_1)lstm_3/while/lstm_cell_3/ReadVariableOp_12V
)lstm_3/while/lstm_cell_3/ReadVariableOp_2)lstm_3/while/lstm_cell_3/ReadVariableOp_22V
)lstm_3/while/lstm_cell_3/ReadVariableOp_3)lstm_3/while/lstm_cell_3/ReadVariableOp_32^
-lstm_3/while/lstm_cell_3/split/ReadVariableOp-lstm_3/while/lstm_cell_3/split/ReadVariableOp2b
/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ¬:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
: 

è
model_2_lstm_3_while_cond_58962:
6model_2_lstm_3_while_model_2_lstm_3_while_loop_counter@
<model_2_lstm_3_while_model_2_lstm_3_while_maximum_iterations$
 model_2_lstm_3_while_placeholder&
"model_2_lstm_3_while_placeholder_1&
"model_2_lstm_3_while_placeholder_2&
"model_2_lstm_3_while_placeholder_3:
6model_2_lstm_3_while_less_model_2_lstm_3_strided_sliceQ
Mmodel_2_lstm_3_while_model_2_lstm_3_while_cond_58962___redundant_placeholder0Q
Mmodel_2_lstm_3_while_model_2_lstm_3_while_cond_58962___redundant_placeholder1Q
Mmodel_2_lstm_3_while_model_2_lstm_3_while_cond_58962___redundant_placeholder2Q
Mmodel_2_lstm_3_while_model_2_lstm_3_while_cond_58962___redundant_placeholder3!
model_2_lstm_3_while_identity
¹
model_2/lstm_3/while/LessLess model_2_lstm_3_while_placeholder6model_2_lstm_3_while_less_model_2_lstm_3_strided_slice*
T0*
_output_shapes
: 2
model_2/lstm_3/while/Less
model_2/lstm_3/while/IdentityIdentitymodel_2/lstm_3/while/Less:z:0*
T0
*
_output_shapes
: 2
model_2/lstm_3/while/Identity"G
model_2_lstm_3_while_identity&model_2/lstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ¬:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
:
Ú,
½
"attention_layer_while_1_body_62688@
<attention_layer_while_1_attention_layer_while_1_loop_counterF
Battention_layer_while_1_attention_layer_while_1_maximum_iterations'
#attention_layer_while_1_placeholder)
%attention_layer_while_1_placeholder_1)
%attention_layer_while_1_placeholder_2=
9attention_layer_while_1_attention_layer_strided_slice_3_0{
wattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensor_0*
&attention_layer_while_1_mul_inputs_1_0$
 attention_layer_while_1_identity&
"attention_layer_while_1_identity_1&
"attention_layer_while_1_identity_2&
"attention_layer_while_1_identity_3&
"attention_layer_while_1_identity_4;
7attention_layer_while_1_attention_layer_strided_slice_3y
uattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensor(
$attention_layer_while_1_mul_inputs_1ç
Iattention_layer/while_1/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿP   2K
Iattention_layer/while_1/TensorArrayV2Read/TensorListGetItem/element_shape¿
;attention_layer/while_1/TensorArrayV2Read/TensorListGetItemTensorListGetItemwattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensor_0#attention_layer_while_1_placeholderRattention_layer/while_1/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
element_dtype02=
;attention_layer/while_1/TensorArrayV2Read/TensorListGetItem
&attention_layer/while_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&attention_layer/while_1/ExpandDims/dim
"attention_layer/while_1/ExpandDims
ExpandDimsBattention_layer/while_1/TensorArrayV2Read/TensorListGetItem:item:0/attention_layer/while_1/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2$
"attention_layer/while_1/ExpandDimsÍ
attention_layer/while_1/mulMul&attention_layer_while_1_mul_inputs_1_0+attention_layer/while_1/ExpandDims:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
attention_layer/while_1/mul 
-attention_layer/while_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2/
-attention_layer/while_1/Sum/reduction_indicesÍ
attention_layer/while_1/SumSumattention_layer/while_1/mul:z:06attention_layer/while_1/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
attention_layer/while_1/Sum°
<attention_layer/while_1/TensorArrayV2Write/TensorListSetItemTensorListSetItem%attention_layer_while_1_placeholder_1#attention_layer_while_1_placeholder$attention_layer/while_1/Sum:output:0*
_output_shapes
: *
element_dtype02>
<attention_layer/while_1/TensorArrayV2Write/TensorListSetItem
attention_layer/while_1/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
attention_layer/while_1/add/y±
attention_layer/while_1/addAddV2#attention_layer_while_1_placeholder&attention_layer/while_1/add/y:output:0*
T0*
_output_shapes
: 2
attention_layer/while_1/add
attention_layer/while_1/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2!
attention_layer/while_1/add_1/yÐ
attention_layer/while_1/add_1AddV2<attention_layer_while_1_attention_layer_while_1_loop_counter(attention_layer/while_1/add_1/y:output:0*
T0*
_output_shapes
: 2
attention_layer/while_1/add_1
 attention_layer/while_1/IdentityIdentity!attention_layer/while_1/add_1:z:0*
T0*
_output_shapes
: 2"
 attention_layer/while_1/Identity¹
"attention_layer/while_1/Identity_1IdentityBattention_layer_while_1_attention_layer_while_1_maximum_iterations*
T0*
_output_shapes
: 2$
"attention_layer/while_1/Identity_1
"attention_layer/while_1/Identity_2Identityattention_layer/while_1/add:z:0*
T0*
_output_shapes
: 2$
"attention_layer/while_1/Identity_2Ã
"attention_layer/while_1/Identity_3IdentityLattention_layer/while_1/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2$
"attention_layer/while_1/Identity_3­
"attention_layer/while_1/Identity_4Identity$attention_layer/while_1/Sum:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"attention_layer/while_1/Identity_4"t
7attention_layer_while_1_attention_layer_strided_slice_39attention_layer_while_1_attention_layer_strided_slice_3_0"M
 attention_layer_while_1_identity)attention_layer/while_1/Identity:output:0"Q
"attention_layer_while_1_identity_1+attention_layer/while_1/Identity_1:output:0"Q
"attention_layer_while_1_identity_2+attention_layer/while_1/Identity_2:output:0"Q
"attention_layer_while_1_identity_3+attention_layer/while_1/Identity_3:output:0"Q
"attention_layer_while_1_identity_4+attention_layer/while_1/Identity_4:output:0"N
$attention_layer_while_1_mul_inputs_1&attention_layer_while_1_mul_inputs_1_0"ð
uattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensorwattention_layer_while_1_tensorarrayv2read_tensorlistgetitem_attention_layer_tensorarrayunstack_1_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ¬: : :ÿÿÿÿÿÿÿÿÿP¬: 
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
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
: :2.
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬
¼
¨
 attention_layer_while_cond_62555<
8attention_layer_while_attention_layer_while_loop_counterB
>attention_layer_while_attention_layer_while_maximum_iterations%
!attention_layer_while_placeholder'
#attention_layer_while_placeholder_1'
#attention_layer_while_placeholder_2<
8attention_layer_while_less_attention_layer_strided_sliceS
Oattention_layer_while_attention_layer_while_cond_62555___redundant_placeholder0S
Oattention_layer_while_attention_layer_while_cond_62555___redundant_placeholder1S
Oattention_layer_while_attention_layer_while_cond_62555___redundant_placeholder2S
Oattention_layer_while_attention_layer_while_cond_62555___redundant_placeholder3S
Oattention_layer_while_attention_layer_while_cond_62555___redundant_placeholder4"
attention_layer_while_identity
¾
attention_layer/while/LessLess!attention_layer_while_placeholder8attention_layer_while_less_attention_layer_strided_slice*
T0*
_output_shapes
: 2
attention_layer/while/Less
attention_layer/while/IdentityIdentityattention_layer/while/Less:z:0*
T0
*
_output_shapes
: 2 
attention_layer/while/Identity"I
attention_layer_while_identity'attention_layer/while/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :ÿÿÿÿÿÿÿÿÿP: :::::: 
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
:ÿÿÿÿÿÿÿÿÿP:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
R
ò
while_body_64218
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_shape_inputs_0_0;
'while_shape_1_readvariableop_resource_0:
¬¬<
(while_matmul_1_readvariableop_resource_0:
¬¬:
'while_shape_3_readvariableop_resource_0:	¬
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_shape_inputs_09
%while_shape_1_readvariableop_resource:
¬¬:
&while_matmul_1_readvariableop_resource:
¬¬8
%while_shape_3_readvariableop_resource:	¬¢while/MatMul_1/ReadVariableOp¢while/transpose/ReadVariableOp¢ while/transpose_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem`
while/ShapeShapewhile_shape_inputs_0_0*
T0*
_output_shapes
:2
while/Shapen
while/unstackUnpackwhile/Shape:output:0*
T0*
_output_shapes
: : : *	
num2
while/unstack¦
while/Shape_1/ReadVariableOpReadVariableOp'while_shape_1_readvariableop_resource_0* 
_output_shapes
:
¬¬*
dtype02
while/Shape_1/ReadVariableOpo
while/Shape_1Const*
_output_shapes
:*
dtype0*
valueB",  ,  2
while/Shape_1r
while/unstack_1Unpackwhile/Shape_1:output:0*
T0*
_output_shapes
: : *	
num2
while/unstack_1{
while/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2
while/Reshape/shape
while/ReshapeReshapewhile_shape_inputs_0_0while/Reshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/Reshapeª
while/transpose/ReadVariableOpReadVariableOp'while_shape_1_readvariableop_resource_0* 
_output_shapes
:
¬¬*
dtype02 
while/transpose/ReadVariableOp}
while/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       2
while/transpose/perm¡
while/transpose	Transpose&while/transpose/ReadVariableOp:value:0while/transpose/perm:output:0*
T0* 
_output_shapes
:
¬¬2
while/transpose
while/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB",  ÿÿÿÿ2
while/Reshape_1/shape
while/Reshape_1Reshapewhile/transpose:y:0while/Reshape_1/shape:output:0*
T0* 
_output_shapes
:
¬¬2
while/Reshape_1
while/MatMulMatMulwhile/Reshape:output:0while/Reshape_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/MatMult
while/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :P2
while/Reshape_2/shape/1u
while/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value
B :¬2
while/Reshape_2/shape/2À
while/Reshape_2/shapePackwhile/unstack:output:0 while/Reshape_2/shape/1:output:0 while/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/Reshape_2/shape
while/Reshape_2Reshapewhile/MatMul:product:0while/Reshape_2/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
while/Reshape_2©
while/MatMul_1/ReadVariableOpReadVariableOp(while_matmul_1_readvariableop_resource_0* 
_output_shapes
:
¬¬*
dtype02
while/MatMul_1/ReadVariableOp¶
while/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/MatMul_1n
while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/ExpandDims/dim¢
while/ExpandDims
ExpandDimswhile/MatMul_1:product:0while/ExpandDims/dim:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/ExpandDims
	while/addAddV2while/Reshape_2:output:0while/ExpandDims:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2
	while/addf

while/TanhTanhwhile/add:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬2

while/Tanh\
while/Shape_2Shapewhile/Tanh:y:0*
T0*
_output_shapes
:2
while/Shape_2t
while/unstack_2Unpackwhile/Shape_2:output:0*
T0*
_output_shapes
: : : *	
num2
while/unstack_2¥
while/Shape_3/ReadVariableOpReadVariableOp'while_shape_3_readvariableop_resource_0*
_output_shapes
:	¬*
dtype02
while/Shape_3/ReadVariableOpo
while/Shape_3Const*
_output_shapes
:*
dtype0*
valueB",     2
while/Shape_3r
while/unstack_3Unpackwhile/Shape_3:output:0*
T0*
_output_shapes
: : *	
num2
while/unstack_3
while/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2
while/Reshape_3/shape
while/Reshape_3Reshapewhile/Tanh:y:0while/Reshape_3/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/Reshape_3­
 while/transpose_1/ReadVariableOpReadVariableOp'while_shape_3_readvariableop_resource_0*
_output_shapes
:	¬*
dtype02"
 while/transpose_1/ReadVariableOp
while/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
while/transpose_1/perm¨
while/transpose_1	Transpose(while/transpose_1/ReadVariableOp:value:0while/transpose_1/perm:output:0*
T0*
_output_shapes
:	¬2
while/transpose_1
while/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB",  ÿÿÿÿ2
while/Reshape_4/shape
while/Reshape_4Reshapewhile/transpose_1:y:0while/Reshape_4/shape:output:0*
T0*
_output_shapes
:	¬2
while/Reshape_4
while/MatMul_2MatMulwhile/Reshape_3:output:0while/Reshape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/MatMul_2t
while/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :P2
while/Reshape_5/shape/1t
while/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/Reshape_5/shape/2Â
while/Reshape_5/shapePackwhile/unstack_2:output:0 while/Reshape_5/shape/1:output:0 while/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/Reshape_5/shape
while/Reshape_5Reshapewhile/MatMul_2:product:0while/Reshape_5/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
while/Reshape_5
while/SqueezeSqueezewhile/Reshape_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ2
while/Squeezes
while/SoftmaxSoftmaxwhile/Squeeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
while/SoftmaxÛ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/Softmax:softmax:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yo
while/add_1AddV2while_placeholderwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yv
while/add_2AddV2while_while_loop_counterwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2Â
while/IdentityIdentitywhile/add_2:z:0^while/MatMul_1/ReadVariableOp^while/transpose/ReadVariableOp!^while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/IdentityÕ
while/Identity_1Identitywhile_while_maximum_iterations^while/MatMul_1/ReadVariableOp^while/transpose/ReadVariableOp!^while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Æ
while/Identity_2Identitywhile/add_1:z:0^while/MatMul_1/ReadVariableOp^while/transpose/ReadVariableOp!^while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ñ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/MatMul_1/ReadVariableOp^while/transpose/ReadVariableOp!^while/transpose_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ß
while/Identity_4Identitywhile/Softmax:softmax:0^while/MatMul_1/ReadVariableOp^while/transpose/ReadVariableOp!^while/transpose_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"R
&while_matmul_1_readvariableop_resource(while_matmul_1_readvariableop_resource_0"P
%while_shape_1_readvariableop_resource'while_shape_1_readvariableop_resource_0"P
%while_shape_3_readvariableop_resource'while_shape_3_readvariableop_resource_0".
while_shape_inputs_0while_shape_inputs_0_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=: : : : :ÿÿÿÿÿÿÿÿÿP: : :ÿÿÿÿÿÿÿÿÿP¬: : : 2>
while/MatMul_1/ReadVariableOpwhile/MatMul_1/ReadVariableOp2@
while/transpose/ReadVariableOpwhile/transpose/ReadVariableOp2D
 while/transpose_1/ReadVariableOp while/transpose_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿP:

_output_shapes
: :

_output_shapes
: :2.
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿP¬
ð%
×
while_body_59522
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_3_59546_0:	d°	(
while_lstm_cell_3_59548_0:	°	-
while_lstm_cell_3_59550_0:
¬°	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_3_59546:	d°	&
while_lstm_cell_3_59548:	°	+
while_lstm_cell_3_59550:
¬°	¢)while/lstm_cell_3/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÝ
)while/lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_3_59546_0while_lstm_cell_3_59548_0while_lstm_cell_3_59550_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_595082+
)while/lstm_cell_3/StatefulPartitionedCallö
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2¹
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ã
while/Identity_4Identity2while/lstm_cell_3/StatefulPartitionedCall:output:1*^while/lstm_cell_3/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/Identity_4Ã
while/Identity_5Identity2while/lstm_cell_3/StatefulPartitionedCall:output:2*^while/lstm_cell_3/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_3_59546while_lstm_cell_3_59546_0"4
while_lstm_cell_3_59548while_lstm_cell_3_59548_0"4
while_lstm_cell_3_59550while_lstm_cell_3_59550_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : 2V
)while/lstm_cell_3/StatefulPartitionedCall)while/lstm_cell_3/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ¬:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬:

_output_shapes
: :

_output_shapes
: 
N
ª
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_64579

inputs
states_0
states_10
split_readvariableop_resource:	d°	.
split_1_readvariableop_resource:	°	+
readvariableop_resource:
¬°	
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
	ones_like^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
ones_like_1_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mulc
mul_1Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_1c
mul_2Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_2c
mul_3Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_3d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	d°	*
dtype02
split/ReadVariableOp«
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d¬:	d¬:	d¬:	d¬*
	num_split2
splitf
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
MatMull
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_1l
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_2l
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:°	*
dtype02
split_1/ReadVariableOp£
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:¬:¬:¬:¬*
	num_split2	
split_1t
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2	
BiasAddz
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
	BiasAdd_1z
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
	BiasAdd_2z
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
	BiasAdd_3h
mul_4Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_4h
mul_5Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_5h
mul_6Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_6h
mul_7Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_7z
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
strided_slicet
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_4l
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2	
Sigmoid~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
strided_slice_1v
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_5r
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
	Sigmoid_1a
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_8~
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
strided_slice_2v
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_6r
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
Tanh_
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_9`
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
add_3~
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
strided_slice_3v
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_7r
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
add_4_
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
	Sigmoid_2V
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
Tanh_1e
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_10Ù
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

IdentityÝ

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1Ü

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
"
_user_specified_name
states/1
½
Ç
K__inference_time_distributed_layer_call_and_return_conditional_losses_60285

inputs
dense_60275:
Øíb
dense_60277:	íb
identity¢dense/StatefulPartitionedCallD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿX  2
Reshape/shapep
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2	
Reshape
dense/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_60275dense_60277*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿíb*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_602262
dense/StatefulPartitionedCallq
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Reshape_1/shape/0i
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :íb2
Reshape_1/shape/2¨
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape£
	Reshape_1Reshape&dense/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb2
	Reshape_1
IdentityIdentityReshape_1:output:0^dense/StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ: : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ
 
_user_specified_nameinputs
N
¨
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_59508

inputs

states
states_10
split_readvariableop_resource:	d°	.
split_1_readvariableop_resource:	°	+
readvariableop_resource:
¬°	
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
	ones_like\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
ones_like_1_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mulc
mul_1Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_1c
mul_2Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_2c
mul_3Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
mul_3d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	d°	*
dtype02
split/ReadVariableOp«
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d¬:	d¬:	d¬:	d¬*
	num_split2
splitf
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
MatMull
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_1l
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_2l
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:°	*
dtype02
split_1/ReadVariableOp£
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:¬:¬:¬:¬*
	num_split2	
split_1t
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2	
BiasAddz
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
	BiasAdd_1z
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
	BiasAdd_2z
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
	BiasAdd_3f
mul_4Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_4f
mul_5Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_5f
mul_6Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_6f
mul_7Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_7z
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
strided_slicet
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_4l
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2	
Sigmoid~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
strided_slice_1v
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_5r
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
	Sigmoid_1a
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_8~
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
strided_slice_2v
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_6r
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
Tanh_
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_9`
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
add_3~
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
strided_slice_3v
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

MatMul_7r
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
add_4_
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
	Sigmoid_2V
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
Tanh_1e
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
mul_10Ù
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

IdentityÝ

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1Ü

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_namestates
Ê
Ø
while_cond_60688
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_60688___redundant_placeholder03
/while_while_cond_60688___redundant_placeholder13
/while_while_cond_60688___redundant_placeholder23
/while_while_cond_60688___redundant_placeholder33
/while_while_cond_60688___redundant_placeholder4
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
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :ÿÿÿÿÿÿÿÿÿP: :::::: 
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
:ÿÿÿÿÿÿÿÿÿP:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
âë
§
A__inference_lstm_3_layer_call_and_return_conditional_losses_64076

inputs
initial_state_0
initial_state_1<
)lstm_cell_3_split_readvariableop_resource:	d°	:
+lstm_cell_3_split_1_readvariableop_resource:	°	7
#lstm_cell_3_readvariableop_resource:
¬°	
identity

identity_1

identity_2¢lstm_cell_3/ReadVariableOp¢lstm_cell_3/ReadVariableOp_1¢lstm_cell_3/ReadVariableOp_2¢lstm_cell_3/ReadVariableOp_3¢ lstm_cell_3/split/ReadVariableOp¢"lstm_cell_3/split_1/ReadVariableOp¢whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_1/stack_2ü
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask2
strided_slice_1
lstm_cell_3/ones_like/ShapeShapestrided_slice_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like/Shape
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like/Const´
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/ones_like{
lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
lstm_cell_3/dropout/Const¯
lstm_cell_3/dropout/MulMullstm_cell_3/ones_like:output:0"lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout/Mul
lstm_cell_3/dropout/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout/Shape÷
0lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2Ì°22
0lstm_cell_3/dropout/random_uniform/RandomUniform
"lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2$
"lstm_cell_3/dropout/GreaterEqual/yî
 lstm_cell_3/dropout/GreaterEqualGreaterEqual9lstm_cell_3/dropout/random_uniform/RandomUniform:output:0+lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 lstm_cell_3/dropout/GreaterEqual£
lstm_cell_3/dropout/CastCast$lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout/Castª
lstm_cell_3/dropout/Mul_1Mullstm_cell_3/dropout/Mul:z:0lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout/Mul_1
lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
lstm_cell_3/dropout_1/Constµ
lstm_cell_3/dropout_1/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_1/Mul
lstm_cell_3/dropout_1/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_1/Shapeü
2lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2¸êt24
2lstm_cell_3/dropout_1/random_uniform/RandomUniform
$lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2&
$lstm_cell_3/dropout_1/GreaterEqual/yö
"lstm_cell_3/dropout_1/GreaterEqualGreaterEqual;lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_cell_3/dropout_1/GreaterEqual©
lstm_cell_3/dropout_1/CastCast&lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_1/Cast²
lstm_cell_3/dropout_1/Mul_1Mullstm_cell_3/dropout_1/Mul:z:0lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_1/Mul_1
lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
lstm_cell_3/dropout_2/Constµ
lstm_cell_3/dropout_2/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_2/Mul
lstm_cell_3/dropout_2/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_2/Shapeü
2lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2±924
2lstm_cell_3/dropout_2/random_uniform/RandomUniform
$lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2&
$lstm_cell_3/dropout_2/GreaterEqual/yö
"lstm_cell_3/dropout_2/GreaterEqualGreaterEqual;lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_cell_3/dropout_2/GreaterEqual©
lstm_cell_3/dropout_2/CastCast&lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_2/Cast²
lstm_cell_3/dropout_2/Mul_1Mullstm_cell_3/dropout_2/Mul:z:0lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_2/Mul_1
lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
lstm_cell_3/dropout_3/Constµ
lstm_cell_3/dropout_3/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_3/Mul
lstm_cell_3/dropout_3/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_3/Shapeý
2lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
seed±ÿå)*
seed2ÔÅå24
2lstm_cell_3/dropout_3/random_uniform/RandomUniform
$lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2&
$lstm_cell_3/dropout_3/GreaterEqual/yö
"lstm_cell_3/dropout_3/GreaterEqualGreaterEqual;lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2$
"lstm_cell_3/dropout_3/GreaterEqual©
lstm_cell_3/dropout_3/CastCast&lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_3/Cast²
lstm_cell_3/dropout_3/Mul_1Mullstm_cell_3/dropout_3/Mul:z:0lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/dropout_3/Mul_1}
lstm_cell_3/ones_like_1/ShapeShapeinitial_state_0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like_1/Shape
lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like_1/Const½
lstm_cell_3/ones_like_1Fill&lstm_cell_3/ones_like_1/Shape:output:0&lstm_cell_3/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/ones_like_1
lstm_cell_3/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/dropout_4/Const¸
lstm_cell_3/dropout_4/MulMul lstm_cell_3/ones_like_1:output:0$lstm_cell_3/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_4/Mul
lstm_cell_3/dropout_4/ShapeShape lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_4/Shapeþ
2lstm_cell_3/dropout_4/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2µÃ24
2lstm_cell_3/dropout_4/random_uniform/RandomUniform
$lstm_cell_3/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_3/dropout_4/GreaterEqual/y÷
"lstm_cell_3/dropout_4/GreaterEqualGreaterEqual;lstm_cell_3/dropout_4/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_cell_3/dropout_4/GreaterEqualª
lstm_cell_3/dropout_4/CastCast&lstm_cell_3/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_4/Cast³
lstm_cell_3/dropout_4/Mul_1Mullstm_cell_3/dropout_4/Mul:z:0lstm_cell_3/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_4/Mul_1
lstm_cell_3/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/dropout_5/Const¸
lstm_cell_3/dropout_5/MulMul lstm_cell_3/ones_like_1:output:0$lstm_cell_3/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_5/Mul
lstm_cell_3/dropout_5/ShapeShape lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_5/Shapeþ
2lstm_cell_3/dropout_5/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2Öô¡24
2lstm_cell_3/dropout_5/random_uniform/RandomUniform
$lstm_cell_3/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_3/dropout_5/GreaterEqual/y÷
"lstm_cell_3/dropout_5/GreaterEqualGreaterEqual;lstm_cell_3/dropout_5/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_cell_3/dropout_5/GreaterEqualª
lstm_cell_3/dropout_5/CastCast&lstm_cell_3/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_5/Cast³
lstm_cell_3/dropout_5/Mul_1Mullstm_cell_3/dropout_5/Mul:z:0lstm_cell_3/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_5/Mul_1
lstm_cell_3/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/dropout_6/Const¸
lstm_cell_3/dropout_6/MulMul lstm_cell_3/ones_like_1:output:0$lstm_cell_3/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_6/Mul
lstm_cell_3/dropout_6/ShapeShape lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_6/Shapeþ
2lstm_cell_3/dropout_6/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2ºð24
2lstm_cell_3/dropout_6/random_uniform/RandomUniform
$lstm_cell_3/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_3/dropout_6/GreaterEqual/y÷
"lstm_cell_3/dropout_6/GreaterEqualGreaterEqual;lstm_cell_3/dropout_6/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_cell_3/dropout_6/GreaterEqualª
lstm_cell_3/dropout_6/CastCast&lstm_cell_3/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_6/Cast³
lstm_cell_3/dropout_6/Mul_1Mullstm_cell_3/dropout_6/Mul:z:0lstm_cell_3/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_6/Mul_1
lstm_cell_3/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/dropout_7/Const¸
lstm_cell_3/dropout_7/MulMul lstm_cell_3/ones_like_1:output:0$lstm_cell_3/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_7/Mul
lstm_cell_3/dropout_7/ShapeShape lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_7/Shapeþ
2lstm_cell_3/dropout_7/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype0*
seed±ÿå)*
seed2û¡24
2lstm_cell_3/dropout_7/random_uniform/RandomUniform
$lstm_cell_3/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_3/dropout_7/GreaterEqual/y÷
"lstm_cell_3/dropout_7/GreaterEqualGreaterEqual;lstm_cell_3/dropout_7/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2$
"lstm_cell_3/dropout_7/GreaterEqualª
lstm_cell_3/dropout_7/CastCast&lstm_cell_3/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_7/Cast³
lstm_cell_3/dropout_7/Mul_1Mullstm_cell_3/dropout_7/Mul:z:0lstm_cell_3/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/dropout_7/Mul_1
lstm_cell_3/mulMulstrided_slice_1:output:0lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/mul
lstm_cell_3/mul_1Mulstrided_slice_1:output:0lstm_cell_3/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/mul_1
lstm_cell_3/mul_2Mulstrided_slice_1:output:0lstm_cell_3/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/mul_2
lstm_cell_3/mul_3Mulstrided_slice_1:output:0lstm_cell_3/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
lstm_cell_3/mul_3|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dim¯
 lstm_cell_3/split/ReadVariableOpReadVariableOp)lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	d°	*
dtype02"
 lstm_cell_3/split/ReadVariableOpÛ
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0(lstm_cell_3/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d¬:	d¬:	d¬:	d¬*
	num_split2
lstm_cell_3/split
lstm_cell_3/MatMulMatMullstm_cell_3/mul:z:0lstm_cell_3/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul
lstm_cell_3/MatMul_1MatMullstm_cell_3/mul_1:z:0lstm_cell_3/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_1
lstm_cell_3/MatMul_2MatMullstm_cell_3/mul_2:z:0lstm_cell_3/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_2
lstm_cell_3/MatMul_3MatMullstm_cell_3/mul_3:z:0lstm_cell_3/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_3
lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_3/split_1/split_dim±
"lstm_cell_3/split_1/ReadVariableOpReadVariableOp+lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:°	*
dtype02$
"lstm_cell_3/split_1/ReadVariableOpÓ
lstm_cell_3/split_1Split&lstm_cell_3/split_1/split_dim:output:0*lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:¬:¬:¬:¬*
	num_split2
lstm_cell_3/split_1¤
lstm_cell_3/BiasAddBiasAddlstm_cell_3/MatMul:product:0lstm_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/BiasAddª
lstm_cell_3/BiasAdd_1BiasAddlstm_cell_3/MatMul_1:product:0lstm_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/BiasAdd_1ª
lstm_cell_3/BiasAdd_2BiasAddlstm_cell_3/MatMul_2:product:0lstm_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/BiasAdd_2ª
lstm_cell_3/BiasAdd_3BiasAddlstm_cell_3/MatMul_3:product:0lstm_cell_3/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/BiasAdd_3
lstm_cell_3/mul_4Mulinitial_state_0lstm_cell_3/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_4
lstm_cell_3/mul_5Mulinitial_state_0lstm_cell_3/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_5
lstm_cell_3/mul_6Mulinitial_state_0lstm_cell_3/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_6
lstm_cell_3/mul_7Mulinitial_state_0lstm_cell_3/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_7
lstm_cell_3/ReadVariableOpReadVariableOp#lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
lstm_cell_3/ReadVariableOp
lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_3/strided_slice/stack
!lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ,  2#
!lstm_cell_3/strided_slice/stack_1
!lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_3/strided_slice/stack_2Æ
lstm_cell_3/strided_sliceStridedSlice"lstm_cell_3/ReadVariableOp:value:0(lstm_cell_3/strided_slice/stack:output:0*lstm_cell_3/strided_slice/stack_1:output:0*lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
lstm_cell_3/strided_slice¤
lstm_cell_3/MatMul_4MatMullstm_cell_3/mul_4:z:0"lstm_cell_3/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_4
lstm_cell_3/addAddV2lstm_cell_3/BiasAdd:output:0lstm_cell_3/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add}
lstm_cell_3/SigmoidSigmoidlstm_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Sigmoid¢
lstm_cell_3/ReadVariableOp_1ReadVariableOp#lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
lstm_cell_3/ReadVariableOp_1
!lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ,  2#
!lstm_cell_3/strided_slice_1/stack
#lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    X  2%
#lstm_cell_3/strided_slice_1/stack_1
#lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_1/stack_2Ò
lstm_cell_3/strided_slice_1StridedSlice$lstm_cell_3/ReadVariableOp_1:value:0*lstm_cell_3/strided_slice_1/stack:output:0,lstm_cell_3/strided_slice_1/stack_1:output:0,lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_1¦
lstm_cell_3/MatMul_5MatMullstm_cell_3/mul_5:z:0$lstm_cell_3/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_5¢
lstm_cell_3/add_1AddV2lstm_cell_3/BiasAdd_1:output:0lstm_cell_3/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add_1
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Sigmoid_1
lstm_cell_3/mul_8Mullstm_cell_3/Sigmoid_1:y:0initial_state_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_8¢
lstm_cell_3/ReadVariableOp_2ReadVariableOp#lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
lstm_cell_3/ReadVariableOp_2
!lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    X  2#
!lstm_cell_3/strided_slice_2/stack
#lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_2/stack_1
#lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_2/stack_2Ò
lstm_cell_3/strided_slice_2StridedSlice$lstm_cell_3/ReadVariableOp_2:value:0*lstm_cell_3/strided_slice_2/stack:output:0,lstm_cell_3/strided_slice_2/stack_1:output:0,lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_2¦
lstm_cell_3/MatMul_6MatMullstm_cell_3/mul_6:z:0$lstm_cell_3/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_6¢
lstm_cell_3/add_2AddV2lstm_cell_3/BiasAdd_2:output:0lstm_cell_3/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add_2v
lstm_cell_3/TanhTanhlstm_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Tanh
lstm_cell_3/mul_9Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_9
lstm_cell_3/add_3AddV2lstm_cell_3/mul_8:z:0lstm_cell_3/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add_3¢
lstm_cell_3/ReadVariableOp_3ReadVariableOp#lstm_cell_3_readvariableop_resource* 
_output_shapes
:
¬°	*
dtype02
lstm_cell_3/ReadVariableOp_3
!lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_3/strided_slice_3/stack
#lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_3/strided_slice_3/stack_1
#lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_3/stack_2Ò
lstm_cell_3/strided_slice_3StridedSlice$lstm_cell_3/ReadVariableOp_3:value:0*lstm_cell_3/strided_slice_3/stack:output:0,lstm_cell_3/strided_slice_3/stack_1:output:0,lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
¬¬*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_3¦
lstm_cell_3/MatMul_7MatMullstm_cell_3/mul_7:z:0$lstm_cell_3/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/MatMul_7¢
lstm_cell_3/add_4AddV2lstm_cell_3/BiasAdd_3:output:0lstm_cell_3/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/add_4
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Sigmoid_2z
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/Tanh_1
lstm_cell_3/mul_10Mullstm_cell_3/Sigmoid_2:y:0lstm_cell_3/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lstm_cell_3/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  2
TensorArrayV2_1/element_shape¶
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterá
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0initial_state_0initial_state_1strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_3_split_readvariableop_resource+lstm_cell_3_split_1_readvariableop_resource#lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_63876*
condR
while_cond_63875*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ,  22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime»
IdentityIdentitytranspose_1:y:0^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬2

Identity±

Identity_1Identitywhile:output:4^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1±

Identity_2Identitywhile:output:5^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ¬: : : 28
lstm_cell_3/ReadVariableOplstm_cell_3/ReadVariableOp2<
lstm_cell_3/ReadVariableOp_1lstm_cell_3/ReadVariableOp_12<
lstm_cell_3/ReadVariableOp_2lstm_cell_3/ReadVariableOp_22<
lstm_cell_3/ReadVariableOp_3lstm_cell_3/ReadVariableOp_32D
 lstm_cell_3/split/ReadVariableOp lstm_cell_3/split/ReadVariableOp2H
"lstm_cell_3/split_1/ReadVariableOp"lstm_cell_3/split_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:YU
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
)
_user_specified_nameinitial_state/0:YU
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
)
_user_specified_nameinitial_state/1"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*
serving_defaultð
D
input_29
serving_default_input_2:0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
<
input_31
serving_default_input_3:0ÿÿÿÿÿÿÿÿÿ¬
<
input_41
serving_default_input_4:0ÿÿÿÿÿÿÿÿÿ¬
@
input_55
serving_default_input_5:0ÿÿÿÿÿÿÿÿÿP¬;
lstm_31
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ¬=
lstm_3_11
StatefulPartitionedCall:1ÿÿÿÿÿÿÿÿÿ¬R
time_distributed>
StatefulPartitionedCall:2ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíbtensorflow/serving/predict:Á
Q
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

	optimizer
loss
trainable_variables
regularization_losses
	variables
	keras_api

signatures
*h&call_and_return_all_conditional_losses
i_default_save_signature
j__call__"ÒM
_tf_keras_network¶M{"name": "model_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "embedding_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 12653, "output_dim": 100, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_1", "inbound_nodes": [[["input_2", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 300]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}, "name": "input_3", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 300]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}, "name": "input_4", "inbound_nodes": []}, {"class_name": "LSTM", "config": {"name": "lstm_3", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": true, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 300, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.4, "recurrent_dropout": 0.2, "implementation": 1}, "name": "lstm_3", "inbound_nodes": [[["embedding_1", 0, 0, {}], ["input_3", 0, 0, {}], ["input_4", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 80, 300]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_5"}, "name": "input_5", "inbound_nodes": []}, {"class_name": "AttentionLayer", "config": {"name": "attention_layer", "trainable": true, "dtype": "float32"}, "name": "attention_layer", "inbound_nodes": [[["input_5", 0, 0, {}], ["lstm_3", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concat", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concat", "inbound_nodes": [[["lstm_3", 0, 0, {}], ["attention_layer", 0, 0, {}]]]}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 12653, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}}, "name": "time_distributed", "inbound_nodes": [[["concat", 0, 0, {}]]]}], "input_layers": [["input_2", 0, 0], ["input_5", 0, 0], ["input_3", 0, 0], ["input_4", 0, 0]], "output_layers": [["time_distributed", 0, 0], ["lstm_3", 0, 1], ["lstm_3", 0, 2]]}, "shared_object_id": 17, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 80, 300]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 300]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 300]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, null]}, {"class_name": "TensorShape", "items": [null, 80, 300]}, {"class_name": "TensorShape", "items": [null, 300]}, {"class_name": "TensorShape", "items": [null, 300]}], "is_graph_network": true, "save_spec": [{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, null]}, "float32", "input_2"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 80, 300]}, "float32", "input_5"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 300]}, "float32", "input_3"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 300]}, "float32", "input_4"]}], "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Embedding", "config": {"name": "embedding_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 12653, "output_dim": 100, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 1}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_1", "inbound_nodes": [[["input_2", 0, 0, {}]]], "shared_object_id": 2}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 300]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}, "name": "input_3", "inbound_nodes": [], "shared_object_id": 3}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 300]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}, "name": "input_4", "inbound_nodes": [], "shared_object_id": 4}, {"class_name": "LSTM", "config": {"name": "lstm_3", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": true, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 300, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.4, "recurrent_dropout": 0.2, "implementation": 1}, "name": "lstm_3", "inbound_nodes": [[["embedding_1", 0, 0, {}], ["input_3", 0, 0, {}], ["input_4", 0, 0, {}]]], "shared_object_id": 9}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 80, 300]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_5"}, "name": "input_5", "inbound_nodes": [], "shared_object_id": 10}, {"class_name": "AttentionLayer", "config": {"name": "attention_layer", "trainable": true, "dtype": "float32"}, "name": "attention_layer", "inbound_nodes": [[["input_5", 0, 0, {}], ["lstm_3", 0, 0, {}]]], "shared_object_id": 11}, {"class_name": "Concatenate", "config": {"name": "concat", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concat", "inbound_nodes": [[["lstm_3", 0, 0, {}], ["attention_layer", 0, 0, {}]]], "shared_object_id": 12}, {"class_name": "TimeDistributed", "config": {"name": "time_distributed", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 12653, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15}}, "name": "time_distributed", "inbound_nodes": [[["concat", 0, 0, {}]]], "shared_object_id": 16}], "input_layers": [["input_2", 0, 0], ["input_5", 0, 0], ["input_3", 0, 0], ["input_4", 0, 0]], "output_layers": [["time_distributed", 0, 0], ["lstm_3", 0, 1], ["lstm_3", 0, 2]]}}, "training_config": {"loss": null, "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 0.001, "decay": 0.0, "rho": 0.9, "momentum": 0.0, "epsilon": 1e-07, "centered": false}}}}
ï"ì
_tf_keras_input_layerÌ{"class_name": "InputLayer", "name": "input_2", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}}


embeddings
trainable_variables
regularization_losses
	variables
	keras_api
*k&call_and_return_all_conditional_losses
l__call__"í
_tf_keras_layerÓ{"name": "embedding_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding", "config": {"name": "embedding_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 12653, "output_dim": 100, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 1}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "inbound_nodes": [[["input_2", 0, 0, {}]]], "shared_object_id": 2, "build_input_shape": {"class_name": "TensorShape", "items": [null, null]}}
í"ê
_tf_keras_input_layerÊ{"class_name": "InputLayer", "name": "input_3", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 300]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 300]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}}
í"ê
_tf_keras_input_layerÊ{"class_name": "InputLayer", "name": "input_4", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 300]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 300]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}}
þ
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
*m&call_and_return_all_conditional_losses
n__call__"Õ
_tf_keras_rnn_layer·{"name": "lstm_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm_3", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": true, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 300, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.4, "recurrent_dropout": 0.2, "implementation": 1}, "inbound_nodes": [[["embedding_1", 0, 0, {}], ["input_3", 0, 0, {}], ["input_4", 0, 0, {}]]], "shared_object_id": 9, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 100]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 22}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, null, 100]}, {"class_name": "TensorShape", "items": [null, 300]}, {"class_name": "TensorShape", "items": [null, 300]}]}
õ"ò
_tf_keras_input_layerÒ{"class_name": "InputLayer", "name": "input_5", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 80, 300]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 80, 300]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_5"}}
É
W_a
U_a
V_a
trainable_variables
 regularization_losses
!	variables
"	keras_api
*o&call_and_return_all_conditional_losses
p__call__"
_tf_keras_layer{"name": "attention_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "AttentionLayer", "config": {"name": "attention_layer", "trainable": true, "dtype": "float32"}, "inbound_nodes": [[["input_5", 0, 0, {}], ["lstm_3", 0, 0, {}]]], "shared_object_id": 11, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 80, 300]}, {"class_name": "TensorShape", "items": [null, null, 300]}]}
¯
#trainable_variables
$regularization_losses
%	variables
&	keras_api
*q&call_and_return_all_conditional_losses
r__call__" 
_tf_keras_layer{"name": "concat", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concat", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["lstm_3", 0, 0, {}], ["attention_layer", 0, 0, {}]]], "shared_object_id": 12, "build_input_shape": [{"class_name": "TensorShape", "items": [null, null, 300]}, {"class_name": "TensorShape", "items": [null, null, 300]}]}
Á

	'layer
(trainable_variables
)regularization_losses
*	variables
+	keras_api
*s&call_and_return_all_conditional_losses
t__call__"§	
_tf_keras_layer	{"name": "time_distributed", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "TimeDistributed", "config": {"name": "time_distributed", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 12653, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15}}, "inbound_nodes": [[["concat", 0, 0, {}]]], "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 600]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 23}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 600]}}
"
	optimizer
 "
trackable_dict_wrapper
_
0
,1
-2
.3
4
5
6
/7
08"
trackable_list_wrapper
 "
trackable_list_wrapper
_
0
,1
-2
.3
4
5
6
/7
08"
trackable_list_wrapper
Ê

1layers
2layer_regularization_losses
trainable_variables
3metrics
regularization_losses
4non_trainable_variables
5layer_metrics
	variables
j__call__
i_default_save_signature
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
,
userving_default"
signature_map
):'	íbd2embedding_1/embeddings
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
­

6layers
7layer_regularization_losses
trainable_variables
8metrics
regularization_losses
9non_trainable_variables
:layer_metrics
	variables
l__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
	
;
state_size

,kernel
-recurrent_kernel
.bias
<trainable_variables
=regularization_losses
>	variables
?	keras_api
*v&call_and_return_all_conditional_losses
w__call__"Ê
_tf_keras_layer°{"name": "lstm_cell_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell_3", "trainable": true, "dtype": "float32", "units": 300, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.4, "recurrent_dropout": 0.2, "implementation": 1}, "shared_object_id": 8}
 "
trackable_list_wrapper
5
,0
-1
.2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
,0
-1
.2"
trackable_list_wrapper
¹

@layers
Alayer_regularization_losses
trainable_variables
Bmetrics
regularization_losses
Cnon_trainable_variables
Dlayer_metrics
	variables

Estates
n__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
':%
¬¬2attention_layer/W_a
':%
¬¬2attention_layer/U_a
&:$	¬2attention_layer/V_a
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
­

Flayers
Glayer_regularization_losses
trainable_variables
Hmetrics
 regularization_losses
Inon_trainable_variables
Jlayer_metrics
!	variables
p__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­

Klayers
Llayer_regularization_losses
#trainable_variables
Mmetrics
$regularization_losses
Nnon_trainable_variables
Olayer_metrics
%	variables
r__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object


/kernel
0bias
Ptrainable_variables
Qregularization_losses
R	variables
S	keras_api
*x&call_and_return_all_conditional_losses
y__call__"å
_tf_keras_layerË{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 12653, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 600}}, "shared_object_id": 24}}
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
­

Tlayers
Ulayer_regularization_losses
(trainable_variables
Vmetrics
)regularization_losses
Wnon_trainable_variables
Xlayer_metrics
*	variables
t__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
,:*	d°	2lstm_3/lstm_cell_3/kernel
7:5
¬°	2#lstm_3/lstm_cell_3/recurrent_kernel
&:$°	2lstm_3/lstm_cell_3/bias
+:)
Øíb2time_distributed/kernel
$:"íb2time_distributed/bias
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
 "
trackable_list_wrapper
'
Y0"
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
5
,0
-1
.2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
,0
-1
.2"
trackable_list_wrapper
­

Zlayers
[layer_regularization_losses
<trainable_variables
\metrics
=regularization_losses
]non_trainable_variables
^layer_metrics
>	variables
w__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
'
0"
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
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
­

_layers
`layer_regularization_losses
Ptrainable_variables
ametrics
Qregularization_losses
bnon_trainable_variables
clayer_metrics
R	variables
y__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
'
'0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Ô
	dtotal
	ecount
f	variables
g	keras_api"
_tf_keras_metric{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 25}
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
.
d0
e1"
trackable_list_wrapper
-
f	variables"
_generic_user_object
Ö2Ó
B__inference_model_2_layer_call_and_return_conditional_losses_62116
B__inference_model_2_layer_call_and_return_conditional_losses_62769
B__inference_model_2_layer_call_and_return_conditional_losses_61522
B__inference_model_2_layer_call_and_return_conditional_losses_61559À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
à2Ý
 __inference__wrapped_model_59383¸
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *§¢£
 
*'
input_2ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
&#
input_5ÿÿÿÿÿÿÿÿÿP¬
"
input_3ÿÿÿÿÿÿÿÿÿ¬
"
input_4ÿÿÿÿÿÿÿÿÿ¬
ê2ç
'__inference_model_2_layer_call_fn_60932
'__inference_model_2_layer_call_fn_62799
'__inference_model_2_layer_call_fn_62829
'__inference_model_2_layer_call_fn_61485À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ð2í
F__inference_embedding_1_layer_call_and_return_conditional_losses_62839¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Õ2Ò
+__inference_embedding_1_layer_call_fn_62846¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ç2ä
A__inference_lstm_3_layer_call_and_return_conditional_losses_63099
A__inference_lstm_3_layer_call_and_return_conditional_losses_63480
A__inference_lstm_3_layer_call_and_return_conditional_losses_63714
A__inference_lstm_3_layer_call_and_return_conditional_losses_64076Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
û2ø
&__inference_lstm_3_layer_call_fn_64091
&__inference_lstm_3_layer_call_fn_64106
&__inference_lstm_3_layer_call_fn_64123
&__inference_lstm_3_layer_call_fn_64140Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
J__inference_attention_layer_layer_call_and_return_conditional_losses_64408²
©²¥
FullArgSpec(
args 
jself
jinputs
	jverbose
varargs
 
varkw
 
defaults¢
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
é2æ
/__inference_attention_layer_layer_call_fn_64422²
©²¥
FullArgSpec(
args 
jself
jinputs
	jverbose
varargs
 
varkw
 
defaults¢
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_concat_layer_call_and_return_conditional_losses_64429¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ð2Í
&__inference_concat_layer_call_fn_64435¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
à2Ý
K__inference_time_distributed_layer_call_and_return_conditional_losses_64457
K__inference_time_distributed_layer_call_and_return_conditional_losses_64479À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ª2§
0__inference_time_distributed_layer_call_fn_64488
0__inference_time_distributed_layer_call_fn_64497À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ãBà
#__inference_signature_wrapper_61591input_2input_3input_4input_5"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ô2Ñ
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_64579
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_64725¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
+__inference_lstm_cell_3_layer_call_fn_64742
+__inference_lstm_cell_3_layer_call_fn_64759¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ê2ç
@__inference_dense_layer_call_and_return_conditional_losses_64770¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ï2Ì
%__inference_dense_layer_call_fn_64779¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 __inference__wrapped_model_59383ô	,.-/0³¢¯
§¢£
 
*'
input_2ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
&#
input_5ÿÿÿÿÿÿÿÿÿP¬
"
input_3ÿÿÿÿÿÿÿÿÿ¬
"
input_4ÿÿÿÿÿÿÿÿÿ¬
ª "°ª¬
+
lstm_3!
lstm_3ÿÿÿÿÿÿÿÿÿ¬
/
lstm_3_1# 
lstm_3_1ÿÿÿÿÿÿÿÿÿ¬
L
time_distributed85
time_distributedÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb¯
J__inference_attention_layer_layer_call_and_return_conditional_losses_64408àq¢n
g¢d
^[
'$
inputs/0ÿÿÿÿÿÿÿÿÿP¬
0-
inputs/1ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬
p 
ª "f¢c
\¢Y
+(
0/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬
*'
0/1ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿP
 
/__inference_attention_layer_layer_call_fn_64422Òq¢n
g¢d
^[
'$
inputs/0ÿÿÿÿÿÿÿÿÿP¬
0-
inputs/1ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬
p 
ª "X¢U
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬
(%
1ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿPó
A__inference_concat_layer_call_and_return_conditional_losses_64429­v¢s
l¢i
gd
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬
0-
inputs/1ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ
 Ë
&__inference_concat_layer_call_fn_64435 v¢s
l¢i
gd
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬
0-
inputs/1ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ¢
@__inference_dense_layer_call_and_return_conditional_losses_64770^/00¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿØ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿíb
 z
%__inference_dense_layer_call_fn_64779Q/00¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿØ
ª "ÿÿÿÿÿÿÿÿÿíb»
F__inference_embedding_1_layer_call_and_return_conditional_losses_62839q8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
+__inference_embedding_1_layer_call_fn_62846d8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
A__inference_lstm_3_layer_call_and_return_conditional_losses_63099Ò,.-O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "z¢w
pm
+(
0/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬

0/1ÿÿÿÿÿÿÿÿÿ¬

0/2ÿÿÿÿÿÿÿÿÿ¬
 
A__inference_lstm_3_layer_call_and_return_conditional_losses_63480Ò,.-O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p

 
ª "z¢w
pm
+(
0/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬

0/1ÿÿÿÿÿÿÿÿÿ¬

0/2ÿÿÿÿÿÿÿÿÿ¬
 î
A__inference_lstm_3_layer_call_and_return_conditional_losses_63714¨,.-¤¢ 
¢
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p 
[X
*'
initial_state/0ÿÿÿÿÿÿÿÿÿ¬
*'
initial_state/1ÿÿÿÿÿÿÿÿÿ¬
ª "z¢w
pm
+(
0/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬

0/1ÿÿÿÿÿÿÿÿÿ¬

0/2ÿÿÿÿÿÿÿÿÿ¬
 î
A__inference_lstm_3_layer_call_and_return_conditional_losses_64076¨,.-¤¢ 
¢
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p
[X
*'
initial_state/0ÿÿÿÿÿÿÿÿÿ¬
*'
initial_state/1ÿÿÿÿÿÿÿÿÿ¬
ª "z¢w
pm
+(
0/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬

0/1ÿÿÿÿÿÿÿÿÿ¬

0/2ÿÿÿÿÿÿÿÿÿ¬
 í
&__inference_lstm_3_layer_call_fn_64091Â,.-O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "jg
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬

1ÿÿÿÿÿÿÿÿÿ¬

2ÿÿÿÿÿÿÿÿÿ¬í
&__inference_lstm_3_layer_call_fn_64106Â,.-O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p

 
ª "jg
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬

1ÿÿÿÿÿÿÿÿÿ¬

2ÿÿÿÿÿÿÿÿÿ¬Ã
&__inference_lstm_3_layer_call_fn_64123,.-¤¢ 
¢
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p 
[X
*'
initial_state/0ÿÿÿÿÿÿÿÿÿ¬
*'
initial_state/1ÿÿÿÿÿÿÿÿÿ¬
ª "jg
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬

1ÿÿÿÿÿÿÿÿÿ¬

2ÿÿÿÿÿÿÿÿÿ¬Ã
&__inference_lstm_3_layer_call_fn_64140,.-¤¢ 
¢
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p
[X
*'
initial_state/0ÿÿÿÿÿÿÿÿÿ¬
*'
initial_state/1ÿÿÿÿÿÿÿÿÿ¬
ª "jg
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬

1ÿÿÿÿÿÿÿÿÿ¬

2ÿÿÿÿÿÿÿÿÿ¬Í
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_64579,.-¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿd
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ¬
# 
states/1ÿÿÿÿÿÿÿÿÿ¬
p 
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿ¬
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿ¬
 
0/1/1ÿÿÿÿÿÿÿÿÿ¬
 Í
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_64725,.-¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿd
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ¬
# 
states/1ÿÿÿÿÿÿÿÿÿ¬
p
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿ¬
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿ¬
 
0/1/1ÿÿÿÿÿÿÿÿÿ¬
 ¢
+__inference_lstm_cell_3_layer_call_fn_64742ò,.-¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿd
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ¬
# 
states/1ÿÿÿÿÿÿÿÿÿ¬
p 
ª "f¢c

0ÿÿÿÿÿÿÿÿÿ¬
C@

1/0ÿÿÿÿÿÿÿÿÿ¬

1/1ÿÿÿÿÿÿÿÿÿ¬¢
+__inference_lstm_cell_3_layer_call_fn_64759ò,.-¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿd
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ¬
# 
states/1ÿÿÿÿÿÿÿÿÿ¬
p
ª "f¢c

0ÿÿÿÿÿÿÿÿÿ¬
C@

1/0ÿÿÿÿÿÿÿÿÿ¬

1/1ÿÿÿÿÿÿÿÿÿ¬
B__inference_model_2_layer_call_and_return_conditional_losses_61522Å	,.-/0»¢·
¯¢«
 
*'
input_2ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
&#
input_5ÿÿÿÿÿÿÿÿÿP¬
"
input_3ÿÿÿÿÿÿÿÿÿ¬
"
input_4ÿÿÿÿÿÿÿÿÿ¬
p 

 
ª "z¢w
pm
+(
0/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb

0/1ÿÿÿÿÿÿÿÿÿ¬

0/2ÿÿÿÿÿÿÿÿÿ¬
 
B__inference_model_2_layer_call_and_return_conditional_losses_61559Å	,.-/0»¢·
¯¢«
 
*'
input_2ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
&#
input_5ÿÿÿÿÿÿÿÿÿP¬
"
input_3ÿÿÿÿÿÿÿÿÿ¬
"
input_4ÿÿÿÿÿÿÿÿÿ¬
p

 
ª "z¢w
pm
+(
0/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb

0/1ÿÿÿÿÿÿÿÿÿ¬

0/2ÿÿÿÿÿÿÿÿÿ¬
 
B__inference_model_2_layer_call_and_return_conditional_losses_62116É	,.-/0¿¢»
³¢¯
¤ 
+(
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
'$
inputs/1ÿÿÿÿÿÿÿÿÿP¬
# 
inputs/2ÿÿÿÿÿÿÿÿÿ¬
# 
inputs/3ÿÿÿÿÿÿÿÿÿ¬
p 

 
ª "z¢w
pm
+(
0/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb

0/1ÿÿÿÿÿÿÿÿÿ¬

0/2ÿÿÿÿÿÿÿÿÿ¬
 
B__inference_model_2_layer_call_and_return_conditional_losses_62769É	,.-/0¿¢»
³¢¯
¤ 
+(
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
'$
inputs/1ÿÿÿÿÿÿÿÿÿP¬
# 
inputs/2ÿÿÿÿÿÿÿÿÿ¬
# 
inputs/3ÿÿÿÿÿÿÿÿÿ¬
p

 
ª "z¢w
pm
+(
0/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb

0/1ÿÿÿÿÿÿÿÿÿ¬

0/2ÿÿÿÿÿÿÿÿÿ¬
 á
'__inference_model_2_layer_call_fn_60932µ	,.-/0»¢·
¯¢«
 
*'
input_2ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
&#
input_5ÿÿÿÿÿÿÿÿÿP¬
"
input_3ÿÿÿÿÿÿÿÿÿ¬
"
input_4ÿÿÿÿÿÿÿÿÿ¬
p 

 
ª "jg
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb

1ÿÿÿÿÿÿÿÿÿ¬

2ÿÿÿÿÿÿÿÿÿ¬á
'__inference_model_2_layer_call_fn_61485µ	,.-/0»¢·
¯¢«
 
*'
input_2ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
&#
input_5ÿÿÿÿÿÿÿÿÿP¬
"
input_3ÿÿÿÿÿÿÿÿÿ¬
"
input_4ÿÿÿÿÿÿÿÿÿ¬
p

 
ª "jg
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb

1ÿÿÿÿÿÿÿÿÿ¬

2ÿÿÿÿÿÿÿÿÿ¬å
'__inference_model_2_layer_call_fn_62799¹	,.-/0¿¢»
³¢¯
¤ 
+(
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
'$
inputs/1ÿÿÿÿÿÿÿÿÿP¬
# 
inputs/2ÿÿÿÿÿÿÿÿÿ¬
# 
inputs/3ÿÿÿÿÿÿÿÿÿ¬
p 

 
ª "jg
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb

1ÿÿÿÿÿÿÿÿÿ¬

2ÿÿÿÿÿÿÿÿÿ¬å
'__inference_model_2_layer_call_fn_62829¹	,.-/0¿¢»
³¢¯
¤ 
+(
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
'$
inputs/1ÿÿÿÿÿÿÿÿÿP¬
# 
inputs/2ÿÿÿÿÿÿÿÿÿ¬
# 
inputs/3ÿÿÿÿÿÿÿÿÿ¬
p

 
ª "jg
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb

1ÿÿÿÿÿÿÿÿÿ¬

2ÿÿÿÿÿÿÿÿÿ¬Á
#__inference_signature_wrapper_61591	,.-/0Ø¢Ô
¢ 
ÌªÈ
5
input_2*'
input_2ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
-
input_3"
input_3ÿÿÿÿÿÿÿÿÿ¬
-
input_4"
input_4ÿÿÿÿÿÿÿÿÿ¬
1
input_5&#
input_5ÿÿÿÿÿÿÿÿÿP¬"°ª¬
+
lstm_3!
lstm_3ÿÿÿÿÿÿÿÿÿ¬
/
lstm_3_1# 
lstm_3_1ÿÿÿÿÿÿÿÿÿ¬
L
time_distributed85
time_distributedÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíbÐ
K__inference_time_distributed_layer_call_and_return_conditional_losses_64457/0E¢B
;¢8
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ
p 

 
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb
 Ð
K__inference_time_distributed_layer_call_and_return_conditional_losses_64479/0E¢B
;¢8
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ
p

 
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb
 §
0__inference_time_distributed_layer_call_fn_64488s/0E¢B
;¢8
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ
p 

 
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb§
0__inference_time_distributed_layer_call_fn_64497s/0E¢B
;¢8
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ
p

 
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíb