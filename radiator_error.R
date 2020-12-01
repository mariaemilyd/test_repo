library(strataG) # v 2.4.9.10
library(radiator) # v 1.1.7

msat <- read.csv("R.tarandus.kluetsch.2017.msat.gtype.csv")

gtype <- df2gtypes(
  msat,
  ploidy = 2,
  id.col = 1,
  strata.col = 2,
  loc.col = 3
)

genomic_converter(gtype, strata = NULL, output = "structure", filename = "my_str_file.str")

# Execution date@time: 20201201@0938
# Folder created: 01_radiator_genomic_converter_20201106@0938
# Function call and arguments stored in: radiator_genomic_converter_args_20201106@0938.tsv
# Filters parameters file generated: filters_parameters_20201106@0938.tsv
# 
# Importing data
# 
# Error: Can't rename columns that don't exist.
# x Column `ids` doesn't exist.
# Run `rlang::last_error()` to see where the error occurred.
# 
# Computation time, overall: 0 sec
# 
# Computation time, overall: 0 sec
# ######################### completed genomic_converter #######

# > sessionInfo()
# R version 4.0.2 (2020-06-22)
# Platform: x86_64-w64-mingw32/x64 (64-bit)
# Running under: Windows 10 x64 (build 14393)
# 
# Matrix products: default
# 
# locale:
#   [1] LC_COLLATE=English_United Kingdom.1252  LC_CTYPE=English_United Kingdom.1252   
# [3] LC_MONETARY=English_United Kingdom.1252 LC_NUMERIC=C                           
# [5] LC_TIME=English_United Kingdom.1252    
# 
# attached base packages:
#   [1] stats     graphics  grDevices utils     datasets  methods   base     
# 
# other attached packages:
#   [1] radiator_1.1.7  strataG_2.4.910
# 
# loaded via a namespace (and not attached):
#   [1] tidyr_1.1.1        splines_4.0.2      gtools_3.8.2       assertthat_0.2.1   shiny_1.5.0       
# [6] expm_0.999-5       sp_1.4-2           yaml_2.2.1         LearnBayes_2.15.1  progress_1.2.2    
# [11] pillar_1.4.6       lattice_0.20-41    glue_1.4.1         quadprog_1.5-8     phangorn_2.5.5    
# [16] digest_0.6.25      promises_1.1.1     colorspace_1.4-1   htmltools_0.5.0    httpuv_1.5.4      
# [21] Matrix_1.2-18      plyr_1.8.6         pkgconfig_2.0.3    raster_3.4-5       gmodels_2.18.1    
# [26] purrr_0.3.4        xtable_1.8-4       scales_1.1.1       gdata_2.18.0       later_1.1.0.1     
# [31] tibble_3.0.3       mgcv_1.8-31        generics_0.0.2     ggplot2_3.3.2      ellipsis_0.3.1    
# [36] apex_1.0.4         cli_2.0.2          magrittr_1.5       crayon_1.3.4       mime_0.9          
# [41] deldir_0.1-28      evaluate_0.14      fansi_0.4.1        nlme_3.1-148       MASS_7.3-51.6     
# [46] class_7.3-17       vegan_2.5-6        data.table_1.13.2  tools_4.0.2        prettyunits_1.1.1 
# [51] hms_0.5.3          lifecycle_0.2.0    stringr_1.4.0      munsell_0.5.0      cluster_2.1.0     
# [56] ade4_1.7-16        compiler_4.0.2     e1071_1.7-3        rlang_0.4.7        classInt_0.4-3    
# [61] units_0.6-7        grid_4.0.2         rstudioapi_0.11    igraph_1.2.5       rmarkdown_2.3     
# [66] boot_1.3-25        gtable_0.3.0       codetools_0.2-16   DBI_1.1.0          reshape2_1.4.4    
# [71] R6_2.4.1           knitr_1.29         dplyr_1.0.2        fastmap_1.0.1      seqinr_3.6-1      
# [76] fastmatch_1.1-0    adegenet_2.1.3     spdep_1.1-5        readr_1.3.1        permute_0.9-5     
# [81] KernSmooth_2.23-17 ape_5.4-1          stringi_1.4.6      parallel_4.0.2     Rcpp_1.0.5        
# [86] vctrs_0.3.2        sf_0.9-6           spData_0.3.8       tidyselect_1.1.0   xfun_0.16         
# [91] coda_0.19-3    