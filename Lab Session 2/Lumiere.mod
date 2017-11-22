set Pr; #conjunto de productos
set Re; #conjunto de recursos
param a{Pr,Re}; #a[p,r]=cantidad de recurso r por unidad de producto p
param v{Pr}; #beneficio por unidad de producto
param l{Re}; #disponibilidad por recurso
var X {p in Pr}>=0;
minimize Profit: sum{p in Pr} -v[p]* X[p];
subject to Recurso {r in Re}: sum{p in Pr} a[p,r]*X[p]<=l[r];
