%writes converted data to CPACS configuration file

%fid1 = fopen('candidate.cpacs.xml',w)
cpacs = fileread('candidate.cpacs.xml')
newcpacs = strrep(cpacs,'***AOA',testParameter)