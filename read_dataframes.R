# To load the data back into R in a new session
loaded_data_list <- readRDS("data/adam_datasets.Rds")
list2env(loaded_data_list)