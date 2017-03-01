function  ANUM3es15(n)
    a = -4;
    b = 4;
    
    x = linspace(a, b, n);
    
    for i = 1:2:n
        xp((i+1)/2) = x(i);
    end

    f =@(x) exp(x)
    
    error = abs( trapezio(f,x) - trapezio(f,xp))/3
end