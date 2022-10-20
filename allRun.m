% allRun.m
% runs all specified operations
% date of creation: 17.09.2022
% developer:Moritz Burmester
% contact:moritz@burmester-iz.de

%this file has to be run from folder "autoCFDTool"

load Input\envConfig.mat

% navigate to parent path in case this script was run from somewhere else
parentPath = mfilename("fullpath");
parentPath = parentPath(1:end-7);
cd(parentPath)
% save parentPath for automatic implementation in journals and scripts
save Input\envConfig.mat


% run geometry creation
run("CFD\Geometry\runGeometryCreation.m")

% run meshing process
run("CFD\Mesh\runMeshingProcess.m")

% run solver
%run("CFD\Solver\runSolver.m")