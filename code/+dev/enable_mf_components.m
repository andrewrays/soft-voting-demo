function enable_mf_components(app)
switch app.MembershipFunction.Type
    case 'Gaussian'
        app.MFParam1Slider.Visible = 'on';
        app.MFParam2Slider.Visible = 'off';
        app.MFParam3Slider.Visible = 'off';

        app.A_1Label.Visible       = 'on';
        app.A_2Label.Visible       = 'off';
        app.A_3Label.Visible       = 'off';
    case 'Generalized bell-shaped'
        app.MFParam1Slider.Visible = 'on';
        app.MFParam2Slider.Visible = 'on';
        app.MFParam3Slider.Visible = 'off';

        app.A_1Label.Visible       = 'on';
        app.A_2Label.Visible       = 'on';
        app.A_3Label.Visible       = 'off';
    case 'Triangular'
        app.MFParam1Slider.Visible = 'on';
        app.MFParam2Slider.Visible = 'off';
        app.MFParam3Slider.Visible = 'off';

        app.A_1Label.Visible       = 'on';
        app.A_2Label.Visible       = 'off';
        app.A_3Label.Visible       = 'off';
    case 'Pi-shaped'
        app.MFParam1Slider.Visible = 'on';
        app.MFParam2Slider.Visible = 'on';
        app.MFParam3Slider.Visible = 'on';

        app.A_1Label.Visible       = 'on';
        app.A_2Label.Visible       = 'on';
        app.A_3Label.Visible       = 'on';
    case 'Trapezoidal'
        app.MFParam1Slider.Visible = 'on';
        app.MFParam2Slider.Visible = 'on';
        app.MFParam3Slider.Visible = 'on';

        app.A_1Label.Visible       = 'on';
        app.A_2Label.Visible       = 'on';
        app.A_3Label.Visible       = 'on';
end
end