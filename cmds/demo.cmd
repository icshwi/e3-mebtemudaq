epicsEnvSet("PREFIX", "MEBTEMU")
epicsEnvSet("EPICS_CA_MAX_ARRAY_BYTES","10000000")

epicsEnvSet("IOC", "MEBTEMU")
epicsEnvSet("DEV", "EVR")

# Device number enumerated by PCI (check dmesg)
epicsEnvSet("IFCDEV", 4)

require mrfioc2,2.2.0-rc7
require nds3epics,1.0.0
require mebtemudaq,develop
require iocStats,3.1.16

# MRF EVR configuration
epicsEnvSet("ExtEventCODE" "10")
epicsEnvSet("MainEvtCODE"  "14")
#iocshLoad("$(mrfioc2_DIR)/evr-mtca-300.iocsh", "S=$(IOC), DEV=$(DEV), PCIID=08:00.0")
var evrMrmTimeNSOverflowThreshold 100000

# Low-level device creation
ndsCreateDevice(mebtemu_driver, $(PREFIX), card=$(IFCDEV), fmc=1)

# Workaround while timing is not working
#epicsEnvSet("EVRTSTAMP"  "")
epicsEnvSet("EVRTSTAMP"  "$(IOC)-$(DEV):Time-I.TIME")

dbLoadRecords(MEBTEMUDAQChannelGroup.template, "PREFIX=$(PREFIX),CH_GRP_ID=AI")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH0, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH1, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH2, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH3, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")

dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH4, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH5, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH6, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH7, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")

dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH8, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH9, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH10, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH11, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")

dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH12, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH13, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH14, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH15, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")

dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH16, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH17, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH18, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH19, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")

dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH20, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH21, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH22, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH23, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")

dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH24, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH25, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH26, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH27, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")

dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH28, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH29, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH30, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH31, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")

dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH32, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH33, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH34, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH35, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")

dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH36, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH37, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH38, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")
dbLoadRecords(MEBTEMUDAQAIChannel.template,"PREFIX=$(PREFIX),CH_GRP_ID=AI,CH_ID=CH39, NELM=2048, DATA_TSEL=$(EVRTSTAMP)")

# iocStats
iocshLoad("$(iocStats_DIR)/iocStats.iocsh", "IOCNAME=$(PREFIX)")

iocInit()

# Enabling EVR standalone mode
#iocshLoad("$(mrfioc2_DIR)/evr-standalone-mode.iocsh", "S=$(IOC), DEV=$(DEV)")

# Configuring INPUT 0 to generate code 10 on positive edge
#dbpf $(IOC)-$(DEV):In0-Trig-Ext-Sel "Edge"
#dbpf $(IOC)-$(DEV):In0-Code-Ext-SP  $(ExtEventCODE)

# Configuring timestamping
#dbpf $(IOC)-$(DEV):Time-I.EVNT $(MainEvtCODE)
#dbpf $(IOC)-$(DEV):Time-I.INP "@OBJ=$(DEV),Code=$(MainEvtCODE)"

# Setting PULSER 0 to trigger from prescaler (14 Hz)
#dbpf $(IOC)-$(DEV):DlyGen0-Evt-Trig0-SP $(MainEvtCODE)
#dbpf $(IOC)-$(DEV):DlyGen0-Width-SP 1000 # time in us

# Setting PULSER 1 to trigger from INPUT 0
#dbpf $(IOC)-$(DEV):DlyGen1-Evt-Trig0-SP $(ExtEventCODE) 
#dbpf $(IOC)-$(DEV):DlyGen1-Width-SP 1000 # time in us

# Configuring RX17 backplane output to react from 14Hz
#dbpf $(IOC)-$(DEV):OutBack0-Src-SP 0 

# Configuring TX17 backplane output to react from 14Hz
#dbpf $(IOC)-$(DEV):OutBack1-Src-SP 1 
