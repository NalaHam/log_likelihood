library(dplyr)
library(tidyverse)
library(tidyr)
#prep
length(unique(x_chrom_samples$sample_id)) #5788 total people in X chromosome dataset

male_x_chrom <- subset(x_chrom_samples, x_chrom_samples$gender == "male") # males have mutations in this df

length(unique(male_x_chrom$sample_id)) #3304 total male people in X chromosome dataset

length(unique(female_x$sample_id)) #2430 total females in X chromosome dataset


#specific gene
gene <- subset(gene_mutations, gene_mutations$Gene == "ABCB7") #use genes in x_chrom df

gene <- gene %>% drop_na(gender)

length(unique(gene$sample_id))#57 people. The number of rows this df has is the equal to the number of different people with a mutation 

male_gene <- subset(gene, gene$gender == "male") #21 males have mutations in this df

female_gene <- subset(gene, gene$gender == "female") #36 females have mutations in this df


#variables 
M <- 3304 #number of total male people in X-chromosome dataset
m <- length(male_gene$sample_id) #21 males 

F <- 2430 #number of total female people in X-chromosome dataset
f <- length(female_gene$sample_id) #36

r <- sum(x_chrom$female)/sum(x_chrom$male) #1.23

q <- function(x) (x^(m) * (1-x)^(M-m) * (r*x)^(f) * (1-(r*x))^(F-f)) #where x is the probability of male being mutated

L0 <- optimize(q, lower = 0, upper = 1, maximum = TRUE)

g <- L0$objective #0, the maximum of the null equation. 

t <- (m/M)^(m) * ( (M-m)/M )^(M-m) * (f/F)^(f) * ( (F-f)/F ) ^(F-f)

2 * log(t/g)









