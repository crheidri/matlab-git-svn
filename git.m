function git(varargin)
%GIT Run git from command window.

% find default text editor
editor = search_env('MEDITOR','VISUAL','EDITOR');

% set git options and run cmd
setenv('GIT_EDITOR', editor) % tell git to use our editor
opts = {'--no-pager'};
syscall({'git'}, opts, varargin)

end



