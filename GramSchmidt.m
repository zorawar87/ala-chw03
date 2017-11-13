% Copyright (C) 2017 Zorawar Moolenaar
% Author: Zorawar Moolenaar <zoraw@blade>
% Created: 2017-10-12

function [Q] = GramSchmidt (A)
  % Assume that A contains lin ind vectors 
  [m,n] = size(A);
  Q = zeros(m,n);
  % Set the normalised first vector as the first
  % orthogonal vector
  Q(:,1)=A(:,1)/norm(A(:,1));
  
  % For every other vector
  for i=2:n
    vec = A(:,i); 
    % Follow the gram-schmidt process by solving for:
    % vec_i = vec_i - \sum{j=1}{i-1} (Q_j'*vec_i)*Q_j
    for j=1:i-1
      vec = vec- (Q(:,j)'*vec)*Q(:,j); 
    end
    % Normalise and assign it as the orthogonal vector
    Q(:,i)=vec/norm(vec);
  end
end
