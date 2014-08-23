pollutantmean <- function(directory, pollutant, id = 1:332){
    ## 'directory' is a character vector of length 1 indicating the location of the CSV files
    
    
    
    ## 'pollutant' is a character vector of length 1 indicating
    ## the name of the pollutant for which we will calculate the
    ## mean; either "sulfate" or "nitrate".
#     print(pollutant);
    
    ## 'id' is an integer vector indicating the monitor ID numbers to be used
    for (fileName in id)
    {
        if (fileName < 10) {
            fileName = paste("00", fileName, sep="")            
        }
        else if  (fileName < 100) {
            fileName = paste("0", fileName, sep="")            
        }
        fileName = paste(fileName, ".csv", sep="")
        fileName = paste(directory, fileName, sep="\\");
#         print(fileName);
    
        
        # if the merged dataset doesn't exist, create it
        if (!exists("dataset")){
            dataset <- read.table(fileName, header=TRUE, sep=",")
        }
        else if (exists("dataset")){
            # if the merged dataset does exist, append to it 
            temp_dataset <-read.table(fileName, header=TRUE, sep=",")
            dataset<-rbind(dataset, temp_dataset)
            rm(temp_dataset)
        }    
            
    }
    
    ## Return the mean of the pollutant across all monitors list 
    ## in the 'id' vector (ignoring NA values)
    if (pollutant == "sulfate") {
        dsPollutant <- (dataset$sulfate)        
        }
    else if (pollutant == "nitrate") {
            dsPollutant <- (dataset$nitrate)                
        }
    
        
    dsPollutant <- dsPollutant[!is.na(dsPollutant)]
    print(nrow(dsPollutant))
    ## print(dsPollutant);
    meanPollutant <- mean(dsPollutant[!is.na(dsPollutant)])
    meanPollutant
    format(meanPollutant, digits=4)
}