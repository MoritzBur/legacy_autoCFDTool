% runGeometryCreation.m
% converts configuration input data to parameters usable in CPACS
% date of creation: 03.06.2022
% developer:Moritz Burmester
% contact:moritz@burmester-iz.de

%define, which parameters of "param" are to be copied to "cpacsParamSet"
%(zu Testzwecken Rumpfbreite und -Höhe:)
choice = [55,185,62];

%create empty cpacsParamSet for cpacs definition
cpacsParamSet = zeros(700,2);
for i= 1:700
    cpacsParamSet(i,1) = i;
end


%read data from param to cpacsParamSet
%testParameter = num2str(cell2mat(param(27,4)));
for a = 0:700
    Lia = ismember(a,choice);
    if Lia==1
        %cpacsParamSet(a,2) = num2str(cell2mat(param(1,4)));
        cpacsParamSet(a-1,2) = cell2mat(param(a-1,4));
        disp('X')
    end
end
%special conversion treatments