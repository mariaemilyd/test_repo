
# Maria Dance
# 2020-08-03
# Error message with strataG::nucleotideDivergence

library(strataG)

metadata <- readGenData(file = "R.tarandus.Yannic.2014.122haps.csv")
seqs <- read.fasta(file = "R.tarandus.Yannic.2014.122haps.D-loop.fasta")

mt_haps <- df2gtypes(x = metadata, ploidy = 1, id.col = 1, strata.col = 2, loc.col = 3, sequences = seqs)

# Calculate Nei's dA between strata, and distributions of between- and within-strata nucleotide divergence (sequence distance).
# NB THIS FUNCTION DOESN'T WORK
div <- strataG::nucleotideDivergence(mt_haps)

# Error in utils::combn(.data$allele, 2) : n < m

# From line: haps <- utils::combn(.data$allele, 2) in strataG::nucleotideDivergence

length(mt_haps@data$allele)
# 345

length(unique(mt_haps@data$allele))
# 122
