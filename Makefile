CC=g++ -std=c++0x
CFLAGS=-c -Wall

LDFLAGS=-L/usr/local/lib
LDLIBS=-lwiringPi
SOURCES=main.cpp L3G.cpp LSM303.cpp I2CBus.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=main

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(LDLIBS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $(LDLIBS) $< -o $@
