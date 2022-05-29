function initialize_data_stuctures(app)

app.Signals.Quantity = '3';
app.Signals.LeftLimit = 0;
app.Signals.RightLimit = 10;
app.Signals.Points = linspace(app.Signals.LeftLimit, app.Signals.RightLimit, 10000);
app.Signals.Array           = zeros(1,6);
app.Signals.S1.CurrentValue = 5;
app.Signals.S2.CurrentValue = 3.5;
app.Signals.S3.CurrentValue = 5.5;
app.Signals.S4.CurrentValue = 4;
app.Signals.S5.CurrentValue = 7;
app.Signals.S6.CurrentValue = 6;
app.Signals.S               = 0;

app.MembershipFunction.Type = 'Triangular';
app.MembershipFunction.P1   = 2;
app.MembershipFunction.P2   = 2;
app.MembershipFunction.P3   = 2;
app.MembershipFunction.PCell = cell(1,6);
app.MembershipFunction.S1   = [];
app.MembershipFunction.S2   = [];
app.MembershipFunction.S3   = [];
app.MembershipFunction.S4   = [];
app.MembershipFunction.S5   = [];
app.MembershipFunction.S6   = [];

app.TrustMatrix = eye(6);
end