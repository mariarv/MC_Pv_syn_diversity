#!/bin/sh
#SBATCH -J "ez_50"
#SBATCH -o /dev/null -e /dev/null
trap "{ exit 99; }" USR1
CHECKPOINT_FILE=/pasteur/scratch/mreva/checkpoint${SLURM_ARRAY_TASK_ID}.chk
if [ -f $CHECKPOINT_FILE ]
then
    srun mcell -seed ${SLURM_ARRAY_TASK_ID} -checkpoint_infile $CHECKPOINT_FILE -checkpoint_outfile $CHECKPOINT_FILE  main_EZ50nm.mdl &
     wait
else
    srun mcell -seed ${SLURM_ARRAY_TASK_ID} -checkpoint_outfile $CHECKPOINT_FILE  main_EZ50nm.mdl &
     wait
fi
exit 0
