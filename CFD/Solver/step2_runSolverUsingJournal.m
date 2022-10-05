% step2_runSolverUsingJournal.m
% runs fluent mesher in batch mode using fluentMeshing.jou
% date of creation: 28.09.2022
% developer:Moritz Burmester
% contact:moritz@burmester-iz.de

disp('### runSolverUsingJournal started...')

system('fluent 3d -hidden -i "M:\Studium\Projektarbeit\Projektarbeit_CFD\autoCFDTool\CFD\Solver\fluentSolver.jou"')

disp('### runSolverUsingJournal finished')