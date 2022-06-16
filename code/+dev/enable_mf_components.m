function enable_mf_components(app)
% ENABLE_MF_COMPONENTS  Control the visibility of the membership function
% elements
%   ENABLE_MF_COMPONENTS(app) displays or hides edit fields and their labels
%   depending on the membership function type which is stored in 
%   app.MembershipFunction.Type property field.
%
%   For the information about required parameters for each membership
%   function, see Membership function setting section in the guide. 

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