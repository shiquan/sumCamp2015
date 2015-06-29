#!/usr/bin/perl
# this script is used to generate initial config file for each sample
# Plz mail me if you have any further question, shiquan(AT)genomics.cn

use strict;
use warnings;
use FindBin qw($Bin);

my $programs = "$Bin/bin";
my $rawdata = "$Bin/rawdata";
my $config = "$Bin/scripts";
my $sample_list = "$rawdata/sample_list.txt";
my $ref = "$Bin/database/hg19.fasta";

mkdir $config unless -d $config;

open SAM,"$sample_list" or die "sample list is empty!";
while (<SAM>) {
  chomp;
  my ($sample, $fq1, $fq2) = split /\t/;
  my $dir = "$config/$sample";
  mkdir $dir unless -d $dir;
  open AL,">$dir/01.$sample.alignment.sh" or die;
  print AL "#!/bin/sh\n";
  print AL "$programs/bwa mem $ref $rawdata/$fq1 $rawdata/$fq2 | $programs/samtools view -Sb - | $programs/samtools sort - $sample.sorted\n";
  close AL;
  open AN,">$dir/02.$sample.call.sh" or die;
  print AN "#!/bin/sh\n";
  print AN "$programs/samtools mpileup -uf $ref $sample.sorted.bam | $programs/bcftools call -cv| $programs/bcftools query -f  '[\%CHROM\\t\%POS\\t\%REF\\t\%ALT[\\t\%GT]\\n' > $sample.vars.tsv\n";
  close AN;
}
close SAM;
