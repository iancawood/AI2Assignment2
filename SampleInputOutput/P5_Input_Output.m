rng(0);  % set  random number generator to the same starting point

A = [ 1 0 3; 2 1 2; 1 3 3 ];
imSmall = cat(3,A,A,A);
scribbleSmall = [1 0 0; 1 0 0; 0 2 2];

lambda = 1;
numClusters = 0;
inftyCost = 1000;

[segm,e2]  = segmentGC(imSmall,scribbleSmall,lambda,numClusters,inftyCost)

%sigma =   2.0833   % the value of sigma computed on the input image
                    % I display it here for your debugging purposes
                    % but you are not required to have it as output

% segm =
% 
%      0     0     0
%      0     0     0
%      0     1     1
% 
% 
% e2 =
% 
%     1.5524



numClusters = 3;

[segm,e2]  = segmentGC(imSmall,scribbleSmall,lambda,numClusters,inftyCost)

%  reshape(clusters,3,3)  % you don't have to display clustering that you
                          %  get with kmeans, but I'm displaying it for
                          %  debuggin purposes
% 
% ans =
% 
%      3     3     2
%      1     3     1
%      3     2     2
%
%
% segm =
% 
%     0     0     1
%     0     0     1
%     0     1     1
% 
% 
% e2 =
% 
%     1.1445



load q5; % loads a larger example from file 

im = imread('square.png');
im = double(im);

lambda = 50;
numClusters = 50;
inftyCost = 1000;
[segm,e2]  = segmentGC(im,scribblesSquare,lambda,numClusters,inftyCost);
e2

% sigma = 165.1678  % the value of sigma computed on the input image
% e2 = 3.9624e+04
% I also saved the segmentation you should get in file "squareOut.png"
% where 0 corresponds to the background and 255 to the object

