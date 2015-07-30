function z=rayleigh(t,fd,N,phase0)

// Used in Experiment 1,  
// Communications system 4e: Simon Haykin
// requires function tshape.m to run


	p=log2(N)-floor(log2(N));

	if p~=0 
		
	elseif N < 8 

		N0=8;

	else 

		N0=N;

	end


	M=4*N0;

	wm=2.0*%pi*fd;	tl=length(t);
	
        n=1:N0;
[c,nargin]=argn(0);
	if nargin < 4
	
 	phase0=2*%pi*rand(1,N0);
	
        end

	time=(ones(N0,1)*t)';
	
 	wn=ones(tl,1)*(wm*cos(2.0*%pi*(n-0.5)/M));
	
	beta=ones(tl,1)*(%pi*n/N0);
	
	cita0=ones(tl,1)*phase0;

	xc=zeros(tl,N0);
	
	xs=xc;y=xc;

	xc=cos(beta).*cos(wn.*time+cita0);	
	
	xs=sin(beta).*cos(wn.*time+cita0);	
	
	y=sqrt(2/N0)*(xc+%i*xs);

	m=N0/N;
	
	if m~=1
	
		g=matrix(n,N,m);
	
		y=y';
	
		u=zeros(N,tl);
	
		for k=1:N
	
			u(k,:)=sum(y(g(k,:),:));
	
		end
	
		z=N*(tshape(u))';
	
	else
	
		z=N0*(tshape(y'))';
	
	end

endfunction




