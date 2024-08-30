COMPILER = g++
ARCHITECTURE_FLAGS = -march=native
# Set GUROBI_HOME to the path of your Gurobi installation, automatically done in flake.nix
# Set GUROBI_VERSION to the version of your Gurobi installation, automatically done in flake.nix
GUROBI_FLAGS = -I $(GUROBI_HOME)/include -L $(GUROBI_HOME)/lib -lgurobi_c++ -lgurobi$(GUROBI_VERSION) -lm
COMPILER_FLAGS = -std=c++17 -m64 -Wall -Wfatal-errors -O3 $(ARCHITECTURE_FLAGS)

all: main

main: mip1_c++.cpp
	$(COMPILER) $(COMPILER_FLAGS) -o main mip1_c++.cpp $(GUROBI_FLAGS)

clean:
	rm -f main