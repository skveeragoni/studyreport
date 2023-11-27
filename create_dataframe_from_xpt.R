# Install and load the necessary packages
library(purrr)
library(haven)

# Specify the directory where your XPT files are located
xpt_directory <- "data/TDF_ADaM"

# Get a list of all XPT files in the directory
xpt_files <- list.files(xpt_directory, pattern = "\\.xpt$", full.names = TRUE)

# Use purrr::map to read each XPT file into a data frame
data_list <- set_names(map(xpt_files, read_xpt), tools::file_path_sans_ext(basename(xpt_files)))

# Save the entire list of data frames as an RDS file
saveRDS(data_list, file = "data/adam_datasets.Rds")

# Now, the data_list is saved as an RDS file named "all_datasets.Rds"


