% step5_flowDomainEditor.m
% this script replaces placeholders in spaceClaimDomain.py according to
% parameters in "meshingParameters.mat"
% date of creation: 11.10.2022
% developer:Moritz Burmester
% contact:moritz@burmester-iz.de

disp('### step5_flowDomainEditor started...')

load Input\meshingParameters.mat
load Input\envConfig.mat

% replace placeholders in domain build script
domain = fileread('CFD\Geometry\spaceClaimDomainTemplate.py');

domain = strrep(domain,'XMAXBOUND',num2str(xmaxBound));
domain = strrep(domain,'XMINBOUND',num2str(xminBound));
domain = strrep(domain,'YMAXBOUND',num2str(ymaxBound));
domain = strrep(domain,'ZMAXBOUND',num2str(zmaxBound));
domain = strrep(domain,'ZMINBOUND',num2str(zminBound));
domain = strrep(domain,'PARENTPATH',num2str(parentPath));

% save meshing journal
fid = fopen("spaceClaimDomain.py",'wt');
fprintf(fid,'%s',domain);
fclose(fid);

disp('### step5_flowDomainEditor finished')