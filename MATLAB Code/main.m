function main()
    % Read data from the text file
    data = dlmread('points.txt'); % Assuming (x, y, z) points are separated by spaces or commas

    % Sort data based on the x coordinate
    data = sortrows(data, 1);

    % Perform the first integration
    [results, integrated_result] = performFirstIntegration(data);

    % Display the results
    disp('The first integral :')
    disp('X coordinate  Integral Value ');
    disp(results);
    
    disp('The volume of the lake');
    disp(integrated_result);

    % Perform the second integration using upperarea.txt data
    [integrated_val1, integrated_val2, total_integration] = performSecondIntegration('upperarea.txt');

    % Display the result for the second integration (Upper Integration)
    disp('Upper Integration of the area:');
    disp(abs(total_integration));

    % Perform the second integration using lowerarea2.txt data
    [integrated_val3, integrated_val4, total_integration2] = performSecondIntegration('lowerarea.txt');

    % Display the result for the second integration (Lower Integration)
    disp('Lower Integration of the area:');
    disp(abs(total_integration2));

    % Calculate the total area of the lake
    area = abs(total_integration) - abs(total_integration2);
    disp('The area of the lake:');
    disp(abs(area));

    % Calculate the average depth of the lake
    disp('The average depth of the lake:');
    disp(abs(integrated_result) / abs(area));
end
