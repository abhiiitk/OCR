function count = stringOcc(str,A,col)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
rows=size(A,1);count=0;
for i=1:rows
	temp=A(i,col);
	if(str==temp)
	count=i;
	break
	end
end

end	
	