% step1_editSolutionParamInJournal.m
% writes desired meshing parameters into fluent journal file
% date of creation: 28.09.2022
% developer:Moritz Burmester
% contact:moritz@burmester-iz.de

disp('### editSolutionParamInJournal started...')

% include meshing parameter file
load Input\solverParameters.mat;

% calculate flow vector components for forces
xComponentOfLift = -sin(deg2rad(angleOfAttack));
zComponentOfLift = cos(deg2rad(angleOfAttack));
xComponentOfDrag = cos(deg2rad(angleOfAttack));
zComponentOfDrag = sin(deg2rad(angleOfAttack));

% replace placeholders in meshing journal
solution = fileread('CFD\Solver\fluentSolverTemplate.jou');

solution = strrep(solution,'AIRSPEED',num2str(airSpeed));
solution = strrep(solution,'ANGLEOFATTACK',num2str(angleOfAttack));

solution = strrep(solution,'ITERATIONS',num2str(iterations));

solution = strrep(solution,'REFERENCEAREA',num2str(referenceArea));
solution = strrep(solution,'REFERENCELENGTH',num2str(referenceLength));
solution = strrep(solution,'REFERENCEDENSITY',num2str(referenceDensity));
solution = strrep(solution,'REFERENCETEMPERATURE',num2str(referenceTemperature));
solution = strrep(solution,'REFERENCEVISCOSITY',num2str(referenceViscosity));
solution = strrep(solution,'REFERENCEPRESSURE',num2str(referencePressure));

solution = strrep(solution,'XCOMPONENTOFLIFT',num2str(xComponentOfLift));
solution = strrep(solution,'ZCOMPONENTOFLIFT',num2str(zComponentOfLift));
solution = strrep(solution,'XCOMPONENTOFDRAG',num2str(xComponentOfDrag));
solution = strrep(solution,'ZCOMPONENTOFDRAG',num2str(zComponentOfDrag));

solution = strrep(solution,'REPORTNAME',reportName);

% remove doubled newline characters to prevent output of empty lines, which can cause errors while reading the journal in fluent
%solution = strrep(solution,newline,'');  

% save meshing journal

fid = fopen("M:\Studium\Projektarbeit\Projektarbeit_CFD\autoCFDTool\CFD\Solver\fluentSolver.jou",'wt');
fprintf(fid,'%s',solution);
fclose(fid);
%clear

disp('### editSolutionParamInJournal finished')