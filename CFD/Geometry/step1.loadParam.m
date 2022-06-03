%opens aircraft configuration file as variable "param"


%Path has to be set or automated in some way!

input = load('M:\Studium\Projektarbeit\Ressourcen\Input_Dateien\Flugzeug_9330466532.mat'); %load input file as variable

cell = struct2cell(input);          %convert struct to cell array (1x1)
param = cell{1};                      %extract matrix from cell
%param = mat(:,4);                   %extract parameter vector from matrix

clear cell, clear input  %delete temporary data

msg = "parameter input file loaded"
clear msg