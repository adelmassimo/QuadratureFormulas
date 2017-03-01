function ANUM3es8(choise)
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
        fp = t(x)+rand(1)
        
        w = ANUM3es2(linspace(a, b, n));
        
        I = integral(@(x) t(x), a, b);
        Ip = integral(@(x) t(x)+rand(1), a, b);

        S = 0;Sp = 0;
        for i = 1:n
           S = S + w(i)*f(i); 
           Sp = Sp + w(i)*fp(i); 
        end
        e(n) = abs(I-S);
        ep(n) = abs(Ip-Sp);
    end
    plot(e,'--', 'linewidth', 2);        
    hold on
    plot(ep);
    legend('clean func.','noised func.');
    if choise == 1
        title('8.1] studio err. con rumore su f(s) = sin(s) s in [0, 2pi]');
    elseif choise == 2
        title('8.2] studio err. con rumore su f(s) = exp(s) s in [-4, 4]');
    elseif choise == 3
        title('8.3] studio err. con rumore su f(s) = 1/(1+s^2) s in [-5, 5]');
    end
end