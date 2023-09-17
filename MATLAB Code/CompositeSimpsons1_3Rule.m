function integral_val = CompositeSimpsons1_3Rule(points)
    % Assuming points is a 5x2 matrix (5 points, each with (y, z) coordinates)
    h = points(2, 1) - points(1, 1);
    integral_val = (h / 3) * (points(1, 2) + 4 * points(2, 2) + 2 * points(3, 2) + 4 * points(4, 2) + points(5, 2));
end
