function [ distances ] = calculateDistance( cities )
%UNT�TLED Summary of this function goes here
%   Detailed explanation goes here
    [row, col] = size(cities);
    distances = zeros(col);

    for i=1:col;
        for j=1:col;
            distances(i,j)= distances(i,j)+ sqrt( (cities(1,i)-cities(1,j))^2 + (cities(2,i)-cities(2,j))^2  );           
        end
    end
end

