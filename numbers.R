

#total people on chrX
length(unique(x_chrom_samples$sample_id)) #5788, number of total people in the sample of X chromosome mutations

#total females on chrX
female_x <- subset(x_chrom_samples, x_chrom_samples$gender == "female")

length(unique(female_x$sample_id)) #2430, number of females in the sample of X chromosome mutations

#total males on chrX
male_x <- subset(x_chrom_samples, x_chrom_samples$gender == "male")

length(unique(male_x$sample_id)) #3304, number of males in the sample of X chromosome mutations

F <- 2430
M <- 3304

r = sum(x_chrom$female)/sum(x_chrom$male) #F/M ratio of coding mutations across x chromosome



#number of total people in the whole study 
length(unique(gene_mutations$sample_id)) 



