corr <- function(directory, threshold = 0){
    ## 'directory' is a character vector of length 1 indicating the location of the CSV files
    
    ## initialize a blank data frame
    df = data.frame(corr_sulfate_nitrate=numeric())
    
    filenames <- list.files(directory, pattern="*.csv", full.names=TRUE)
    for (i in 1:length(filenames)){
        file_dataset <- read.table(filenames[i], header=TRUE, sep=",")
         
        ## 'threshold' is a numeric vector of length 1 indicating the
        ## number of completely observed observations (on all
        ## variables) required to compute the correlation between
        ## nitrate and sulfate; the default is 0 
        if(sum(complete.cases(file_dataset)) >= threshold) {
            
            file_dataset <- file_dataset[complete.cases(file_dataset),]
            
            keepcolumns <- c("sulfate","nitrate")
            file_dataset = file_dataset[,(names(file_dataset) %in% keepcolumns)]
            file_dataset

            corr_sulfate_nitrate <- cor(file_dataset$sulfate, file_dataset$nitrate)
            df<-rbind(df, corr_sulfate_nitrate)
            
        }
                
 
    }
    
    ## Return a numeric vector of correlations
    avector <- df[,1]
    
}
