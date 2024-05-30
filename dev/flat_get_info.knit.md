---
title: "flat_first.Rmd empty"
output: html_document
editor_options: 
  chunk_output_type: console
---



<!--
 You need to run the 'description' chunk in the '0-dev_history.Rmd' file before continuing your code there.
-->


```r
# Load already included functions if relevant
pkgload::load_all(export_all = FALSE)
```

```
## ℹ Loading squirrels
```


# Get a message with a number of rows

You can get a message with the number of rows in a data frame of interest with `get_df_nrows()`.



```r
data <- mtcars

message(glue("The dataset id composed of {nrow(data)} rows"))
```

```
## The dataset id composed of 32 rows
```

    

```r
#' To get a message with the number of rows in a data frame of interest with `get_df_nrows()`.
#' 
#' @param data dataframe The dataset to be used
#' 
#' @importFrom glue glue
#' 
#' @return numeric (the number of rows)  and a message 
#' @export
get_df_nrows <- function(data){
  
  nrow_data <- nrow(data)
  
  message(glue("The dataset is composed of {nrow_data} rows"))

  return(nrow_data)
}
```
  

```r
get_df_nrows(data = iris)
```

```
## The dataset is composed of 150 rows
```

```
## [1] 150
```

```r
get_df_nrows(data = mtcars)
```

```
## The dataset is composed of 32 rows
```

```
## [1] 32
```
  

```r
test_that("get_df_nrows works", {
  expect_message(
    object = get_df_nrows(data = mtcars),
    regexp = "The dataset is composed of 32 rows"
  )
})
```

```
## Test passed 🎉
```
  



```r
# Run but keep eval=FALSE to avoid infinite loop
# Execute in the console directly
fusen::inflate(flat_file = "dev/flat_get_info.Rmd", vignette_name = "Get info about the dataset")
```
