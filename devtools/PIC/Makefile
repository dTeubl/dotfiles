# User made MakeFile 

# Additional variables
DIR_BUILD = ./build
DIR_TEMP = ./build/temp
#TODO Change the processor
PROCESSOR = 33FJ64GP706A
#TODO Change the path to the right .gld file
MP_LINKER_FILE_OPTION=,--script="src/inc/p33FJ64GP706A.gld"
CONFIG = 
NAME = picProg
VERSION = $(shell ./bin/getTag )
PROJ = ${NAME}_${CONFIG}_${VERSION}

# Object file
OBJECTS = ${DIR_TEMP}/main.o 
	
HEADERS = ./src/inc/global.h


# GCC variables
CC = xc16-gcc
CFLAGS = -O0 -Wall -mcpu=${PROCESSOR} -g
LDFLAGS = -Wall -mcpu=${PROCESSOR} -g


all: 
	mkdir -p build
	mkdir -p build/temp
	${MAKE}	build_all

build_all: ${DIR_BUILD}/$(PROJ).elf

# Clean up the project
clean: 
	rm -f ${DIR_TEMP}/*.o
#	rm -f ${DIR_BUILD}/RX-* 


# Generate the object files	
${DIR_TEMP}/%.o: ./src/%.c $(HEADERS)
	$(CC) $(CFLAGS) -c $< -o $@

${DIR_BUILD}/${PROJ}.elf: ${OBJECTS}  src/inc/p33FJ64GP706A.gld
	${CC} -o ${DIR_BUILD}/${PROJ}.elf ${OBJECTS} -mcpu=$(PROCESSOR) -omf=elf -DXPRJ_default=default -legacy-libc -Wl,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DIR_BUILD}/${PROJ}.map",--report-mem,
	xc16-bin2hex ${DIR_BUILD}/${PROJ}.elf -a  -omf=elf  
	cp ${DIR_BUILD}/${PROJ}.hex ${DIR_BUILD}/${NAME}.hex


