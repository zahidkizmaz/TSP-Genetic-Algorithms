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

%sortedTotalDistances = sortrows (totalDistances);

tournamentSize = int32(popSize *0.1);

tournamentPopDistances=zeros( tournamentSize,1);
for i=1:tournamentSize;
    randomRow = randi(popSize);
    tournamentPopDistances(i,1) = totalDistances(randomRow,1);
end

parent1  = min(tournamentPopDistances);
[parent1X,parent1Y] = find(totalDistances==parent1);
parent1Path = pop(parent1X(1,1),:);


%tournamentPopDistances=zeros( tournamentSize,1);
for i=1:tournamentSize;
    randomRow = randi(popSize);
    tournamentPopDistances(i,1) = totalDistances(randomRow,1);
end

parent2  = min(tournamentPopDistances);
[parent2X,parent2Y] = find(totalDistances==parent2);
parent2Path = pop(parent2X(1,1),:);

timeElapsed = toc

