function set_uitextarea_position(app)
switch app.Signals.Quantity
    case '2'
        app.STextArea.Position = [60 126 57 23];
        app.SLabel.Position    = [25 126 29 22];
    case '3'
        app.STextArea.Position = [60 97 57 23];
        app.SLabel.Position    = [25 97 29 22];
    case '4'
        app.STextArea.Position = [60 68 57 23];
        app.SLabel.Position    = [20 68 29 22];
    case '5'
        app.STextArea.Position = [60 40 57 23];
        app.SLabel.Position    = [25 40 29 22]; 
    case '6'
        app.STextArea.Position = [60 12 57 23];
        app.SLabel.Position    = [25 12 29 22];
end
end