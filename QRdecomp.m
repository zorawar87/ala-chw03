## Author: Zorawar Moolenaar <zoraw@blade>
## Created: 2017-11-12

function [Q,R] = QRdecomp (A)
  [m,n] = size(A);
  Q = GramSchmidt(A);
  R = zeros(n,n);
  
  for i = 1:n % for every column vector
    for j= 1:i
      R(j,i) = Q(:,j)'*A(:,i);
    endfor
    #disp(A(:,2))
  endfor
endfunction