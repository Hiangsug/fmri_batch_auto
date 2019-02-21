%-----------------------------------------------------------------------
% Job saved on 27-Dec-2018 14:06:34 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7487)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
%%
spm_jobman('initcfg');
file_direc = 'C:\Users\dell\Desktop\s45'

func_dir = [file_direc,'\func']
t1_dir = [file_direc,'\t1']

[selected_files,dirs] = spm_select('ExtFPList',func_dir,'^s45.*',Inf)

selected_files = cellstr(selected_files)
jobs{1}.spm.temporal.st.scans = {
                                        
                                        selected_files
                                        
                                        }';

%%
jobs{1}.spm.temporal.st.nslices = 40;
jobs{1}.spm.temporal.st.tr = 2.4;
jobs{1}.spm.temporal.st.ta = 0.583333333333333;
jobs{1}.spm.temporal.st.so = [1 3 5 7 9 11 13 15 17 19 21 23 25 27 29 31 33 35 37 39 2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40];
jobs{1}.spm.temporal.st.refslice = 1;
jobs{1}.spm.temporal.st.prefix = 'a';
jobs{2}.spm.spatial.realign.estwrite.data{1}(1) = cfg_dep('Slice Timing: Slice Timing Corr. Images (Sess 1)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','files'));
jobs{2}.spm.spatial.realign.estwrite.eoptions.quality = 0.9;
jobs{2}.spm.spatial.realign.estwrite.eoptions.sep = 4;
jobs{2}.spm.spatial.realign.estwrite.eoptions.fwhm = 5;
jobs{2}.spm.spatial.realign.estwrite.eoptions.rtm = 1;
jobs{2}.spm.spatial.realign.estwrite.eoptions.interp = 2;
jobs{2}.spm.spatial.realign.estwrite.eoptions.wrap = [0 0 0];
jobs{2}.spm.spatial.realign.estwrite.eoptions.weight = '';
jobs{2}.spm.spatial.realign.estwrite.roptions.which = [2 1];
jobs{2}.spm.spatial.realign.estwrite.roptions.interp = 4;
jobs{2}.spm.spatial.realign.estwrite.roptions.wrap = [0 0 0];
jobs{2}.spm.spatial.realign.estwrite.roptions.mask = 1;
jobs{2}.spm.spatial.realign.estwrite.roptions.prefix = 'r';
jobs{3}.spm.spatial.coreg.estimate.ref(1) = cfg_dep('Realign: Estimate & Reslice: Mean Image', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','rmean'));


[selected_t1files,dirs] = spm_select('ExtFPList',t1_dir,'.*',Inf)
selected_t1files = cellstr(selected_t1files)

jobs{3}.spm.spatial.coreg.estimate.source = selected_t1files;
jobs{3}.spm.spatial.coreg.estimate.other = {''};
jobs{3}.spm.spatial.coreg.estimate.eoptions.cost_fun = 'nmi';
jobs{3}.spm.spatial.coreg.estimate.eoptions.sep = [4 2];
jobs{3}.spm.spatial.coreg.estimate.eoptions.tol = [0.02 0.02 0.02 0.001 0.001 0.001 0.01 0.01 0.01 0.001 0.001 0.001];
jobs{3}.spm.spatial.coreg.estimate.eoptions.fwhm = [7 7];
jobs{4}.spm.spatial.preproc.channel.vols(1) = cfg_dep('Coregister: Estimate: Coregistered Images', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','cfiles'));
jobs{4}.spm.spatial.preproc.channel.biasreg = 0.001;
jobs{4}.spm.spatial.preproc.channel.biasfwhm = 60;
jobs{4}.spm.spatial.preproc.channel.write = [0 1];
jobs{4}.spm.spatial.preproc.tissue(1).tpm = {'C:\Program Files\MATLAB\R2018a\toolbox\spm12\spm12\tpm\TPM.nii,1'};
jobs{4}.spm.spatial.preproc.tissue(1).ngaus = 1;
jobs{4}.spm.spatial.preproc.tissue(1).native = [1 0];
jobs{4}.spm.spatial.preproc.tissue(1).warped = [0 0];
jobs{4}.spm.spatial.preproc.tissue(2).tpm = {'C:\Program Files\MATLAB\R2018a\toolbox\spm12\spm12\tpm\TPM.nii,2'};
jobs{4}.spm.spatial.preproc.tissue(2).ngaus = 1;
jobs{4}.spm.spatial.preproc.tissue(2).native = [1 0];
jobs{4}.spm.spatial.preproc.tissue(2).warped = [0 0];
jobs{4}.spm.spatial.preproc.tissue(3).tpm = {'C:\Program Files\MATLAB\R2018a\toolbox\spm12\spm12\tpm\TPM.nii,3'};
jobs{4}.spm.spatial.preproc.tissue(3).ngaus = 2;
jobs{4}.spm.spatial.preproc.tissue(3).native = [1 0];
jobs{4}.spm.spatial.preproc.tissue(3).warped = [0 0];
jobs{4}.spm.spatial.preproc.tissue(4).tpm = {'C:\Program Files\MATLAB\R2018a\toolbox\spm12\spm12\tpm\TPM.nii,4'};
jobs{4}.spm.spatial.preproc.tissue(4).ngaus = 3;
jobs{4}.spm.spatial.preproc.tissue(4).native = [1 0];
jobs{4}.spm.spatial.preproc.tissue(4).warped = [0 0];
jobs{4}.spm.spatial.preproc.tissue(5).tpm = {'C:\Program Files\MATLAB\R2018a\toolbox\spm12\spm12\tpm\TPM.nii,5'};
jobs{4}.spm.spatial.preproc.tissue(5).ngaus = 4;
jobs{4}.spm.spatial.preproc.tissue(5).native = [1 0];
jobs{4}.spm.spatial.preproc.tissue(5).warped = [0 0];
jobs{4}.spm.spatial.preproc.tissue(6).tpm = {'C:\Program Files\MATLAB\R2018a\toolbox\spm12\spm12\tpm\TPM.nii,6'};
jobs{4}.spm.spatial.preproc.tissue(6).ngaus = 2;
jobs{4}.spm.spatial.preproc.tissue(6).native = [0 0];
jobs{4}.spm.spatial.preproc.tissue(6).warped = [0 0];
jobs{4}.spm.spatial.preproc.warp.mrf = 1;
jobs{4}.spm.spatial.preproc.warp.cleanup = 1;
jobs{4}.spm.spatial.preproc.warp.reg = [0 0.001 0.5 0.05 0.2];
jobs{4}.spm.spatial.preproc.warp.affreg = 'mni';
jobs{4}.spm.spatial.preproc.warp.fwhm = 0;
jobs{4}.spm.spatial.preproc.warp.samp = 3;
jobs{4}.spm.spatial.preproc.warp.write = [0 1];
jobs{5}.spm.spatial.normalise.write.subj.def(1) = cfg_dep('Segment: Forward Deformations', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','fordef', '()',{':'}));
jobs{5}.spm.spatial.normalise.write.subj.resample(1) = cfg_dep('Segment: Bias Corrected (1)', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','channel', '()',{1}, '.','biascorr', '()',{':'}));
jobs{5}.spm.spatial.normalise.write.woptions.bb = [-78 -112 -70
                                                          78 76 85];
jobs{5}.spm.spatial.normalise.write.woptions.vox = [1 1 1];
jobs{5}.spm.spatial.normalise.write.woptions.interp = 4;
jobs{5}.spm.spatial.normalise.write.woptions.prefix = 'wm';
jobs{6}.spm.spatial.normalise.write.subj.def(1) = cfg_dep('Segment: Forward Deformations', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','fordef', '()',{':'}));
jobs{6}.spm.spatial.normalise.write.subj.resample(1) = cfg_dep('Realign: Estimate & Reslice: Resliced Images (Sess 1)', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{1}, '.','rfiles'));
jobs{6}.spm.spatial.normalise.write.woptions.bb = [-78 -112 -70
                                                          78 76 85];
jobs{6}.spm.spatial.normalise.write.woptions.vox = [3 3 3];
jobs{6}.spm.spatial.normalise.write.woptions.interp = 4;
jobs{6}.spm.spatial.normalise.write.woptions.prefix = 'wa';
jobs{7}.spm.spatial.smooth.data(1) = cfg_dep('Normalise: Write: Normalised Images (Subj 1)', substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','files'));
jobs{7}.spm.spatial.smooth.fwhm = [8 8 8];
jobs{7}.spm.spatial.smooth.dtype = 0;
jobs{7}.spm.spatial.smooth.im = 0;
jobs{7}.spm.spatial.smooth.prefix = 'swa';
%%
spm_jobman('run',jobs)
clear jobs;