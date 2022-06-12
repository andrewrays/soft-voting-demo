function app_plot(app)
dev.set_axes_preferences(app);

create_graphical_objects(app, app.S1Axes, app.MembershipFunction.S1, 1);
create_graphical_objects(app, app.S2Axes, app.MembershipFunction.S2, 2);
create_graphical_objects(app, app.S3Axes, app.MembershipFunction.S3, 3);
create_graphical_objects(app, app.S4Axes, app.MembershipFunction.S4, 4);
create_graphical_objects(app, app.S5Axes, app.MembershipFunction.S5, 5);
create_graphical_objects(app, app.S6Axes, app.MembershipFunction.S6, 6);

dev.check_x_labels(app, app.S1Axes);
dev.check_x_labels(app, app.S2Axes);
dev.check_x_labels(app, app.S3Axes);
dev.check_x_labels(app, app.S4Axes);
dev.check_x_labels(app, app.S5Axes);
dev.check_x_labels(app, app.S6Axes);
end

function create_graphical_objects(app, AxesID, MFS, SignalNumber)
cla(AxesID);

hold(AxesID, "on");

plot(AxesID, app.Signals.Points, MFS, Color = 'b', LineWidth = 1);

text(AxesID, app.Signals.Array(1:str2double(app.Signals.Quantity)) + 0.1, ...
    repmat(0.03, 1, length(app.Signals.Array(1:str2double(app.Signals.Quantity)))), ...
    arrayfun(@(x) "x_" + num2str(x), 1:str2double(app.Signals.Quantity)))

for i = 1:str2double(app.Signals.Quantity)
    line(AxesID, [app.Signals.Array(i) app.Signals.Array(i)], ...
        [0 app.TrustMatrix(i,SignalNumber)], ...
        LineWidth = 0.1, ...
        LineStyle = "--", ...
        Color = 'k');

    plot(AxesID, app.Signals.Array(i), app.TrustMatrix(i,SignalNumber), ...
        LineStyle = "none", ...
        Marker = ".", ...
        MarkerSize = 15, ...
        MarkerEdgeColor = 'r')

    if (i ~= SignalNumber) && (app.TrustMatrix(i,SignalNumber) ~= 0)
        if app.TrustMatrix(i,SignalNumber) ~= 1
            place_trust_index_text(app, AxesID, SignalNumber, i, 0)
        else
            place_trust_index_text(app, AxesID, SignalNumber, i, 0.025)
        end
    end
end
end

function place_trust_index_text(app, AxesID, SignalNumber, i, y)
text(AxesID, app.Signals.Array(i) + 0.1, app.TrustMatrix(i,SignalNumber) + y, ...
    "\mu_" + num2str(SignalNumber) + "(" + ...
    strjoin(['x_' strjoin(string(find(app.Signals.Array(1:str2double(app.Signals.Quantity)) == app.Signals.Array(i))), ',_')], '') ...
    + ")");
end