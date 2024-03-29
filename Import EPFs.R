#install. packages("tidyverse")
#library(tidyverse)


directorio_EPF <- "" #Señalar la carpeta donde se encuentran los ficheros
anno=2012 #Año del que obtener los datos




if (anno<2011) {

dicEPFHogar <- paste(directorio_EPF,"Fichero de usuario de hogar a", anno, sep = "")
Hogar <- read_fwf(dicEPFHogar,
col_positions=fwf_widths(c(4,5,2,1,1,1,1,1,1,11,2,1,2,2,2,2,2,2,2,2,2,2,2,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,5,1,2,1,2,2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,3,2,2,2,2,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,16,5,16,13,13,13,13,2,2,2,2,2,2,2,2,2,5,1,2,1,2,3,3,3,3,3),
c("ANOENC","NUMERO","CCAA","NUTS1","CAPROV","TAMAMU","DENSI","CLAVE","CLATEO","FACTOR","NMIEMB","TAMANO","NMIEMSD","NMIEMHU","NMIEMIN","NMIEM1","NMIEM2","NMIEM3","NMIEM4","NMIEM5","NMIEM6","NMIEM7","NHIJOSD","UC1","UC2","PF2TEO","PF2RECO","TIPHOGAR_1","TIPHOGAR_2","TIPHOGAR_3","TIPHOGAR_4","TIPHOGAR_5","TIPHOGAR_6","TIPHOGAR_7","TIPHOGAR_8","TIPHOGAR_9","TIPHOGAR_10","TIPHOGAR_11","NUMACTI","NUMOCUP","NUMESTU","SITUOCU_HOG","SITUACT_HOG","NORDENSP","EDADSP","SEXOSP","NACIONA_SP","PAISSP","SITURES_SP","ECIVILSP","NORDENCO_SP","NORDENPA_SP","NORDENMA_SP","ESTUDIOS_SP","ESTUDRED_SP","SITUACT_SP","SITURED_SP","PERCEPSP","IMPEXACP_SP","IMPUEXACP_SP","INTERINP_SP","IMPU_INTERPS","TRABAJO","OCUPA","OCUPARED","ACTESTB","ACTESTB_RED","SITPROF","SECTOR","TIPOCONT","SITSOCI","SITSOCI_RE","REGTEN","TIPOEDIF","ZONARES","TIPOCASA","NHABIT","ANNOCON","SUPERF","AGUACALI","FUENAGUA","CALEF","FUENCALE","DISPOSIOV","NUMOVD","REGTENV1","REGTENV2","REGTENV3","REGTENV4","REGTENV5","REGTENV6","REGTENV7","REGTENV8","REGTENV9","MESESV1","MESESV2","MESESV3","MESESV4","MESESV5","MESESV6","MESESV7","MESESV8","MESESV9","DIASV1","DIASV2","DIASV3","DIASV4","DIASV5","DIASV6","DIASV7","DIASV8","DIASV9","AGUACV1","AGUACV2","AGUACV3","AGUACV4","AGUACV5","AGUACV6","AGUACV7","AGUACV8","AGUACV9","FUENACV1","FUENACV2","FUENACV3","FUENACV4","FUENACV5","FUENACV6","FUENACV7","FUENACV8","FUENACV9","CALEFV1","CALEFV2","CALEFV3","CALEFV4","CALEFV5","CALEFV6","CALEFV7","CALEFV8","CALEFV9","FUENCAV1","FUENCAV2","FUENCAV3","FUENCAV4","FUENCAV5","FUENCAV6","FUENCAV7","FUENCAV8","FUENCAV9","GASTOT","IMPUTGAS","GASTMON","GASTNOM1","GASTNOM2","GASTNOM3","GASTNOM4","CAPROP","CAJENA","PENSIO","DESEM","OTRSUB","RENTAS","OTROIN","FUENPRIN","FUENPRINRED","IMPEXAC","IMPUEXAC","INTERIN","IMPU_INT","NUMPERI","COMIMH","COMISD","COMIHU","COMIINV","COMITOT")))

#Cambiar nombre del dataset
assign(paste("Hogar_",anno, sep = ""), Hogar)


dicEPFGasto <- paste(directorio_EPF,"Fichero de usuario de gastos a", anno, sep = "")
Gasto <- read_fwf(dicEPFGasto,
col_positions=fwf_widths(c(4,5,5,15,5,12,15,13,13,13,13,13,11),
c("ANOENC","NUMERO","CODIGO","GASTO","PORCENDES","CANTIDAD","GASTOMON","GASTNOM1","GASTNOM2","GASTNOM3","GASTNOM4","GASTNOM5","FACTOR")))

#Cambiar nombre del dataset
assign(paste("Gasto_",anno, sep = ""), Gasto)


dicEPFMiembros <- paste(directorio_EPF,"Fichero de usuario de miembros a", anno, sep = "")
Miembros <- read_fwf(dicEPFMiembros,
col_positions=fwf_widths(c(4,5,2,2,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,5,1,2,1,2,2,2,16),
c("ANOENC","NUMERO","NORDEN","CATEGMH","SUSPRIN","RELASP","EDAD","SEXO","NACIONA","PAIS","SITURES","ECIVIL","NORDENCO","NORDENPA","NORDENMA","ESTUDIOS","ESTUDRED","SITUACT","SITURED","PERCEP","IMPEXACP","IMPUEXACP","INTERINP","IMPU_INTERP","NINODEP","HIJODEP","ADULTO","FACTOR")))

#Cambiar nombre del dataset
assign(paste("Miembros_",anno, sep = ""), Miembros)




} else if (anno>=2011 & anno<2016) {

dicEPFHogar <- paste(directorio_EPF,"Fichero de usuario de hogar a", anno, sep = "")
Hogar <- read_fwf(dicEPFHogar,
col_positions=fwf_widths(c(4,5,2,1,1,1,1,1,1,11,2,1,2,2,2,2,2,2,2,2,2,2,2,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,5,1,2,1,2,2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,3,2,2,2,2,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,16,5,16,13,13,13,13,2,2,2,2,2,2,2,2,2,5,1,2,1,2,3,3,3,3,3),
c("ANOENC","NUMERO","CCAA","NUTS1","CAPROV","TAMAMU","DENSI","CLAVE","CLATEO","FACTOR","NMIEMB","TAMANO","NMIEMSD","NMIEMHU","NMIEMIN","NMIEM1","NMIEM2","NMIEM3","NMIEM4","NMIEM5","NMIEM6","NMIEM7","NHIJOSD","UC1","UC2","PF2TEO","PF2RECO","TIPHOGAR_1","TIPHOGAR_2","TIPHOGAR_3","TIPHOGAR_4","TIPHOGAR_5","TIPHOGAR_6","TIPHOGAR_7","TIPHOGAR_8","TIPHOGAR_9","TIPHOGAR_10","TIPHOGAR_11","NUMACTI","NUMOCUP","NUMESTU","SITUOCU_HOG","SITUACT_HOG","NORDENSP","EDADSP","SEXOSP","NACIONA_SP","PAISSP","SITURES_SP","ECIVILSP","NORDENCO_SP","NORDENPA_SP","NORDENMA_SP","ESTUDIOS_SP","ESTUDRED_SP","SITUACT_SP","SITURED_SP","PERCEPSP","IMPEXACP_SP","IMPUEXACP_SP","INTERINP_SP","IMPU_INTERPS","TRABAJO","OCUPA","OCUPARED","ACTESTB","ACTESTB_RED","SITPROF","SECTOR","TIPOCONT","SITSOCI","SITSOCI_RE","REGTEN","TIPOEDIF","ZONARES","TIPOCASA","NHABIT","ANNOCON","SUPERF","AGUACALI","FUENAGUA","CALEF","FUENCALE","DISPOSIOV","NUMOVD","REGTENV1","REGTENV2","REGTENV3","REGTENV4","REGTENV5","REGTENV6","REGTENV7","REGTENV8","REGTENV9","MESESV1","MESESV2","MESESV3","MESESV4","MESESV5","MESESV6","MESESV7","MESESV8","MESESV9","DIASV1","DIASV2","DIASV3","DIASV4","DIASV5","DIASV6","DIASV7","DIASV8","DIASV9","AGUACV1","AGUACV2","AGUACV3","AGUACV4","AGUACV5","AGUACV6","AGUACV7","AGUACV8","AGUACV9","FUENACV1","FUENACV2","FUENACV3","FUENACV4","FUENACV5","FUENACV6","FUENACV7","FUENACV8","FUENACV9","CALEFV1","CALEFV2","CALEFV3","CALEFV4","CALEFV5","CALEFV6","CALEFV7","CALEFV8","CALEFV9","FUENCAV1","FUENCAV2","FUENCAV3","FUENCAV4","FUENCAV5","FUENCAV6","FUENCAV7","FUENCAV8","FUENCAV9","GASTOT","IMPUTGAS","GASTMON","GASTNOM1","GASTNOM2","GASTNOM3","GASTNOM4","CAPROP","CAJENA","PENSIO","DESEM","OTRSUB","RENTAS","OTROIN","FUENPRIN","FUENPRINRED","IMPEXAC","IMPUEXAC","INTERIN","IMPU_INT","NUMPERI","COMIMH","COMISD","COMIHU","COMIINV","COMITOT")))

#Cambiar nombre del dataset
assign(paste("Hogar_",anno, sep = ""), Hogar)



dicEPFGasto <- paste(directorio_EPF,"Fichero de usuario de gastos a", anno, sep = "")
Gasto <- read_fwf(dicEPFGasto,
col_positions=fwf_widths(c(4,5,5,15,5,12,15,13,13,13,13,13,11),
c("ANOENC","NUMERO","CODIGO","GASTO","PORCENDES","CANTIDAD","GASTOMON","GASTNOM1","GASTNOM2","GASTNOM3","GASTNOM4","GASTNOM5","FACTOR")))

#Cambiar nombre del dataset
assign(paste("Gasto_",anno, sep = ""), Gasto)


dicEPFMiembros <- paste(directorio_EPF,"Fichero de usuario de miembros a", anno, sep = "")
Miembros <- read_fwf(dicEPFMiembros,
col_positions=fwf_widths(c(4,5,2,2,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,5,1,2,1,2,2,2,16),
c("ANOENC","NUMERO","NORDEN","CATEGMH","SUSPRIN","RELASP","EDAD","SEXO","NACIONA","PAIS","SITURES","ECIVIL","NORDENCO","NORDENPA","NORDENMA","ESTUDIOS","ESTUDRED","SITUACT","SITURED","PERCEP","IMPEXACP","IMPUEXACP","INTERINP","IMPU_INTERP","NINODEP","HIJODEP","ADULTO","FACTOR")))

#Cambiar nombre del dataset
assign(paste("Miembros_",anno, sep = ""), Miembros)



} else {

dicEPFHogar <- paste(directorio_EPF,"Fichero de usuario de hogar a", anno, sep = "")
Hogar <- read_fwf(dicEPFHogar,
col_positions=fwf_widths(c(4,5,2,1,1,1,1,1,1,11,2,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,5,2,2,2,2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,3,2,2,2,2,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,16,5,16,13,13,13,13,2,2,2,2,2,2,2,2,2,5,2,2,3,3,3,3,3),
c("ANOENC","NUMERO","CCAA","NUTS1","CAPROV","TAMAMU","DENSIDAD","CLAVE","CLATEO","FACTOR","NMIEMB","TAMANO","NMIEMSD","NMIEMHU","NMIEMIN","NMIEM1","NMIEM2","NMIEM3","NMIEM4","NMIEM5","NMIEM6","NMIEM7","NMIEM8","NMIEM9","NMIEM10","NMIEM11","NMIEM12","NMIEM13","NUMACTI","NUMINACTI","NUMOCUP","NUMNOCUP","NUMESTU","NUMNOESTU","NNINOSD","NHIJOSD","UC1","UC2","PF2TEO","PF2RECO","TIPHOGAR1","TIPHOGAR2","TIPHOGAR3","TIPHOGAR4","TIPHOGAR5","TIPHOGAR6","TIPHOGAR7","TIPHOGAR8","TIPHOGAR9","TIPHOGAR10","TIPHOGAR11","SITUOCUHOG","SITUACTHOG","NORDENSP","EDADSP","SEXOSP","PAISNACSP","NACIONASP","PAISSP","SITURESSP","ECIVILLEGALSP","NORDENCOSP","UNIONSP","CONVIVENCIASP","NORDENPASP","PAISPADRESP","NORDENMASP","PAISMADRESP","ESTUDIOSSP","ESTUDREDSP","SITUACTSP","SITUREDSP","OCUSP","JORNADASP","PERCEPSP","IMPEXACPSP","INTERINPSP","TRABAJO","OCUPA","OCUPARED","ACTESTB","ACTESTBRED","SITPROF","SECTOR","CONTRATO","TIPOCONT","SITSOCI","SITSOCIRE","REGTEN","TIPOEDIF","ZONARES","TIPOCASA","NHABIT","ANNOCON","SUPERF","AGUACALI","FUENAGUA","CALEF","FUENCALE","DISPOSIOV","NUMOVD","REGTENV1","REGTENV2","REGTENV3","REGTENV4","REGTENV5","REGTENV6","REGTENV7","REGTENV8","REGTENV9","MESESV1","MESESV2","MESESV3","MESESV4","MESESV5","MESESV6","MESESV7","MESESV8","MESESV9","DIASV1","DIASV2","DIASV3","DIASV4","DIASV5","DIASV6","DIASV7","DIASV8","DIASV9","AGUACV1","AGUACV2","AGUACV3","AGUACV4","AGUACV5","AGUACV6","AGUACV7","AGUACV8","AGUACV9","FUENACV1","FUENACV2","FUENACV3","FUENACV4","FUENACV5","FUENACV6","FUENACV7","FUENACV8","FUENACV9","CALEFV1","CALEFV2","CALEFV3","CALEFV4","CALEFV5","CALEFV6","CALEFV7","CALEFV8","CALEFV9","FUENCAV1","FUENCAV2","FUENCAV3","FUENCAV4","FUENCAV5","FUENCAV6","FUENCAV7","FUENCAV8","FUENCAV9","GASTOT","IMPUTGAS","GASTMON","GASTNOM1","GASTNOM2","GASTNOM3","GASTNOM4","CAPROP","CAJENA","PENSIO","DESEM","OTRSUB","RENTAS","OTROIN","FUENPRIN","FUENPRINRED","IMPEXAC","INTERIN","NUMPERI","COMIMH","COMISD","COMIHU","COMIINV","COMITOT")))

#Cambiar nombre del dataset
assign(paste("Hogar_",anno, sep = ""), Hogar)



dicEPFGasto <- paste(directorio_EPF,"Fichero de usuario de gastos a", anno, sep = "")
Gasto <- read_fwf(dicEPFGasto,
col_positions=fwf_widths(c(4,5,5,15,5,5,12,15,13,13,13,13,13,11),
c("ANOENC","NUMERO","CODIGO","GASTO","PORCENDES","PORCENIMP","CANTIDAD","GASTOMON","GASTNOM1","GASTNOM2","GASTNOM3","GASTNOM4","GASTNOM5","FACTOR")))

#Cambiar nombre del dataset
assign(paste("Gasto_",anno, sep = ""), Gasto)



dicEPFMiembros <- paste(directorio_EPF,"Fichero de usuario de miembros a", anno, sep = "")
Miembros <- read_fwf(dicEPFMiembros,
col_positions=fwf_widths(c(4,5,2,2,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,5,2,2,2,2,16),
c("ANOENC","NUMERO","NORDEN","CATEGMH","SUSPRIN","RELASP","EDAD","SEXO","PAISNACIM","NACIONA","PAISNACION","SITURES","ECIVILLEGAL","NORDENCO","UNION","CONVIVENCIA","NORDENPA","PAISPADRE","NORDENMA","PAISMADRE","ESTUDIOS","ESTUDRED","SITUACT","SITURED","OCU","JORNADA","PERCEP","IMPEXACP","INTERINP","NINODEP","HIJODEP","ADULTO","FACTOR")))

#Cambiar nombre del dataset
assign(paste("Miembros_",anno, sep = ""), Miembros)



}
