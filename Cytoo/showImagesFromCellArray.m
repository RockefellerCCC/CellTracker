function showImagesFromCellArray(cellarray,chan)

nimg=length(cellarray);

sc_img=randi(nimg);

sc=stretchlim(cellarray{sc_img}{chan},[0.05 0.99]);

nsq=ceil(sqrt(nimg));

figure;
for ii=1:nimg
    subplot(nsq,nsq,ii); imshow(imadjust(cellarray{ii}{chan},sc));
end
 