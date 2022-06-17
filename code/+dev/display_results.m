function display_results(app)
% DISPLAY_RESULTS   Display trust indices matrix and consolidated signal
%   DISPLAY_RESULTS(app) diplays elements of the trust indices matrix
%   depending on the quantity of required signals and the consolidated signal
%   in the Results panel.

app.M1TextArea.Value = rslt_template(app, 1);
app.M2TextArea.Value = rslt_template(app, 2);
app.M3TextArea.Value = rslt_template(app, 3);
app.M4TextArea.Value = rslt_template(app, 4);
app.M5TextArea.Value = rslt_template(app, 5);
app.M6TextArea.Value = rslt_template(app, 6);
app.STextArea.Value  = num2str(app.Signals.S,3);
end

function T = rslt_template(app, i)
% RSLT_TEMPLATE   create template for the DISPLAY_RESULTS(app) function
%   RSLT_TEMPLATE(app, I) creates characters template using row I of the trust
%   indices matrix depending on the quantity of required signals which is
%   stored in app.Signals.Quantity property field.

%   Row elements are rounded to 3 digits to the right of the decimal point.

    T = [ ...
        '[' ...
        num2str(round(app.TrustMatrix(i,1:str2double(app.Signals.Quantity)),3),3) ...
        ']' ...
        ];
end
