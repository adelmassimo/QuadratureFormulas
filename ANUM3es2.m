function w = ANUM3es2(nodes)
    n = max(size(nodes));
    a = min(nodes);
    b = max(nodes);
    
    w = ones(n,1);
    for i = 1:n
       w(i) = integral(@(x) lagrangeBase(x, nodes, i), a, b);
    end
end