function set_initial_preferences(app)
% SET_INITIAL_PREFERENCES   Set preferences after changing membership
% function type
%   SET_INITIAL_PREFERENCES(app) sets required parameters in order to "reset
%   the behaviour" of a membership function depending on its type which is
%   stored in app.MembershipFunction.Type property field.

switch app.MembershipFunction.Type
    case 'Gaussian'
        app.MFP1EditField.Value   = 2;
        app.MFP2EditField.Value   = 2;
        app.MFP3EditField.Value   = 2;
        app.MembershipFunction.P1 = 2;
        app.MembershipFunction.P2 = 2;
        app.MembershipFunction.P3 = 2;
    case 'Generalized bell-shaped'
        app.MFP1EditField.Value   = 2;
        app.MFP2EditField.Value   = 2;
        app.MFP3EditField.Value   = 2;
        app.MembershipFunction.P1 = 2;
        app.MembershipFunction.P2 = 2;
        app.MembershipFunction.P3 = 2;
    case 'Triangular'
        app.MFP1EditField.Value   = 2;
        app.MFP2EditField.Value   = 2;
        app.MFP3EditField.Value   = 2;
        app.MembershipFunction.P1 = 2;
        app.MembershipFunction.P2 = 2;
        app.MembershipFunction.P3 = 2;
    case 'Pi-shaped'
        app.MFP1EditField.Value   = 2;
        app.MFP2EditField.Value   = 0.3;
        app.MFP3EditField.Value   = 0.3;
        app.MembershipFunction.P1 = 2;
        app.MembershipFunction.P2 = 0.3;
        app.MembershipFunction.P3 = 0.3;
    case 'Trapezoidal'
        app.MFP1EditField.Value   = 2;
        app.MFP2EditField.Value   = 0.3;
        app.MFP3EditField.Value   = 0.3;
        app.MembershipFunction.P1 = 2;
        app.MembershipFunction.P2 = 0.3;
        app.MembershipFunction.P3 = 0.3;
end

end
