function [results, integrated_result] = performFirstIntegration(data)
    x_vals = [];
    integral_vals = [];

    i = 1;
    while i <= size(data, 1)
        x = data(i, 1);
        points_with_same_x = data(data(:, 1) == x, 2:end);

        num_intervals = size(points_with_same_x, 1);

        if num_intervals == 2
            integral_val = TrapezoidalRule(points_with_same_x);
        elseif num_intervals == 3
            integral_val = Simpsons1_3Rule(points_with_same_x);
        elseif num_intervals == 4
            integral_val = Simpsons3_8Rule(points_with_same_x);
        elseif num_intervals == 5
            integral_val = CompositeSimpsons1_3Rule(points_with_same_x);
        else
            error('The number of intervals should be 2, 3, 4, or 5.');
        end

        x_vals = [x_vals; x];
        integral_vals = [integral_vals; integral_val];

        i = i + num_intervals;
    end

    results = [x_vals, abs(integral_vals)];

    % Perform secondary integration using the appropriate method
    num_intervals_total = size(x_vals, 1);
    if num_intervals_total == 2
        integrated_result = TrapezoidalRule(results);
    elseif num_intervals_total == 3
        integrated_result = Simpsons1_3Rule(results);
    elseif num_intervals_total == 4
        integrated_result = Simpsons3_8Rule(results);
    elseif num_intervals_total == 5
        integrated_result = CompositeSimpsons1_3Rule(results);
    else
        error('The total number of intervals should be 2, 3, 4, or 5.');
    end
end
