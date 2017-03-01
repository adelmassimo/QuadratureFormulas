function s = ANUM3es11(n)
    a = -5;
    b = 5;
    
    f =@(x) x.*sin(x);

    x=linspace(a,b,n+1);
    y = f(x);
    
    I = integral(@(x) f(x), a, b)
    area(x, y);
    hold on
    int = trapezio(y, x)
    scatter(x,y)
    fplot(@(x) f(x), [a, b], '--', 'linewidth', 2);
    hold off
    title('formula dei trapezi su con n ='+string(n)+' nodi');
end