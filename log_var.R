
p.male <- x_chrom$male_ratio[x_chrom$Gene=="ABCB7"]
p.female <- x_chrom$female_ratio[x_chrom$Gene=="ABCB7"]

M <- 4059
m <- x_chrom$male[x_chrom$Gene=="ABCB7"]

F <- 2950
f <- x_chrom$female[x_chrom$Gene=="ABCB7"]

r <- f/m

L0 <- ((p.male)^m)*((1-p.male)^(M-m))*((r*p.male)^f)*((1-(r*p.male))^(F-f))





