function A = splitData( dataset,value,feature)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
chq = dataset(:,feature);
mat = find(chq == value);
A = [];
for i = 1:length(mat)
    if feature~=1
        A = [A;dataset(mat(i),1:feature-1)  dataset(mat(i),feature+1:size(dataset,2))];
    else
        A = [dataset(mat(i),2:size(dataset,2))];
    end
end
return;
end
