function s = ANUM3es12(n)
    if mod(n,2) == 0 
        error('n must be odd');
    end
    a = 0;
    b = 10;
    
    f =@(x) x.*exp(-x);

    x=linspace(a,b,n);
    y = f(x);
    
    I = integral(@(x) f(x), a, b)
    int = simpson(y, x)
    
    scatter(x,y)
    hold on
    fplot(@(x) f(x), [a, b]);
    
    
    
    for j = 1:2:n-1
        
       fplot(@(s) lagrangePolynomial(s, x(j:j+2), y(j:j+2)), [x(j), x(j+2)], 'linewidth', 2); 
    end
    
    
    
    hold off
    title('formula di simpson su con n ='+string(n)+' nodi');
end