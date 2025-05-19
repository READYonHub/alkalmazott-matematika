%5. 
% a. irjon egy kódot a gépi epszilon meghatérozására.
% b. olvassa 



epsilon = 1.0;
while (1.0 + epsilon) ~= 1.0
    epsilon = epsilon / 2.0; 
end

epsilon = epsilon * 2.0;

disp('A gépi epszilon értéke:');
disp(epsilon);

% orai

p=1;

while 1+p~=1
    p=p/2;
end

eps_1=2*p

eps_1_beepitett = eps(1)


for i=2:10:100
    i
    eps(i)

end

