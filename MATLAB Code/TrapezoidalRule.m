function integral_val = TrapezoidalRule(points)
    % Assuming points is a 2x2 matrix (2 points, each with (y, z) coordinates)
    h = points(2, 1) - points(1, 1);
    integral_val = h * (points(1, 2) + points(2, 2)) / 2;
end
