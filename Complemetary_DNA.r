#DNA Complementary Strand Project

DNAseq <-function(x){
  basepair=c("A", "T", "G", "C")
  abc<-unlist(strsplit(toupper(x), NULL))
  paste(sapply(abc, function(DNAseq){
    if(DNAseq=="A") stringss<-"T"
    if(DNAseq=="T") stringss<-"A"
    if(DNAseq=="C") stringss<-"G"
    if(DNAseq=="G") stringss<-"C"
    if(!DNAseq%in%basepair) stringss<-"N"
  return(stringss)
  }))
}

DNAseq("agtgcgctcgca")
