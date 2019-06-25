clc;
clear all;
close all;
x=input('Enter a sequence')

for k=1:8
    for k=1:3
        x(k)=x(k)+x(k+4);
        for k=4:7
            x(k)=x(k)+x(k+4);
        end
    end
end
    