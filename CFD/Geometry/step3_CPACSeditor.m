% runGeometryCreation.m
% writes converted data to CPACS configuration file
% date of creation: 03.06.2022
% developer:Moritz Burmester
% contact:moritz@burmester-iz.de


%open default cpacs file
cpacs = fileread('candidateScheme.cpacs.xml');
%replace dummy parameters
newcpacs = strrep(cpacs,'***AOA',testParameter);
%save newcpacs to CAD-export ready cpacs file

disp('CPACS definition file has been edited')