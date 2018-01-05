

%% ================= Part 1: Find Closest Centroids ====================
%  To help you implement K-Means, we have divided the learning algorithm 
%  into two functions -- findClosestCentroids and computeCentroids. In this
%  part, you should complete the code in the findClosestCentroids function. 
clear ; close all; clc
fprintf('Finding closest centroids.\n\n');

% Load an example dataset that we will be using
load('ex7data2.mat');
K = 3; % 3 Centroids
initial_centroids = [3 3; 6 2; 8 5];
centroids = initial_centroids;
idx = zeros(size(X,1), 1);

K = size(centroids, 1);


idx = zeros(size(X,1), 1);


 m=length(X);


for i= 1:m
    
  for j = 1:K
   dist(i,j) =   norm(X(i,:) - centroids(j,:),2);
   [val(i),idx(i)] = min(min(dist(i,:),[],1));
  end
end 
% Compute Centroid
[m n] = size(X);
centroids = zeros(K, n);
agg=centroids;
dataset = [X, idx];

for r = 1:K
  j=0;
   for i = 1:m
    if (dataset(i,3) == r)
      agg(r,:)=agg(r,:) .+ X(i,:);
      j=j+1;
    end
  end
  centroids(r,:) = agg(r,:)./j;
end 

 