function calculate_consolidated_signal(app)
% CALCULATE_CONSOLIDATED_SIGNAL     Calculate consolidated signal
%   CALCULATE_CONSOLIDATED_SIGNAL(app) implements the second and the third
%   stages of the algorithm.

% Reset to zero elements on the main diagonal of the trust indices matrix
ZeroedTrustMatrix = app.TrustMatrix.*~eye(size(app.TrustMatrix));

% Find the right trust index in each row of the trust indices matrix
MaxTrustIndex = max(ZeroedTrustMatrix(1:str2double(app.Signals.Quantity),1:str2double(app.Signals.Quantity)),[],2);

% Sum the right trust indices
IndicesSum = sum(MaxTrustIndex);

% Find weights of each signal
Weights = MaxTrustIndex./IndicesSum;

% Calculate the consolidated signal
app.Signals.S = sum(Weights'.*app.Signals.Array(1:str2double(app.Signals.Quantity)));
end
