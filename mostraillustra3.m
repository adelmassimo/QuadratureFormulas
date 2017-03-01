function mostraillustra3
    clc; close all;
    display( sprintf('Il valore inserito sar? il numero di nodi usati durante gli esercizi' ) );
    n = input('inserisci n:   ');
    esercizio = input('esercizio da fare [0 = show all]: ');
    
    nodes = linspace(-n/2, n/2-1, n);
    
    if( esercizio == 2 || esercizio == 0)
        w = ANUM3es2(nodes);
        clc
        display( sprintf('calcolo pesi dato un vettore di nodi\nintegrando le basi di lagrange' ) );
        nodes
        w
        waitforbuttonpress
        hold off
    end    
    clc
    if( esercizio == 3 || esercizio == 0)
        ANUM3es3();
        clc
        waitforbuttonpress
        hold off
    end    
    figure;
    if( esercizio == 4 || esercizio == 0)
        ANUM3es4();
        clc
        waitforbuttonpress
        hold off
    end
    close all;
    if( esercizio == 5 || esercizio == 0)
        w = ANUM3es5(nodes);
        clc
        display( sprintf('calcolo pesi dato un vettore di nodi\nintegrando le basi di lagrange' ) );
        nodes
        w
        waitforbuttonpress
        hold off
    end 
    if( esercizio == 6 || esercizio == 0)
        ANUM3es6();
        clc
        waitforbuttonpress
        hold off
    end 
     close all;
    if( esercizio == 7 || esercizio == 0)
        ANUM3es7(1);
        clc
        waitforbuttonpress
        hold off
        ANUM3es7(2);
        clc
        waitforbuttonpress
        hold off
        ANUM3es7(3);
        clc
        waitforbuttonpress
        hold off
    end 
         close all;
    if( esercizio == 8 || esercizio == 0)
        ANUM3es8(1);
        clc
        waitforbuttonpress
        hold off
        ANUM3es8(2);
        clc
        waitforbuttonpress
        hold off
        ANUM3es8(3);
        clc
        waitforbuttonpress
        hold off
    end
    
    if( esercizio == 9 || esercizio == 0)
        ANUM3es9;
        clc
        waitforbuttonpress
        hold off
    end 
    
    if( esercizio == 9 || esercizio == 0)
        ANUM3es9;
        clc
        waitforbuttonpress
        hold off
    end 
    
    if( esercizio == 10 || esercizio == 0)
        ANUM3es10;
        clc
        waitforbuttonpress
        hold off
    end 
    
    if( esercizio == 11 || esercizio == 13 || esercizio == 0)
        for j = 2:2:26
            clc
            ANUM3es11(j);
            waitforbuttonpress
            hold off
        end
    end     
    
    if( esercizio == 12 || esercizio == 14 || esercizio == 0)
        for j = 2:2:26
            clc
            ANUM3es12(j+1);
            waitforbuttonpress
            hold off
        end
    end 

    if( esercizio == 15 || esercizio == 16)
        for j = 6:20
            clc
            n = j
            ANUM3es15(j);
            waitforbuttonpress
            hold off
        end
        for j = 6:20
            clc
            n = j
            ANUM3es15s(j);
            waitforbuttonpress
            hold off
        end
    end 
    
end