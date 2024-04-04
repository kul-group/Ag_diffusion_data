#!/usr/bin/env bash
#SBATCH --nodes=1 --exclude=agate-12,agate-13,agate-14,agate-15,agate-16,agate-17,agate-18,agate-19,agate-28,agate-41,agate-42 --partition=high --ntasks-per-node=64 -c 1 --output=job.out --error=job.err --time=48:00:00
export OMP_NUM_THREADS=16
export TF_INTRA_OP_PARALLELISM_THREADS=16
export TF_INTER_OP_PARALLELISM_THREADS=4

if [[ -e 'checkpoint' ]]; then
	dp train --restart model.ckpt in.json
else
	dp train in.json
fi

dp freeze -o graph.pb
