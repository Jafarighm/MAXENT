library(raster)
getwd()
wd <- getwd()

bio1 <- raster("wc2.1_30s_bio_1.tif")
new.extent <- extent(45,90, 25, 47)
bio1_c <- crop(x = bio1, y = new.extent)

r <- aggregate(bio1_c, fact=2)  ## By default aggregates using mean, but see fun=
plot(r)


writeRaster(bio1_c, "M:/Research Center/Aethionema/Aethionema_spinosum/Aethionema_spinosum_Modelling/Layers/Historical/30_seconds/wc2.1_30s_bio_2/outfile.asc", format="ascii")







