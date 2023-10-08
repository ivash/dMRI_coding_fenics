#!/bin/bash
# Execute this file to recompile locally
c++ -Wall -shared -fPIC -std=c++11 -O3 -fno-math-errno -fno-trapping-math -ffinite-math-only -I/usr/local/include -I/usr/local/slepc-32/include -I/usr/local/petsc-32/include -I/usr/include/mpich -I/usr/include/hdf5/mpich -I/usr/include/eigen3 -I/usr/local/lib/python3.6/dist-packages/ffc/backends/ufc -I/home/fenics/.cache/fenics/dijitso/include dolfin_subdomain_e991b1609cb404acd6cf5901c8871334.cpp -L/usr/local/petsc-32/lib -L/usr/local/slepc-32/lib -L/usr/lib/x86_64-linux-gnu/hdf5/mpich -L/usr/local/lib -L/home/fenics/.cache/fenics/dijitso/lib -Wl,-rpath,/home/fenics/.cache/fenics/dijitso/lib -lmpich -lmpichcxx -lpetsc -lslepc -lm -ldl -lz -lsz -lhdf5 -lboost_timer -ldolfin -olibdijitso-dolfin_subdomain_e991b1609cb404acd6cf5901c8871334.so