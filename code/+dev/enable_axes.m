function enable_axes(app)
switch app.Signals.Quantity
    case '2'
        app.S1Axes.Visible = 'on';
        app.S2Axes.Visible = 'on';
        app.S3Axes.Visible = 'off';
        app.S4Axes.Visible = 'off';
        app.S5Axes.Visible = 'off';
        app.S6Axes.Visible = 'off';
    case '3'
        app.S1Axes.Visible = 'on';
        app.S2Axes.Visible = 'on';
        app.S3Axes.Visible = 'on';
        app.S4Axes.Visible = 'off';
        app.S5Axes.Visible = 'off';
        app.S6Axes.Visible = 'off';
    case '4'
        app.S1Axes.Visible = 'on';
        app.S2Axes.Visible = 'on';
        app.S3Axes.Visible = 'on';
        app.S4Axes.Visible = 'on';
        app.S5Axes.Visible = 'off';
        app.S6Axes.Visible = 'off';
    case '5'
        app.S1Axes.Visible = 'on';
        app.S2Axes.Visible = 'on';
        app.S3Axes.Visible = 'on';
        app.S4Axes.Visible = 'on';
        app.S5Axes.Visible = 'on';
        app.S6Axes.Visible = 'off';
    case '6'
        app.S1Axes.Visible = 'on';
        app.S2Axes.Visible = 'on';
        app.S3Axes.Visible = 'on';
        app.S4Axes.Visible = 'on';
        app.S5Axes.Visible = 'on';
        app.S6Axes.Visible = 'on';
end
end