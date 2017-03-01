function  ANUM3es15s(n)
    a = 0;
    b = 2*pi;
    
    x = linspace(a, b, n);
    
    for i = 1:2:n
        xp((i+1)/2) = x(i);
    end

    f =@(x) x.*sin(x)
    
    error = abs( trapezio(f,x) - trapezio(f,xp))/3
end