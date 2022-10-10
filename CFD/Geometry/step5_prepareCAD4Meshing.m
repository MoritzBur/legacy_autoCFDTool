% step5_prepareCAD4Meshing.m
% this script triggers python/SpaceClaim script
% "prepareCAD4Meshing.scscript" to create the "negative" flow domain around
% the "positive" CAD geometry provided by CPACS/TiGL
% date of creation: 15.09.2022
% developer:Moritz Burmester
% contact:moritz@burmester-iz.de

disp('### step5_prepareCAD4Meshing started...')
load ..\..\Input\pathConfig.mat
currentPath = pwd;
command = append(spaceClaimPath," /RunScript=",'"',currentPath,"\",'prepareCAD4Meshing.scscript"'," /UseCurrentDirectory=True /Headless=True /ExitAfterScript=True");
system(command)

disp('### step5_prepareCAD4Meshing finished')