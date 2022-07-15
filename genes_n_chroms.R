library(dplyr)

#getting the genes in the tcga nonrepreoductive cancers and their chromosome locations

chrom <- nonrep_cancers[, c(4,5)] #just take gene and chromosome column

chrom <- na.omit(chrom) #remove ones where the chrom is na (optional)

chrom.1 <- distinct(chrom, chrom$GeneSymbol, .keep_all = TRUE) #keep only the unique genes and their chromosome

chrom.1 <- rename(chrom.1, Gene = GeneSymbol )#rename gene column

write.csv(chrom.1, file = "gene_chrom.csv") 


gene_mut_count_sex <- merge(gene_mut_count_sex, chrom.1, by = "Gene") #add chromosome to gene in this df

x_chrom <- filter(gene_mut_count_sex, gene_mut_count_sex$Chromosome == "chrX") #get just x chromosome genes 





