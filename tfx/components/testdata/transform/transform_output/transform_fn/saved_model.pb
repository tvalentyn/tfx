ДЊ
оЏ
:
Add
x"T
y"T
z"T"
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	

BoostedTreesBucketize
float_values*num_features#
bucket_boundaries*num_features
buckets*num_features"
num_featuresint(
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
=
Greater
x"T
y"T
z
"
Ttype:
2	
Ё
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype
.
Identity

input"T
output"T"	
Ttype
Щ
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0ўџџџџџџџџ"
value_indexint(0ўџџџџџџџџ"+

vocab_sizeintџџџџџџџџџ(0џџџџџџџџџ"
	delimiterstring	
+
IsNan
x"T
y
"
Ttype:
2
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
2
LookupTableSizeV2
table_handle
size	

Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
k
NotEqual
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(
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
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
l
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
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
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
М
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
і
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
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
:
Sub
x"T
y"T
z"T"
Ttype:
2	
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
f
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
&
	ZerosLike
x"T
y"T"	
Ttype"	transform*1.15.02v1.15.0-rc3-22-g590d6eeќй
J
ConstConst*
valueB
 *Uд"I*
dtype0*
_output_shapes
: 
L
Const_1Const*
valueB
 *э?D*
dtype0*
_output_shapes
: 
x
Const_2Const*=
value4B2
"(U<'Bљo'B['B:'Bs'B'Bж'BеА'BЩ'BЈ№'B*
dtype0*
_output_shapes
:

ю
Const_3Const*Ж
valueЌBЉ BЂ/usr/local/google/home/ruoyu/tfx/pipelines/chicago_taxi_beam/Transform/transform_output/4/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_vocabulary*
dtype0*
_output_shapes
: 
№
Const_4Const*И
valueЎBЋ BЄ/usr/local/google/home/ruoyu/tfx/pipelines/chicago_taxi_beam/Transform/transform_output/4/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_1_vocabulary*
dtype0*
_output_shapes
: 
t
Const_5Const*9
value0B.	"$v@'Bћ~'B#'BN'Bю'B1'BчЏ'BуЦ'Bц'B*
dtype0*
_output_shapes
:	

Const_6Const*E
value<B:"0pqЏТncЏТѕ[ЏТ\WЏТЋSЏТдOЏТчJЏТFЏТїCЏТ@ЏТѓ=ЏТC/ЏТ*
dtype0*
_output_shapes
:

Const_7Const*E
value<B:"0pqЏТ`ЏТТYЏТNUЏТ.RЏТNЏТЖIЏТEЏТїCЏТй@ЏТ>ЏТе=ЏТ*
dtype0*
_output_shapes
:
L
Const_8Const*
valueB
 *ЎB*
dtype0*
_output_shapes
: 
L
Const_9Const*
valueB
 *5/@*
dtype0*
_output_shapes
: 
M
Const_10Const*
valueB
 *ш;A*
dtype0*
_output_shapes
: 
M
Const_11Const*
valueB
 *=?C*
dtype0*
_output_shapes
: 
g
transform/inputs/company/shapePlaceholder*
shape:*
dtype0	*
_output_shapes
:
z
transform/inputs/company/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

 transform/inputs/company/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ
n
%transform/inputs/F_payment_type/shapePlaceholder*
shape:*
dtype0	*
_output_shapes
:

&transform/inputs/F_payment_type/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

'transform/inputs/F_payment_type/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
v
-transform/inputs/F_dropoff_census_tract/shapePlaceholder*
shape:*
dtype0	*
_output_shapes
:

.transform/inputs/F_dropoff_census_tract/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

/transform/inputs/F_dropoff_census_tract/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ
x
/transform/inputs/F_dropoff_community_area/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

0transform/inputs/F_dropoff_community_area/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

1transform/inputs/F_dropoff_community_area/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
r
)transform/inputs/F_dropoff_latitude/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

*transform/inputs/F_dropoff_latitude/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

+transform/inputs/F_dropoff_latitude/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
s
*transform/inputs/F_dropoff_longitude/shapePlaceholder*
shape:*
dtype0	*
_output_shapes
:

+transform/inputs/F_dropoff_longitude/valuesPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

,transform/inputs/F_dropoff_longitude/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
d
transform/inputs/fare/shapePlaceholder*
shape:*
dtype0	*
_output_shapes
:
w
transform/inputs/fare/valuesPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

transform/inputs/fare/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ
u
,transform/inputs/F_pickup_census_tract/shapePlaceholder*
shape:*
dtype0	*
_output_shapes
:

-transform/inputs/F_pickup_census_tract/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

.transform/inputs/F_pickup_census_tract/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
w
.transform/inputs/F_pickup_community_area/shapePlaceholder*
shape:*
dtype0	*
_output_shapes
:

/transform/inputs/F_pickup_community_area/valuesPlaceholder*
dtype0	*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

0transform/inputs/F_pickup_community_area/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ
q
(transform/inputs/F_pickup_latitude/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

)transform/inputs/F_pickup_latitude/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

*transform/inputs/F_pickup_latitude/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
r
)transform/inputs/F_pickup_longitude/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

*transform/inputs/F_pickup_longitude/valuesPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

+transform/inputs/F_pickup_longitude/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ
d
transform/inputs/tips/shapePlaceholder*
shape:*
dtype0	*
_output_shapes
:
w
transform/inputs/tips/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

transform/inputs/tips/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ
l
#transform/inputs/F_trip_miles/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

$transform/inputs/F_trip_miles/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

%transform/inputs/F_trip_miles/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
n
%transform/inputs/F_trip_seconds/shapePlaceholder*
shape:*
dtype0	*
_output_shapes
:

&transform/inputs/F_trip_seconds/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ

'transform/inputs/F_trip_seconds/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ
p
'transform/inputs/F_trip_start_day/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

(transform/inputs/F_trip_start_day/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*#
_output_shapes
:џџџџџџџџџ

)transform/inputs/F_trip_start_day/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ
q
(transform/inputs/F_trip_start_hour/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

)transform/inputs/F_trip_start_hour/valuesPlaceholder*
dtype0	*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

*transform/inputs/F_trip_start_hour/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
r
)transform/inputs/F_trip_start_month/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

*transform/inputs/F_trip_start_month/valuesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*#
_output_shapes
:џџџџџџџџџ

+transform/inputs/F_trip_start_month/indicesPlaceholder*
shape:џџџџџџџџџ*
dtype0	*'
_output_shapes
:џџџџџџџџџ
v
-transform/inputs/F_trip_start_timestamp/shapePlaceholder*
dtype0	*
_output_shapes
:*
shape:

.transform/inputs/F_trip_start_timestamp/valuesPlaceholder*
dtype0	*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

/transform/inputs/F_trip_start_timestamp/indicesPlaceholder*
dtype0	*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ

,transform/inputs/inputs/company/indices_copyIdentity transform/inputs/company/indices*
T0	*'
_output_shapes
:џџџџџџџџџ

+transform/inputs/inputs/company/values_copyIdentitytransform/inputs/company/values*
T0*#
_output_shapes
:џџџџџџџџџ
{
*transform/inputs/inputs/company/shape_copyIdentitytransform/inputs/company/shape*
T0	*
_output_shapes
:

3transform/inputs/inputs/F_payment_type/indices_copyIdentity'transform/inputs/F_payment_type/indices*
T0	*'
_output_shapes
:џџџџџџџџџ

2transform/inputs/inputs/F_payment_type/values_copyIdentity&transform/inputs/F_payment_type/values*
T0*#
_output_shapes
:џџџџџџџџџ

1transform/inputs/inputs/F_payment_type/shape_copyIdentity%transform/inputs/F_payment_type/shape*
T0	*
_output_shapes
:
Њ
;transform/inputs/inputs/F_dropoff_census_tract/indices_copyIdentity/transform/inputs/F_dropoff_census_tract/indices*
T0	*'
_output_shapes
:џџџџџџџџџ
Є
:transform/inputs/inputs/F_dropoff_census_tract/values_copyIdentity.transform/inputs/F_dropoff_census_tract/values*
T0*#
_output_shapes
:џџџџџџџџџ

9transform/inputs/inputs/F_dropoff_census_tract/shape_copyIdentity-transform/inputs/F_dropoff_census_tract/shape*
T0	*
_output_shapes
:
Ў
=transform/inputs/inputs/F_dropoff_community_area/indices_copyIdentity1transform/inputs/F_dropoff_community_area/indices*
T0	*'
_output_shapes
:џџџџџџџџџ
Ј
<transform/inputs/inputs/F_dropoff_community_area/values_copyIdentity0transform/inputs/F_dropoff_community_area/values*
T0*#
_output_shapes
:џџџџџџџџџ

;transform/inputs/inputs/F_dropoff_community_area/shape_copyIdentity/transform/inputs/F_dropoff_community_area/shape*
T0	*
_output_shapes
:
Ђ
7transform/inputs/inputs/F_dropoff_latitude/indices_copyIdentity+transform/inputs/F_dropoff_latitude/indices*
T0	*'
_output_shapes
:џџџџџџџџџ

6transform/inputs/inputs/F_dropoff_latitude/values_copyIdentity*transform/inputs/F_dropoff_latitude/values*
T0*#
_output_shapes
:џџџџџџџџџ

5transform/inputs/inputs/F_dropoff_latitude/shape_copyIdentity)transform/inputs/F_dropoff_latitude/shape*
T0	*
_output_shapes
:
Є
8transform/inputs/inputs/F_dropoff_longitude/indices_copyIdentity,transform/inputs/F_dropoff_longitude/indices*
T0	*'
_output_shapes
:џџџџџџџџџ

7transform/inputs/inputs/F_dropoff_longitude/values_copyIdentity+transform/inputs/F_dropoff_longitude/values*
T0*#
_output_shapes
:џџџџџџџџџ

6transform/inputs/inputs/F_dropoff_longitude/shape_copyIdentity*transform/inputs/F_dropoff_longitude/shape*
T0	*
_output_shapes
:

)transform/inputs/inputs/fare/indices_copyIdentitytransform/inputs/fare/indices*
T0	*'
_output_shapes
:џџџџџџџџџ

