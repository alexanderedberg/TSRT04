function outcome = count_each_outcome(throw)
%UNTITLED4 Summary of this function goes here
%   Loops through the throw result and counts how many times each die value
%   appears

count_outcome = zeros(1,6);

for i = 1:length(throw)
    for j = 1:6
        
        if j == throw(i)

            count_outcome(j) = count_outcome(j)+1;

        end
    end
end

count_outcome;

[M,I] = max(count_outcome);

outcome = I;
end