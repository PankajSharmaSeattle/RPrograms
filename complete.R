complete <- function(directory, id = 1:332){
    ## 'directory' is a character vector of length 1 indicating the location of the CSV files
    df = data.frame(id=integer(), nobs=integer())
    
    ## 'id' is an integer vector indicating the monitor ID numbers to be used
    for (fileName in id)
    {
        nobs <- c(0)
        dfFile = data.frame(fileName, nobs)
        
        if (fileName < 10) {
            fileName = paste("00", fileName, sep="")            
        }
        else if  (fileName < 100) {
            fileName = paste("0", fileName, sep="")            
        }
        fileName = paste(fileName, ".csv", sep="")
        fileName = paste(directory, fileName, sep="\\")
        
        dataset <- read.table(fileName, header=TRUE, sep=",")
        
        ## Assign number of complete cases to nobs    
        dfFile$nobs[1] <- sum(complete.cases(dataset))
        
        ##print(dfFile);

        df = rbind(df, dfFile)
            
    }
    
    ## Return a data frame of the form:
    ## id nobs
    ## 1  117
    ## 2  1041
    ## ...
    ## where 'id' is the monitor ID number and 'nobs' is the
    ## number of complete cases

#     names(df)[1] <- "id"
    df
    ##print(names(df));
    ##print(str(df));
}