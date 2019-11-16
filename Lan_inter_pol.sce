function symboliclagrange(X,Y)
    x = poly(0,"x")
    for i=1:length(Y)
        l(i)=1
        for j=1:length(Y)
            if i~=j
                l(i) = l(i)*(x-X(j))/(X(i)-X(j))
            end
        end
    end
    L=0
    for i=1:length(Y)
        L = L+Y(i)*l(i)
    end
    disp(L)
endfunction
