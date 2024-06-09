function hist_acumulativo(img)
    [cuentas, bins] = imhist(img);
    cuentas_acumuladas = cumsum(cuentas);
    plot(bins, cuentas_acumuladas);
end