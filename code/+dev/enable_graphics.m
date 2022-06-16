function enable_graphics(app)
% ENABLE_GRAPHICS   Control the visibility of the axes' children
%   ENABLE_GRAPHICS(app) displays or hides all axes' children depending on
%   the quantity of required signals which is stored in app.Signals.Quantity
%   property field.

switch app.Signals.Quantity
    case '2'
        set(app.S1Axes.Children, {'Visible'}, {'on'});
        set(app.S2Axes.Children, {'Visible'}, {'on'});
        set(app.S3Axes.Children, {'Visible'}, {'off'});
        set(app.S4Axes.Children, {'Visible'}, {'off'});
        set(app.S5Axes.Children, {'Visible'}, {'off'});
        set(app.S6Axes.Children, {'Visible'}, {'off'});
    case '3'
        set(app.S1Axes.Children, {'Visible'}, {'on'});
        set(app.S2Axes.Children, {'Visible'}, {'on'});
        set(app.S3Axes.Children, {'Visible'}, {'on'});
        set(app.S4Axes.Children, {'Visible'}, {'off'});
        set(app.S5Axes.Children, {'Visible'}, {'off'});
        set(app.S6Axes.Children, {'Visible'}, {'off'});
    case '4'
        set(app.S1Axes.Children, {'Visible'}, {'on'});
        set(app.S2Axes.Children, {'Visible'}, {'on'});
        set(app.S3Axes.Children, {'Visible'}, {'on'});
        set(app.S4Axes.Children, {'Visible'}, {'on'});
        set(app.S5Axes.Children, {'Visible'}, {'off'});
        set(app.S6Axes.Children, {'Visible'}, {'off'});
    case '5'
        set(app.S1Axes.Children, {'Visible'}, {'on'});
        set(app.S2Axes.Children, {'Visible'}, {'on'});
        set(app.S3Axes.Children, {'Visible'}, {'on'});
        set(app.S4Axes.Children, {'Visible'}, {'on'});
        set(app.S5Axes.Children, {'Visible'}, {'on'});
        set(app.S6Axes.Children, {'Visible'}, {'off'});
    case '6'
        set(app.S1Axes.Children, {'Visible'}, {'on'});
        set(app.S2Axes.Children, {'Visible'}, {'on'});
        set(app.S3Axes.Children, {'Visible'}, {'on'});
        set(app.S4Axes.Children, {'Visible'}, {'on'});
        set(app.S5Axes.Children, {'Visible'}, {'on'});
        set(app.S6Axes.Children, {'Visible'}, {'on'});
end
end