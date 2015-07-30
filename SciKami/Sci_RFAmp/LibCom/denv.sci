function f=denv(t,fin,vd,frc)
  n=size(t,'*')
  for k=1:1:n
    if fin(k)<vd then
      fo(1,k)=0
    else
      fo(1,k)=fin(k)-vd
    end
  end
  f=fpb(fo,frc)
endfunction

