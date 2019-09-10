epicsEnvSet("PREFIX", "MEBTEMU")
epicsEnvSet("ENGINEER","JP")
epicsEnvSet("LOCATION","MTCA_server_room")
epicsEnvSet("EPICS_CA_MAX_ARRAY_BYTES","10000000")
epicsEnvSet("IOC", "IFC")
epicsEnvSet("DEV", "EVR")

# Set maximum number of samples
epicsEnvSet(NELM, 16000)

require nds3epics,1.0.0
require mebtemudaq,develop

ndsCreateDevice(mebtemu_driver, ${PREFIX}, card=0, fmc=1)

dbLoadRecords(MEBTEMUDAQChannelGroup.template, "PREFIX=${PREFIX},CH_GRP_ID=AI")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH0, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH1, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH2, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH3, NELM=${NELM}")

dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH4, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH5, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH6, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH7, NELM=${NELM}")

dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH8, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH9, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH10, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH11, NELM=${NELM}")

dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH12, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH13, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH14, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH15, NELM=${NELM}")

dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH16, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH17, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH18, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH19, NELM=${NELM}")

dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH20, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH21, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH22, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH23, NELM=${NELM}")

dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH24, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH25, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH26, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH27, NELM=${NELM}")

dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH28, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH29, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH30, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH31, NELM=${NELM}")

dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH32, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH33, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH34, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH35, NELM=${NELM}")

dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH36, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH37, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH38, NELM=${NELM}")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH39, NELM=${NELM}")

 
iocInit()


