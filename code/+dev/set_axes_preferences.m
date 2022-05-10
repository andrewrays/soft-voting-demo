function set_axes_preferences(app)
h = findall(0,'Type','axes');
set(h,{'XLim'},{[app.Signals.LeftLimit app.Signals.RightLimit]});
set(h,{'YLim'},{[0 1]});
set(h,{'YTick'},{0:0.2:1});
end