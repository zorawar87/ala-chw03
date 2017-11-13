% Author: Zorawar Moolenaar <zoraw@blade>
% Created: 2017-11-12

function [Q,R] = QRdecomp (A)
  % We don't care about the row size, so ignore it using ~
  [~,n] = size(A);
  % obtain the orthonormal matrix
  Q = GramSchmidt(A);
  R = zeros(n,n);
  
  % for every column vector
  for i = 1:n 
    % Set the value of R only for the upper triangular values as:
    % R_ji = (Q_j)' * A_i
    for j= 1:i
      R(j,i) = Q(:,j)'*A(:,i);
    end
  end
end
