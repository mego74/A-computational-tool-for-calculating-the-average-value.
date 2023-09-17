function [integrated_val1, integrated_val2, total_integration] = performSecondIntegration(filename)
    data_upper = dlmread(filename);

    % Separate the points into two intervals: 1-4 (Simpsons 3/8 Rule) and 5-8 (Composite Simpsons 1/3 Rule)
    interval1 = data_upper(1:4, :);
    interval2 = data_upper(4:8, :);

    % Perform integration using the appropriate methods
    integrated_val1 = Simpsons3_8Rule(interval1);
    integrated_val2 = CompositeSimpsons1_3Rule(interval2);

    % Calculate the total integration value
    total_integration = abs(integrated_val1) + abs(integrated_val2);
end
