function process_errors(app, error)
% PROCESS_ERRORS    Create alert dialog box with defined errors
%   PROCESS_ERRORS(app, ERROR) Creates an alert dialog box with message
%   defined by ERROR.

switch error
    case 'Left limit is incorrect'
        message = {'Range is incorrect', ...
            'Left limit must be less than the right limit'};
    case 'Right limit is incorrect'
        message = {'Range is incorrect', ...
            'Right limit must be larger than the left limit'};
    case 'The first parameter is incorrect'
        message = {'The first parameter is incorrect', ...
            'The parameter must be larger than the second and third parameter'};
end

uialert(app.SoftVotingDemoUIFigure, message, 'Error');
end