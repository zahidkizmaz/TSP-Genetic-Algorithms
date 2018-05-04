function [ cities ] = generateCities( numberOfCities, range )
%generateCities Generates cities on random locations.

    cities = rand(2,numberOfCities) * range;

end

