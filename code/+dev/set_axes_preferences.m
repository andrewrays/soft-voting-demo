function set_axes_preferences(app)
% SET_AXES_PREFERENCES  set required axes preferences in opening the
% application
%   SET_AXES_PREFERENCES(app) sets the following axes preferences:
%       1. XLim
%       2. YLim
%       3. YTick
%   
%   XLim property is defined by LeftLimit and RightLimit variables.
% 
%   YLim property is always equal to [0 1] as a degree of membership is
%   within this range
%
%   YTick property defines quantity of ticks on the y axes.

h = findall(0,'Type','axes');
set(h,{'XLim'},{[app.Signals.LeftLimit app.Signals.RightLimit]});
set(h,{'YLim'},{[0 1]});
set(h,{'YTick'},{0:0.2:1});
end