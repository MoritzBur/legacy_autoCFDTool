% step1_editMeshParamInJournal.m
% writes desired meshing parameters into fluent journal file
% date of creation: 17.09.2022
% developer:Moritz Burmester
% contact:moritz@burmester-iz.de

disp('### editMeshParamInJournal started...')

% include meshing parameter file
load Input\meshingParameters.mat;

% replace placeholders in meshing journal
meshing = fileread('CFD\Mesh\fluentMeshingTemplate.jou');

meshing = strrep(meshing,'SIZEWINGSURF',num2str(sizeWingSurf));
meshing = strrep(meshing,'SIZEWINGTIP',num2str(sizeWingTip));
meshing = strrep(meshing,'NUMBEROFLAYERS',num2str(numberOfLayers));
meshing = strrep(meshing,'FIRSTLAYERHEIGHT',num2str(firstLayerHeight));
meshing = strrep(meshing,'CURVATURENORMALANGLE',num2str(curvatureNormalAngle));
meshing = strrep(meshing,'CURVATUREMAXSIZE',num2str(curvatureMaxSize));
meshing = strrep(meshing,'CURVATUREMINSIZE',num2str(curvatureMinSize));

% remove newline characters to prevent output of empty lines, which can cause errors while reading the journal in fluent
%meshing = strrep(meshing,newline,'');

% save meshing journal

fid = fopen("M:\Studium\Projektarbeit\Projektarbeit_CFD\autoCFDTool\CFD\Mesh\fluentMeshing.jou",'wt');
fprintf(fid,'%s',meshing);
fclose(fid);

disp('### editMeshParamInJournal finished')