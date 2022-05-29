function calculate_trust_matrix(app)

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