function ANUM3es3
    N = 20;
    
    for n = 2:2:N
        nodes = linspace(0, 5, n);
        w = ANUM3es2(nodes);
        scatter(nodes, w);
        title('3] comportamento pesi per n = 2 ... 20 nodi uniformi ');
        hold on
        plot(nodes, w);
        legend('N = '+string(n));
        waitforbuttonpress;
    end
    hold off

end
        


function f = myF(x,w, nodes)
    f = 0;
    n = max(size(nodes));
    for i = 1:n
       if x>nodes(i)
           f = w(i);
       end
    end
    
end