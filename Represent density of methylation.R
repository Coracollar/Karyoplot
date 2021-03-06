library(GenomicRanges)
library(dplyr)

#FUNCTIONS

creategranges<-function(query){
  query$genoStart<-as.numeric(paste(query$genoStart))
  query$genoEnd<-as.numeric(paste(query$genoEnd))
  GR_repeats <- GRanges(seqnames = query$genoName,
                        ranges = IRanges(start = query$genoStart, end=query$genoEnd ))
}
  



dmls_gr<-GRanges(seqnames = subject$chr,
                   ranges = IRanges(start = subject$pos, subject$pos))  
GR_IAP<-creategranges(IAP)

overlapingIAP<-dmlTest[queryHits(findOverlaps(GR_IAP, gr_dml, ignore.strand=TRUE)),]
overlapingIAP<-distinct(overlapingIAP)

#density in Y meth frec in X. I want to invet axix don't know how
represent<-function(overlapdata){
mydf<-data.frame(sample=factor(rep(c("Control", "CORT"), each=nrow(overlapdata))), methylationfrec=c(overlapdata$mu1, overlapdata$mu2))
ggplot(mydf, aes(x=methylationfrec, color=sample)) +
  geom_density()
  }
  
 represent(overlapingdata)
