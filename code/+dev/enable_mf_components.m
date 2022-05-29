function enable_mf_components(app)
switch app.MembershipFunction.Type
    case 'Gaussian'
        app.MFP1EditField.Visible = 'on';
        app.MFP2EditField.Visible = 'off';
        app.MFP3EditField.Visible = 'off';

        app.A_1Label.Visible       = 'on';
        app.A_2Label.Visible       = 'off';
        app.A_3Label.Visible       = 'off';
    case 'Generalized bell-shaped'
        app.MFP1EditField.Visible = 'on';
        app.MFP2EditField.Visible = 'on';
        app.MFP3EditField.Visible = 'off';

        app.A_1Label.Visible       = 'on';
        app.A_2Label.Visible       = 'on';
        app.A_3Label.Visible       = 'off';
    case 'Triangular'
        app.MFP1EditField.Visible = 'on';
        app.MFP2EditField.Visible = 'off';
        app.MFP3EditField.Visible = 'off';

        app.A_1Label.Visible       = 'on';
        app.A_2Label.Visible       = 'off';
        app.A_3Label.Visible       = 'off';
    case 'Pi-shaped'
        app.MFP1EditField.Visible = 'on';
        app.MFP2EditField.Visible = 'on';
        app.MFP3EditField.Visible = 'on';

        app.A_1Label.Visible       = 'on';
        app.A_2Label.Visible       = 'on';
        app.A_3Label.Visible       = 'on';
    case 'Trapezoidal'
        app.MFP1EditField.Visible = 'on';
        app.MFP2EditField.Visible = 'on';
        app.MFP3EditField.Visible = 'on';

        app.A_1Label.Visible       = 'on';
        app.A_2Label.Visible       = 'on';
        app.A_3Label.Visible       = 'on';
end
end