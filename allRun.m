% allRun.m
% runs all specified operations
% date of creation: 17.09.2022
% developer:Moritz Burmester
% contact:moritz@burmester-iz.de

%this file has to be run from folder "autoCFDTool"

% navigate to parent path in case this script was run from somewhere else
parentPath = mfilename("fullpath");
parentPath = parentPath(1:end-7);
cd(parentPath)

load Input\envConfig.mat
save Input\envConfig.mat

run("CFD\Geometry\runGeometryCreation.m")
run("CFD\Mesh\runMeshingProcess.m")
run("CFD\Solver\runSolver.m")