## code to prepare `DATASET` dataset goes here
nyc_squirrels_reduced <- read.csv("data-raw/nyc_squirrels_reduced.csv") |> dplyr::sample_n(25)


usethis::use_data(nyc_squirrels_reduced, overwrite = TRUE)


checkhelper::use_data_doc("nyc_squirrels_reduced")
rstudioapi::navigateToFile("R/doc_nyc_squirrels_reduced.R")
attachment::att_amend_desc()
