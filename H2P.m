function [P,s]=H2P(H,K)
Rt = inv(K)*H;
n = norm(Rt(:,1));
Rt = Rt/n;
s = norm(Rt(:,1))/norm(Rt(:,2));
P = K*[Rt(:,1) Rt(:,2)/s cross(Rt(:,1),Rt(:,2))  Rt(:,3)]
P = P/P(3,4);
end