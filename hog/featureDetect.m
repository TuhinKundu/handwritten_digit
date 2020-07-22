function [ Hist ] = featureDetect( Im )
    
if size(Im,3)==3
    Im=rgb2gray(Im);
end
addpath('Viola_Jones');

[X,Y,height,width] = violaJones(Im);
cropI = imcrop(Im,[X,Y,height,width]);

cropI = imresize(cropI,[32,32]);

%M = extractLBPFeatures(cropI,'NumNeighbors',8);
% 
% I1 = cropI(10:20,10:30);
% I2 = cropI(20:30,10:30);
% I3 = cropI(30:40,10:30);
% 
% % lbpHist1 = lbp2(I1);
% %  lbpHist2 = lbp2(I2);
% %  lbpHist3 = lbp2(I3);
% 
% lbpHist1 =extractLBPFeatures(I1);
%  lbpHist2 =extractLBPFeatures(I2);
%  lbpHist3 =extractLBPFeatures(I3);

%lbpHist = [lbpHist1,lbpHist2,lbpHist3];


%Hist=hog2(cropI);
%opts = {'NumBins',4};
[Hist] = extractHOGFeatures(cropI);
end

