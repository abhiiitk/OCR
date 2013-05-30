function bestFeature = chooseBestFeature(dataset,featureMatrix)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
featureNum=size(dataset,2)-1;
factorC=0.0;
infoGain=0.0;
baseEntropy=calcEntropy(dataset);
bestInfoGain=0.0;
for i=1:featureNum
    featureValues=dataset[:,i];
    uniqueM=uniqueValues(featureValues);
    numUnique=size(uniqueM,1);
    for j=1:numUnique
        temp=splitData(dataset,uniqueM[j],i);
        entropySub=calacEntropy(temp);
        factorC=size(temp,1)/size(dataset,1);
        newEntropy=newEntropy + (entropy*factorC);
    end
    infoGain=baseEntropy-newEntropy;
    newEntropy=0.0;
    if infoGain>bestInfoGain
        bestInfoGain=infoGain;
        bestFeature=featureMatrix(i);
    end
end

end

