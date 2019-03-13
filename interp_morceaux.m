
%interpolation linéaire par morceaux de la fonction ci dessous

function[] = interp_morceaux()
  x= -2:1:8; %ON définit un interval large et peu précis
  tx = (-2:0.001:8); %puis un second plus précis
  v = [-2 -1 0 1 10 3 4 5 6 7 8];;
  %vq1 = interp1(x,v,tx) %on récupere les points de l'interpolation linéaire
  vq2 = interp1(x,v,tx,'pchip');%on récupere les points de l'interpolation "cubique"
  plot(tx,vq2);
endfunction

%et on observe bien que la méthode cubique et bien plus précise que la méthode linéaire. dans le sens ou elle est plus proche de la réalité.