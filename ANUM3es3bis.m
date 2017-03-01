function ANUM3es3bis()
    N = 50;
    for n = 2:2:N
        nodes = linspace(0, n-1, n);
        w = ANUM3es2(nodes);
        %h = area( w );
        
        
        
        x=0:0.05:n-1;                  %#initialize x array
        y1=0*x;                      %#create first curve

            y2=myF(x, w, nodes)                  %#create second curve

        X=[x,fliplr(x)];                %#create continuous x value array for plotting
        Y=[y1,fliplr(y2)];              %#create y values for out and then back
        fill(X,Y,'b'); 
        
        
        
        hold on
        %fplot(@(x) myF(x, w, nodes), [0, max(nodes)+1]);
        %set(h(1),'FaceColor',[n/N 0 n/N]);
        legend('N = '+string(n));
        waitforbuttonpress;
        hold off
    end

end
        


function f = myF(x,w, nodes)
n = max(size(nodes));
    for j = 1:max(size(x))
        f(j) = 0
        
        for i = 1:n
           if x(j)>nodes(i)
               f(j) = w(i);
           end
        end
    end
end