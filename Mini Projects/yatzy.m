%Alexander Edberg (aleed476)


clear
close all

nr_of_die = 5;
number_of_experiments = 10000;

throw_vector = monte_carlo(number_of_experiments)



histogram(throw_vector)


