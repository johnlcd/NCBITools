# library packages
library(stringr)
library(GEOquery)


# start time
fdt <- function(start_time, end_time) {
	start_time <- as.POSIXct(start_time)
	end_time <- as.POSIXct(end_time)
	dt <- difftime(end_time, start_time, units="secs")
	# Since you only want the H:M:S, we can ignore the date...
	# but you have to be careful about time-zone issues
	f1 <- as.numeric(format(.POSIXct(dt,tz="GMT"), "%d")) - 1
	fd <- paste(f1,"days,",format(.POSIXct(dt,tz="GMT"), "%H:%M:%S"))
	print(fd)
}

time1 <- Sys.time()
print(">>> Start time:")
print(time1)


# set arguments
args <- commandArgs(T)
geo <- args[2]
gfiles <- 
if (length(args) == 3) {
	out_dir <- args[3]
}

if (length(args) == 2) {
	if (args[1] == "--file") {
		getGEO(geo, AnnotGPL = FALSE, getGPL = TRUE)
	} else if (args[1] == "--supp") {
		gfiles <- getGEOSuppFiles(geo, fetch_files = F)$fname
		print(">>> File list:")
		print(gfiles)
		getGEOSuppFiles(geo)
	}
} else if (length(args) == 3) {
	if (args[1] == "--file") {
		getGEO(geo, destdir = out_dir, AnnotGPL = FALSE, getGPL = TRUE)
	} else if (args[1] == "--supp") {
		gfiles <- getGEOSuppFiles(geo, fetch_files = F)$fname
		print(">>> File list:")
		print(gfiles)
		getGEOSuppFiles(geo, baseDir = out_dir)
	}	
}


# running time
time2 <- Sys.time()
print(">>> End time:")
print(time2)
print('>>> Running time:')
fdt(time1, time2)


### END

