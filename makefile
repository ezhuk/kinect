# Copyright (c) 2013 Eugene Zhuk.
# Use of this source code is governed by the MIT license that can be found
# in the LICENSE file.

CXX=g++
CXXFLAGS=-m64 -O2 -Wall -Wextra
INCPATH=-I/usr/local/include/libfreenect
LIBS=-lfreenect

APP=kinect

.cpp.o:
	$(CXX) $(CXXFLAGS) $(INCPATH) -c $< -o $@

.PHONY: all
all: $(APP)

$(APP): main.o
	$(CXX) $(CXXFLAGS) $(LIBS) $^ -o $@

.PHONY: clean
clean:
	/bin/rm -rf $(APP) *.o
