function outcome = count_each_outcome(throw)
%UNTITLED4 Summary of this function goes here
%   Loops through the throw result and counts how many times each die value
%   appears

count_outcome = zeros(1,6);

for dice = 1:length(throw)
    for value = 1:6
        
        if value == throw(dice)

            count_outcome(value) = count_outcome(value)+1;

        end
    end
end

count_outcome;

[number_of_most_common_outcome,most_common_outcome] = max(count_outcome);
number_of_most_common_outcome
outcome = most_common_outcome;



rethrow = []

for dice = 1:length(throw)
    if throw(dice) ~= most_common_outcome
        rethrow = [rethrow dice]

    end
end




end