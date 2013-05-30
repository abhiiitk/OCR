function entropy = entropyCalc( dataset)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
rows=size(dataset,1);
cols=size(dataset,2);
temp=[];
for i=1:rows
    label=dataset(i,cols);
    if(stringOcc(label,temp,1)==0)
        temp=[temp ; label 1];
    
    else
        temp(stringOcc(label,temp,1),2)=temp(stringOcc(label,temp,1),2)+1;
	end
end
entropy=0.0;prob=0.0;sum=0;
count=size(temp,1);
for j=1:count
	prob=temp(j,2)/rows;
	sum=sum + (prob*log(prob)/log(2));
end
entropy=-sum;

end