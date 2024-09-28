clc;clear;close all;
%%
filename='textdoc.txt';
fileID = fopen(filename);
C = textscan(fileID,'%c');%c is for reading the characters including white spaces 
%% s is used for strings
C=lower(C);
C=deblank(C);
celldisp(C);
len=length(C{1});
%%
p=C{1,1};
disp(length(p));
disp(p);
c0=zeros(1,26);
%%
ap=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
disp(length(ap));
%%
for i=1:1:length(p)
    for j=1:1:length(ap)
        if(p(i)==ap(j))
            c0(j)=c0(j)+1;
        end
    end
end
%%
c01=c0/length(p);
sum=0;
%%
for k=1:1:26
    sum=sum-(c01(k).*log2(c01(k)));
end
disp(sum);
