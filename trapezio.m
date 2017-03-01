function int = trapezio(y,x)
    n = max(size(x))-1;

    h=x(2)-x(1); 

    int=h*( sum(y(2:n)) + (y(1)+y(n+1) )/2);
end
