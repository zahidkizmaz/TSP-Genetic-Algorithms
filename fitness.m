function [ fitnessValues, pathTotalDistances,minPath, maxPath ] = fitness( distances, pop )
%UNTÝTLED Summary of this function goes here
%   Detailed explanation goes here
    [popSize, col] = size(pop);
    pathTotalDistances = zeros(popSize,1);
    fitnessValues = zeros(popSize,1);
    for i=1:popSize;
       for j=1:col-1;
          pathTotalDistances(i) = pathTotalDistances(i) + distances(pop(i,j),pop(i,j+1))
       end 
    end
    minPath = min(pathTotalDistances);
    maxPath = max(pathTotalDistances);
   
    for i=1:length(pathTotalDistances);
        fitnessValues(i,1)=(maxPath - pathTotalDistances(i,1)+0.000001) / (maxPath-minPath+0.00000001);
    end
end

