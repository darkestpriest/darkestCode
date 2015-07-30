function f=escalon(t,to)
  n=size(t,'*')
  for k=1:1:n
    if t(k)<to then
      f(1,k)=0
    else
      f(1,k)=1
    end
  end
endfunction

