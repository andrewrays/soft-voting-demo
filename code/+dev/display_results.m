function display_results(app)

app.M1TextArea.Value = rslt_template(app, 1);
app.M2TextArea.Value = rslt_template(app, 2);
app.M3TextArea.Value = rslt_template(app, 3);
app.M4TextArea.Value = rslt_template(app, 4);
app.M5TextArea.Value = rslt_template(app, 5);
app.M6TextArea.Value = rslt_template(app, 6);
app.STextArea.Value  = num2str(app.Signals.S,3);
end

function T = rslt_template(app, i)
    T = [ ...
        '[' ...
        num2str(round(app.TrustMatrix(i,1:str2double(app.Signals.Quantity)),3),3) ...
        ']' ...
        ];
end