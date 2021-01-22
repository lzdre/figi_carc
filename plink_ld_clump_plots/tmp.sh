#!/bin/bash
#SBATCH --time=23:00:00
#SBATCH --ntasks=1
#SBATCH --mem=8GB
#SBATCH --account=dconti_251

module load gcc/8.3.0
module load openblas/0.3.8
module load r/4.0.0

wdir=/scratch/andreeki/gwis/clump_combined
exposure=calcium_dietqc2
hrc_version=v3.0
#mkdir -p ${out_dir}

# main effects p value clump
#plink \
#    --bfile /scratch/andreeki/clump/figi_controls_1000 \
#    --memory 8000 \
#    --clump ${wdir}/figi_gxescan_${exposure}_chiSqG_ldclump.txt \
#    --clump-p1 0.0001 --clump-r2 0.2 --clump-p2 1 \
#    --out   ${wdir}/figi_gxescan_${exposure}_chiSqG_ldclump

#plink \
#    --bfile /scratch/andreeki/clump/figi_controls_1000 \
#    --memory 8000 \
#    --clump ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSqGxE_ldclump.txt \
#    --clump-p1 0.000005 --clump-r2 0.15 --clump-p2 1 \
#    --out   ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSqGxE_ldclump
#
#plink \
#    --bfile /scratch/andreeki/clump/figi_controls_1000 \
#    --memory 8000 \
#    --clump ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSqControl_ldclump.txt \
#    --clump-p1 0.00000005 --clump-r2 0.15 --clump-p2 1 \
#    --out   ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSqControl_ldclump
#
plink \
    --bfile /scratch/andreeki/clump/figi_controls_1000 \
    --memory 8000 \
    --clump ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSqCase_ldclump.txt \
    --clump-p1 0.00000005 --clump-r2 0.15 --clump-p2 1 \
    --out   ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSqCase_ldclump
#
#plink \
#    --bfile /scratch/andreeki/clump/figi_controls_1000 \
#    --memory 8000 \
#    --clump ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSq2df_nogwas_ldclump.txt \
#    --clump-p1 0.00000005 --clump-r2 0.15 --clump-p2 1 \
#    --out   ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSq2df_nogwas_ldclump
#
#plink \
#    --bfile /scratch/andreeki/clump/figi_controls_1000 \
#    --memory 8000 \
#    --clump ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSq3df_nogwas_ldclump.txt \
#    --clump-p1 0.00000005 --clump-r2 0.15 --clump-p2 1 \
#    --out   ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSq3df_nogwas_ldclump