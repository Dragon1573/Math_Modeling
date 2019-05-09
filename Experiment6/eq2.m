function diffY = eq2(t, y)
diffY = zeros(2, 1);
diffY(1) = 5 * (1 - y(1)) / sqrt((1 - y(1)) ^ 2 + (t - y(2)) ^ 2);
diffY(2) = 5 * (t - y(2)) / sqrt((1 - y(1)) ^ 2 + (t - y(2)) ^ 2);
end