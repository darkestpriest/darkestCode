function y=tshape(x)

// Used in Experiment 1, 
// Communications system 4e: Simon Haykin
// Modificado para Scilab 5.2.2 por Ing. Manuel Pérez P.
// Coordinación de Ingeniería en Telecomunicaciones
// UNEFA, Núcleo Aragua, Sede Maracay
// 2010. Distribución Libre


	[m,n]=size(x);
	
  	k=ceil(log2(m));
	
	K=2^k;

	z=[x;zeros(K-m,n)];
	
	up=zeros(1,K/2);
	
	down=up;

	for l=1:k

	
		GN=2^(l-1);
	
		G=2^(k-l+1);
	
		up0=1:G/2;
	
		down0=up0+G/2;

		d=(0:GN-1)*G;

		up=matrix((ones(GN,1)*up0)'+ones(G/2,1)*d,1,K/2);
	
		down=matrix((ones(GN,1)*down0)'+ones(G/2,1)*d,1,K/2);
	
		reorder=matrix([up;down]',1,K);
	
		z(reorder,:) =[z(up,:)+z(down,:);z(up,:)-z(down,:)];

	end

	y=z/K;

endfunction
			