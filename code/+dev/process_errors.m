function process_errors(app, error)
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
    case 'The second parameter is incorrect'
        message = {'The second parameter is incorrect', ...
            'The parameter must be larger than the first parameter'};
    case 'The third parameter is incorrect'
        message = {'The third parameter is incorrect', ...
            'The parameter must be larger than the first parameter'};
end

uialert(app.SoftVotingDemoUIFigure, message, 'Error');
end