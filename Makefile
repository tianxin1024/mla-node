NUM_JOBS = 8
CXX      = g++
PRO      = mla

CMAKE_CMD = mkdir -p build && cd build && cmake ..

FLAGS = 
DEBUG_FLAGS = $(FLAGS) -DCMAKE_BUILD_TYPE:STRING=Debug
RELEASE_FLAGS = $(FLAGS) -DCMAKE_BUILD_TYPE:STRING=Release

all : 
	$(CMAKE_CMD) $(DEBUG_FLAGS) && make -s -j$(NUM_JOBS) && cp flash_mla_cuda.cpython*.so ../tests/  && python ../tests/test_flash_mla.py

debug:
	gdb -x ./debug/debug.gdb --args python ./tests/test_flash_mla.py

clean:
	read -r -p "This will delete the contents of build/*. Are you sure? [CRAL-C to abort] " response && rm -rf build/*

.PHONY: all run debug clean
