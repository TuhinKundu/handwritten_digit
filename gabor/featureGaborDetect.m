function [ Hist ] = featureGaborDetect( Im )
    
if size(Im,3)==3
    Im=rgb2gray(Im);
end
addpath('Viola_Jones');

[X,Y,height,width] = violaJones(Im);
cropI = imcrop(Im,[X,Y,height,width]);

cropI = imresize(cropI,[32,32]);

g=gaborFilterBank(5,8,39,39);

[Hist]=gaborFeatures(cropI,g,4,4);
end

