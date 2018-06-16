main <- function(){
args <- commandArgs(trailingOnly = TRUE)
action <- args[1]
filenames <- args[-1]
for(filename in filenames){
process(filename, action)
}
}



process <- function(filename, action){

dat <- read.csv(filename, header = FALSE)
if(action == "--min")
	values <- apply(dat, 1, min)
else if(action == "--max")
	values <- apply(dat, 1, max)
else if(action == "--mean")
	values <- apply(dat, 1, mean)
	
print(filename)
cat(values, sep = "\n")

}


main()
