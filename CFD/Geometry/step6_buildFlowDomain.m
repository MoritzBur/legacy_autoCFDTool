% step6_buildFlowDomain.m
% this script triggers python/SpaceClaim script
% "spaceClaimDomain.py" to create the "negative" flow domain around
% the "positive" CAD geometry provided by CPACS/TiGL
% date of creation: 15.09.2022
% developer:Moritz Burmester
% contact:moritz@burmester-iz.de

disp('### step6_buildFlowDomain started...')

load ..\..\Input\envConfig.mat

currentPath = pwd;
command = append(spaceClaimPath," /RunScript=",'"',currentPath,"\",'spaceClaimDomain.py"'," /UseCurrentDirectory=True /Headless=True /ExitAfterScript=True");
system(command)

disp('### step6_buildFlowDomain finished')