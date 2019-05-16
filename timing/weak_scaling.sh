#!/bin/bash
export WEAK_SCALING_BASE=32
export NAME="Weak_Scaling_32_Shifter_Py3_NoIO_Metal"

for i in 18 20 22 24 
do
   export UW_RESOLUTION="$((${WEAK_SCALING_BASE} * ${i}))"
   export NTASKS="$((${i}*${i}*${i}))"
   sbatch --job-name=${NAME} --ntasks=${NTASKS} metal_go.sh
done