(transform/inputs/inputs/fare/values_copyIdentitytransform/inputs/fare/values*
T0*#
_output_shapes
:џџџџџџџџџ
u
'transform/inputs/inputs/fare/shape_copyIdentitytransform/inputs/fare/shape*
T0	*
_output_shapes
:
Ј
:transform/inputs/inputs/F_pickup_census_tract/indices_copyIdentity.transform/inputs/F_pickup_census_tract/indices*
T0	*'
_output_shapes
:џџџџџџџџџ
Ђ
9transform/inputs/inputs/F_pickup_census_tract/values_copyIdentity-transform/inputs/F_pickup_census_tract/values*
T0*#
_output_shapes
:џџџџџџџџџ

8transform/inputs/inputs/F_pickup_census_tract/shape_copyIdentity,transform/inputs/F_pickup_census_tract/shape*
T0	*
_output_shapes
:
Ќ
<transform/inputs/inputs/F_pickup_community_area/indices_copyIdentity0transform/inputs/F_pickup_community_area/indices*
T0	*'
_output_shapes
:џџџџџџџџџ
І
;transform/inputs/inputs/F_pickup_community_area/values_copyIdentity/transform/inputs/F_pickup_community_area/values*
T0	*#
_output_shapes
:џџџџџџџџџ

:transform/inputs/inputs/F_pickup_community_area/shape_copyIdentity.transform/inputs/F_pickup_community_area/shape*
T0	*
_output_shapes
:
 
6transform/inputs/inputs/F_pickup_latitude/indices_copyIdentity*transform/inputs/F_pickup_latitude/indices*
T0	*'
_output_shapes
:џџџџџџџџџ

5transform/inputs/inputs/F_pickup_latitude/values_copyIdentity)transform/inputs/F_pickup_latitude/values*
T0*#
_output_shapes
:џџџџџџџџџ

4transform/inputs/inputs/F_pickup_latitude/shape_copyIdentity(transform/inputs/F_pickup_latitude/shape*
T0	*
_output_shapes
:
Ђ
7transform/inputs/inputs/F_pickup_longitude/indices_copyIdentity+transform/inputs/F_pickup_longitude/indices*
T0	*'
_output_shapes
:џџџџџџџџџ

6transform/inputs/inputs/F_pickup_longitude/values_copyIdentity*transform/inputs/F_pickup_longitude/values*
T0*#
_output_shapes
:џџџџџџџџџ

5transform/inputs/inputs/F_pickup_longitude/shape_copyIdentity)transform/inputs/F_pickup_longitude/shape*
T0	*
_output_shapes
:

)transform/inputs/inputs/tips/indices_copyIdentitytransform/inputs/tips/indices*
T0	*'
_output_shapes
:џџџџџџџџџ

(transform/inputs/inputs/tips/values_copyIdentitytransform/inputs/tips/values*
T0*#
_output_shapes
:џџџџџџџџџ
u
'transform/inputs/inputs/tips/shape_copyIdentitytransform/inputs/tips/shape*
T0	*
_output_shapes
:

1transform/inputs/inputs/F_trip_miles/indices_copyIdentity%transform/inputs/F_trip_miles/indices*
T0	*'
_output_shapes
:џџџџџџџџџ

0transform/inputs/inputs/F_trip_miles/values_copyIdentity$transform/inputs/F_trip_miles/values*
T0*#
_output_shapes
:џџџџџџџџџ

/transform/inputs/inputs/F_trip_miles/shape_copyIdentity#transform/inputs/F_trip_miles/shape*
T0	*
_output_shapes
:

3transform/inputs/inputs/F_trip_seconds/indices_copyIdentity'transform/inputs/F_trip_seconds/indices*
T0	*'
_output_shapes
:џџџџџџџџџ

2transform/inputs/inputs/F_trip_seconds/values_copyIdentity&transform/inputs/F_trip_seconds/values*
T0*#
_output_shapes
:џџџџџџџџџ

1transform/inputs/inputs/F_trip_seconds/shape_copyIdentity%transform/inputs/F_trip_seconds/shape*
T0	*
_output_shapes
:

5transform/inputs/inputs/F_trip_start_day/indices_copyIdentity)transform/inputs/F_trip_start_day/indices*
T0	*'
_output_shapes
:џџџџџџџџџ

4transform/inputs/inputs/F_trip_start_day/values_copyIdentity(transform/inputs/F_trip_start_day/values*
T0	*#
_output_shapes
:џџџџџџџџџ

3transform/inputs/inputs/F_trip_start_day/shape_copyIdentity'transform/inputs/F_trip_start_day/shape*
T0	*
_output_shapes
:
 
6transform/inputs/inputs/F_trip_start_hour/indices_copyIdentity*transform/inputs/F_trip_start_hour/indices*
T0	*'
_output_shapes
:џџџџџџџџџ

5transform/inputs/inputs/F_trip_start_hour/values_copyIdentity)transform/inputs/F_trip_start_hour/values*
T0	*#
_output_shapes
:џџџџџџџџџ

4transform/inputs/inputs/F_trip_start_hour/shape_copyIdentity(transform/inputs/F_trip_start_hour/shape*
T0	*
_output_shapes
:
Ђ
7transform/inputs/inputs/F_trip_start_month/indices_copyIdentity+transform/inputs/F_trip_start_month/indices*
T0	*'
_output_shapes
:џџџџџџџџџ

6transform/inputs/inputs/F_trip_start_month/values_copyIdentity*transform/inputs/F_trip_start_month/values*
T0	*#
_output_shapes
:џџџџџџџџџ

5transform/inputs/inputs/F_trip_start_month/shape_copyIdentity)transform/inputs/F_trip_start_month/shape*
T0	*
_output_shapes
:
Њ
;transform/inputs/inputs/F_trip_start_timestamp/indices_copyIdentity/transform/inputs/F_trip_start_timestamp/indices*
T0	*'
_output_shapes
:џџџџџџџџџ
Є
:transform/inputs/inputs/F_trip_start_timestamp/values_copyIdentity.transform/inputs/F_trip_start_timestamp/values*
T0	*#
_output_shapes
:џџџџџџџџџ

9transform/inputs/inputs/F_trip_start_timestamp/shape_copyIdentity-transform/inputs/F_trip_start_timestamp/shape*
T0	*
_output_shapes
:
g
transform/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
i
transform/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
i
transform/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ы
transform/strided_sliceStridedSlice/transform/inputs/inputs/F_trip_miles/shape_copytransform/strided_slice/stacktransform/strided_slice/stack_1transform/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0	*
Index0*
shrink_axis_mask
f
$transform/SparseTensor/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Ѓ
"transform/SparseTensor/dense_shapePacktransform/strided_slice$transform/SparseTensor/dense_shape/1*
T0	*

