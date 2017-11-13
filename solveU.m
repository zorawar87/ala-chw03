function [ x ] = solveU( U, b )
%solveU Solves an upper triangular matrix equation.
%   Solves the system Ux = b,
%   where	U is an n×n upper triangular matrix, and
%           b is an n-dimensional column vector
%   returns x, an n-dimensional column vector

% Do not proceed if U is not a triangle matrix or if b is not a column vector 
    if ~istriu(U) || ~iscolumn(b)
        msg ='U is not an upper triangular matrix OR b is not a column matrix';
        error(msg)
    end
    
    n = numel(b); % Get N from number of elements in b column-matrix
    x = zeros(n,1); % Initialise the unknown vector to zeros.
    
    x(n) = b(n)/U(n,n); % assign the last variable in x-matrix its value.
       % This is a simple, constant formula so it's done outside the loop.
    
    for i=n-1:-1:1 %start from second last row untilt the first
        tracker = n-i; %only n-i elements of row i will be nonzero.
            % "tracker" variable will help skip the rest.
        accumulator=0; % accumulates the sum of coefficient times the
            % respective v2ariable's value, for all known variables.
        v=0; % value of U at (i,j) position, initialised to 0.
        for j=n:-1:1 % loop over each column
            v = U(i,j); 
            if tracker == 0
                break % do not accumulate the sum if we're on the
                % coefficient whose corrosponding value needs to be found.
            end
            accumulator = accumulator + v*x(j);
            tracker = tracker -1;
        end
        x(i)=(b(i)-accumulator)/v;
    end
end

