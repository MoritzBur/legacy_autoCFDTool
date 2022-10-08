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
delete CFD\Solver\forces.out
delete CFD\Solver\coefficients.out
delete CFD\Solver\*.trn
delete CFD\Solver\*.bat
delete CFD\Solver\*.asv
delete CFD\Solver\*.pdf
delete CFD\Solver\debug.log
system('rmdir /s /q M:\Studium\Projektarbeit\Projektarbeit_CFD\autoCFDTool\CFD\Solver\FluentReportServer')

%next command is only to be used after making sure the output directory
%will be created again
system('rmdir /s /q M:\Studium\Projektarbeit\Projektarbeit_CFD\autoCFDTool\Output')
system('mkdir M:\Studium\Projektarbeit\Projektarbeit_CFD\autoCFDTool\Output')

delete fluent*



clear
clc
