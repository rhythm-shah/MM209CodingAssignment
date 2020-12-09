function Q7(DeltamH1,DeltamS1,DeltamH2,DeltamS2)

% DeltamH1 = 50600; 
% DeltamH2 = 36800;
% DeltamS1 = 30.07;
% DeltamS2 = 30.33;

R = 8.314;

Tm_Al2O3 = DeltamH1/DeltamS1;
Tm_Cr2O3 = DeltamH2/DeltamS2;
T = linspace(Tm_Al2O3, Tm_Cr2O3, 30);

% DeltaGm_Al2O3 = zeros(1:length(T));
% DeltaGm_Cr2O3 = zeros(1:length(T));
% k_Al2O3 = zeros(1:length(T));
% k_Cr2O3 = zeros(1:length(T));

for i = 1:length(T)         
    DeltaGm_Al2O3(i) = DeltamH1 - (T(i) * DeltamS1);
    DeltaGm_Cr2O3(i) = DeltamH2 - (T(i) * DeltamS2);
    k_Al2O3 = exp(-DeltaGm_Al2O3./(R*T(i)));
    k_Cr2O3 = exp(-DeltaGm_Cr2O3./(R*T(i)));
end

x_s_Al2O3 = (1-k_Cr2O3)./(k_Al2O3-k_Cr2O3);
x_l_Al2O3 = k_Al2O3 .* x_s_Al2O3;

plot(x_s_Al2O3, T, '*');
hold on;
plot(x_l_Al2O3, T, '*');
xlabel('Mole fraction of Al2O3');
ylabel('Temperature');
hold off;
print('fnldrft','-dpng');
