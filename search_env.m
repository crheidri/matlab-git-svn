function value = search_env(varargin)
%SEARCH_ENV search for environment variables.
%   SEARCH_ENV(VAR1,VAR2,...) searches for system environment variables
%   VAR1,VAR2,... and returns the first non-empty value.
%
%   See also getenv.

for k=1:length(varargin)
    value = getenv(varargin{k});
    if ~isempty(value)
        return
    end
end

end
