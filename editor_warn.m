function editor_warn(editor)
%EDITOR_WARN warn if editor variable is unset.

if ~isempty(editor)
    return
end

% warn user if no editor was found
warning(...
    ['Unable to find default text editor. Make commits using the "-m" ' ...
     'flag, e.g. "git(svn) commit -m ''My commit message.''" ' ...
     'This warning will only display once.'])

% turn off this warning
[~, MSGID] = lastwarn();
warning('off', MSGID);

end

