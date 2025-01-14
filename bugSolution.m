function result = myFunction(input)
  try
    % Some code here that might cause an error
    if input < 0
      error('Input must be non-negative');
    end
    % ... more code ...
  catch ME
    % Handle the error gracefully
    disp(['Error occurred: ' ME.message]);
    result = NaN; % Return a default value
  end
end

% Example usage
input = -1;
result = myFunction(input); 
if isnan(result)
  disp('Error was caught and handled successfully.');
end