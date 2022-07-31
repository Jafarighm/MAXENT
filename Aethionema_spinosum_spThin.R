library(spThin)

pseudo <- read.csv(file.choose(),header=T)

head(pseudo)
plot(pseudo$longitude, pseudo$latitude)

thinned_dataset_full <-
  thin( loc.data = pseudo, 
        lat.col = "latitude", long.col = "longitude", 
        spec.col = "Species", 
        thin.par = 1, reps = 100, 
        locs.thinned.list.return = TRUE, 
        write.files = TRUE, 
        max.files = 1, 
        out.dir = "M:/Research Center/Aethionema/Aethionema_spinosum/Aethionema_spinosum_Modelling/Code", out.base = "Aethionema_spinosum", 
        write.log.file = TRUE,
        log.file = "pseudo_thinned_full_log_file.txt" )
        
View(thinned_dataset_full[[1]])
points(thinned_dataset_full[[1]]$Longitude, thinned_dataset_full[[1]]$Latitude, col = "red", pch = 20)
