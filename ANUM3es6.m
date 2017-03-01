function ANUM3es6
    title('6] confronto pesi per n = 2 ... 20');

    for n = 2:2:20
        
        subplot(1,3,1);
        h = area(ANUM3es5(linspace(0, n-1, n)));
        set(h(1),'FaceColor',[1 0 0]);
        title('indeterminated coeff. method, n ='+string(n));

        subplot(1,3,2);
        k = area(ANUM3es2(chebychevZeros(0, n, n)));
        set(k(1),'FaceColor',[0 0 1]);
        title('chebichev nodes, n ='+string(n));
        
        subplot(1,3,3);
        z = area(ANUM3es2(linspace(0, n, n-1)));
        set(z(1),'FaceColor',[0 1 1]);
        title('uniform nodes, n ='+string(n));
        clc
        waitforbuttonpress;
    end
end