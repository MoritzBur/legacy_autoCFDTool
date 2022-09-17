% runMeshingProcess.m
% this script starts fluent meshing in batch mode using the journal file "fluentMeshing.jou"
% date of creation: 16.09.2022
% developer:Moritz Burmester
% contact:moritz@burmester-iz.de

system('fluent 3d -meshing -hidden -i "M:\Studium\Projektarbeit\Projektarbeit_CFD\autoCFDTool\CFD\Mesh\fluentMeshing.jou"')