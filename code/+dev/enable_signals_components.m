function enable_signals_components(app)
% ENABLE_SIGNAL_COMPONENTS Control the visibility of signals elements
%   ENABLE_SIGNAL_COMPONENTS(app) displays or hides sliders and their labels
%   depending on the quantity of required signals which is stored in 
%   app.Signals.Quantity property field.

switch app.Signals.Quantity
    case '2'
        app.S1Slider.Visible = 'on';
        app.S2Slider.Visible = 'on';
        app.S3Slider.Visible = 'off';
        app.S4Slider.Visible = 'off';
        app.S5Slider.Visible = 'off';
        app.S6Slider.Visible = 'off';

        app.x_1Label.Visible = 'on';
        app.x_2Label.Visible = 'on';
        app.x_3Label.Visible = 'off';
        app.x_4Label.Visible = 'off';
        app.x_5Label.Visible = 'off';
        app.x_6Label.Visible = 'off';
    case '3'
        app.S1Slider.Visible = 'on';
        app.S2Slider.Visible = 'on';
        app.S3Slider.Visible = 'on';
        app.S4Slider.Visible = 'off';
        app.S5Slider.Visible = 'off';
        app.S6Slider.Visible = 'off';

        app.x_1Label.Visible = 'on';
        app.x_2Label.Visible = 'on';
        app.x_3Label.Visible = 'on';
        app.x_4Label.Visible = 'off';
        app.x_5Label.Visible = 'off';
        app.x_6Label.Visible = 'off';
    case '4'
        app.S1Slider.Visible = 'on';
        app.S2Slider.Visible = 'on';
        app.S3Slider.Visible = 'on';
        app.S4Slider.Visible = 'on';
        app.S5Slider.Visible = 'off';
        app.S6Slider.Visible = 'off';

        app.x_1Label.Visible = 'on';
        app.x_2Label.Visible = 'on';
        app.x_3Label.Visible = 'on';
        app.x_4Label.Visible = 'on';
        app.x_5Label.Visible = 'off';
        app.x_6Label.Visible = 'off';
    case '5'
        app.S1Slider.Visible = 'on';
        app.S2Slider.Visible = 'on';
        app.S3Slider.Visible = 'on';
        app.S4Slider.Visible = 'on';
        app.S5Slider.Visible = 'on';
        app.S6Slider.Visible = 'off';

        app.x_1Label.Visible = 'on';
        app.x_2Label.Visible = 'on';
        app.x_3Label.Visible = 'on';
        app.x_4Label.Visible = 'on';
        app.x_5Label.Visible = 'on';
        app.x_6Label.Visible = 'off';
    case '6'
        app.S1Slider.Visible = 'on';
        app.S2Slider.Visible = 'on';
        app.S3Slider.Visible = 'on';
        app.S4Slider.Visible = 'on';
        app.S5Slider.Visible = 'on';
        app.S6Slider.Visible = 'on';

        app.x_1Label.Visible = 'on';
        app.x_2Label.Visible = 'on';
        app.x_3Label.Visible = 'on';
        app.x_4Label.Visible = 'on';
        app.x_5Label.Visible = 'on';
        app.x_6Label.Visible = 'on';
end
end