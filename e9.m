function [resultado] = ini()
    clear,clc,close all 
    P= [1 1 1 1 1 1 0;   %0
        0 1 1 0 0 0 0;   %1
        1 1 0 1 1 0 1;   %2
        1 1 1 1 0 0 1;   %3
        0 1 1 0 0 1 1;   %4
        1 0 1 1 0 1 1;   %5
        1 0 1 1 1 1 1;   %6
        1 1 1 0 0 0 0;   %7
        1 1 1 1 1 1 1;   %8
        1 1 1 1 0 1 1]'; %9
    PL=[1 1 1 0 1 1 1;   %A
        0 0 1 1 1 1 1;   %B
        1 0 0 1 1 1 0;   %C
        0 1 1 1 1 0 1;   %D
        1 0 0 1 1 1 1;   %E
        1 0 0 0 1 1 1]'; %F

    T= [0 0 0 0 0;
        0 0 0 0 1;
        0 0 0 1 0;
        0 0 0 1 1;
        0 0 1 0 0;
        0 0 1 0 1;
        0 0 1 1 0;
        0 0 1 1 1;
        0 1 0 0 0;
        0 1 0 0 1]';
    TL=[0 1 0 1 0;
        0 1 0 1 1;
        0 1 1 0 0;
        0 1 1 0 1;
        0 1 1 1 0;
        0 1 1 1 1]';
     
     input = [1 1 1 0 1 1 1]
     
     [net,w,b,resultado] = getMLP(input, P, PL, T, TL);
     
     resultado
end
function [net,w,b,resultado] = getMLP(input, P, PL, T, TL)
    net =  perceptron;
    isNumber = 0;
    %input = [0 1 1 0 0 0 0];

    [~, s]=size(P);
    for i = 1:s
        tempP = P';
        if all(tempP(i,:)==input)
            isNumber = 1;
            break;
        end
    end

    if isNumber
        %% Entrenamiento numeros

        net = train(net,P,T);
        w = net.iw{1,1};
        b = net.b{1};
        a = net(P);

        temp_mx = [input;zeros(10,7)]';
        a = net(temp_mx)';
        resultado = a(1,:);
    else
        %% Entrenamiento letras

        net = train(net,PL,TL);
        w = net.iw{1,1};
        b = net.b{1};
        a = net(PL);

        temp_mx = [input;zeros(6,7)]';
        a = net(temp_mx)';
        resultado = a(1,:);
    end
end
