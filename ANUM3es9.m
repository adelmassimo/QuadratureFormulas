function s = ANUM3es9

    a = -5;
    b = 5;
    
    t =@(x) 1 + x + x.^2 + x.^3 + x.^4 + x.^5 + x.^6;
    %t =@(x) 1 + x + x.^2 + x.^3 + x.^4 + x.^5;
    %t =@(x) 1 + x + x.^2 + x.^3 + x.^4;
    %t =@(x) 1 + x + x.^2 + x.^3;
    %t =@(x) 1 + x + x.^2;
    %t =@(x) 1 + x;
    
    int = integral(t,a,b);
    
    for n=1:4
        for i=0:n
            x(i+1) = i*((b-a))/(n)+a;
        end
        x
        if(n == 1)
            s(1) = ((b-a)/2)*(t(x(1)) + t(x(2)))
            scatter(n,s(1));
            hold on
            scatter(n,int);
        end
        if(n == 2)
            s(2) = ((b-a)/6)*(t(x(1)) + 4*t(x(2)) + t(x(3)));
            scatter(n,s(2));
            scatter(n,int);
        end
        if(n == 3)
            s(3) = ((b-a)/8)*(t(x(1)) + 3*t(x(2)) + 3*t(x(3))+t(x(4)));
            scatter(n,s(3));
            scatter(n,int);
        end
        if(n == 4)
            s(4) = ((b-a)/90)*(7*t(x(1)) + 32*t(x(2)) + 12*t(x(3))+32*t(x(4)) + 7*t(x(5)));
            scatter(n,s(4));
            scatter(n,int);
        end
        
    end
    title('studio convergenza con forme CHIUSE');
    xlabel('n');
    ylabel('integral value');
    plot(linspace(1,4,4),s, 'linewidth', 2)
    fplot(int, [1,4], '--','linewidth', 2);

    hold off;
end