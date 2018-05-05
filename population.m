function [ pop ] = population( numberOfCities, popSize )
%population Generates a population sized of given popSize number.  


    pop = zeros(popSize, numberOfCities);
    for i=1:popSize;
       pop(i,:) = generateIndividual(numberOfCities); 
    end
end

