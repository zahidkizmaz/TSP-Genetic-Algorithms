clear;
clc;
prompt = 'What is the number of cities in this TSP program? ';
numberOfCities = input(prompt);

prompt = 'What is the number of population size? ';
popSize = input(prompt);
tic

% Generation cities on random locations.
cities = generateCities(numberOfCities, 10);

% Calculating distances between cities according to created city locations.
distances = calculateDistance(cities);

% Generate population with random pathes.
pop = population(numberOfCities, popSize);

nextGeneration = zeros(popSize,numberOfCities);

% Calculate fitnesses for the pathes total distances.
[fitnessValues, totalDistances, minPath, maxPath] = fitness(distances, pop);

tournamentSize = int32(popSize *0.1);
for k=1:popSize;
    % Choosing parents for crossover operation bu using tournament approach.
    tournamentPopDistances=zeros( tournamentSize,1);
    for i=1:tournamentSize;
        randomRow = randi(popSize);
        tournamentPopDistances(i,1) = totalDistances(randomRow,1);
    end

    parent1  = min(tournamentPopDistances);
    [parent1X,parent1Y] = find(totalDistances==parent1,1, 'first');
    parent1Path = pop(parent1X(1,1),:);


    for i=1:tournamentSize;
        randomRow = randi(popSize);
        tournamentPopDistances(i,1) = totalDistances(randomRow,1);
    end

    parent2  = min(tournamentPopDistances);
    [parent2X,parent2Y] = find(totalDistances==parent2,1, 'first');
    parent2Path = pop(parent2X(1,1),:);
    
    childPath = crossover(parent1Path, parent2Path, 0.8);
    childPath = mutate(childPath, 0.05);
    
    nextGeneration(k,:) = childPath(1,:);
end
timeElapsed = toc

