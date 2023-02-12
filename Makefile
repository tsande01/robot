CC=g++ -std=c++0x
CFLAGS=-c -Wall

LDFLAGS=-L/usr/local/lib -L/usr/local/include
LDLIBS=-lwiringPi -lpthread -lrt -lcrypt
SOURCES=main.cpp L3G.cpp LSM303.cpp I2CBus.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=main

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) $(LDLIBS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $(LDLIBS) $< -o $@
