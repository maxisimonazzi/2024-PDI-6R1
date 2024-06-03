function histograma_acumulativo(img,titulo,x,y)
[cuentas, bins] = imhist(img);
cuentas_acumuladas = cumsum(cuentas);
plot(bins, cuentas_acumuladas);
title(titulo);
xlabel(x);
ylabel(y);
end

