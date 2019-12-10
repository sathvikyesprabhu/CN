load('-ascii', 'c10p1.mat');
u1=mean(c10p1(:,1));
u2=mean(c10p1(:,2));
% for k=1:00
%     c10p1(k,1)=c10p1(k,1)-u1+2;
%     c10p1(k,2)=c10p1(k,2)-u2+5;
% end
w0=[0.2;0.5];
n=1;
a=1;
t=0.01;
for j=1:100
for i=1:100
    u=c10p1(i,:)';
    v=dot(u,w0);
    w1=w0+t*n*(v*u);
    w0=w1;
end
end

x=c10p1;
cm= (x' * x)/100;
[evtr,ev]=eig(cm);