function runMultipleCytoo(direc,paramfile,step)

ff=dir(direc);

if ~exist('paramfile','var') || isempty(paramfile)
    paramfile=[];
end

if ~exist('step','var')
    step=1;
end

for ii=1:length(ff)
    if isdir([direc filesep ff(ii).name]) && ~strcmp(ff(ii).name(1),'.')
        runFullTile([direc filesep ff(ii).name],'outall.mat',paramfile,step);
    end
end