#we can run this comman by running Rscript count-stdin.R < data/small-01.csv or by cat data/small-01.csv | Rscript count-stdin.R

lines <- readLines(con = file("stdin"))
count <- length(lines)
cat("lines in the standatd input: ")
cat(count, sep = "\n")

