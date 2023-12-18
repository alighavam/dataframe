function b=linslope(X, varargin)
% function b=linslope([x y]);
% slope from linear regression with intercept 
% utility function for pivottables 

intercept = 1;
vararginoptions(varargin,{'intercept'})

b=linregress(X(:,2),X(:,1),'intercept',intercept);

if (intercept)
    b=b(2);
end