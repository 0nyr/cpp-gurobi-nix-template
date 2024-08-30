COMPILER = g++
ARCHITECTURE_FLAGS = -march=native
GUROBI_PATH = $(GUROBI_HOME) # Set GUROBI_HOME to the path of your Gurobi installation, automatically done in flake.nix
GUROBI_FLAGS = -I $(GUROBI_PATH)/linux64/include -L $(GUROBI_PATH)/linux64/lib -lgurobi_c++ -lgurobi110
COMPILER_FLAGS = -O3 -std=c++17 -Wall -Wextra -Wfatal-errors $(ARCHITECTURE_FLAGS) $(GUROBI_FLAGS)

all: main

main: mip1_c++.cpp
	$(COMPILER) $(COMPILER_FLAGS) -o main mip1_c++.cpp

# main: mip1_c++.cpp
# 	g++ -std=c++98 -m64 -g -o mip1_c++ ../c++/mip1_c++.cpp -I../../include/ -L../../lib -lgurobi_c++ -lgurobi110 -lm

clean:
	rm -f main