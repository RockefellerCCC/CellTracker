function [fimgs, cols]=shapePicturesFromMatfile(matfile,shapenum)


pp=load(matfile,'plate1');
co=pp.plate1.colonies;
inds = find([co.shape]==shapenum);

for ii=1:length(inds)
    fimgs{ii}=pp.plate1.getColonyImages(inds(ii));
    cols(ii)=co(inds(ii));
end


    
    