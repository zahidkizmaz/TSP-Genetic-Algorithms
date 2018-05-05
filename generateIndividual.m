function [ path ] = generateIndividual( lengthOfRoad )
%generateIndividual Generates a random path.

path = randperm(lengthOfRoad);

end

