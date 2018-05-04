function [ mutatedPath ] = mutate( path, prob )
%UNTÝTLED2 Summary of this function goes here
%   Detailed explanation goes here
    random = rand();
    if random <= prob; 
        [l,length] = size(path);
        index1 = randi(length);
        index2 = randi(length);

        % Swap operation.
        temp = path(l,index1);
        path(l,index1) = path(l,index2);
        path(l,index2)=temp;

    end
        mutatedPath = path; 
end

