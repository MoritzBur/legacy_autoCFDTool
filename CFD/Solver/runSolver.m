% runSolver.m
% this script starts fluent meshing in batch mode using the journal file "fluentSolver.jou"
% date of creation: 28.09.2022
% developer:Moritz Burmester
% contact:moritz@burmester-iz.de

disp('###### runSolver started...')

run("step1_editSolutionParamInJournal.m")
run("step2_runSolverUsingJournal.m")

disp('###### runSolver finished')