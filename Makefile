EXENAME = main
OBJS = main.o NimLearn.o

CXX = clang++
CXXFLAGS = -std=c++14

$(EXENAME): $(OBJS)
	$(CXX) $^ $(CXXFLAGS) -o $(EXENAME)

main.o: main.cpp
	$(CXX) $< $(CXXFLAGS) -c main.cpp

NimLearn.o: NimLearn.cpp NimLearn.h
	$(CXX) $< $(CXXFLAGS) -c NimLearn.cpp

clean:
	rm *.o $(EXENAME)