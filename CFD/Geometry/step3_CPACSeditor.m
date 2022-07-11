% runGeometryCreation.m
% writes converted data to CPACS configuration file
% date of creation: 03.06.2022
% developer:Moritz Burmester
% contact:moritz@burmester-iz.de


%open default cpacs file
cpacs = fileread('candidateScheme.cpacs.xml');
%replace dummy parameters
cpacs = strrep(cpacs,'CROSSSECTIONTYPE',crossSectionType);
cpacs = strrep(cpacs,'WIDTHFUSELAGE',widthFuselage);
cpacs = strrep(cpacs,'HEIGHTFUSELAGE',heightFuselage);

%save newcpacs to CAD-export ready cpacs file
fid = fopen('candidate.cpacs.xml','wt');
fprintf(fid,'%s',cpacs);
fclose(fid);

disp('CPACS definition file has been edited')