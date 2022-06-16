function app_plot(app)
% APP_PLOT      Display all information in axis
%   APP_PLOT(app) if the main function for plotting graphical information
%   on axis.
% 
%   It calls three auxiliary functions:
%       1. set_axes_preferences(),
%       2. create_graphical_objects(),
%       3. check_x_labels().

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
% CREATE_GRAPHICAL_OBJECTS      Display all information in axis

% Clean the current axes
cla(AxesID);

hold(AxesID, "on");

% Plot all membership functions
plot(AxesID, app.Signals.Points, MFS, Color = 'b', LineWidth = 1);

% Display labels of the signals
text(AxesID, app.Signals.Array(1:str2double(app.Signals.Quantity)) + 0.1, ...
    repmat(0.03, 1, length(app.Signals.Array(1:str2double(app.Signals.Quantity)))), ...
    arrayfun(@(x) "x_" + num2str(x), 1:str2double(app.Signals.Quantity)))

for i = 1:str2double(app.Signals.Quantity)
    % Plot auxiliary dashed lines
    line(AxesID, [app.Signals.Array(i) app.Signals.Array(i)], ...
        [0 app.TrustMatrix(i,SignalNumber)], ...
        LineWidth = 0.1, ...
        LineStyle = "--", ...
        Color = 'k');

    % Display markers of signal and membership function intersection
    plot(AxesID, app.Signals.Array(i), app.TrustMatrix(i,SignalNumber), ...
        LineStyle = "none", ...
        Marker = ".", ...
        MarkerSize = 15, ...
        MarkerEdgeColor = 'r')

    % Display trust index labels
    if (i ~= SignalNumber) && (app.TrustMatrix(i,SignalNumber) ~= 0)
        if app.TrustMatrix(i,SignalNumber) ~= 1
            % If there are not signals with equal values then no need to displace
            % the labels
            place_trust_index_text(app, AxesID, SignalNumber, i, 0)
        else
            % If there are signals with equal values then displace the
            % labels to 0.025 units
            place_trust_index_text(app, AxesID, SignalNumber, i, 0.025)
        end
    end
end
end

function place_trust_index_text(app, AxesID, SignalNumber, i, y)
% PLACE_TRUST_INDEX_TEXT   Place trust index labels
%   PLACE_TRUST_INDEX_TEXT(app, AXESID, SIGNALNUMBER, I, Y) places labels
%   of trust indices with Y coordinate in AXESID axes.
% 
%   SIGNALNUMBER and I indicate a column and a row of the trust indices matrix
%   respectively.


text(AxesID, app.Signals.Array(i) + 0.1, app.TrustMatrix(i,SignalNumber) + y, ...
    "\mu_" + num2str(SignalNumber) + "(" + ...
    strjoin(['x_' strjoin(string(find(app.Signals.Array(1:str2double(app.Signals.Quantity)) == app.Signals.Array(i))), ',_')], '') ...
    + ")");
end