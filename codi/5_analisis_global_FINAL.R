#--------------------------------------------------------------------------------------------------#
# 17.10.2021  #
#--------------------------------------------------------------------------------------------------#


###################################################################
########################  MOSTRA  #################################
###################################################################

#require(devtools)
#devtools::install_github("benjaminrich/table1")



#Adjunto el Excel, 
#he cambiado el nombre del Excel para evitar confusiones,  
#he reducido el numero de agrupadores,  están todos los que habían antes en el AGR1
#Mas importante, 
#el criterio de inclusion para el estudio de Carlos esta en agrupador DM2_inclusion 
#( diagnostico y/o tratamiento antidiabético) falta solo glicada HbA1c>7.5%
#Nuevo proyecto nuevo orden





#--------------------------------------------------------------------------------------------------#
#                           2018                                                                   #
#--------------------------------------------------------------------------------------------------#
#---------------------------- LECTURA1 ------------------------------------------------------------# 
library("dplyr")
rm(list=ls())
gc()
mostra=T
dir_dades_desti="dades" 
dir_dades_origen="../../DADES/EPIPEU_CAT3/dades" 
if (mostra) {
  dir_dades_origen="../../DADES/EPIPEU_CAT3/dades/mostra"
  dir_dades_desti="dades/mostra" }

#--------------------------------------------------------------------------------------------------# 
rmarkdown::render(input="./codi/1_lectura_epipeu_PART1.Rmd",
                  output_file=paste0(here::here("outputs/Informe_Lectura1_FinalDM2_Juny_"),Sys.Date()),
                  params = list(dir_dades_desti=dir_dades_desti ,dir_dades_origen=dir_dades_origen))
#--------------------------------------------------------------------------------------------------#
#---------------------------- LECTURA2 ------------------------------------------------------------# 
library("dplyr")
rm(list=ls())
gc()
mostra=T
dir_dades_desti="dades" 
dir_dades_origen="../../DADES/EPIPEU_CAT3/dades" 
if (mostra) {
  dir_dades_origen="../../DADES/EPIPEU_CAT3/dades/mostra"
  dir_dades_desti="dades/mostra" }
#--------------------------------------------------------------------------------------------------#
rmarkdown::render(input="./codi/1_lectura_epipeu_PART2.Rmd",
                  output_file=paste0(here::here("outputs/Informe_Lectura2_FinalDM2_Juny_"),Sys.Date()),
                  params = list(dir_dades_desti=dir_dades_desti ,dir_dades_origen=dir_dades_origen))

#--------------------------------------------------------------------------------------------------#
#---------------------------  PREPARACIO ----------------------------------------------------------#
library("dplyr")
rm(list=ls())
gc()
mostra=T
dir_dades_desti="dades" 
dir_dades_origen="../../DADES/EPIPEU_CAT3/dades" 
if (mostra) {
  dir_dades_origen="../../DADES/EPIPEU_CAT3/dades/mostra"
  dir_dades_desti="dades/mostra" }
#--------------------------------------------------------------------------------------------------#
ANY="20181231"
#--------------------------------------------------------------------------------------------------#
rmarkdown::render(input="./codi/2_preparacio_epipeu_VER2.Rmd",
                  output_file=paste0(here::here("outputs/Informe_Preparacio_FinalDM2_Juny_"),Sys.Date()),
                  params = list(dir_dades_desti=dir_dades_desti))

#--------------------------------------------------------------------------------------------------#
#---------------------------  ANALISI -------------------------------------------------------------#
library("dplyr")
rm(list=ls())
gc()
mostra=T
ANY="20181231"
dir_dades_desti="dades" 
dir_dades_origen="../../DADES/EPIPEU_CAT3/dades" 
if (mostra) {
  dir_dades_origen="../../DADES/EPIPEU_CAT3/dades/mostra"
  dir_dades_desti="dades/mostra" }
#--------------------------------------------------------------------------------------------------#
#ANY="2018"
#--------------------------------------------------------------------------------------------------#
rmarkdown::render(input="./codi/3_analisis_epipeu_VER2.Rmd",
                  output_file=paste0(here::here("outputs/Informe_Exploratori_Final"),ANY,"_",Sys.Date()),
                  params = list(dir_dades_desti=dir_dades_desti))
#--------------------------------------------------------------------------------------------------#










