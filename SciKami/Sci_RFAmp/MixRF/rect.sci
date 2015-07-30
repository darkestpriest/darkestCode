function r=rect(t,f,vd)
  n=size(t,'*');
  for k=1:1:n
    if f(k)<vd then
      r(k)=1e-15
    else
      r(1,k)=f(k)
    end
  end
endfunction
