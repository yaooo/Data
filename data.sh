# Data
# Variants: Example VCF, from 1000 genomes FTP site 
cd /mnt/app_hdd/data

git clone https://github.com/yaooo/Data.git
cd Data

# variants data
mkdir Variants
cd Variants
wget ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/phase1/analysis_results/functional_annotation/annotated_vcfs/ALL.wgs.integrated_phase1_release_v3_coding_annotation.20101123.snps_indels.sites.vcf.gz
wget ftp://ftp-trace.ncbi.nih.gov/1000genomes/ftp/release/20130502/ALL.chr22.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz

tar xvzf ALL.wgs.integrated_phase1_release_v3_coding_annotation.20101123.snps_indels.sites.vcf.gz
tar xvzf ALL.chr22.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz

head -n 10000 ALL.chr22.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf > sub_chr22.vcf
cd ..

# map 
mkdir Map
wget ftp://ftp.ensembl.org/pub/grch37/release-100/gtf/homo_sapiens/Homo_sapiens.GRCh37.87.chr.gtf.gz
tar xvzf Homo_sapiens.GRCh37.87.chr.gtf.gz
cd -

cd focalScore
tar xvzf gdc_download_20200624_195516.160978.tar.gz
cd 9afe6c9d-ed2f-402a-b043-77f042c4e7fc
cp annotations.txt ../
cp BRCA.focal_score_by_genes.txt ../
cd ..
rm -rf 9afe6c9d-ed2f-402a-b043-77f042c4e7fc/