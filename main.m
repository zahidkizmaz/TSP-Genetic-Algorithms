prompt = 'What is the number of cities in this TSP program? ';
numberOfCities = input(prompt);

prompt = 'What is the number of population size? ';
popSize = input(prompt);

cities = rand(2,numberOfCities) * 10;

distances = calculateDistance(cities);

population = population(numberOfCities, popSize);