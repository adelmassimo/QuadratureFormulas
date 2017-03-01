function result = ANUM3es17(n)
    a = 0;
    b = 10;
    x = linspace(a, b, n);

    f =@(x) x;
    
    adattativoTrapezi(x,f)
    
    INTEGRALE = integral(@(s) f(s), a, b)
end