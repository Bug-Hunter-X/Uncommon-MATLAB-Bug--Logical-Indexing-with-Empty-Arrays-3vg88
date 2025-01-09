function result = bugSolution(input)
% This function demonstrates the corrected approach to logical indexing with empty arrays.

if isempty(input)
  result = []; % Handle empty input case
  return;
end

% Correct logical indexing: Check if logicalIndex is empty before indexing
logicalIndex = (input > 5) & (input < 10);
if ~isempty(logicalIndex)
    result = input(logicalIndex);
else
    result = []; % Handle the case where logicalIndex is empty
end
end