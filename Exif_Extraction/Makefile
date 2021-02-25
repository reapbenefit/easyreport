CXX=g++
CXXFLAGS=-O2 -pedantic -Wall -Wextra -ansi -std=c++11

all: RPexif

exif.o: exif.cpp
	$(CXX) $(CXXFLAGS) -c exif.cpp

RPexif: exif.o RPexif.cpp
	$(CXX) $(CXXFLAGS) -o RPexif exif.o RPexif.cpp

clean:
	rm -f *.o RPexif RPexif.exe
