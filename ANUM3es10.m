function s = ANUM3es10

    a = -5;
    b = 5;
    
    t =@(x) 1 + x + x.^2 + x.^3 + x.^4 + x.^5 + x.^6;
    %t =@(x) 1 + x + x.^2 + x.^3 + x.^4 + x.^5;
    %t =@(x) 1 + x + x.^2 + x.^3 + x.^4;
    %t =@(x) 1 + x + x.^2 + x.^3;
    %t =@(x) 1 + x + x.^2;
    %t =@(x) 1 + x;
    
    int = integral(t,a,b);
    
    for n=2:4
        for i=0:n
            x(i+1) = i*((b-a))/(n)+a;
        end
        
        if(n == 2)
            s(1) = (b-a)*(t(x(2)));
            scatter(n,s(1));
            hold on
            scatter(n,int);
        end
        if(n == 3)
            s(2) = (b-a)/2*(t(x(2)) + t(x(3)));
            scatter(n,s(2));
            scatter(n,int);
        end
        if(n == 4)
            s(3) = ((b-a)/3)*(2*t(x(2)) - t(x(3)) + 2*t(x(4)));
            scatter(n,s(3));
            scatter(n,int);
        end
        
    end
    title('studio convergenza con forme APERTE');
    xlabel('n');
    ylabel('integral value');
    plot(linspace(2,4,3), s, 'linewidth', 2)
    fplot(int, [2,4], '--','linewidth', 2);
    
    hold off;
end