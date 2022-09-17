% runGeometryCreation.m
% this script triggers subcomponents
% date of creation: 03.06.2022
% developer:Moritz Burmester
% contact:moritz@burmester-iz.de


run("step1_loadParam.m")
run("step2_convertData.m")
run("step3_CPACSeditor.m")
run("step4_exportCAD.m")
run("step5_prepareCAD4Meshing.m")

clear;

disp('###### runGeometryCreation finished')