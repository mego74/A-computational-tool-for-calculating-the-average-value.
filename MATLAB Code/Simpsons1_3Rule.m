function integral_val = Simpsons1_3Rule(points)
    % Assuming points is a 3x2 matrix (3 points, each with (y, z) coordinates)
    h = points(2, 1) - points(1, 1);
    integral_val = h * (points(1, 2) + 4 * points(2, 2) + points(3, 2)) / 3;
end
