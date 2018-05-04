clear;
clc;
prompt = 'What is the number of cities in this TSP program? ';
numberOfCities = input(prompt);

prompt = 'What is the number of population size? ';
popSize = input(prompt);
tic
cities = rand(2,numberOfCities) * 10;

distances = calculateDistance(cities);

pop = population(numberOfCities, popSize);

[fitnessValues, totalDistances, minPath, maxPath] = fitness(distances, pop);

sortedTotalDistances = sortrows (totalDistances);

parent1  = sortedTotalDistances(1,1);
[parent1X,parent1Y] = find(totalDistances==parent1);
parent1Path = pop(parent1X,parent1Y);

parent2  = sortedTotalDistances(1,1);
[parent2X,parent2Y] = find(totalDistances==parent2);
parent2Path = pop(parent2X,parent2Y);

timeElapsed = toc

