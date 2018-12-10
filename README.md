# MC_Pv_syn_diversity
Monte Carlo simulations of single vesicle release probability.

The simulations require MCell software (https://mcell.org/; Stiles, JR. & Bartol, TM. (2001)).

Each folder corresponds to a single simulation scenario. 

In order to run simualtions on slurm system (https://slurm.schedmd.com/): sbatch --qos normal -p common --array=1-500 job_name.sh

or on a local working station use: job_name_local.sh
