function result = myFunction(input)
% This function demonstrates an uncommon MATLAB bug related to logical indexing with empty arrays.

if isempty(input)
  result = []; % Handle empty input case
  return;
end

% Incorrect logical indexing:  This will produce an error if any element of the conditional is empty
% logicalIndex = (input > 5) & (input < 10); % this line causes the error
% result = input(logicalIndex);

% Correct approach: Use a safer way to handle potential empty arrays in logical indexing
logicalIndex = (input > 5) & (input < 10);
result = input(logicalIndex);

end