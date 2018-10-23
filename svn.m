function svn(varargin)
%svn Run svn from command window.

% find default text editor
editor = find_editor('MEDITOR','VISUAL','EDITOR');

% set svn options and run cmd
setenv('SVN_EDITOR', editor) % tell svn to use our editor
opts = {};
syscall({'svn'}, opts, varargin)

end