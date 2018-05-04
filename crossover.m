function [ childPath ] = crossover( parent1Path, parent2Path, prob )
% Generating child path from given two parent pathes by using ordered one
% crossover method.
    random = rand();
    if prob <= random;
        [l, length] = size(parent1Path);
        childPath = zeros(l,length);
        setSize = int8(length/2) -1;
        offset = randi(setSize);

        for i=offset:setSize+offset-1;
            childPath(1,i) = parent1Path(1,i);
        end
        iterator = i+1;
        j = iterator;
        while any(childPath == 0);
            if j > length;
                j = 1;
            end

            if iterator > length;
                iterator = 1;
            end
            if ~any(childPath == parent2Path(1,j));
                childPath(1,iterator) = parent2Path(1,j);
               iterator = iterator + 1;
            end
            j = j + 1;
        end
    else
        [l, length] = size(parent1Path);
        childPath = generateIndividual(length);
    end
end

