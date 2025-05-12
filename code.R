weightmedian <- function(directory, day) {
  files_list <- list.files(directory, full.names = TRUE)
  file_list_length <- length(files_list)
  dat <- data.frame()
  for(i in 1:file_list_length) {
    dat <- rbind(dat, read.csv(files_list[i]))
  }
  day_weight <- dat[dat$Day == day, "Weight"]
  median(day_weight, na.rm = TRUE)
}