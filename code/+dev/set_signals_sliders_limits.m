function set_signals_sliders_limits(app)
% SET_SIGNALS_SLIDERS_LIMITS    Set signals sliders limits
%   SET_SIGNALS_SLIDERS_LIMITS(app) sets sliders limits whicj are stored in
%   app.Signals.LeftLimit and app.Signals.RightLimit property fields.

app.S1Slider.Limits = [app.Signals.LeftLimit app.Signals.RightLimit];
app.S2Slider.Limits = [app.Signals.LeftLimit app.Signals.RightLimit];
app.S3Slider.Limits = [app.Signals.LeftLimit app.Signals.RightLimit];
app.S4Slider.Limits = [app.Signals.LeftLimit app.Signals.RightLimit];
app.S5Slider.Limits = [app.Signals.LeftLimit app.Signals.RightLimit];
app.S6Slider.Limits = [app.Signals.LeftLimit app.Signals.RightLimit];
end
