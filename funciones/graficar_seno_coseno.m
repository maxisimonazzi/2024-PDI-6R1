function graficar_seno_coseno(x1,x2)
    x = linspace(x1, x2, 100);
    y1 = sin(x);
    y2 = cos(x);
    
    figure;
    subplot(2, 1, 1);
    plot(x, y1, 'r', 'LineWidth', 2);
    title('Función Seno');
    xlabel('x');
    ylabel('sin(x)');
    grid('on')
    xlim([x1 x2])
    
    subplot(2, 1, 2);
    plot(x, y2, 'b', 'LineWidth', 2);
    title('Función Coseno');
    xlabel('x');
    ylabel('cos(x)');
    grid('on')
    xlim([x1 x2])
end