axis *
N*
_output_shapes
:
j
%transform/SparseToDense/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
В
transform/SparseToDenseSparseToDense1transform/inputs/inputs/F_trip_miles/indices_copy"transform/SparseTensor/dense_shape0transform/inputs/inputs/F_trip_miles/values_copy%transform/SparseToDense/default_value*
T0*
validate_indices(*'
_output_shapes
:џџџџџџџџџ*
Tindices0	
z
transform/SqueezeSqueezetransform/SparseToDense*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


Etransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/SizeSizetransform/Squeeze*
T0*
out_type0*
_output_shapes
: 
д
Etransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/CastCastEtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0

Ftransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ф
Dtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/SumSumtransform/SqueezeFtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 

Htransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/truedivRealDivDtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/SumEtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Cast*
T0*
_output_shapes
: 
ж
Dtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/subSubtransform/SqueezeHtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/truediv*
T0*#
_output_shapes
:џџџџџџџџџ
Х
Gtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/SquareSquareDtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/sub*
T0*#
_output_shapes
:џџџџџџџџџ

Htransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

Ftransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Sum_1SumGtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/SquareHtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 

Jtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/truediv_1RealDivFtransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Sum_1Etransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Cast*
T0*
_output_shapes
: 

Ftransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 

Ltransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/PlaceholderPlaceholder*
dtype0*
_output_shapes
: *
shape: 

Ntransform/scale_to_z_score/scale_to_z_score_per_key/mean_and_var/Placeholder_1Placeholder*
shape: *
dtype0*
_output_shapes
: 

7transform/scale_to_z_score/scale_to_z_score_per_key/subSubtransform/SqueezeConst_9*
T0*#
_output_shapes
:џџџџџџџџџ
j
8transform/scale_to_z_score/scale_to_z_score_per_key/SqrtSqrtConst_8*
T0*
_output_shapes
: 

>transform/scale_to_z_score/scale_to_z_score_per_key/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

<transform/scale_to_z_score/scale_to_z_score_per_key/NotEqualNotEqual8transform/scale_to_z_score/scale_to_z_score_per_key/Sqrt>transform/scale_to_z_score/scale_to_z_score_per_key/NotEqual/y*
incompatible_shape_error(*
T0*
_output_shapes
: 
В
>transform/scale_to_z_score/scale_to_z_score_per_key/zeros_like	ZerosLike7transform/scale_to_z_score/scale_to_z_score_per_key/sub*
T0*#
_output_shapes
:џџџџџџџџџ
О
8transform/scale_to_z_score/scale_to_z_score_per_key/CastCast<transform/scale_to_z_score/scale_to_z_score_per_key/NotEqual*

SrcT0
*
Truncate( *
_output_shapes
: *

DstT0
ш
7transform/scale_to_z_score/scale_to_z_score_per_key/addAddV2>transform/scale_to_z_score/scale_to_z_score_per_key/zeros_like8transform/scale_to_z_score/scale_to_z_score_per_key/Cast*
T0*#
_output_shapes
:џџџџџџџџџ
Ш
:transform/scale_to_z_score/scale_to_z_score_per_key/Cast_1Cast7transform/scale_to_z_score/scale_to_z_score_per_key/add*

SrcT0*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0

ч
;transform/scale_to_z_score/scale_to_z_score_per_key/truedivRealDiv7transform/scale_to_z_score/scale_to_z_score_per_key/sub8transform/scale_to_z_score/scale_to_z_score_per_key/Sqrt*
T0*#
_output_shapes
:џџџџџџџџџ
Є
:transform/scale_to_z_score/scale_to_z_score_per_key/SelectSelect:transform/scale_to_z_score/scale_to_z_score_per_key/Cast_1;transform/scale_to_z_score/scale_to_z_score_per_key/truediv7transform/scale_to_z_score/scale_to_z_score_per_key/sub*
T0*#
_output_shapes
:џџџџџџџџџ
i
transform/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
k
!transform/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!transform/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ы
transform/strided_slice_1StridedSlice'transform/inputs/inputs/fare/shape_copytransform/strided_slice_1/stack!transform/strided_slice_1/stack_1!transform/strided_slice_1/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0	*
shrink_axis_mask
h
&transform/SparseTensor_1/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Љ
$transform/SparseTensor_1/dense_shapePacktransform/strided_slice_1&transform/SparseTensor_1/dense_shape/1*
T0	*

axis *
N*
_output_shapes
:
l
'transform/SparseToDense_1/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ј
transform/SparseToDense_1SparseToDense)transform/inputs/inputs/fare/indices_copy$transform/SparseTensor_1/dense_shape(transform/inputs/inputs/fare/values_copy'transform/SparseToDense_1/default_value*
T0*
validate_indices(*'
_output_shapes
:џџџџџџџџџ*
Tindices0	
~
transform/Squeeze_1Squeezetransform/SparseToDense_1*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ

Gtransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/SizeSizetransform/Squeeze_1*
T0*
out_type0*
_output_shapes
: 
и
Gtransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/CastCastGtransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0

Htransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ъ
Ftransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/SumSumtransform/Squeeze_1Htransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 

Jtransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/truedivRealDivFtransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/SumGtransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Cast*
T0*
_output_shapes
: 
м
Ftransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/subSubtransform/Squeeze_1Jtransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/truediv*
T0*#
_output_shapes
:џџџџџџџџџ
Щ
Itransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/SquareSquareFtransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/sub*
T0*#
_output_shapes
:џџџџџџџџџ

Jtransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Є
Htransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Sum_1SumItransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/SquareJtransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 

Ltransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/truediv_1RealDivHtransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Sum_1Gtransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Cast*
T0*
_output_shapes
: 

Htransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 

Ntransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/PlaceholderPlaceholder*
dtype0*
_output_shapes
: *
shape: 

Ptransform/scale_to_z_score_1/scale_to_z_score_per_key/mean_and_var/Placeholder_1Placeholder*
shape: *
dtype0*
_output_shapes
: 

9transform/scale_to_z_score_1/scale_to_z_score_per_key/subSubtransform/Squeeze_1Const_10*
T0*#
_output_shapes
:џџџџџџџџџ
m
:transform/scale_to_z_score_1/scale_to_z_score_per_key/SqrtSqrtConst_11*
T0*
_output_shapes
: 

@transform/scale_to_z_score_1/scale_to_z_score_per_key/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

>transform/scale_to_z_score_1/scale_to_z_score_per_key/NotEqualNotEqual:transform/scale_to_z_score_1/scale_to_z_score_per_key/Sqrt@transform/scale_to_z_score_1/scale_to_z_score_per_key/NotEqual/y*
T0*
_output_shapes
: *
incompatible_shape_error(
Ж
@transform/scale_to_z_score_1/scale_to_z_score_per_key/zeros_like	ZerosLike9transform/scale_to_z_score_1/scale_to_z_score_per_key/sub*
T0*#
_output_shapes
:џџџџџџџџџ
Т
:transform/scale_to_z_score_1/scale_to_z_score_per_key/CastCast>transform/scale_to_z_score_1/scale_to_z_score_per_key/NotEqual*

SrcT0
*
Truncate( *
_output_shapes
: *

DstT0
ю
9transform/scale_to_z_score_1/scale_to_z_score_per_key/addAddV2@transform/scale_to_z_score_1/scale_to_z_score_per_key/zeros_like:transform/scale_to_z_score_1/scale_to_z_score_per_key/Cast*
T0*#
_output_shapes
:џџџџџџџџџ
Ь
<transform/scale_to_z_score_1/scale_to_z_score_per_key/Cast_1Cast9transform/scale_to_z_score_1/scale_to_z_score_per_key/add*

SrcT0*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0

э
=transform/scale_to_z_score_1/scale_to_z_score_per_key/truedivRealDiv9transform/scale_to_z_score_1/scale_to_z_score_per_key/sub:transform/scale_to_z_score_1/scale_to_z_score_per_key/Sqrt*
T0*#
_output_shapes
:џџџџџџџџџ
Ќ
<transform/scale_to_z_score_1/scale_to_z_score_per_key/SelectSelect<transform/scale_to_z_score_1/scale_to_z_score_per_key/Cast_1=transform/scale_to_z_score_1/scale_to_z_score_per_key/truediv9transform/scale_to_z_score_1/scale_to_z_score_per_key/sub*
T0*#
_output_shapes
:џџџџџџџџџ
i
transform/strided_slice_2/stackConst*
valueB: *
dtype0*
_output_shapes
:
k
!transform/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!transform/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
е
transform/strided_slice_2StridedSlice1transform/inputs/inputs/F_trip_seconds/shape_copytransform/strided_slice_2/stack!transform/strided_slice_2/stack_1!transform/strided_slice_2/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0	*
Index0
h
&transform/SparseTensor_2/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Љ
$transform/SparseTensor_2/dense_shapePacktransform/strided_slice_2&transform/SparseTensor_2/dense_shape/1*
T0	*

axis *
N*
_output_shapes
:
l
'transform/SparseToDense_2/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
М
transform/SparseToDense_2SparseToDense3transform/inputs/inputs/F_trip_seconds/indices_copy$transform/SparseTensor_2/dense_shape2transform/inputs/inputs/F_trip_seconds/values_copy'transform/SparseToDense_2/default_value*
T0*
validate_indices(*'
_output_shapes
:џџџџџџџџџ*
Tindices0	
~
transform/Squeeze_2Squeezetransform/SparseToDense_2*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ

Gtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/SizeSizetransform/Squeeze_2*
T0*
out_type0*
_output_shapes
: 
и
Gtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/CastCastGtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0

Htransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ъ
Ftransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/SumSumtransform/Squeeze_2Htransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 

Jtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/truedivRealDivFtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/SumGtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Cast*
T0*
_output_shapes
: 
м
Ftransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/subSubtransform/Squeeze_2Jtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/truediv*
T0*#
_output_shapes
:џџџџџџџџџ
Щ
Itransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/SquareSquareFtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/sub*
T0*#
_output_shapes
:џџџџџџџџџ

Jtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Є
Htransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Sum_1SumItransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/SquareJtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 

Ltransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/truediv_1RealDivHtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Sum_1Gtransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Cast*
T0*
_output_shapes
: 

Htransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 

Ntransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/PlaceholderPlaceholder*
shape: *
dtype0*
_output_shapes
: 

Ptransform/scale_to_z_score_2/scale_to_z_score_per_key/mean_and_var/Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 

9transform/scale_to_z_score_2/scale_to_z_score_per_key/subSubtransform/Squeeze_2Const_1*
T0*#
_output_shapes
:џџџџџџџџџ
j
:transform/scale_to_z_score_2/scale_to_z_score_per_key/SqrtSqrtConst*
T0*
_output_shapes
: 

@transform/scale_to_z_score_2/scale_to_z_score_per_key/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

>transform/scale_to_z_score_2/scale_to_z_score_per_key/NotEqualNotEqual:transform/scale_to_z_score_2/scale_to_z_score_per_key/Sqrt@transform/scale_to_z_score_2/scale_to_z_score_per_key/NotEqual/y*
T0*
_output_shapes
: *
incompatible_shape_error(
Ж
@transform/scale_to_z_score_2/scale_to_z_score_per_key/zeros_like	ZerosLike9transform/scale_to_z_score_2/scale_to_z_score_per_key/sub*
T0*#
_output_shapes
:џџџџџџџџџ
Т
:transform/scale_to_z_score_2/scale_to_z_score_per_key/CastCast>transform/scale_to_z_score_2/scale_to_z_score_per_key/NotEqual*

SrcT0
*
Truncate( *
_output_shapes
: *

DstT0
ю
9transform/scale_to_z_score_2/scale_to_z_score_per_key/addAddV2@transform/scale_to_z_score_2/scale_to_z_score_per_key/zeros_like:transform/scale_to_z_score_2/scale_to_z_score_per_key/Cast*
T0*#
_output_shapes
:џџџџџџџџџ
Ь
<transform/scale_to_z_score_2/scale_to_z_score_per_key/Cast_1Cast9transform/scale_to_z_score_2/scale_to_z_score_per_key/add*

SrcT0*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0

э
=transform/scale_to_z_score_2/scale_to_z_score_per_key/truedivRealDiv9transform/scale_to_z_score_2/scale_to_z_score_per_key/sub:transform/scale_to_z_score_2/scale_to_z_score_per_key/Sqrt*
T0*#
_output_shapes
:џџџџџџџџџ
Ќ
<transform/scale_to_z_score_2/scale_to_z_score_per_key/SelectSelect<transform/scale_to_z_score_2/scale_to_z_score_per_key/Cast_1=transform/scale_to_z_score_2/scale_to_z_score_per_key/truediv9transform/scale_to_z_score_2/scale_to_z_score_per_key/sub*
T0*#
_output_shapes
:џџџџџџџџџ
i
transform/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:
k
!transform/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!transform/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
е
transform/strided_slice_3StridedSlice1transform/inputs/inputs/F_payment_type/shape_copytransform/strided_slice_3/stack!transform/strided_slice_3/stack_1!transform/strided_slice_3/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0	*
Index0*
shrink_axis_mask
h
&transform/SparseTensor_3/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Љ
$transform/SparseTensor_3/dense_shapePacktransform/strided_slice_3&transform/SparseTensor_3/dense_shape/1*
T0	*

axis *
N*
_output_shapes
:
h
'transform/SparseToDense_3/default_valueConst*
valueB B *
dtype0*
_output_shapes
: 
М
transform/SparseToDense_3SparseToDense3transform/inputs/inputs/F_payment_type/indices_copy$transform/SparseTensor_3/dense_shape2transform/inputs/inputs/F_payment_type/values_copy'transform/SparseToDense_3/default_value*
Tindices0	*
T0*
validate_indices(*'
_output_shapes
:џџџџџџџџџ
~
transform/Squeeze_3Squeezetransform/SparseToDense_3*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ

?transform/compute_and_apply_vocabulary/vocabulary/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
ж
9transform/compute_and_apply_vocabulary/vocabulary/ReshapeReshapetransform/Squeeze_3?transform/compute_and_apply_vocabulary/vocabulary/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
~
=transform/compute_and_apply_vocabulary/vocabulary/PlaceholderPlaceholder*
shape: *
dtype0*
_output_shapes
: 

8transform/compute_and_apply_vocabulary/apply_vocab/ConstConst*
valueB	 R
џџџџџџџџџ*
dtype0	*
_output_shapes
: 
Б
=transform/compute_and_apply_vocabulary/apply_vocab/hash_tableHashTableV2*y
shared_namejhhash_table_Tensor("compute_and_apply_vocabulary/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
use_node_name_sharing( *
	key_dtype0*
	container *
value_dtype0	*
_output_shapes
: 
Ћ
_transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2=transform/compute_and_apply_vocabulary/apply_vocab/hash_tableConst_3*
value_indexџџџџџџџџџ*
	key_indexўџџџџџџџџ*

vocab_sizeџџџџџџџџџ*
	delimiter	
а
dtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2LookupTableSizeV2=transform/compute_and_apply_vocabulary/apply_vocab/hash_table*
_output_shapes
: 

Htransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add/yConst*
value	B	 R
*
dtype0	*
_output_shapes
: 
 
Ftransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/addAddV2dtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2Htransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add/y*
T0	*
_output_shapes
: 
З
Ptransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_bucketStringToHashBucketFasttransform/Squeeze_3*#
_output_shapes
:џџџџџџџџџ*
num_buckets

Ч
htransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2=transform/compute_and_apply_vocabulary/apply_vocab/hash_tabletransform/Squeeze_38transform/compute_and_apply_vocabulary/apply_vocab/Const*#
_output_shapes
:џџџџџџџџџ*	
Tin0*

Tout0	
в
ftransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2LookupTableSizeV2=transform/compute_and_apply_vocabulary/apply_vocab/hash_table*
_output_shapes
: 
З
Htransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/AddAddPtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_bucketftransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Ы
Mtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/NotEqualNotEqualhtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV28transform/compute_and_apply_vocabulary/apply_vocab/Const*
incompatible_shape_error(*
T0	*#
_output_shapes
:џџџџџџџџџ

Mtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2SelectV2Mtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/NotEqualhtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Htransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/Add*
T0	*#
_output_shapes
:џџџџџџџџџ
|
:transform/compute_and_apply_vocabulary/apply_vocab/Const_1Const*
value	B	 R *
dtype0	*
_output_shapes
: 
z
8transform/compute_and_apply_vocabulary/apply_vocab/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
р
6transform/compute_and_apply_vocabulary/apply_vocab/subSubFtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add8transform/compute_and_apply_vocabulary/apply_vocab/sub/y*
T0	*
_output_shapes
: 
i
transform/strided_slice_4/stackConst*
valueB: *
dtype0*
_output_shapes
:
k
!transform/strided_slice_4/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!transform/strided_slice_4/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ю
transform/strided_slice_4StridedSlice*transform/inputs/inputs/company/shape_copytransform/strided_slice_4/stack!transform/strided_slice_4/stack_1!transform/strided_slice_4/stack_2*
Index0*
T0	*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
h
&transform/SparseTensor_4/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Љ
$transform/SparseTensor_4/dense_shapePacktransform/strided_slice_4&transform/SparseTensor_4/dense_shape/1*
T0	*

axis *
N*
_output_shapes
:
h
'transform/SparseToDense_4/default_valueConst*
valueB B *
dtype0*
_output_shapes
: 
Ў
transform/SparseToDense_4SparseToDense,transform/inputs/inputs/company/indices_copy$transform/SparseTensor_4/dense_shape+transform/inputs/inputs/company/values_copy'transform/SparseToDense_4/default_value*
T0*
validate_indices(*'
_output_shapes
:џџџџџџџџџ*
Tindices0	
~
transform/Squeeze_4Squeezetransform/SparseToDense_4*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ

Atransform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
к
;transform/compute_and_apply_vocabulary_1/vocabulary/ReshapeReshapetransform/Squeeze_4Atransform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ

?transform/compute_and_apply_vocabulary_1/vocabulary/PlaceholderPlaceholder*
dtype0*
_output_shapes
: *
shape: 

:transform/compute_and_apply_vocabulary_1/apply_vocab/ConstConst*
valueB	 R
џџџџџџџџџ*
dtype0	*
_output_shapes
: 
Е
?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tableHashTableV2*
use_node_name_sharing( *
	key_dtype0*
	container *
value_dtype0	*
_output_shapes
: *{
shared_nameljhash_table_Tensor("compute_and_apply_vocabulary_1/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1
Џ
atransform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tableConst_4*
value_indexџџџџџџџџџ*
	key_indexўџџџџџџџџ*

vocab_sizeџџџџџџџџџ*
	delimiter	
д
ftransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2LookupTableSizeV2?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table*
_output_shapes
: 

Jtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/add/yConst*
value	B	 R
*
dtype0	*
_output_shapes
: 
І
Htransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/addAddV2ftransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2Jtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/add/y*
T0	*
_output_shapes
: 
Й
Rtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_bucketStringToHashBucketFasttransform/Squeeze_4*#
_output_shapes
:џџџџџџџџџ*
num_buckets

Э
jtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tabletransform/Squeeze_4:transform/compute_and_apply_vocabulary_1/apply_vocab/Const*

Tout0	*#
_output_shapes
:џџџџџџџџџ*	
Tin0
ж
htransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2LookupTableSizeV2?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table*
_output_shapes
: 
Н
Jtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/AddAddRtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_buckethtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2*
T0	*#
_output_shapes
:џџџџџџџџџ
б
Otransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/NotEqualNotEqualjtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2:transform/compute_and_apply_vocabulary_1/apply_vocab/Const*
T0	*#
_output_shapes
:џџџџџџџџџ*
incompatible_shape_error(

Otransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2SelectV2Otransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/NotEqualjtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Jtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/Add*
T0	*#
_output_shapes
:џџџџџџџџџ
~
<transform/compute_and_apply_vocabulary_1/apply_vocab/Const_1Const*
value	B	 R *
dtype0	*
_output_shapes
: 
|
:transform/compute_and_apply_vocabulary_1/apply_vocab/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
ц
8transform/compute_and_apply_vocabulary_1/apply_vocab/subSubHtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/add:transform/compute_and_apply_vocabulary_1/apply_vocab/sub/y*
T0	*
_output_shapes
: 
i
transform/strided_slice_5/stackConst*
valueB: *
dtype0*
_output_shapes
:
k
!transform/strided_slice_5/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!transform/strided_slice_5/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
и
transform/strided_slice_5StridedSlice4transform/inputs/inputs/F_pickup_latitude/shape_copytransform/strided_slice_5/stack!transform/strided_slice_5/stack_1!transform/strided_slice_5/stack_2*
T0	*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
h
&transform/SparseTensor_5/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Љ
$transform/SparseTensor_5/dense_shapePacktransform/strided_slice_5&transform/SparseTensor_5/dense_shape/1*
T0	*

axis *
N*
_output_shapes
:
l
'transform/SparseToDense_5/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Т
transform/SparseToDense_5SparseToDense6transform/inputs/inputs/F_pickup_latitude/indices_copy$transform/SparseTensor_5/dense_shape5transform/inputs/inputs/F_pickup_latitude/values_copy'transform/SparseToDense_5/default_value*
Tindices0	*
T0*
validate_indices(*'
_output_shapes
:џџџџџџџџџ
~
transform/Squeeze_5Squeezetransform/SparseToDense_5*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


)transform/bucketize/quantiles/PlaceholderPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
r
'transform/bucketize/quantiles/sort/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
[
&transform/bucketize/quantiles/sort/NegNegConst_5*
T0*
_output_shapes
:	

(transform/bucketize/quantiles/sort/ShapeShape&transform/bucketize/quantiles/sort/Neg*
T0*
out_type0*
_output_shapes
:

6transform/bucketize/quantiles/sort/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

8transform/bucketize/quantiles/sort/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

8transform/bucketize/quantiles/sort/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ј
0transform/bucketize/quantiles/sort/strided_sliceStridedSlice(transform/bucketize/quantiles/sort/Shape6transform/bucketize/quantiles/sort/strided_slice/stack8transform/bucketize/quantiles/sort/strided_slice/stack_18transform/bucketize/quantiles/sort/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
i
'transform/bucketize/quantiles/sort/RankConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
)transform/bucketize/quantiles/sort/TopKV2TopKV2&transform/bucketize/quantiles/sort/Neg0transform/bucketize/quantiles/sort/strided_slice*
T0* 
_output_shapes
:	:	*
sorted(

(transform/bucketize/quantiles/sort/Neg_1Neg)transform/bucketize/quantiles/sort/TopKV2*
T0*
_output_shapes
:	
n
,transform/bucketize/quantiles/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
У
(transform/bucketize/quantiles/ExpandDims
ExpandDims(transform/bucketize/quantiles/sort/Neg_1,transform/bucketize/quantiles/ExpandDims/dim*
T0*
_output_shapes

:	*

Tdim0
t
)transform/bucketize/quantiles/sort_1/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

(transform/bucketize/quantiles/sort_1/NegNeg(transform/bucketize/quantiles/ExpandDims*
T0*
_output_shapes

:	

*transform/bucketize/quantiles/sort_1/ShapeShape(transform/bucketize/quantiles/sort_1/Neg*
T0*
out_type0*
_output_shapes
:

8transform/bucketize/quantiles/sort_1/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

:transform/bucketize/quantiles/sort_1/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

:transform/bucketize/quantiles/sort_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
В
2transform/bucketize/quantiles/sort_1/strided_sliceStridedSlice*transform/bucketize/quantiles/sort_1/Shape8transform/bucketize/quantiles/sort_1/strided_slice/stack:transform/bucketize/quantiles/sort_1/strided_slice/stack_1:transform/bucketize/quantiles/sort_1/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
k
)transform/bucketize/quantiles/sort_1/RankConst*
value	B :*
dtype0*
_output_shapes
: 
д
+transform/bucketize/quantiles/sort_1/TopKV2TopKV2(transform/bucketize/quantiles/sort_1/Neg2transform/bucketize/quantiles/sort_1/strided_slice*
T0*(
_output_shapes
:	:	*
sorted(

*transform/bucketize/quantiles/sort_1/Neg_1Neg+transform/bucketize/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:	
f
$transform/bucketize/assert_rank/rankConst*
value	B :*
dtype0*
_output_shapes
: 

%transform/bucketize/assert_rank/ShapeShape*transform/bucketize/quantiles/sort_1/Neg_1*
T0*
out_type0*
_output_shapes
:
V
Ntransform/bucketize/assert_rank/assert_type/statically_determined_correct_typeNoOp
G
?transform/bucketize/assert_rank/static_checks_determined_all_okNoOp
К
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape*transform/bucketize/quantiles/sort_1/Neg_1*
T0*
out_type0*
_output_shapes
:
Ј
^transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Њ
`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Њ
`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
№
Xtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSlicePtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shape^transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
ё
Otransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastXtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
Њ
Ntransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg*transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes

:	
Ќ
Ytransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
С
Ttransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ntransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegYtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*

Tidx0*
T0*
_output_shapes

:	

Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Negtransform/Squeeze_5*
T0*#
_output_shapes
:џџџџџџџџџ

Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
valueB: *
dtype0*
_output_shapes
:
З
Ntransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMaxPtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
ю
\transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackNtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
T0*

axis *
N*
_output_shapes
:
ў
Ztransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Pack\transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
T0*

axis *
N*
_output_shapes

:
Ё
Vtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Ѕ
Qtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2Ttransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2Ztransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Vtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
T0*
N*
_output_shapes

:
*

Tidx0

Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Negtransform/Squeeze_5*
T0*#
_output_shapes
:џџџџџџџџџ
ы
Rtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpackQtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
T0*	
num*

axis *
_output_shapes
:

и
`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketizePtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Rtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*
num_features*#
_output_shapes
:џџџџџџџџџ

Qtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Cast`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

SrcT0*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0	
Ї
Ntransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSubOtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastQtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:џџџџџџџџџ
i
'transform/bucketize/apply_buckets/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

'transform/bucketize/apply_buckets/ShapeShape*transform/bucketize/quantiles/sort_1/Neg_1*
T0*
out_type0*
_output_shapes
:

5transform/bucketize/apply_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

7transform/bucketize/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

7transform/bucketize/apply_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ѓ
/transform/bucketize/apply_buckets/strided_sliceStridedSlice'transform/bucketize/apply_buckets/Shape5transform/bucketize/apply_buckets/strided_slice/stack7transform/bucketize/apply_buckets/strided_slice/stack_17transform/bucketize/apply_buckets/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
i
transform/strided_slice_6/stackConst*
valueB: *
dtype0*
_output_shapes
:
k
!transform/strided_slice_6/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!transform/strided_slice_6/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
й
transform/strided_slice_6StridedSlice5transform/inputs/inputs/F_pickup_longitude/shape_copytransform/strided_slice_6/stack!transform/strided_slice_6/stack_1!transform/strided_slice_6/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0	*
Index0
h
&transform/SparseTensor_6/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Љ
$transform/SparseTensor_6/dense_shapePacktransform/strided_slice_6&transform/SparseTensor_6/dense_shape/1*
T0	*

axis *
N*
_output_shapes
:
l
'transform/SparseToDense_6/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ф
transform/SparseToDense_6SparseToDense7transform/inputs/inputs/F_pickup_longitude/indices_copy$transform/SparseTensor_6/dense_shape6transform/inputs/inputs/F_pickup_longitude/values_copy'transform/SparseToDense_6/default_value*
T0*
validate_indices(*'
_output_shapes
:џџџџџџџџџ*
Tindices0	
~
transform/Squeeze_6Squeezetransform/SparseToDense_6*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


+transform/bucketize_1/quantiles/PlaceholderPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
t
)transform/bucketize_1/quantiles/sort/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
]
(transform/bucketize_1/quantiles/sort/NegNegConst_7*
T0*
_output_shapes
:

*transform/bucketize_1/quantiles/sort/ShapeShape(transform/bucketize_1/quantiles/sort/Neg*
T0*
out_type0*
_output_shapes
:

8transform/bucketize_1/quantiles/sort/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

:transform/bucketize_1/quantiles/sort/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

:transform/bucketize_1/quantiles/sort/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
В
2transform/bucketize_1/quantiles/sort/strided_sliceStridedSlice*transform/bucketize_1/quantiles/sort/Shape8transform/bucketize_1/quantiles/sort/strided_slice/stack:transform/bucketize_1/quantiles/sort/strided_slice/stack_1:transform/bucketize_1/quantiles/sort/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
k
)transform/bucketize_1/quantiles/sort/RankConst*
value	B :*
dtype0*
_output_shapes
: 
Ь
+transform/bucketize_1/quantiles/sort/TopKV2TopKV2(transform/bucketize_1/quantiles/sort/Neg2transform/bucketize_1/quantiles/sort/strided_slice*
sorted(*
T0* 
_output_shapes
::

*transform/bucketize_1/quantiles/sort/Neg_1Neg+transform/bucketize_1/quantiles/sort/TopKV2*
T0*
_output_shapes
:
p
.transform/bucketize_1/quantiles/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Щ
*transform/bucketize_1/quantiles/ExpandDims
ExpandDims*transform/bucketize_1/quantiles/sort/Neg_1.transform/bucketize_1/quantiles/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
v
+transform/bucketize_1/quantiles/sort_1/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

*transform/bucketize_1/quantiles/sort_1/NegNeg*transform/bucketize_1/quantiles/ExpandDims*
T0*
_output_shapes

:

,transform/bucketize_1/quantiles/sort_1/ShapeShape*transform/bucketize_1/quantiles/sort_1/Neg*
T0*
out_type0*
_output_shapes
:

:transform/bucketize_1/quantiles/sort_1/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

<transform/bucketize_1/quantiles/sort_1/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

<transform/bucketize_1/quantiles/sort_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
М
4transform/bucketize_1/quantiles/sort_1/strided_sliceStridedSlice,transform/bucketize_1/quantiles/sort_1/Shape:transform/bucketize_1/quantiles/sort_1/strided_slice/stack<transform/bucketize_1/quantiles/sort_1/strided_slice/stack_1<transform/bucketize_1/quantiles/sort_1/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
m
+transform/bucketize_1/quantiles/sort_1/RankConst*
value	B :*
dtype0*
_output_shapes
: 
к
-transform/bucketize_1/quantiles/sort_1/TopKV2TopKV2*transform/bucketize_1/quantiles/sort_1/Neg4transform/bucketize_1/quantiles/sort_1/strided_slice*
T0*(
_output_shapes
::*
sorted(

,transform/bucketize_1/quantiles/sort_1/Neg_1Neg-transform/bucketize_1/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:
h
&transform/bucketize_1/assert_rank/rankConst*
value	B :*
dtype0*
_output_shapes
: 

'transform/bucketize_1/assert_rank/ShapeShape,transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
out_type0*
_output_shapes
:
X
Ptransform/bucketize_1/assert_rank/assert_type/statically_determined_correct_typeNoOp
I
Atransform/bucketize_1/assert_rank/static_checks_determined_all_okNoOp
О
Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape,transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
out_type0*
_output_shapes
:
Њ
`transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ќ
btransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ќ
btransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
њ
Ztransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSliceRtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shape`transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackbtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1btransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
ѕ
Qtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastZtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
Ў
Ptransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg,transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
_output_shapes

:
Ў
[transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Ч
Vtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ptransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg[transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*
_output_shapes

:*

Tidx0

Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Negtransform/Squeeze_6*
T0*#
_output_shapes
:џџџџџџџџџ

Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Н
Ptransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMaxRtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
ђ
^transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackPtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
T0*

axis *
N*
_output_shapes
:

\transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Pack^transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
T0*

axis *
N*
_output_shapes

:
Ѓ
Xtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
­
Stransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2Vtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2\transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Xtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*

Tidx0*
T0*
N*
_output_shapes

:

Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Negtransform/Squeeze_6*
T0*#
_output_shapes
:џџџџџџџџџ
я
Ttransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpackStransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
T0*	
num*

axis *
_output_shapes
:
о
btransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketizeRtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Ttransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*
num_features*#
_output_shapes
:џџџџџџџџџ

Stransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castbtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

SrcT0*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0	
­
Ptransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSubQtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastStransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:џџџџџџџџџ
k
)transform/bucketize_1/apply_buckets/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

)transform/bucketize_1/apply_buckets/ShapeShape,transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
out_type0*
_output_shapes
:

7transform/bucketize_1/apply_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

9transform/bucketize_1/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

9transform/bucketize_1/apply_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
­
1transform/bucketize_1/apply_buckets/strided_sliceStridedSlice)transform/bucketize_1/apply_buckets/Shape7transform/bucketize_1/apply_buckets/strided_slice/stack9transform/bucketize_1/apply_buckets/strided_slice/stack_19transform/bucketize_1/apply_buckets/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
i
transform/strided_slice_7/stackConst*
valueB: *
dtype0*
_output_shapes
:
k
!transform/strided_slice_7/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!transform/strided_slice_7/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
й
transform/strided_slice_7StridedSlice5transform/inputs/inputs/F_dropoff_latitude/shape_copytransform/strided_slice_7/stack!transform/strided_slice_7/stack_1!transform/strided_slice_7/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0	
h
&transform/SparseTensor_7/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Љ
$transform/SparseTensor_7/dense_shapePacktransform/strided_slice_7&transform/SparseTensor_7/dense_shape/1*
T0	*

axis *
N*
_output_shapes
:
l
'transform/SparseToDense_7/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ф
transform/SparseToDense_7SparseToDense7transform/inputs/inputs/F_dropoff_latitude/indices_copy$transform/SparseTensor_7/dense_shape6transform/inputs/inputs/F_dropoff_latitude/values_copy'transform/SparseToDense_7/default_value*
Tindices0	*
T0*
validate_indices(*'
_output_shapes
:џџџџџџџџџ
~
transform/Squeeze_7Squeezetransform/SparseToDense_7*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ

+transform/bucketize_2/quantiles/PlaceholderPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
t
)transform/bucketize_2/quantiles/sort/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
]
(transform/bucketize_2/quantiles/sort/NegNegConst_2*
T0*
_output_shapes
:


*transform/bucketize_2/quantiles/sort/ShapeShape(transform/bucketize_2/quantiles/sort/Neg*
T0*
out_type0*
_output_shapes
:

8transform/bucketize_2/quantiles/sort/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

:transform/bucketize_2/quantiles/sort/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

:transform/bucketize_2/quantiles/sort/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
В
2transform/bucketize_2/quantiles/sort/strided_sliceStridedSlice*transform/bucketize_2/quantiles/sort/Shape8transform/bucketize_2/quantiles/sort/strided_slice/stack:transform/bucketize_2/quantiles/sort/strided_slice/stack_1:transform/bucketize_2/quantiles/sort/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
k
)transform/bucketize_2/quantiles/sort/RankConst*
value	B :*
dtype0*
_output_shapes
: 
Ь
+transform/bucketize_2/quantiles/sort/TopKV2TopKV2(transform/bucketize_2/quantiles/sort/Neg2transform/bucketize_2/quantiles/sort/strided_slice*
T0* 
_output_shapes
:
:
*
sorted(

*transform/bucketize_2/quantiles/sort/Neg_1Neg+transform/bucketize_2/quantiles/sort/TopKV2*
T0*
_output_shapes
:

p
.transform/bucketize_2/quantiles/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Щ
*transform/bucketize_2/quantiles/ExpandDims
ExpandDims*transform/bucketize_2/quantiles/sort/Neg_1.transform/bucketize_2/quantiles/ExpandDims/dim*
T0*
_output_shapes

:
*

Tdim0
v
+transform/bucketize_2/quantiles/sort_1/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

*transform/bucketize_2/quantiles/sort_1/NegNeg*transform/bucketize_2/quantiles/ExpandDims*
T0*
_output_shapes

:


,transform/bucketize_2/quantiles/sort_1/ShapeShape*transform/bucketize_2/quantiles/sort_1/Neg*
T0*
out_type0*
_output_shapes
:

:transform/bucketize_2/quantiles/sort_1/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

<transform/bucketize_2/quantiles/sort_1/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

<transform/bucketize_2/quantiles/sort_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
М
4transform/bucketize_2/quantiles/sort_1/strided_sliceStridedSlice,transform/bucketize_2/quantiles/sort_1/Shape:transform/bucketize_2/quantiles/sort_1/strided_slice/stack<transform/bucketize_2/quantiles/sort_1/strided_slice/stack_1<transform/bucketize_2/quantiles/sort_1/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
m
+transform/bucketize_2/quantiles/sort_1/RankConst*
value	B :*
dtype0*
_output_shapes
: 
к
-transform/bucketize_2/quantiles/sort_1/TopKV2TopKV2*transform/bucketize_2/quantiles/sort_1/Neg4transform/bucketize_2/quantiles/sort_1/strided_slice*
T0*(
_output_shapes
:
:
*
sorted(

,transform/bucketize_2/quantiles/sort_1/Neg_1Neg-transform/bucketize_2/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:

h
&transform/bucketize_2/assert_rank/rankConst*
value	B :*
dtype0*
_output_shapes
: 

'transform/bucketize_2/assert_rank/ShapeShape,transform/bucketize_2/quantiles/sort_1/Neg_1*
T0*
out_type0*
_output_shapes
:
X
Ptransform/bucketize_2/assert_rank/assert_type/statically_determined_correct_typeNoOp
I
Atransform/bucketize_2/assert_rank/static_checks_determined_all_okNoOp
О
Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape,transform/bucketize_2/quantiles/sort_1/Neg_1*
T0*
out_type0*
_output_shapes
:
Њ
`transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ќ
btransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ќ
btransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
њ
Ztransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSliceRtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shape`transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackbtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1btransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
ѕ
Qtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastZtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
Ў
Ptransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg,transform/bucketize_2/quantiles/sort_1/Neg_1*
T0*
_output_shapes

:

Ў
[transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Ч
Vtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ptransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg[transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*

Tidx0*
T0*
_output_shapes

:


Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Negtransform/Squeeze_7*
T0*#
_output_shapes
:џџџџџџџџџ

Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Н
Ptransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMaxRtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
ђ
^transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackPtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
T0*

axis *
N*
_output_shapes
:

\transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Pack^transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
T0*

axis *
N*
_output_shapes

:
Ѓ
Xtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
­
Stransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2Vtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2\transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Xtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
T0*
N*
_output_shapes

:*

Tidx0

Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Negtransform/Squeeze_7*
T0*#
_output_shapes
:џџџџџџџџџ
я
Ttransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpackStransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
T0*	
num*

axis *
_output_shapes
:
о
btransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketizeRtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Ttransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*
num_features*#
_output_shapes
:џџџџџџџџџ

Stransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castbtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

SrcT0*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0	
­
Ptransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSubQtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastStransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:џџџџџџџџџ
k
)transform/bucketize_2/apply_buckets/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

)transform/bucketize_2/apply_buckets/ShapeShape,transform/bucketize_2/quantiles/sort_1/Neg_1*
T0*
out_type0*
_output_shapes
:

7transform/bucketize_2/apply_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

9transform/bucketize_2/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

9transform/bucketize_2/apply_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
­
1transform/bucketize_2/apply_buckets/strided_sliceStridedSlice)transform/bucketize_2/apply_buckets/Shape7transform/bucketize_2/apply_buckets/strided_slice/stack9transform/bucketize_2/apply_buckets/strided_slice/stack_19transform/bucketize_2/apply_buckets/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
i
transform/strided_slice_8/stackConst*
valueB: *
dtype0*
_output_shapes
:
k
!transform/strided_slice_8/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!transform/strided_slice_8/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
к
transform/strided_slice_8StridedSlice6transform/inputs/inputs/F_dropoff_longitude/shape_copytransform/strided_slice_8/stack!transform/strided_slice_8/stack_1!transform/strided_slice_8/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0	*
shrink_axis_mask
h
&transform/SparseTensor_8/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Љ
$transform/SparseTensor_8/dense_shapePacktransform/strided_slice_8&transform/SparseTensor_8/dense_shape/1*
T0	*

axis *
N*
_output_shapes
:
l
'transform/SparseToDense_8/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ц
transform/SparseToDense_8SparseToDense8transform/inputs/inputs/F_dropoff_longitude/indices_copy$transform/SparseTensor_8/dense_shape7transform/inputs/inputs/F_dropoff_longitude/values_copy'transform/SparseToDense_8/default_value*
Tindices0	*
T0*
validate_indices(*'
_output_shapes
:џџџџџџџџџ
~
transform/Squeeze_8Squeezetransform/SparseToDense_8*
squeeze_dims
*
T0*#
_output_shapes
:џџџџџџџџџ

+transform/bucketize_3/quantiles/PlaceholderPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
t
)transform/bucketize_3/quantiles/sort/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
]
(transform/bucketize_3/quantiles/sort/NegNegConst_6*
T0*
_output_shapes
:

*transform/bucketize_3/quantiles/sort/ShapeShape(transform/bucketize_3/quantiles/sort/Neg*
T0*
out_type0*
_output_shapes
:

8transform/bucketize_3/quantiles/sort/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

:transform/bucketize_3/quantiles/sort/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

:transform/bucketize_3/quantiles/sort/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
В
2transform/bucketize_3/quantiles/sort/strided_sliceStridedSlice*transform/bucketize_3/quantiles/sort/Shape8transform/bucketize_3/quantiles/sort/strided_slice/stack:transform/bucketize_3/quantiles/sort/strided_slice/stack_1:transform/bucketize_3/quantiles/sort/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
k
)transform/bucketize_3/quantiles/sort/RankConst*
value	B :*
dtype0*
_output_shapes
: 
Ь
+transform/bucketize_3/quantiles/sort/TopKV2TopKV2(transform/bucketize_3/quantiles/sort/Neg2transform/bucketize_3/quantiles/sort/strided_slice*
T0* 
_output_shapes
::*
sorted(

*transform/bucketize_3/quantiles/sort/Neg_1Neg+transform/bucketize_3/quantiles/sort/TopKV2*
T0*
_output_shapes
:
p
.transform/bucketize_3/quantiles/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Щ
*transform/bucketize_3/quantiles/ExpandDims
ExpandDims*transform/bucketize_3/quantiles/sort/Neg_1.transform/bucketize_3/quantiles/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
v
+transform/bucketize_3/quantiles/sort_1/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

*transform/bucketize_3/quantiles/sort_1/NegNeg*transform/bucketize_3/quantiles/ExpandDims*
T0*
_output_shapes

:

,transform/bucketize_3/quantiles/sort_1/ShapeShape*transform/bucketize_3/quantiles/sort_1/Neg*
T0*
out_type0*
_output_shapes
:

:transform/bucketize_3/quantiles/sort_1/strided_slice/stackConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

<transform/bucketize_3/quantiles/sort_1/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:

<transform/bucketize_3/quantiles/sort_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
М
4transform/bucketize_3/quantiles/sort_1/strided_sliceStridedSlice,transform/bucketize_3/quantiles/sort_1/Shape:transform/bucketize_3/quantiles/sort_1/strided_slice/stack<transform/bucketize_3/quantiles/sort_1/strided_slice/stack_1<transform/bucketize_3/quantiles/sort_1/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
m
+transform/bucketize_3/quantiles/sort_1/RankConst*
value	B :*
dtype0*
_output_shapes
: 
к
-transform/bucketize_3/quantiles/sort_1/TopKV2TopKV2*transform/bucketize_3/quantiles/sort_1/Neg4transform/bucketize_3/quantiles/sort_1/strided_slice*
sorted(*
T0*(
_output_shapes
::

,transform/bucketize_3/quantiles/sort_1/Neg_1Neg-transform/bucketize_3/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:
h
&transform/bucketize_3/assert_rank/rankConst*
value	B :*
dtype0*
_output_shapes
: 

'transform/bucketize_3/assert_rank/ShapeShape,transform/bucketize_3/quantiles/sort_1/Neg_1*
T0*
out_type0*
_output_shapes
:
X
Ptransform/bucketize_3/assert_rank/assert_type/statically_determined_correct_typeNoOp
I
Atransform/bucketize_3/assert_rank/static_checks_determined_all_okNoOp
О
Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape,transform/bucketize_3/quantiles/sort_1/Neg_1*
T0*
out_type0*
_output_shapes
:
Њ
`transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ќ
btransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ќ
btransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
њ
Ztransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSliceRtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shape`transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackbtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1btransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
ѕ
Qtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastZtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
Ў
Ptransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg,transform/bucketize_3/quantiles/sort_1/Neg_1*
T0*
_output_shapes

:
Ў
[transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Ч
Vtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ptransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg[transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*
_output_shapes

:*

Tidx0

Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Negtransform/Squeeze_8*
T0*#
_output_shapes
:џџџџџџџџџ

Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Н
Ptransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMaxRtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
ђ
^transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackPtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
T0*

axis *
N*
_output_shapes
:

\transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Pack^transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
T0*

axis *
N*
_output_shapes

:
Ѓ
Xtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
­
Stransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2Vtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2\transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Xtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
T0*
N*
_output_shapes

:*

Tidx0

Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Negtransform/Squeeze_8*
T0*#
_output_shapes
:џџџџџџџџџ
я
Ttransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpackStransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
T0*	
num*

axis *
_output_shapes
:
о
btransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketizeRtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Ttransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*
num_features*#
_output_shapes
:џџџџџџџџџ

Stransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castbtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

SrcT0*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0	
­
Ptransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSubQtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastStransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:џџџџџџџџџ
k
)transform/bucketize_3/apply_buckets/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

)transform/bucketize_3/apply_buckets/ShapeShape,transform/bucketize_3/quantiles/sort_1/Neg_1*
T0*
out_type0*
_output_shapes
:

7transform/bucketize_3/apply_buckets/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

9transform/bucketize_3/apply_buckets/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

9transform/bucketize_3/apply_buckets/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
­
1transform/bucketize_3/apply_buckets/strided_sliceStridedSlice)transform/bucketize_3/apply_buckets/Shape7transform/bucketize_3/apply_buckets/strided_slice/stack9transform/bucketize_3/apply_buckets/strided_slice/stack_19transform/bucketize_3/apply_buckets/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
i
transform/strided_slice_9/stackConst*
valueB: *
dtype0*
_output_shapes
:
k
!transform/strided_slice_9/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!transform/strided_slice_9/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
и
transform/strided_slice_9StridedSlice4transform/inputs/inputs/F_trip_start_hour/shape_copytransform/strided_slice_9/stack!transform/strided_slice_9/stack_1!transform/strided_slice_9/stack_2*
Index0*
T0	*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
h
&transform/SparseTensor_9/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Љ
$transform/SparseTensor_9/dense_shapePacktransform/strided_slice_9&transform/SparseTensor_9/dense_shape/1*
T0	*

axis *
N*
_output_shapes
:
i
'transform/SparseToDense_9/default_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Т
transform/SparseToDense_9SparseToDense6transform/inputs/inputs/F_trip_start_hour/indices_copy$transform/SparseTensor_9/dense_shape5transform/inputs/inputs/F_trip_start_hour/values_copy'transform/SparseToDense_9/default_value*
Tindices0	*
T0	*
validate_indices(*'
_output_shapes
:џџџџџџџџџ
~
transform/Squeeze_9Squeezetransform/SparseToDense_9*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

j
 transform/strided_slice_10/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"transform/strided_slice_10/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"transform/strided_slice_10/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
л
transform/strided_slice_10StridedSlice3transform/inputs/inputs/F_trip_start_day/shape_copy transform/strided_slice_10/stack"transform/strided_slice_10/stack_1"transform/strided_slice_10/stack_2*
Index0*
T0	*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
i
'transform/SparseTensor_10/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Ќ
%transform/SparseTensor_10/dense_shapePacktransform/strided_slice_10'transform/SparseTensor_10/dense_shape/1*
T0	*

axis *
N*
_output_shapes
:
j
(transform/SparseToDense_10/default_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
У
transform/SparseToDense_10SparseToDense5transform/inputs/inputs/F_trip_start_day/indices_copy%transform/SparseTensor_10/dense_shape4transform/inputs/inputs/F_trip_start_day/values_copy(transform/SparseToDense_10/default_value*
T0	*
validate_indices(*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

transform/Squeeze_10Squeezetransform/SparseToDense_10*
squeeze_dims
*
T0	*#
_output_shapes
:џџџџџџџџџ
j
 transform/strided_slice_11/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"transform/strided_slice_11/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"transform/strided_slice_11/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
н
transform/strided_slice_11StridedSlice5transform/inputs/inputs/F_trip_start_month/shape_copy transform/strided_slice_11/stack"transform/strided_slice_11/stack_1"transform/strided_slice_11/stack_2*
T0	*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
i
'transform/SparseTensor_11/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Ќ
%transform/SparseTensor_11/dense_shapePacktransform/strided_slice_11'transform/SparseTensor_11/dense_shape/1*
T0	*

axis *
N*
_output_shapes
:
j
(transform/SparseToDense_11/default_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Ч
transform/SparseToDense_11SparseToDense7transform/inputs/inputs/F_trip_start_month/indices_copy%transform/SparseTensor_11/dense_shape6transform/inputs/inputs/F_trip_start_month/values_copy(transform/SparseToDense_11/default_value*
T0	*
validate_indices(*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

transform/Squeeze_11Squeezetransform/SparseToDense_11*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

j
 transform/strided_slice_12/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"transform/strided_slice_12/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"transform/strided_slice_12/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
р
transform/strided_slice_12StridedSlice8transform/inputs/inputs/F_pickup_census_tract/shape_copy transform/strided_slice_12/stack"transform/strided_slice_12/stack_1"transform/strided_slice_12/stack_2*
T0	*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
i
'transform/SparseTensor_12/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Ќ
%transform/SparseTensor_12/dense_shapePacktransform/strided_slice_12'transform/SparseTensor_12/dense_shape/1*
T0	*

axis *
N*
_output_shapes
:
i
(transform/SparseToDense_12/default_valueConst*
valueB B *
dtype0*
_output_shapes
: 
Э
transform/SparseToDense_12SparseToDense:transform/inputs/inputs/F_pickup_census_tract/indices_copy%transform/SparseTensor_12/dense_shape9transform/inputs/inputs/F_pickup_census_tract/values_copy(transform/SparseToDense_12/default_value*
Tindices0	*
T0*
validate_indices(*'
_output_shapes
:џџџџџџџџџ

transform/Squeeze_12Squeezetransform/SparseToDense_12*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

j
 transform/strided_slice_13/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"transform/strided_slice_13/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"transform/strided_slice_13/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
с
transform/strided_slice_13StridedSlice9transform/inputs/inputs/F_dropoff_census_tract/shape_copy transform/strided_slice_13/stack"transform/strided_slice_13/stack_1"transform/strided_slice_13/stack_2*
T0	*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
i
'transform/SparseTensor_13/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Ќ
%transform/SparseTensor_13/dense_shapePacktransform/strided_slice_13'transform/SparseTensor_13/dense_shape/1*
T0	*

axis *
N*
_output_shapes
:
m
(transform/SparseToDense_13/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Я
transform/SparseToDense_13SparseToDense;transform/inputs/inputs/F_dropoff_census_tract/indices_copy%transform/SparseTensor_13/dense_shape:transform/inputs/inputs/F_dropoff_census_tract/values_copy(transform/SparseToDense_13/default_value*
T0*
validate_indices(*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

transform/Squeeze_13Squeezetransform/SparseToDense_13*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

j
 transform/strided_slice_14/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"transform/strided_slice_14/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"transform/strided_slice_14/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
т
transform/strided_slice_14StridedSlice:transform/inputs/inputs/F_pickup_community_area/shape_copy transform/strided_slice_14/stack"transform/strided_slice_14/stack_1"transform/strided_slice_14/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0	*
shrink_axis_mask
i
'transform/SparseTensor_14/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Ќ
%transform/SparseTensor_14/dense_shapePacktransform/strided_slice_14'transform/SparseTensor_14/dense_shape/1*
T0	*

axis *
N*
_output_shapes
:
j
(transform/SparseToDense_14/default_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
б
transform/SparseToDense_14SparseToDense<transform/inputs/inputs/F_pickup_community_area/indices_copy%transform/SparseTensor_14/dense_shape;transform/inputs/inputs/F_pickup_community_area/values_copy(transform/SparseToDense_14/default_value*
Tindices0	*
T0	*
validate_indices(*'
_output_shapes
:џџџџџџџџџ

transform/Squeeze_14Squeezetransform/SparseToDense_14*
squeeze_dims
*
T0	*#
_output_shapes
:џџџџџџџџџ
j
 transform/strided_slice_15/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"transform/strided_slice_15/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"transform/strided_slice_15/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
у
transform/strided_slice_15StridedSlice;transform/inputs/inputs/F_dropoff_community_area/shape_copy transform/strided_slice_15/stack"transform/strided_slice_15/stack_1"transform/strided_slice_15/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0	*
Index0*
shrink_axis_mask
i
'transform/SparseTensor_15/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Ќ
%transform/SparseTensor_15/dense_shapePacktransform/strided_slice_15'transform/SparseTensor_15/dense_shape/1*
T0	*

axis *
N*
_output_shapes
:
m
(transform/SparseToDense_15/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
г
transform/SparseToDense_15SparseToDense=transform/inputs/inputs/F_dropoff_community_area/indices_copy%transform/SparseTensor_15/dense_shape<transform/inputs/inputs/F_dropoff_community_area/values_copy(transform/SparseToDense_15/default_value*
Tindices0	*
T0*
validate_indices(*'
_output_shapes
:џџџџџџџџџ

transform/Squeeze_15Squeezetransform/SparseToDense_15*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

j
 transform/strided_slice_16/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"transform/strided_slice_16/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"transform/strided_slice_16/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Я
transform/strided_slice_16StridedSlice'transform/inputs/inputs/fare/shape_copy transform/strided_slice_16/stack"transform/strided_slice_16/stack_1"transform/strided_slice_16/stack_2*
T0	*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
i
'transform/SparseTensor_16/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Ќ
%transform/SparseTensor_16/dense_shapePacktransform/strided_slice_16'transform/SparseTensor_16/dense_shape/1*
T0	*

axis *
N*
_output_shapes
:
m
(transform/SparseToDense_16/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ћ
transform/SparseToDense_16SparseToDense)transform/inputs/inputs/fare/indices_copy%transform/SparseTensor_16/dense_shape(transform/inputs/inputs/fare/values_copy(transform/SparseToDense_16/default_value*
T0*
validate_indices(*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

transform/Squeeze_16Squeezetransform/SparseToDense_16*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

j
 transform/strided_slice_17/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"transform/strided_slice_17/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"transform/strided_slice_17/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Я
transform/strided_slice_17StridedSlice'transform/inputs/inputs/tips/shape_copy transform/strided_slice_17/stack"transform/strided_slice_17/stack_1"transform/strided_slice_17/stack_2*
T0	*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
i
'transform/SparseTensor_17/dense_shape/1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
Ќ
%transform/SparseTensor_17/dense_shapePacktransform/strided_slice_17'transform/SparseTensor_17/dense_shape/1*
T0	*

axis *
N*
_output_shapes
:
m
(transform/SparseToDense_17/default_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ћ
transform/SparseToDense_17SparseToDense)transform/inputs/inputs/tips/indices_copy%transform/SparseTensor_17/dense_shape(transform/inputs/inputs/tips/values_copy(transform/SparseToDense_17/default_value*
T0*
validate_indices(*'
_output_shapes
:џџџџџџџџџ*
Tindices0	

transform/Squeeze_17Squeezetransform/SparseToDense_17*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

\
transform/IsNanIsNantransform/Squeeze_16*
T0*#
_output_shapes
:џџџџџџџџџ
e
transform/zeros_like	ZerosLiketransform/Squeeze_16*
T0*#
_output_shapes
:џџџџџџџџџ
y
transform/CastCasttransform/zeros_like*

SrcT0*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0	
T
transform/ConstConst*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
i
transform/MulMultransform/Squeeze_16transform/Const*
T0*#
_output_shapes
:џџџџџџџџџ
o
transform/GreaterGreatertransform/Squeeze_17transform/Mul*
T0*#
_output_shapes
:џџџџџџџџџ
x
transform/Cast_1Casttransform/Greater*

SrcT0
*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0	
{
transform/SelectSelecttransform/IsNantransform/Casttransform/Cast_1*
T0	*#
_output_shapes
:џџџџџџџџџ

transform/initNoOp

transform/init_1NoOp

initNoOp""і
saved_model_assetsп*м
k
+type.googleapis.com/tensorflow.AssetFileDef<

	Const_3:0-vocab_compute_and_apply_vocabulary_vocabulary
m
+type.googleapis.com/tensorflow.AssetFileDef>

	Const_4:0/vocab_compute_and_apply_vocabulary_1_vocabulary"Я
tft_schema_override_minГ
А
<transform/compute_and_apply_vocabulary/apply_vocab/Const_1:0
>transform/compute_and_apply_vocabulary_1/apply_vocab/Const_1:0
)transform/bucketize/apply_buckets/Const:0
+transform/bucketize_1/apply_buckets/Const:0
+transform/bucketize_2/apply_buckets/Const:0
+transform/bucketize_3/apply_buckets/Const:0"ч
tft_schema_override_maxЫ
Ш
8transform/compute_and_apply_vocabulary/apply_vocab/sub:0
:transform/compute_and_apply_vocabulary_1/apply_vocab/sub:0
1transform/bucketize/apply_buckets/strided_slice:0
3transform/bucketize_1/apply_buckets/strided_slice:0
3transform/bucketize_2/apply_buckets/strided_slice:0
3transform/bucketize_3/apply_buckets/strided_slice:0"+
asset_filepaths

	Const_3:0
	Const_4:0"н
table_initializerЧ
Ф
_transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2
atransform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2"
tft_schema_override_tensorѕ
ђ
Otransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2:0
Qtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2:0
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0*ї&
transform_signatureп&
И
trip_start_dayЅ	џџџџџџџџџџџџџџџџџџ"
*transform/inputs/F_trip_start_day/values:0+transform/inputs/F_trip_start_day/indices:0)transform/inputs/F_trip_start_day/shape:0
Р
trip_start_monthЋ	џџџџџџџџџџџџџџџџџџ"
,transform/inputs/F_trip_start_month/values:0-transform/inputs/F_trip_start_month/indices:0+transform/inputs/F_trip_start_month/shape:0
Ь
pickup_census_tractДџџџџџџџџџџџџџџџџџџ"
/transform/inputs/F_pickup_census_tract/values:00transform/inputs/F_pickup_census_tract/indices:0.transform/inputs/F_pickup_census_tract/shape:0

companyџџџџџџџџџџџџџџџџџџ"i
!transform/inputs/company/values:0"transform/inputs/company/indices:0 transform/inputs/company/shape:0
Ї

trip_milesџџџџџџџџџџџџџџџџџџ"x
&transform/inputs/F_trip_miles/values:0'transform/inputs/F_trip_miles/indices:0%transform/inputs/F_trip_miles/shape:0
д
pickup_community_areaК	џџџџџџџџџџџџџџџџџџ"
1transform/inputs/F_pickup_community_area/values:02transform/inputs/F_pickup_community_area/indices:00transform/inputs/F_pickup_community_area/shape:0
а
dropoff_census_tractЗџџџџџџџџџџџџџџџџџџ"
0transform/inputs/F_dropoff_census_tract/values:01transform/inputs/F_dropoff_census_tract/indices:0/transform/inputs/F_dropoff_census_tract/shape:0

fareџџџџџџџџџџџџџџџџџџ"`
transform/inputs/fare/values:0transform/inputs/fare/indices:0transform/inputs/fare/shape:0
Ф
dropoff_longitudeЎџџџџџџџџџџџџџџџџџџ"
-transform/inputs/F_dropoff_longitude/values:0.transform/inputs/F_dropoff_longitude/indices:0,transform/inputs/F_dropoff_longitude/shape:0
а
trip_start_timestampЗ	џџџџџџџџџџџџџџџџџџ"
0transform/inputs/F_trip_start_timestamp/values:01transform/inputs/F_trip_start_timestamp/indices:0/transform/inputs/F_trip_start_timestamp/shape:0
М
pickup_latitudeЈџџџџџџџџџџџџџџџџџџ"
+transform/inputs/F_pickup_latitude/values:0,transform/inputs/F_pickup_latitude/indices:0*transform/inputs/F_pickup_latitude/shape:0

tipsџџџџџџџџџџџџџџџџџџ"`
transform/inputs/tips/values:0transform/inputs/tips/indices:0transform/inputs/tips/shape:0
Р
pickup_longitudeЋџџџџџџџџџџџџџџџџџџ"
,transform/inputs/F_pickup_longitude/values:0-transform/inputs/F_pickup_longitude/indices:0+transform/inputs/F_pickup_longitude/shape:0
М
trip_start_hourЈ	џџџџџџџџџџџџџџџџџџ"
+transform/inputs/F_trip_start_hour/values:0,transform/inputs/F_trip_start_hour/indices:0*transform/inputs/F_trip_start_hour/shape:0
Џ
payment_typeџџџџџџџџџџџџџџџџџџ"~
(transform/inputs/F_payment_type/values:0)transform/inputs/F_payment_type/indices:0'transform/inputs/F_payment_type/shape:0
и
dropoff_community_areaНџџџџџџџџџџџџџџџџџџ"
2transform/inputs/F_dropoff_community_area/values:03transform/inputs/F_dropoff_community_area/indices:01transform/inputs/F_dropoff_community_area/shape:0
Р
dropoff_latitudeЋџџџџџџџџџџџџџџџџџџ"
,transform/inputs/F_dropoff_latitude/values:0-transform/inputs/F_dropoff_latitude/indices:0+transform/inputs/F_dropoff_latitude/shape:0
Џ
trip_secondsџџџџџџџџџџџџџџџџџџ"~
(transform/inputs/F_trip_seconds/values:0)transform/inputs/F_trip_seconds/indices:0'transform/inputs/F_trip_seconds/shape:0r

company_xfd
Qtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2:0	џџџџџџџџџF
dropoff_community_area_xf)
transform/Squeeze_15:0џџџџџџџџџD
dropoff_census_tract_xf)
transform/Squeeze_13:0џџџџџџџџџu
payment_type_xfb
Otransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2:0	џџџџџџџџџE
pickup_community_area_xf)
transform/Squeeze_14:0	џџџџџџџџџ@
trip_start_month_xf)
transform/Squeeze_11:0	џџџџџџџџџ>
trip_start_day_xf)
transform/Squeeze_10:0	џџџџџџџџџC
pickup_census_tract_xf)
transform/Squeeze_12:0џџџџџџџџџ>
trip_start_hour_xf(
transform/Squeeze_9:0	џџџџџџџџџ`
trip_miles_xfO
<transform/scale_to_z_score/scale_to_z_score_per_key/Select:0џџџџџџџџџd
trip_seconds_xfQ
>transform/scale_to_z_score_2/scale_to_z_score_per_key/Select:0џџџџџџџџџ|
pickup_longitude_xfe
Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	џџџџџџџџџ|
dropoff_latitude_xfe
Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	џџџџџџџџџ0
tips_xf%
transform/Select:0	џџџџџџџџџy
pickup_latitude_xfc
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	џџџџџџџџџ\
fare_xfQ
>transform/scale_to_z_score_1/scale_to_z_score_per_key/Select:0џџџџџџџџџ}
dropoff_longitude_xfe
Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	џџџџџџџџџtensorflow/serving/predict