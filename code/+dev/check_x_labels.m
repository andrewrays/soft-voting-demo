function check_x_labels(app, AxesID, SignalNumber)
TextObjs = findobj(AxesID.Children, Type = 'Text');
% TM = app.TrustMatrix(1:str2double(app.Signals.Quantity),1:str2double(app.Signals.Quantity));
% FullTrustIdx = find(TM(SignalNumber,:) == 1);
% if length(FullTrustIdx) > 1
    xLabels = flip(findobj(TextObjs, ...
        {'String', 'x_1'}, '-or', ...
        {'String', 'x_2'}, '-or', ...
        {'String', 'x_3'}, '-or', ...
        {'String', 'x_4'}, '-or', ...
        {'String', 'x_5'}, '-or', ...
        {'String', 'x_6'}));
%     switch sum(FullTrustIdx)
%         case {3,4}
%             set(xLabels(3), Position = [xLabels(3).Position(1) 0.08]);
%         case 5
%             set(xLabels(2), Position = [xLabels(2).Position(1) 0.08]);
%         case 6
%             set(xLabels(3), Position = [xLabels(3).Position(1) 0.13]);
%             set(xLabels(2), Position = [xLabels(2).Position(1) 0.08]);
%     end
% end

% a = repmat(app.Signals.Array(1:str2double(app.Signals.Quantity)), ...
%     str2double(app.Signals.Quantity),1) == app.Signals.Array(1:str2double(app.Signals.Quantity))';
% % [r, c] = find(a(SignalNumber,:) == 1);
% [r, c] = find(a == 1);
% b = cell(1, str2double(app.Signals.Quantity));
% for i = 1:str2double(app.Signals.Quantity)
%     b{i} = find(a(i,:) == 1);
% end
% c = any(cellfun(@(x) length(x), b) > 1);
% 
% if c
%     set(xLabels(b(2:end)), String = "");
%     set(xLabels(b(1)), String = strjoin(['x_' strjoin(string(b), ',_')], ''));
% end
% 

idx = find_multiple(app.Signals.Array(1:str2double(app.Signals.Quantity)));
if length(idx) > 1
    set(xLabels(idx(2:end)), String = "");
    set(xLabels(idx(1)), String = strjoin(['x_' strjoin(string(idx), ',_')], ''));
end

end

% https://www.mathworks.com/matlabcentral/answers/336500-finding-the-indices-of-duplicate-values-in-one-array#answer_319943
function idx = find_multiple(A)
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
end