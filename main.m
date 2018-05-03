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

fitnessValues = fitness(distances, pop);

timeElapsed = toc