function  fly_stright(n)
% A133058 	
%a(0) = a(1) = 1; 
%for n > 1, a(n) = a(n-1) + n + 1 
%if a(n-1) and n are coprime, 
%otherwise a(n) = a(n-1)/gcd(a(n-1),n).
%https://oeis.org/A133058

A=[1,1];

for i = 2:n
   if gcd(i,A(i)) == 1 
       %if no comman factor a(n)= a(n-1)+n+1
       A(i+1) = A(i)+i+1;
   else %a(n)=a(n-1)/gcd(n,a(n-1))  
       A(i+1) = A(i)/gcd(i,A(i));
   end
   
   x=1:length(A);
   
   scatter(x,A,'.')

end
