function [ output_args ] = visualizeGeneration( cities, pop, minPath, totalDistances )
%UNTÝTLED Summary of this function goes here
%   Detailed explanation goes here
    
    [l, length] = size(cities);
    xDots = cities(1,:);
    yDots = cities(2,:);
    figure(1);
    
    title('Genetic Algorithms for TSP');
    plot(xDots,yDots, 'o');
    hold on
    [minPathX,minPathY] = find(totalDistances==minPath,1, 'first');
    bestPopPath = pop(minPathX, :);
    bestX = zeros(1,length);
    bestY = zeros(1,length);
    for j=1:length;
       bestX(1,j) = cities(1,bestPopPath(1,j));
       bestY(1,j) = cities(2,bestPopPath(1,j));
    end

    plot(bestX(1,:),bestY(1,:), 'red');
    grid on
    hold off
end

