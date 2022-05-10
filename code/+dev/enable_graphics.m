function enable_graphics(app)
switch app.Signals.Quantity
    case '2'
        app.S1Axes.Children.Visible = 'on';
        app.S2Axes.Children.Visible = 'on';
        app.S3Axes.Children.Visible = 'off';
        app.S4Axes.Children.Visible = 'off';
        app.S5Axes.Children.Visible = 'off';
        app.S6Axes.Children.Visible = 'off';
    case '3'
        app.S1Axes.Children.Visible = 'on';
        app.S2Axes.Children.Visible = 'on';
        app.S3Axes.Children.Visible = 'on';
        app.S4Axes.Children.Visible = 'off';
        app.S5Axes.Children.Visible = 'off';
        app.S6Axes.Children.Visible = 'off';
    case '4'
        app.S1Axes.Children.Visible = 'on';
        app.S2Axes.Children.Visible = 'on';
        app.S3Axes.Children.Visible = 'on';
        app.S4Axes.Children.Visible = 'on';
        app.S5Axes.Children.Visible = 'off';
        app.S6Axes.Children.Visible = 'off';
    case '5'
        app.S1Axes.Children.Visible = 'on';
        app.S2Axes.Children.Visible = 'on';
        app.S3Axes.Children.Visible = 'on';
        app.S4Axes.Children.Visible = 'on';
        app.S5Axes.Children.Visible = 'on';
        app.S6Axes.Children.Visible = 'off';
    case '6'
        app.S1Axes.Children.Visible = 'on';
        app.S2Axes.Children.Visible = 'on';
        app.S3Axes.Children.Visible = 'on';
        app.S4Axes.Children.Visible = 'on';
        app.S5Axes.Children.Visible = 'on';
        app.S6Axes.Children.Visible = 'on';
end
end