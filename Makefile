# Makefile for a simple C++ program

CXX = g++
CXXFLAGS = -std=c++11 -Wall -pedantic
TARGET = wordly
SOURCES = wordly.cpp
OBJECTS = $(SOURCES:.cpp=.o)

$(TARGET): $(OBJECTS)
		$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJECTS)

%.o: %.cpp
		$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
		rm -f $(OBJECTS) $(TARGET)
