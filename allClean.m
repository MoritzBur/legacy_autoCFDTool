% allClean.m
% deletes all files created while running "allRun.m"
% date of creation: 17.09.2022
% developer:Moritz Burmester
% contact:moritz@burmester-iz.de

delete CFD\Geometry\candidate.cpacs.xml
delete CFD\Geometry\candidate.step
delete CFD\Geometry\fluidDomain4Meshing.scdoc
delete CFD\Geometry\debug.log
delete CFD\Geometry\demolog.txt

delete CFD\Mesh\debug.log
delete CFD\Mesh\*.trn
delete CFD\Mesh\*.bat
delete CFD\Mesh\CFD_Mesh.cas.h5
delete CFD\Mesh\fluentMeshing.jou

delete CFD\Solver\fluentSolver.jou
delete CFD\Solver\CFD_Simulation.cas.h5
delete CFD\Solver\CFD_Simulation.pdat.dat.h5

delete fluent*



clear
clc
