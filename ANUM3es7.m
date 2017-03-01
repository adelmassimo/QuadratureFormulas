function ANUM3es7(choise)
    for n = 2:20
        if choise == 1
            a = 0;
            b = 2*pi;
            t = @(s) sin(s);
        elseif choise == 2
            a = -4;
            b = 4;
            t = @(s) exp(s);
        elseif choise == 3
            a = -5;
            b = 5;
            t = @(s) 1./(1+s.^2);
        end
        
        x = linspace(a, b, n);
        f = t(x);
        
        w = ANUM3es2(linspace(a, b, n));
        
        I = integral(@(x) t(x), a, b)

        S = 0;
        for i = 1:n
           S = S + w(i)*f(i); 
        end
        
        e(n) = abs(I-S);
    end
    plot(e)
    xlabel('n');
    ylabel('error');
    if choise == 1
        title('7.1] studio err. integrale su f(s) = sin(s) s in [0, 2pi]');
    elseif choise == 2
        title('7.2] studio err. integrale su f(s) = exp(s) s in [-4, 4]');
    elseif choise == 3
        title('7.3] studio err. integrale su f(s) = 1/(1+s^2) s in [-5, 5]');
    end
end