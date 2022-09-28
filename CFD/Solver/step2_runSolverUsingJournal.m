% step2_runSolverUsingJournal.m
% runs fluent mesher in batch mode using fluentMeshing.jou
% date of creation: 28.09.2022
% developer:Moritz Burmester
% contact:moritz@burmester-iz.de

disp('### runSolverUsingJournal started...')

system('fluent 3d -meshing -hidden -i "M:\Studium\Projektarbeit\Projektarbeit_CFD\autoCFDTool\CFD\Mesh\fluentMeshing.jou"')

disp('### runSolverUsingJournal finished')