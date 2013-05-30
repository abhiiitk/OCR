function treeRoot = makeTree(dataset,featureMatrix)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
classList=dataset[:,size(dataset,2)];
if size(dataset)==strOcc(classList,classList(1,1),1)    %All Classes Equal, Base Case Hit.
    treeRoot= classList(1,1);
    return
if size(dataset,2)==1   %No features left, Base Case Hit.
    treeRoot= majorityVote(classList);
    return
else
    bestFeatureLabel=chooseBestFeature(dataset,featureMatrix)
    
end

