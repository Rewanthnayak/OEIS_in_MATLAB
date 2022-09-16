function [A]=primes_base2(n)
%A265326		
%n-th prime minus its binary reversal.
%https://oeis.org/A265326


a=primes(n);                  %primes before n 
fliped = zeros(1,length(a));

for i=1:length(a)
       
    %      convert back to decimal   ith prime
    %              ^                    ^
    %              |                    |
    fliped (i)= bin2dec(fliplr(dec2bin(a(i)))); 
    %                    |
    %                    ˅
    %     flip the binary string   

end

A=a-fliped;%difference of prime and its binary reversal

scatter(1:length(A),A,'.') %scatter plot points