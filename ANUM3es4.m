function ANUM3es4()
    N = 20;
    for n = 2:2:N
        nodes = chebychevZeros(0, 5, n);
        w = ANUM3es2(nodes)
        scatter(nodes, w);
        title('4] comportamento pesi per n = 2 ... 20 nodi chebychev');
        hold on
        plot(nodes, w);
        legend('N = '+string(n));
        waitforbuttonpress;
    end

end
