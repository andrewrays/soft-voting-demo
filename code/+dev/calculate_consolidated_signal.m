function calculate_consolidated_signal(app)

ZeroedTrustMatrix = app.TrustMatrix.*~eye(size(app.TrustMatrix));

MaxTrustIndex = max(ZeroedTrustMatrix(1:str2double(app.Signals.Quantity),1:str2double(app.Signals.Quantity)),[],2);

IndicesSum = sum(MaxTrustIndex);

Weights = MaxTrustIndex./IndicesSum;

app.Signals.S = sum(Weights'.*app.Signals.Array(1:str2double(app.Signals.Quantity)));

end