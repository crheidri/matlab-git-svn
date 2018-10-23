function syscall(cmd, opts, args)
%SYSCALL Call system command and display output.

% run command
cmd = strjoin([cmd, opts, args]);
system(cmd, '-echo');

end

