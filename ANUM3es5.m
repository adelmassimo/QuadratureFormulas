function w = ANUM3es5(nodes)
    a = min(nodes);
    b = max(nodes);
    n = max( size( nodes ) );
    
    V = fliplr( vander(nodes) )';
    
    c = zeros(n,1);
    for i = 1:n
        c(i,1) = (b^i - a^i)/i;
    end
    
    w = inv(V)*c;
end