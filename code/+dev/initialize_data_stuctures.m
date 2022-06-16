function initialize_data_stuctures(app)
% INITIALIZE_DATA_STRUCTURES    Define properties fields at the opening of
%   the application
%   INITIALIZE_DATA_STRUCTURES(app) Defines the following properties:
%       1. Signals
%       2. MembershipFunction
%       3. TrustMatrix
%
%   Signals property has the following fields:
%       1. Quantity         - quantity of signals participated in
%                             consolidation
%       2. LeftLimit        - left limit of signals range
%       3. RightLimit       - right limit of signals range
%       4. Points           - linearly spaced vector of 10000 X values
%                             between LeftLimit and RightLimit values
%                             used in plotting the membership functions
%       5. Array            - array of current values of the signals
%                             [S1 S2 S3 S4 S5 S6]
%       6. S1.CurrentValue  - current value of the 1st signal
%       7. S2.CurrentValue  - current value of the 2nd signal
%       8. S3.CurrentValue  - current value of the 3rd signal
%       9. S4.CurrentValue  - current value of the 4th signal
%       10. S5.CurrentValue - current value of the 5th signal
%       11. S6.CurrentValue - current value of the 6th signal
%       12. S               - value of the consolidated signal
% 
%   MembershipFunction property has the following fields:
%       1. Type  - type of the membership functions
%       2. P1    - the first parameter of the membership functions 
%       3. P2    - the second parameter of the membership functions
%       4. P3    - the third parameter of the membership functions
%       5. PCell - all parameters required for calculation of a membership
%                  function according to its documentation page 
%       6. S1    - Y values of the 1st membership function required for
%                  the plotting
%       7. S2    - Y values of the 2nd membership function required for
%                  the plotting
%       8. S3    - Y values of the 3rd membership function required for
%                  the plotting
%       9. S4    - Y values of the 4th membership function required for
%                  the plotting
%       10. S5   - Y values of the 5th membership function required for
%                  the plotting
%       11. S6   - Y values of the 6th membership function required for
%                  the plotting
% 
%   TrustMatrix property stores a 6x6 matrix as a placeholder for future
%   trust indices matrix.  

app.Signals.Quantity        = '3';
app.Signals.LeftLimit       = 0;
app.Signals.RightLimit      = 10;
app.Signals.Points          = linspace(app.Signals.LeftLimit, app.Signals.RightLimit, 10000);
app.Signals.Array           = zeros(1,6);
app.Signals.S1.CurrentValue = 5;
app.Signals.S2.CurrentValue = 3.5;
app.Signals.S3.CurrentValue = 5.5;
app.Signals.S4.CurrentValue = 4;
app.Signals.S5.CurrentValue = 7;
app.Signals.S6.CurrentValue = 6;
app.Signals.S               = 0;

app.MembershipFunction.Type  = 'Triangular';
app.MembershipFunction.P1    = 2;
app.MembershipFunction.P2    = 2;
app.MembershipFunction.P3    = 2;
app.MembershipFunction.PCell = cell(1,6);
app.MembershipFunction.S1    = [];
app.MembershipFunction.S2    = [];
app.MembershipFunction.S3    = [];
app.MembershipFunction.S4    = [];
app.MembershipFunction.S5    = [];
app.MembershipFunction.S6    = [];

app.TrustMatrix = eye(6);
end