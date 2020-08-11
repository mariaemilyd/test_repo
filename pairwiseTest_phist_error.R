# strataG::pairwiseTest phist error

# Maria Dance
# Created 2020/08/10

library(strataG)
# Load data
metadata <- readGenData(file = "R.tarandus.Yannic.2014.122haps.csv")
seqs <- read.fasta(file = "R.tarandus.Yannic.2014.122haps.D-loop.fasta")
# Make gtype
mt_haps <- df2gtypes(x = metadata, ploidy = 1, id.col = 1, strata.col = 2, loc.col = 3, sequences = seqs)

pair_phist <- pairwiseTest(
  dloop.g,
  nrep = 10,
  stats = "phist",
  keep.null = FALSE,
  quietly = FALSE,
  max.cores = 3
)
# Error in statPhist_C(input$loci, input$strata, input$hap.dist) : Not a matrix.


# It works with the template gtypes

data("dloop.g", package = "strataG")

pair <- pairwiseTest(
  dloop.g,
  nrep = 10,
  stats = "phist",
  keep.null = FALSE,
  quietly = FALSE,
  max.cores = 3
)

# But fst stat in same function works:

pair_fst <- pairwiseTest(
  mt_122haps,
  nrep = 10,
  stats = "fst",
  keep.null = FALSE,
  quietly = FALSE,
  max.cores = 3
)

# Overall phist also works using statPhist() and overallTest():
phi <- statPhist(
  mt_122haps,
  nrep = 10,
  keep.null = FALSE,
  model = "K80",
  gamma = FALSE,
  pairwise.deletion = TRUE
)
phi$result


overall <- overallTest(
  mt_122haps,
  nrep = 10,
  stats = "phist",
  keep.null = FALSE,
  quietly = FALSE,
  max.cores = 3
)
overall_phist <- as.data.frame(overall$result)

sessionInfo()
# R version 3.5.1 (2018-07-02)
# Platform: x86_64-w64-mingw32/x64 (64-bit)
# Running under: Windows 10 x64 (build 14393)
# 
# Matrix products: default
# 
# locale:
#   [1] LC_COLLATE=English_United Kingdom.1252  LC_CTYPE=English_United Kingdom.1252    LC_MONETARY=English_United Kingdom.1252
# [4] LC_NUMERIC=C                            LC_TIME=English_United Kingdom.1252    
# 
# attached base packages:
#   [1] stats     graphics  grDevices utils     datasets  methods   base     
# 
# other attached packages:
#   [1] strataG_2.4.905  tidyr_1.0.2      purrr_0.3.4      stringr_1.4.0    reshape_0.8.8    dplyr_0.8.5      haplotypes_1.1.2
# [8] pegas_0.13       adegenet_2.1.2   ade4_1.7-15      ape_5.3         
# 
# loaded via a namespace (and not attached):
#   [1] nlme_3.1-137          sf_0.9-2              gmodels_2.18.1        tools_3.5.1           R6_2.4.1             
# [6] vegan_2.5-6           rpart_4.1-13          KernSmooth_2.23-15    spData_0.3.5          DBI_1.1.0            
# [11] mgcv_1.8-24           colorspace_1.4-1      permute_0.9-5         raster_3.1-5          sp_1.4-1             
# [16] tidyselect_1.0.0      phangorn_2.5.5        bit_1.1-15.2          compiler_3.5.1        cli_2.0.2            
# [21] expm_0.999-4          network_1.16.0        scales_1.1.1          spatstat.data_1.4-3   classInt_0.4-3       
# [26] quadprog_1.5-8        goftest_1.2-2         spatstat_1.63-3       digest_0.6.25         spatstat.utils_1.17-0
# [31] pkgconfig_2.0.3       htmltools_0.4.0       plotrix_3.7-8         maps_3.3.0            fastmap_1.0.1        
# [36] rlang_0.4.5           rstudioapi_0.11       shiny_1.4.0.2         statnet.common_4.3.0  gtools_3.8.2         
# [41] spdep_1.1-3           magrittr_1.5          apex_1.0.4            Matrix_1.2-14         fansi_0.4.1          
# [46] Rcpp_1.0.4.6          munsell_0.5.0         abind_1.4-5           lifecycle_0.2.0       stringi_1.4.6        
# [51] yaml_2.2.1            MASS_7.3-50           PopGenome_2.7.5       plyr_1.8.6            grid_3.5.1           
# [56] parallel_3.5.1        gdata_2.18.0          promises_1.1.0        crayon_1.3.4          deldir_0.1-25        
# [61] lattice_0.20-35       splines_3.5.1         tensor_1.5            sna_2.5               knitr_1.28           
# [66] pillar_1.4.4          igraph_1.2.5          swfscMisc_1.3         boot_1.3-20           seqinr_3.6-1         
# [71] reshape2_1.4.4        codetools_0.2-15      fastmatch_1.1-0       LearnBayes_2.15.1     glue_1.4.0           
# [76] mapdata_2.3.0         data.table_1.12.8     vctrs_0.2.4           httpuv_1.5.2          polyclip_1.10-0      
# [81] gtable_0.3.0          assertthat_0.2.1      ggplot2_3.3.1         xfun_0.14             mime_0.9             
# [86] xtable_1.8-4          ff_2.2-14.2           e1071_1.7-3           coda_0.19-3           later_1.0.0          
# [91] class_7.3-14          tibble_3.0.1          tinytex_0.23          units_0.6-6           cluster_2.0.7-1      
# [96] ellipsis_0.3.0    


