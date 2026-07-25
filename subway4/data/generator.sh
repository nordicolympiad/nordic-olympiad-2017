#!/bin/bash
PPATH=$(realpath ..)
. ../../testdata_tools/gen.sh

use_solution simon.cpp
compile gen_general.py

samplegroup
limits maxn=10
sample 1
sample 2

addgroup(){
	tc $1-01 gen_general n=$2 a=tree b=tree
	tc $1-02 gen_general n=$2 a=tree b=tree
	tc $1-03 gen_general n=$2 a=tree b=tree
	tc $1-04 gen_general n=$2 a=tree b=tree
	tc $1-05 gen_general n=$2 a=tree b=tree
	tc $1-06 gen_general n=$2 a=tree b=tree

	tc $1-07 gen_general n=$2 a=tree b=line
	tc $1-08 gen_general n=$2 a=line b=tree
	tc $1-09 gen_general n=$2 a=line b=line

	tc $1-10 gen_general n=$2 a=star b=tree
	tc $1-11 gen_general n=$2 a=star b=line
	tc $1-12 gen_general n=$2 a=tree b=star
	tc $1-13 gen_general n=$2 a=line b=star
	tc $1-14 gen_general n=$2 a=star b=star
}

group g1small 33
limits maxn=10
tc 1
tc 2
addgroup g1small 10

group g2mid 33
limits maxn=1000
include_group g1small
addgroup g2medium 1000

group g3large 34
limits maxn=100000
include_group g2mid
addgroup g3large 100000