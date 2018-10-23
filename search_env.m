function value = search_env(varargin)
%SEARCH_ENV search for environment variables.
%   SEARCH_ENV(VAR1,VAR2,...) searches for system environment variables
%   VAR1,VAR2,... and returns the first non-empty value.

% search env for default editor
for k=1:length(varargin)
    value = getenv(varargin{k});
    if ~isempty(value)
        return
    end
end

% warn user if no editor was found
warning(...
    ['Unable to find default text editor. Make commits using the "-m" ' ...
     'flag, e.g. "git(svn) commit -m ''My commit message.''" ' ...
     'This warning will only display once.'])

% turn off this warning
[~, MSGID] = lastwarn();
warning('off', MSGID);
value='';

end
