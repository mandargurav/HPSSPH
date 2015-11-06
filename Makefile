SOURCES=./source/main.c 
OBJECTS=$(SOURCES:.c=.o) 
EXECUTABLE=./bin/hpssph

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(LDFLAGS_ADTL) $(OBJECTS) $(NVFLAGS_ADTL) -o $@

clean :
	rm ./bin/hpssph ./source/*.o 

