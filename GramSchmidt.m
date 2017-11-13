## Copyright (C) 2017 Zorawar Moolenaar

## Author: Zorawar Moolenaar <zoraw@blade>
## Created: 2017-10-12

function [Q] = GramSchmidt (A)
  # Assume that A contains lin ind vectors 
  [m,n] = size(A);
  Q = zeros(m,n);
  Q(:,1)=A(:,1)/norm(A(:,1));
  
  for i=2:n
    vec = A(:,i);
    for j=1:i-1
      vec -= (Q(:,j)'*vec)*Q(:,j);
    endfor
    Q(:,i)=vec/norm(vec);
  endfor
endfunction
