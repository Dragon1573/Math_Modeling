function diffY = vdp1000(~, y)
diffY = zeros(2, 1);
diffY(1) = y(2);
diffY(2) = 1000 * (1 - y(1) ^ 2) * y(2) - y(1);
end