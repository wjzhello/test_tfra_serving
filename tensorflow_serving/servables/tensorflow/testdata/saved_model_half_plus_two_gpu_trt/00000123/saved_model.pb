îe
·
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 

ParseExampleV2

serialized	
names
sparse_keys

dense_keys
ragged_keys
dense_defaults2Tdense
sparse_indices	*
num_sparse
sparse_values2sparse_types
sparse_shapes	*
num_sparse
dense_values2Tdense#
ragged_values2ragged_value_types'
ragged_row_splits2ragged_split_types"
Tdense
list(type)(:
2	"

num_sparseint("%
sparse_types
list(type)(:
2	"+
ragged_value_types
list(type)(:
2	"*
ragged_split_types
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
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
H
ShardedFilename
basename	
shard

num_shards
filename
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*2.2.02unknown«K
c
a/initial_valueConst"/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *   ?
t
a
VariableV2"/device:GPU:0*
_output_shapes
: *
	container *
dtype0*
shape: *
shared_name 

a/AssignAssignaa/initial_value"/device:GPU:0*
T0*
_class

loc:@a*
_output_shapes
: *
use_locking(*
validate_shape(
[
a/readIdentitya"/device:GPU:0*
T0*
_class

loc:@a*
_output_shapes
: 
c
b/initial_valueConst"/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @
t
b
VariableV2"/device:GPU:0*
_output_shapes
: *
	container *
dtype0*
shape: *
shared_name 

b/AssignAssignbb/initial_value"/device:GPU:0*
T0*
_class

loc:@b*
_output_shapes
: *
use_locking(*
validate_shape(
[
b/readIdentityb"/device:GPU:0*
T0*
_class

loc:@b*
_output_shapes
: 
c
c/initial_valueConst"/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  @@
t
c
VariableV2"/device:GPU:0*
_output_shapes
: *
	container *
dtype0*
shape: *
shared_name 

c/AssignAssigncc/initial_value"/device:GPU:0*
T0*
_class

loc:@c*
_output_shapes
: *
use_locking(*
validate_shape(
[
c/readIdentityc"/device:GPU:0*
T0*
_class

loc:@c*
_output_shapes
: 
t

tf_examplePlaceholder"/device:GPU:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
d
ParseExample/ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB 
o
ParseExample/key_x2Const"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB*    
s
ParseExample/Reshape/shapeConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB:

ParseExample/ReshapeReshapeParseExample/key_x2ParseExample/Reshape/shape"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:
s
!ParseExample/ParseExampleV2/namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB 
y
'ParseExample/ParseExampleV2/sparse_keysConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB 

&ParseExample/ParseExampleV2/dense_keysConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBBxBx2
y
'ParseExample/ParseExampleV2/ragged_keysConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB 
×
ParseExample/ParseExampleV2ParseExampleV2
tf_example!ParseExample/ParseExampleV2/names'ParseExample/ParseExampleV2/sparse_keys&ParseExample/ParseExampleV2/dense_keys'ParseExample/ParseExampleV2/ragged_keysParseExample/ConstParseExample/Reshape"/device:CPU:0*
Tdense
2*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
dense_shapes
::*

num_sparse *
ragged_split_types
 *
ragged_value_types
 *
sparse_types
 
k
xIdentityParseExample/ParseExampleV2"/device:GPU:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
MulMula/readx"/device:GPU:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
X
AddAddMulb/read"/device:GPU:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
S
yIdentityAdd"/device:GPU:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
X
Mul_1Mula/readx"/device:GPU:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
\
Add_1AddMul_1c/read"/device:GPU:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
y2IdentityAdd_1"/device:GPU:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
x2IdentityParseExample/ParseExampleV2:1"/device:GPU:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
d
a2/initial_valueConst"/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *   ?
u
a2
VariableV2"/device:GPU:0*
_output_shapes
: *
	container *
dtype0*
shape: *
shared_name 

	a2/AssignAssigna2a2/initial_value"/device:GPU:0*
T0*
_class
	loc:@a2*
_output_shapes
: *
use_locking(*
validate_shape(
^
a2/readIdentitya2"/device:GPU:0*
T0*
_class
	loc:@a2*
_output_shapes
: 
d
c2/initial_valueConst"/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  @@
u
c2
VariableV2"/device:GPU:0*
_output_shapes
: *
	container *
dtype0*
shape: *
shared_name 

	c2/AssignAssignc2c2/initial_value"/device:GPU:0*
T0*
_class
	loc:@c2*
_output_shapes
: *
use_locking(*
validate_shape(
^
c2/readIdentityc2"/device:GPU:0*
T0*
_class
	loc:@c2*
_output_shapes
: 
Z
Mul_2Mula2/readx2"/device:GPU:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
]
Add_2AddMul_2c2/read"/device:GPU:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
y3IdentityAdd_2"/device:GPU:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
i
ConstConst*
_output_shapes
: *
dtype0*4
value+B) B#/tmp/original/export/assets/foo.txt
e
filename_tensor/initial_valueConst*
_output_shapes
: *
dtype0*
valueB Bfoo.txt
s
filename_tensor
VariableV2*
_output_shapes
: *
	container *
dtype0*
shape: *
shared_name 
¾
filename_tensor/AssignAssignfilename_tensorfilename_tensor/initial_value*
T0*"
_class
loc:@filename_tensor*
_output_shapes
: *
use_locking(*
validate_shape(
v
filename_tensor/readIdentityfilename_tensor*
T0*"
_class
loc:@filename_tensor*
_output_shapes
: 
T
Assign/valueConst*
_output_shapes
: *
dtype0*
valueB Bfoo.txt

AssignAssignfilename_tensorAssign/value*
T0*"
_class
loc:@filename_tensor*
_output_shapes
: *
use_locking( *
validate_shape(
T
initNoOp	^a/Assign
^a2/Assign	^b/Assign	^c/Assign
^c2/Assign"/device:GPU:0


group_depsNoOp^Assign
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
{
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
a
save/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part

save/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_45be3157ef384eb082870944676a1176/part
|
save/SelectSelectsave/StaticRegexFullMatchsave/Const_1save/Const_2"/device:CPU:**
T0*
_output_shapes
: 
w
save/StringJoin
StringJoin
save/Constsave/Select"/device:CPU:**
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*$
valueBBaBa2BbBcBc2
|
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesaa2bcc2"/device:CPU:0*
dtypes	
2
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
¬
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:*

axis 

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 

save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*$
valueBBaBa2BbBcBc2

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 
³
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*(
_output_shapes
:::::*
dtypes	
2

save/AssignAssignasave/RestoreV2"/device:GPU:0*
T0*
_class

loc:@a*
_output_shapes
: *
use_locking(*
validate_shape(

save/Assign_1Assigna2save/RestoreV2:1"/device:GPU:0*
T0*
_class
	loc:@a2*
_output_shapes
: *
use_locking(*
validate_shape(

save/Assign_2Assignbsave/RestoreV2:2"/device:GPU:0*
T0*
_class

loc:@b*
_output_shapes
: *
use_locking(*
validate_shape(

save/Assign_3Assigncsave/RestoreV2:3"/device:GPU:0*
T0*
_class

loc:@c*
_output_shapes
: *
use_locking(*
validate_shape(

save/Assign_4Assignc2save/RestoreV2:4"/device:GPU:0*
T0*
_class
	loc:@c2*
_output_shapes
: *
use_locking(*
validate_shape(
w
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4"/device:GPU:0
<
save/restore_allNoOp^save/restore_shard"/device:GPU:0"£<
save/Const:0save/Identity:0save/restore_all (5 @F8"
asset_filepaths
	
Const:0"]
saved_model_assetsG*E
C
+type.googleapis.com/tensorflow.AssetFileDef
	
Const:0foo.txt"%
saved_model_main_op


group_deps"
trainable_variablesûø
.
a:0a/Assigna/read:02a/initial_value:08
.
b:0b/Assignb/read:02b/initial_value:08
.
c:0c/Assignc/read:02c/initial_value:08
2
a2:0	a2/Assign	a2/read:02a2/initial_value:08
2
c2:0	c2/Assign	c2/read:02c2/initial_value:08"
	variablesûø
.
a:0a/Assigna/read:02a/initial_value:08
.
b:0b/Assignb/read:02b/initial_value:08
.
c:0c/Assignc/read:02c/initial_value:08
2
a2:0	a2/Assign	a2/read:02a2/initial_value:08
2
c2:0	c2/Assign	c2/read:02c2/initial_value:08*
classify_x_to_yn
)
inputs
tf_example:0ÿÿÿÿÿÿÿÿÿ$
scores
y:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/classify*
regress_x2_to_y3k
%
inputs
x2:0ÿÿÿÿÿÿÿÿÿ&
outputs
y3:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/regress*
regress_x_to_yn
)
inputs
tf_example:0ÿÿÿÿÿÿÿÿÿ%
outputs
y:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/regress*
regress_x_to_y2o
)
inputs
tf_example:0ÿÿÿÿÿÿÿÿÿ&
outputs
y2:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/regress*q
serving_default^

x
x:0ÿÿÿÿÿÿÿÿÿ
y
y:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict