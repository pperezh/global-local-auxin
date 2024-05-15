#### Automatic upload of Data - excluding lobes-table.txt ####
directoriesAll <- list.dirs(full.names = TRUE ,recursive = FALSE)
directoriesOutput <-grep("output*",directoriesAll, value=TRUE)            #  This line is to remove "output*" folders. if present
directories <- setdiff(directoriesAll,directoriesOutput)
directories <- str_sub(directories,3)                           # This is to remove "./" from each folder name
Newcolumn <- str_split(directories, "_",simplify=TRUE)

longlist <- list.files(path = paste(directories[1], "results", sep ="/"), pattern = "*-table.txt", full.names = TRUE)
shortlist <- list.files(path = paste(directories[1], "results", sep ="/"), pattern = "*-lobe-table.txt", full.names = TRUE)
filelist <- setdiff(longlist,shortlist) 
mydataframe <- read.table(file = filelist[1], header = TRUE, sep = "\t")
mydataframe$Genotype <- Newcolumn [1,1]                         ### Change to Time| Position | Genotype, etc,  if needed
mydataframe$Treatment <- Newcolumn [1,2]                        ##### Change to Time| Position | Genotype, etc,  if needed
#df <- read.table(filelist[1], header=T, sep = "\t")
#df$Genotype <- NA
#df$Treatment <- NA
#df$Genotype <- Newcolumn [1,1]                                  ### Change accordingly
#df$Treatment <- Newcolumn [1,2]


for (i in 1:length(directories))
{
  #filelist <- list.files(path = paste(getwd(),directories[i],"results", sep="/"),pattern = "*-table.txt", full.names = TRUE)
  longlist <- list.files(path = paste(directories[i], "results", sep ="/"), pattern = "*-table.txt", full.names = TRUE)
  shortlist <- list.files(path = paste(directories[i], "results", sep ="/"), pattern = "*-lobe-table.txt", full.names = TRUE)
  filelist <- setdiff(longlist,shortlist)
  
  for (f in 1:length(filelist))
  {
    if(i == 1 && f == 1) next
    #df <- map_df (filelist, read.table, header = T)
    df <- read.table(filelist[f], header=T, sep = "\t")
    df$Genotype <- Newcolumn [i,1]                             ### Change accordingly
    df$Treatment <- Newcolumn [i,2]                            #### Change accordingly
    mydataframe <- rbind(mydataframe,df)
  }
}

mydataframe["Lobes per Area*1000"] <- mydataframe$LobeCount/mydataframe$Area_.microns.2.*1000
mydataframe["Lobes per Perimeter*1000"] <- mydataframe$LobeCount/mydataframe$Perimeter_.microns.*1000
mydataframe["MR per Area*1000"] <- mydataframe$MarginRoughness/mydataframe$Area_.microns.2.*1000
mydataframe["MR per Perimeter*1000"] <- mydataframe$MarginRoughness/mydataframe$Perimeter_.microns.*1000
mydataframe$Treatment <- as.factor(mydataframe$Treatment)  
mydataframe$Genotype <- as.factor(mydataframe$Genotype) 



