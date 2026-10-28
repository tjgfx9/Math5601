function AU=uppertriangular(augA)

[m, n] = size(augA);
AU = augA; % Initialize AU with the augmented matrix
for i = 1:min(m, n)
    % Make the diagonal element 1 and eliminate below
    AU(i, :) = AU(i, :) / AU(i, i);
    for j = i+1:m
        AU(j, :) = AU(j, :) - AU(j, i) * AU(i, :);
    end
end
