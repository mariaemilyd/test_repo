
setwd("C:/Users/sjoh3862/OneDrive - Nexus365/Oxford Postgrad/Research/arctic-phylogeog")


read_mtdna(meta_indir = "", seqs_indir = "./1_raw_genetic_data_(master)/", seqs_infile = "R_tarandus_Yannic_2014_mt_indiv.fasta")

metadata <- readGenData(file = "./9.1_gtype_files/R.tarandus.Yannic.2014.122haps.csv")
seqs <- read.fasta(file = "./9.1_gtype_files/R.tarandus.Yannic.2014.122haps.D-loop.fasta")

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
