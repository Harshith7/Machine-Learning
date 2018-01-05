% Cost Function for a sample data set;
% where x = [1,2,3,4] and corresponding y = [1,2,3,4] respectively
% y = theta * x. 
% Note add column of 1s at the begining of x Matrice for "design matric"


function J = costfunctionJ(x,y,theta)

m=size(x,1); % number of training set
predict = x*theta; % predictions of hypothesis on all m examples

sqrErrors = (predict-y).^2; % squared errors

J = 1/(2*m)*sum(sqrErrors);