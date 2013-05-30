function unique= uniqueValues(A)
%UNTITLED2 Summary of this function goes here
%   A is a column matrix.
unique=[];
length=size(A,1);
for i=1:length
    value=A(i,1);
    count=strOcc(value,A,1);
    if count==1
        unique=[unique; count];
    end
end

end

