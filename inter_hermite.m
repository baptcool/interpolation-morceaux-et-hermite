
%interpolation avec 2 points et 2 tangentes en 2 points

function[] = inter_hermite()
x = (0:0.01:1);
	y1 = zeros(length(x));
    acos = 3*cos(30)/cos(30);
    asin = 3*sin(30)/cos(30);
    for i=(1:length(x))
	     p = calcul([0,0],[1,0],[acos,asin],[acos,-asin],x(i));%on récupère les points de la courbe cubine définit entre pi et pi+1
       y1(i)  = p(1); %les points sont récupérés à partir du tuple retourné
       x1(i)  = p(2);
	  end
   
	  plot(y1,x1) ;%on trace la courbe cubique d'hermite
    hold on;
    
    hold off;
    
endfunction

function[Vu] = calcul(p1,p2,t1,t2,u)
  Vu = [u^3,u^2,u,1 ]*[2,-2,1,1;-3,3,-2,-1;0,0,1,0;1,0,0,0];
 Vu = Vu *  [p1;p2;t1;t2];
endfunction