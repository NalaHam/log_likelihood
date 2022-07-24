library(dplyr)

#getting the genes in the tcga nonrepreoductive cancers and their chromosome locations

chrom <- nonrep_cancers[, c(4,5)] #just take gene and chromosome column

chrom <- na.omit(chrom) #remove ones where the chrom is na (optional)


x_chrom_samples <- subset(nonrep_cancers, nonrep_cancers$Chromosome == "chrX")

x_chrom_samples <- x_chrom_samples[, c(2,3,4,5,15)]

length(unique(x_chrom_samples$sample_id)) #5788

chrom.1 <- distinct(chrom, chrom$GeneSymbol, .keep_all = TRUE) #keep only the unique genes and their chromosome

chrom.1 <- rename(chrom.1, Gene = GeneSymbol )#rename gene column

write.csv(chrom.1, file = "gene_chrom.csv") 


gene_mut_count_sex <- merge(gene_mut_count_sex, chrom.1, by = "Gene") #add chromosome to gene in this df

x_chrom <- filter(gene_mut_count_sex, gene_mut_count_sex$Chromosome == "chrX") #get just x chromosome genes 

small_p <- subset(x_chrom, x_chrom$p_value <= 0.05 )


A1BG_df <- subset(gene_mutations, gene_mutations$Gene == "A1BG")
unique(A1BG_df$Project)








