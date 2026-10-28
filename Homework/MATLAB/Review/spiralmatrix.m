n = 10;               % size of the spiral
A = zeros(n,n);      % preallocate matrix
val = 1;             % starting value
top = 1;             % top row index
bottom = n;          % bottom row index
left = 1;            % left column index
right = n;           % right column index

while top <= bottom && left <= right
    % Fill top row (left → right)
    for j = left:right
        A(top,j) = val;
        val = val + 1;
    end
    top = top + 1;
    
    % Fill right column (top → bottom)
    for i = top:bottom
        A(i,right) = val;
        val = val + 1;
    end
    right = right - 1;
    
    % Fill bottom row (right → left)
    if top <= bottom
        for j = right:-1:left
            A(bottom,j) = val;
            val = val + 1;
        end
        bottom = bottom - 1;
    end
    
    % Fill left column (bottom → top)
    if left <= right
        for i = bottom:-1:top
            A(i,left) = val;
            val = val + 1;
        end
        left = left + 1;
    end
end

disp(A)
