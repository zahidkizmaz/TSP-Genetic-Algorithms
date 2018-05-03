prompt = 'What is the number of cities in this TSP program? ';
numberOfCities = input(prompt);
cities = rand(2,numberOfCities) * 10;

distances = calculateDistance(cities);