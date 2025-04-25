function n = matrix_norma(A)

    %transzporálom sobol oszlopot csinálok 
    n = max(sum(abs(A')))

end