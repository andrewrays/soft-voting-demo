function enable_results(app)
switch app.Signals.Quantity
    case '2'
        app.M1TextArea.Visible = 'on';
        app.M2TextArea.Visible = 'on';
        app.M3TextArea.Visible = 'off';
        app.M4TextArea.Visible = 'off';
        app.M5TextArea.Visible = 'off';
        app.M6TextArea.Visible = 'off';

        app.mu_1x_nTextAreaLabel.Visible = 'on';
        app.mu_2x_nLabel.Visible         = 'on';
        app.mu_3x_nLabel.Visible         = 'off';
        app.mu_4x_nLabel.Visible         = 'off';
        app.mu_5x_nLabel.Visible         = 'off';
        app.mu_6x_nLabel.Visible         = 'off';
    case '3'
        app.M1TextArea.Visible = 'on';
        app.M2TextArea.Visible = 'on';
        app.M3TextArea.Visible = 'on';
        app.M4TextArea.Visible = 'off';
        app.M5TextArea.Visible = 'off';
        app.M6TextArea.Visible = 'off';

        app.mu_1x_nTextAreaLabel.Visible = 'on';
        app.mu_2x_nLabel.Visible         = 'on';
        app.mu_3x_nLabel.Visible         = 'on';
        app.mu_4x_nLabel.Visible         = 'off';
        app.mu_5x_nLabel.Visible         = 'off';
        app.mu_6x_nLabel.Visible         = 'off';
    case '4'
        app.M1TextArea.Visible = 'on';
        app.M2TextArea.Visible = 'on';
        app.M3TextArea.Visible = 'on';
        app.M4TextArea.Visible = 'on';
        app.M5TextArea.Visible = 'off';
        app.M6TextArea.Visible = 'off';

        app.mu_1x_nTextAreaLabel.Visible = 'on';
        app.mu_2x_nLabel.Visible         = 'on';
        app.mu_3x_nLabel.Visible         = 'on';
        app.mu_4x_nLabel.Visible         = 'on';
        app.mu_5x_nLabel.Visible         = 'off';
        app.mu_6x_nLabel.Visible         = 'off';
    case '5'
        app.M1TextArea.Visible = 'on';
        app.M2TextArea.Visible = 'on';
        app.M3TextArea.Visible = 'on';
        app.M4TextArea.Visible = 'on';
        app.M5TextArea.Visible = 'on';
        app.M6TextArea.Visible = 'off';

        app.mu_1x_nTextAreaLabel.Visible = 'on';
        app.mu_2x_nLabel.Visible         = 'on';
        app.mu_3x_nLabel.Visible         = 'on';
        app.mu_4x_nLabel.Visible         = 'on';
        app.mu_5x_nLabel.Visible         = 'on';
        app.mu_6x_nLabel.Visible         = 'off';
    case '6'
        app.M1TextArea.Visible = 'on';
        app.M2TextArea.Visible = 'on';
        app.M3TextArea.Visible = 'on';
        app.M4TextArea.Visible = 'on';
        app.M5TextArea.Visible = 'on';
        app.M6TextArea.Visible = 'on';

        app.mu_1x_nTextAreaLabel.Visible = 'on';
        app.mu_2x_nLabel.Visible         = 'on';
        app.mu_3x_nLabel.Visible         = 'on';
        app.mu_4x_nLabel.Visible         = 'on';
        app.mu_5x_nLabel.Visible         = 'on';
        app.mu_6x_nLabel.Visible         = 'on';
end
end