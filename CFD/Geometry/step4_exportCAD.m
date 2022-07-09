% runGeometryCreation.m
% this script triggers python script "exportCAD.py" to create the STEP file
% date of creation: 03.06.2022
% developer:Moritz Burmester
% contact:moritz@burmester-iz.de

%pyrunfile ("exportCAD.py", '.\candidate.cpacs.xml')
system('python3.9 .\exportCAD.py .\candidate.cpacs.xml')