function editor = search_env(varargin)
%SEARCH_ENV search environment for default text editor.

% search env for default editor
for k=1:length(varargin)
    editor = getenv(varargin{k});
    if ~isempty(editor)
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
editor='';

end
