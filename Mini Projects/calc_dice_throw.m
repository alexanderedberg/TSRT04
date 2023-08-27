function throw_result = calc_dice_throw(nr_of_die)
%calc_dice_throw Summary of this function goes here
%   Creates 1xn vector with values between 0 and 1 in a uniform distribution
%   mutliply that vector by 6 and then round up to the nearest integer

throw_result = ceil(rand(1,nr_of_die)*6);


end