// Experiment 1, CSBOOK-Haykin
// Fading channel
// requires functions rayleigh.m  to run



clear all

//signal: Sinusoidal wave

t1=0:0.01:5;     
  
so1=sin(2*%pi*t1);

// fading (Raleigh fading)
     
h=rayleigh(t1,1,2);
     
tt=(h(:,2)).*so1';

//plots
    
figure(1)
        
subplot(2,1,1)
        
plot(t1*1e-6,so1)
        
xlabel('time(s)')
        
grid
        
subplot(2,1,2)
        
plot(t1*1e-6,abs(tt).*cos(angle(tt))/sqrt(2))
        
xlabel('time(s)')
        
grid
