%Experiment 1
%Rayleigh distribution

clear all

P=100; Nf=0;Xf=0;

for i=1:P

      N=1000; M=2;

     a=sqrt(randn(N,M).^2 + randn(N,M).^2);

     xi=a.*cos(cos(rand(N,M)*2*pi) + rand(N,M)*2*pi);

     xq=a.*sin(cos(rand(N,M)*2*pi) + rand(N,M)*2*pi);

     sxi=(sum(xi'));

     sxq=(sum(xq'));

     ra=sqrt(sxi.^2+sxq.^2) ;

     [N X]=hist(ra,50);

     Nf=Nf+N;

     Xf=Xf+X;

end

Nf=Nf/P;

Xf=Xf/P;

% plots

plot(Xf,2*Nf/sum(Xf),'b')      

xlabel('v')

ylabel('f_v(v)')



