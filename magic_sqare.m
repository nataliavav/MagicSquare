function A = magic_square(n)
for i=1:n
    for j=1:n
        A(i,j)=0;   
    end
end
i=(n+1)/2;
j=n;
A(i,j)=1;
for k=2:n^2
    if i==n && j==n
        j=j-1;
    elseif i==n
        i=1;
        j=j+1;
    elseif j==n
        i=i+1;
        j=1;
    else
        if A(i+1,j+1)~=0 
            j=j-1;
        else
            i=i+1;
            j=j+1;
        end
        
    end
    A(i,j)=k;
end
end