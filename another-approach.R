# Another - better approach to handle joining data in one data frame

dayweightmedian <- function(directory, day){
  files_list <- list.files(directory, full.names = T)
  tmp <- lapply(files_list, read.csv)
  output <- do.call(rbind, tmp)
  dayweigths <- output[output$Day == day, "Weight"]
  median(dayweigths, na.rm = T)
}
