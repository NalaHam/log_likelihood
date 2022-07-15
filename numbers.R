
sum(x_chrom$female) #27817
sum(x_chrom$male) #22561
27817+22561 #50378

27817 / 50378 #0.5521656, female prob 

22561 / 50378 #0.4478344, male prob

r = sum(x_chrom$female)/sum(x_chrom$male) #F/M ratio of coding mutations across x chromosome

length(unique(gene_mutations$sample_id)) #number of total people 

samples <- distinct(gene_mutations, gene_mutations$sample_id, .keep_all = TRUE)

males <- filter(samples, gender == "male") #4059 males

7009-4059 #2950 females


