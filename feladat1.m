function M = matrixgenerator(n)

m = zeros(n);

for i=1:n
    for j=1:n
        if i<j
            M(i,j) = -1

        else if i==j
            M(i,j) = 1
            end
        end
    end

end