% runGeometryCreation.m
% converts configuration input data to parameters usable in CPACS
% date of creation: 03.06.2022
% developer:Moritz Burmester
% contact:moritz@burmester-iz.de

% extract usable paramater data

% fuselage parameters
%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%

% crossSectionType
if contains(param{37,4},'Rechteck')
    crossSectionType = "squareProfile";
else 
    crossSectionType = "circleProfile";
end

% widthFuselage
widthFuselage = num2str(param{54,4}*1/1000); % scale with respect to profile base definition in cpacs file

% heightFuselage
heightFuselage = num2str(param{184,4}*1/1000); % scale with respect to profile base definition in cpacs file
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%bis hier getestet und ok!
% lengthNose
% noseSection1x is always = 0
noseSection2x = num2str(param{216,4}*0.125);
noseSection3x = num2str(param{216,4}*0.45);
noseSection4x = num2str(param{216,4}); % this will create a smooth ellipsoid type nose with the section scaling as defines in cpacs file

% lengthMidSection
hullSection1x = num2str(param{216,4}+param{219,4}*0.925);
hullSection2x = num2str(param{216,4}+param{219,4});
hullSection3x = num2str(param{216,4}+param{219,4}*1.075);

% lenghtTail
tailSection1x = num2str(param{216,4}+param{219,4}+param{212,4}*0.53);
tailSection2x = num2str(param{216,4}+param{219,4}+param{212,4});


% main wing paramaters
%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%
% lePosWing
% planformWing
% verticalPosWing
% profileWing
% rootLengthWing
% tipLengthWing
% alphaWing
% twistWing
% semiSpanWing
% kinkPosWing
% sweepWing



% elevator paramaters
%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%
% lePosElevator
% planformElevator
% profileElevator
% rootLengthElevator
% tipLengthElevator
% alphaElevator
% twistElevator
% semiSpanElevator
% sweepElevator



% rudder paramaters
%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%
% lePosRudder
% planformRudder
% profileRudder
% rootLengthRudder
% tipLengthRudder
% spanRudder
% sweepRudder
