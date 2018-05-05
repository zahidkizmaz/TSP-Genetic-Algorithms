function [ output_args ] = visualizeGeneration( cities, pop, minPath, totalDistances )
%Visualizing the cities and the best finded result according to algorithm.
 
    global gNumber;
    [l, length] = size(cities);
    xDots = cities(1,:);
    yDots = cities(2,:);
    %figure(1);
    title('Genetic Algorithms for TSP');
    plot(xDots,yDots, 'o', 'MarkerSize', 7.5, 'MarkerFaceColor', 'blue');
    xlabel('X Dimension');
    ylabel('Y Dimension');
    axis equal
    hold on
    [minPathX,minPathY] = find(totalDistances==minPath,1, 'first');
    bestPopPath = pop(minPathX, :);
    bestX = zeros(1,length);
    bestY = zeros(1,length);
    for j=1:length;
       bestX(1,j) = cities(1,bestPopPath(1,j));
       bestY(1,j) = cities(2,bestPopPath(1,j));
    end
title('Genetic Algorithms for TSP');
    plot(bestX(1,:),bestY(1,:), 'red', 'LineWidth', 1.25);
    legend('Cities', 'Path');
    axis equal
    grid on
    text(-40,99,sprintf('Generation number that path was found: %d Total path distance: %f',gNumber, minPath),'FontSize',10);
    drawnow
    hold off
end

