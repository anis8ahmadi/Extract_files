function [out1,out2] = copie_files()
 

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


% Find the FreeSurfer files
fs_left = fullfile(config.freesurfer, 'mri','lh.hippoSfVolumes-T1.v10.txt');

disp('working directory is');
pwd

text1= fileread(fs_left);
text1.fname = 'lh.txt';
out1= text1.fname;

fs_right = fullfile(config.freesurfer, 'mri','rh.hippoSfVolumes-T1.v10.txt');

disp('working directory is');
pwd
text2= fileread(fs_right);
text2.fname = 'rh.txt';
out2= text2.fname;
end
