% runGeometryCreation.m
% writes converted data to CPACS configuration file
% date of creation: 03.06.2022
% developer:Moritz Burmester
% contact:moritz@burmester-iz.de


% open default cpacs file
cpacs = fileread('candidateScheme.cpacs.xml');

% replace dummy parameters
% fuselage parameters
cpacs = strrep(cpacs,'CROSSSECTIONTYPE',crossSectionType);
cpacs = strrep(cpacs,'WIDTHFUSELAGE',widthFuselage);
cpacs = strrep(cpacs,'HEIGHTFUSELAGE',heightFuselage);

cpacs = strrep(cpacs,'NOSESECTION2X',noseSection2x);
cpacs = strrep(cpacs,'NOSESECTION3X',noseSection3x);
cpacs = strrep(cpacs,'NOSESECTION4X',noseSection4x);

cpacs = strrep(cpacs,'HULLSECTION1X',hullSection1x);
cpacs = strrep(cpacs,'HULLSECTION2X',hullSection2x);
cpacs = strrep(cpacs,'HULLSECTION3X',hullSection3x);

cpacs = strrep(cpacs,'TAILSECTION1X',tailSection1x);
cpacs = strrep(cpacs,'TAILSECTION2X',tailSection2x);


%save newcpacs to CAD-export ready cpacs file
fid = fopen('candidate.cpacs.xml','wt');
fprintf(fid,'%s',cpacs);
fclose(fid);

disp('CPACS definition file has been edited')