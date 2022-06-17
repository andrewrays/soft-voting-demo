function calculate_trust_matrix(app)
% CALCULATE_TRUST_MATRIX    Calculate trust matrix
%   CALCULATE_TRUST_MATRIX(app) calculates the trust matrix using array of
%   signals' current values stored in app.Signals.Array property field and
%   parameters of membership functions stored in P1 or/and P2 or/and P3
%   fields of app.MembershipFunction property.
%
%   For proper behaviour of a membership function, every function has its
%   own parameters array depending on its type. A function accepts the array
%   as the second input. 

switch app.MembershipFunction.Type
    case 'Gaussian'
        for i = 1:6
            for j = 1:6
                app.TrustMatrix(j,i) = gaussmf(app.Signals.Array(j), [app.MembershipFunction.P1 app.Signals.Array(i)]);
            end
        end
    case 'Generalized bell-shaped'
        for i = 1:6
            for j = 1:6
                app.TrustMatrix(j,i) = gbellmf(app.Signals.Array(j), [app.MembershipFunction.P1 app.MembershipFunction.P2 app.Signals.Array(i)]);
            end
        end
    case 'Triangular'
        for i = 1:6
            for j = 1:6
                app.TrustMatrix(j,i) = trimf(app.Signals.Array(j), ...
                    [app.Signals.Array(i)-app.MembershipFunction.P1 ...
                     app.Signals.Array(i) ...
                     app.Signals.Array(i)+app.MembershipFunction.P1]);
            end
        end
    case 'Pi-shaped'
        for i = 1:6
            for j = 1:6
                app.TrustMatrix(j,i) = pimf(app.Signals.Array(j), ...
                    [app.Signals.Array(i)-app.MembershipFunction.P1 ...
                     app.Signals.Array(i)-app.MembershipFunction.P2 ...
                     app.Signals.Array(i)+app.MembershipFunction.P3 ...
                     app.Signals.Array(i)+app.MembershipFunction.P1]);
            end
        end
    case 'Trapezoidal'
        for i = 1:6
            for j = 1:6
                app.TrustMatrix(j,i) = trapmf(app.Signals.Array(j), ...
                    [app.Signals.Array(i)-app.MembershipFunction.P1 ...
                     app.Signals.Array(i)-app.MembershipFunction.P2 ...
                     app.Signals.Array(i)+app.MembershipFunction.P3 ...
                     app.Signals.Array(i)+app.MembershipFunction.P1]);
            end
        end
end
end
