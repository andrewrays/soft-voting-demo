function check_x_labels(app, AxesID)
% CHECK_X_LABELS    Rename X labels if there are identical values
%   CHECK_X_LABELS(app, AXESID) Implements an algorithm of searching and
%   changing X labels of identical values of different signals. It works in
%   an axes defined by AXESID to find its children.
%
%   Also, there is a local auxiliary function find_multiple() whitten by
%   Jan.
%
%   See <https://www.mathworks.com/matlabcentral/answers/336500-finding-the-indices-of-duplicate-values-in-one-array#answer_319943>

% Find all children of specific axes
TextObjs = findobj(AxesID.Children, Type = 'Text');

% Change the order of the children in a list
xLabels = flip(findobj(TextObjs, ...
    {'String', 'x_1'}, '-or', ...
    {'String', 'x_2'}, '-or', ...
    {'String', 'x_3'}, '-or', ...
    {'String', 'x_4'}, '-or', ...
    {'String', 'x_5'}, '-or', ...
    {'String', 'x_6'}));

% Find the identical elements in signals array and their indices
[idx, sameValues] = find_multiple(app.Signals.Array(1:str2double(app.Signals.Quantity)));

% Declare required variables
Groups = cell(1,length(sameValues));
G = cell(1,length(sameValues));
GroupFirstIdx = zeros(1,length(sameValues));
GroupOtherIdx = cell(1,length(sameValues));

% Create a template with strings of indices of signals with identical values
for i = 1:length(sameValues)
    G{i} = find(app.Signals.Array(1:str2double(app.Signals.Quantity)) == sameValues(i));
    GroupFirstIdx(i) = G{i}(1);
    GroupOtherIdx{i} = G{i}(2:end);
    Groups{i} = strjoin(['x_' strjoin(string(G{i}), ',_')], '');
end

% Rename X labels
if length(idx) > 1
    for j = 1:length(sameValues)
        set(xLabels(GroupOtherIdx{j}), String = "");
        set(xLabels(GroupFirstIdx(j)), String = Groups{j});
    end
end
end

function [idx, sameValues] = find_multiple(A)
% FIND_MULTIPLE     Detect identical elements in an array
%   The algorithm was written by Jan
% <https://www.mathworks.com/matlabcentral/answers/336500-finding-the-indices-of-duplicate-values-in-one-array#answer_319943>
T = true(size(A));
off = false;
A = A(:);
for iA = 1:numel(A)
    if T(iA)          % if not switched already
        d = (A(iA) == A);
        if sum(d) > 1   % More than 1 occurrence found
            T(d) = off;  % switch all occurrences
        end
    end
end
idx = find(~T);
sameValues = unique(A(~T)');
end
