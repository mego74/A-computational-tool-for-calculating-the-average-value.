function integral_val = Simpsons3_8Rule(points)
    % Assuming points is a 4x2 matrix (4 points, each with (y, z) coordinates)
    h = points(2, 1) - points(1, 1);
    integral_val = 3 * h * (points(1, 2) + 3 * points(2, 2) + 3 * points(3, 2) + points(4, 2)) / 8;
end
