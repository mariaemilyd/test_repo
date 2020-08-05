
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
#   [1] tidyr_1.0.2      purrr_0.3.4      stringr_1.4.0    reshape_0.8.8    diffdf_1.0.4     kableExtra_1.1.0 dplyr_0.8.5     
# [8] strataG_2.4.905  ape_5.3         
# 
# loaded via a namespace (and not attached):
#   [1] colorspace_1.4-1      seqinr_3.6-1          deldir_0.1-25         ellipsis_0.3.0        class_7.3-14         
# [6] spatstat.data_1.4-3   rstudioapi_0.11       farver_2.0.3          gsl_2.1-6             mvtnorm_1.1-0        
# [11] fansi_0.4.1           xml2_1.3.2            codetools_0.2-15      splines_3.5.1         knitr_1.28           
# [16] pegas_0.13            polyclip_1.10-0       rlist_0.4.6.1         ade4_1.7-15           jsonlite_1.6.1       
# [21] swfscMisc_1.3         cluster_2.0.7-1       stabledist_0.7-1      apex_1.0.4            copula_0.999-20      
# [26] shiny_1.4.0.2         readr_1.3.1           compiler_3.5.1        httr_1.4.1            assertthat_0.2.1     
# [31] Matrix_1.2-14         fastmap_1.0.1         cli_2.0.2             later_1.0.0           htmltools_0.4.0      
# [36] tools_3.5.1           igraph_1.2.5          coda_0.19-3           gtable_0.3.0          glue_1.4.0           
# [41] reshape2_1.4.4        maps_3.3.0            gmodels_2.18.1        spatstat_1.63-3       tinytex_0.23         
# [46] fastmatch_1.1-0       Rcpp_1.0.4.6          statnet.common_4.3.0  raster_3.1-5          vctrs_0.2.4          
# [51] spdep_1.1-3           gdata_2.18.0          nlme_3.1-137          xfun_0.14             network_1.16.0       
# [56] rvest_0.3.5           mapdata_2.3.0         mime_0.9              lifecycle_0.2.0       phangorn_2.5.5       
# [61] gtools_3.8.2          goftest_1.2-2         LearnBayes_2.15.1     MASS_7.3-50           scales_1.1.1         
# [66] haplotypes_1.1.2      spatstat.utils_1.17-0 hms_0.5.3             promises_1.1.0        parallel_3.5.1       
# [71] expm_0.999-4          yaml_2.2.1            curl_4.3              ggplot2_3.3.1         rpart_4.1-13         
# [76] stringi_1.4.6         pcaPP_1.9-73          plotrix_3.7-8         e1071_1.7-3           permute_0.9-5        
# [81] boot_1.3-20           spData_0.3.5          rlang_0.4.5           pkgconfig_2.0.3       evaluate_0.14        
# [86] lattice_0.20-35       tensor_1.5            sf_0.9-2              labeling_0.3          tidyselect_1.0.0     
# [91] plyr_1.8.6            magrittr_1.5          R6_2.4.1              ADGofTest_0.3         sna_2.5              
# [96] DBI_1.1.0             pillar_1.4.4          mgcv_1.8-24           units_0.6-6           abind_1.4-5          
# [101] sp_1.4-1              pspline_1.0-18        tibble_3.0.1          crayon_1.3.4          KernSmooth_2.23-15   
# [106] rmarkdown_2.2         adegenet_2.1.2        grid_3.5.1            data.table_1.12.8     vegan_2.5-6          
# [111] digest_0.6.25         classInt_0.4-3        webshot_0.5.2         xtable_1.8-4          numDeriv_2016.8-1.1  
# [116] httpuv_1.5.2          stats4_3.5.1          munsell_0.5.0         viridisLite_0.3.0     quadprog_1.5-8 