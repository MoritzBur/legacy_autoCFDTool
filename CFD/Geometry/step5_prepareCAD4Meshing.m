% step5_prepareCAD4Meshing.m
% this script triggers python/SpaceClaim script
% "prepareCAD4Meshing.scscript" to create the "negative" flow domain around
% the "positive" CAD geometry provided by CPACS/TiGL
% date of creation: 15.09.2022
% developer:Moritz Burmester
% contact:moritz@burmester-iz.de

system('"C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Ansys 2022 R1\Ansys Discovery Suite\SpaceClaim 2022 R1.lnk" /RunScript="M:\Studium\Projektarbeit\Projektarbeit_CFD\autoCFDTool\CFD\Geometry\prepareCAD4Meshing.scscript" /UseCurrentDirectory=True /Headless=True /ExitAfterScript=True ')

disp('### CAD preparation finished')