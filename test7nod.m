clc
clear all
d=[0 3 7 5 inf inf inf
    3 0 inf 1 10 inf inf
    6 inf 0 2 inf 3 inf
    inf 2 1 0 10 4 inf 
    inf 8 inf inf 0 inf 6
    inf inf 4 inf inf 0 3
    inf inf inf inf 7 3 0];
p=[0 2 3 4 0 0 0
    1 0 0 4 5 0 0
    1 0 0 4 0 6 0
    0 2 3 0 5 6 0
    0 2 0 0 0 0 7
    0 0 3 0 0 0 7
    ];
dsh=zeros(7,7);
psh=zeros(7,7);
for k=1:1:7
 for   i=1:1:7
  for  j=1:1:7
      if  i==j
          psh(i,j,:)=0;
      elseif d(i,j)>=d(i,k)+d(k,j);
            d(i,j)=d(i,k)+d(k,j);
      end
         end
  end
end
dsh=d;
disp(dsh)