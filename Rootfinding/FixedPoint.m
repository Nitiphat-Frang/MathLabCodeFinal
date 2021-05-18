function [r, n] = FixedPoint(g, x1, kmax, tol)
if nargin < 4 || isempty(tol), tol = 1e-4; end
if nargin < 3 || isempty(kmax), kmax = 20; end
x = zeros(1,kmax);
x(1) = x1;
for n = 1:kmax,
    x(n+1) = g(x(n));
 if abs(x(n+1) - x(n)) < tol
 r = x(n+1);
 return
 end
end
r = 'failure'; % Failure to converge after kmax iterations

