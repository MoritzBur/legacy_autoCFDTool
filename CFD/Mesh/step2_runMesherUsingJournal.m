% step2_runMesherUsingJournal.m
% runs fluent mesher in batch mode using fluentMeshing.jou
% date of creation: 17.09.2022
% developer:Moritz Burmester
% contact:moritz@burmester-iz.de

system('fluent 3d -meshing -hidden -i "M:\Studium\Projektarbeit\Projektarbeit_CFD\autoCFDTool\CFD\Mesh\fluentMeshing.jou"')

disp('### runMesherUsingJournal finished')