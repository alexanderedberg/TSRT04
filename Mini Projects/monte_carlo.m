function [throw_count_vector] = monte_carlo(number_of_experiments)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

throw_count_vector = []

nr_of_die = 5

for i = 1:number_of_experiments

throw = calc_dice_throw(nr_of_die)

[outcome,throw_count] = count_each_outcome(throw)

throw_count_vector = [throw_count_vector throw_count]


end
end