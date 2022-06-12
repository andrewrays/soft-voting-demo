function check_x_labels(app, AxesID)
TextObjs = findobj(AxesID.Children, Type = 'Text');
xLabels = flip(findobj(TextObjs, ...
    {'String', 'x_1'}, '-or', ...
    {'String', 'x_2'}, '-or', ...
    {'String', 'x_3'}, '-or', ...
    {'String', 'x_4'}, '-or', ...
    {'String', 'x_5'}, '-or', ...
    {'String', 'x_6'}));

[idx, sameValues] = find_multiple(app.Signals.Array(1:str2double(app.Signals.Quantity)));
Groups = cell(1,length(sameValues));
G = cell(1,length(sameValues));
GroupFirstIdx = zeros(1,length(sameValues));
GroupOtherIdx = cell(1,length(sameValues));
for i = 1:length(sameValues)
    G{i} = find(app.Signals.Array(1:str2double(app.Signals.Quantity)) == sameValues(i));
    GroupFirstIdx(i) = G{i}(1);
    GroupOtherIdx{i} = G{i}(2:end);
    Groups{i} = strjoin(['x_' strjoin(string(G{i}), ',_')], '');
end

if length(idx) > 1
    for j = 1:length(sameValues)
        set(xLabels(GroupOtherIdx{j}), String = "");
        set(xLabels(GroupFirstIdx(j)), String = Groups{j});
    end
end
end

% https://www.mathworks.com/matlabcentral/answers/336500-finding-the-indices-of-duplicate-values-in-one-array#answer_319943
function [idx, sameValues] = find_multiple(A)
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