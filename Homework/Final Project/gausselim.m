function x = gausselim(A, b)

[n, ~] = size(A);
aug = [A b];   % augmented matrix

% -------- Forward Elimination (no pivoting) --------
for i = 1:n-1
    for j = i+1:n
        factor = aug(j,i) / aug(i,i);
        aug(j,:) = aug(j,:) - factor * aug(i,:);
    end
end

% -------- Back Substitution --------
x = zeros(n,1);
for k = n:-1:1
    x(k) = (aug(k,end) - aug(k,k+1:n) * x(k+1:n)) / aug(k,k);
end

end