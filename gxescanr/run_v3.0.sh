#!/bin/bash

#sbatch --job-name=folate_tot_v3  --output=/scratch/andreeki/gwis/results/logs/FIGI_v3.0_gxeset_folate_totqc2_basic_covars_gxescan_chr%a.log --export=exposure=folate_totqc2 gxescanr_v3.0.sh
#sbatch --job-name=calcium_tot_v3 --output=/scratch/andreeki/gwis/results/logs/FIGI_v3.0_gxeset_calcium_totqc2_basic_covars_gxescan_chr%a.log --export=exposure=calcium_totqc2 gxescanr_v3.0.sh
#sbatch --job-name=calcium_diet_v3 --output=/scratch/andreeki/gwis/results/logs/FIGI_v3.0_gxeset_calcium_dietqc2_basic_covars_gxescan_chr%a.log --export=exposure=calcium_dietqc2 gxescanr_v3.0.sh
sbatch --job-name=folate_diet_v3 --output=/scratch/andreeki/gwis/results/logs/FIGI_v3.0_gxeset_folate_dietqc2_basic_covars_gxescan_chr%a.log --export=exposure=folate_dietqc2 gxescanr_v3.0.sh

