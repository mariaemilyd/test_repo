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