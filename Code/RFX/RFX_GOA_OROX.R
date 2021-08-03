# Setup ----

AYR<-2015 #assessment year
endyr<-2015 #end year for the RFX model, can be the last year of data
#regional is for if you want the RFX model to run on the sub areas in the AI and GOA, if not, set to F

datadir<-paste(getwd(),"/Output/",AYR,"/RACE_Biomass",sep="")
outdir<-paste(getwd(),"/Output/",AYR,"/RFX/",sep="")
codedir<-paste(getwd(),"/Code/RFX",sep="")

source(paste(codedir,"/RFX_functions.R",sep=""))

RFX_fx(outname="GOA_OROX",AYR,endyr,datadir,outdir,regional=T)

RFX_fx(outname="GOA_OROX_SPECIES",AYR,endyr,datadir,outdir,regional=T)

RFX_fx(outname="GOA_SC",AYR,endyr,datadir,outdir,regional=T)

RFX_fx(outname="GOA_M0092",AYR,endyr,datadir,outdir,regional=T)

RFX_fx(outname="GOA_OROX_GAPspec",AYR,endyr,datadir,outdir,regional=T)

RFX_fx(outname="GOA_summed",AYR,endyr,datadir,outdir,regional=T)
