library(raster)
library(maps)      
library(mapdata)
library(rgdal)
library(dismo)
library(rJava)
library(maptools)


spinosum<-read.csv(file.choose(),header=T)
files <- list.files(choose.dir(), pattern="asc", full.names=TRUE )
predictor <- stack(files)
#### projection of bioclim layers and point layers
coordinates(spinosum) <- ~longitude+latitude
projection(spinosum) <- CRS("+proj=longlat +ellps=WGS84 +datum=WGS84")
projection(predictor) <- CRS("+proj=longlat +ellps=WGS84 +datum=WGS84")
#### extract values
presvals <- extract(predictor, spinosum)
#### Correlation and delition
corr.env<-cor(presvals)

write.csv(corr.env, "M:/Research Center/Aethionema/Aethionema_spinosum/Aethionema_spinosum_Modelling/Code/correlation.csv")


