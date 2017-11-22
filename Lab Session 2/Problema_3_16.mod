set Pr; #conjunto de productos
set Re; #conjunto de recursos
param a{Re,Pr}; #a[p,r] = cantidad de recurso r por unidad de producto p
param c{Pr}; #beneficio por unidad de producto
param b{Re}; #disponibilidad por recurso
var X {p in Pr}>=0;
maximize Profit: sum{p in Pr} c[p]* X[p];
subject to Recurso {r in Re}: sum{p in Pr} a[r,p]*X[p]<=b[r];
