function f=impulso(t,to)
  n=size(t,'*')
  for k=1:1:n
    if t(k)==to then
      f(1,k)=1
    else
      f(1,k)=0
    end
  end
endfunction

