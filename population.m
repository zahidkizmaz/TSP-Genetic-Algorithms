function [ pop ] = population( numberOfCities, popSize )
%UNTÝTLED5 Summary of this function goes here
%   Detailed explanation goes here

    pop = zeros(popSize, numberOfCities);
    for i=1:popSize;
       pop(i,:) = generateIndividual(numberOfCities); 
    end
end

