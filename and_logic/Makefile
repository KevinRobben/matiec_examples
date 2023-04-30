CC=gcc
#CC=arm-none-eabi-gcc
STFILE=main.st
IECGENERATEDSOURCES=STD_CONF.c STD_RESSOURCE.c 
SOURCES=$(IECGENERATEDSOURCES) plc.c  main.c
OBJECTS=$(SOURCES:.c=.o)
CFLAGS=-I '/mnt/c/Users/Kevin Robben/Documents/Github repos/matiec/lib/c' -c
LDFLAGS=-lrt
EXECUTABLE=softplc

.PHONY: fresh clean all

all: $(STFILE) $(IECGENERATEDSOURCES) $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@ $(LDFLAGS)

.c.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm POUS.c
	rm POUS.h
	rm LOCATED_VARIABLES.h
	rm VARIABLES.csv
	rm STD_CONF.c
	rm STD_CONF.h
	rm STD_RESSOURCE.c
	rm *.o
	rm $(EXECUTABLE)

$(IECGENERATEDSOURCES): $(STFILE)
	../../iec2c $(STFILE) -I '/mnt/c/Users/Kevin Robben/Documents/Github repos/matiec/lib'

fresh: | clean all
