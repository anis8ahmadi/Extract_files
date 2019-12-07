function out1=copie()
 

switch getenv('ENV')
case 'IUHPC'
        disp('loading paths (HPC)')
        addpath(genpath('/N/u/brlife/git/vistasoft'))
        addpath(genpath('/N/u/brlife/git/jsonlab'))
case 'VM'
        disp('loading paths (VM)')
  	addpath(genpath('/usr/local/jsonlab'))
	addpath(genpath('/usr/local/vistasoft'))
end

config = loadjson('config.json');
end
