function Q7(DeltamHAl2O3,DeltamSAl2O3,DeltamHCr2O3,DeltamSCr2O3)
    
% DeltamHAl2O3 = 107500; 
% DeltamSAl2O3 = 46.26;
% DeltamHCr2O3 = 117400;
% DeltamSCr2O3 = 46.35;

R = 8.314;

Tm_Al2O3 = DeltamHAl2O3/DeltamSAl2O3;
Tm_Cr2O3 = DeltamHCr2O3/DeltamSCr2O3;
T = linspace(Tm_Al2O3, Tm_Cr2O3, 30);

for i = 1:length(T)         
    DeltaGm_Al2O3(i) = DeltamHAl2O3 - (T(i) * DeltamSAl2O3);
    DeltaGm_Cr2O3(i) = DeltamHCr2O3 - (T(i) * DeltamSCr2O3);
    k_Al2O3 = exp(-DeltaGm_Al2O3./(R*T(i)));
    k_Cr2O3 = exp(-DeltaGm_Cr2O3./(R*T(i)));
end

x_s_Cr2O3 = (1-k_Al2O3)./(k_Cr2O3-k_Al2O3);
x_l_Cr2O3 = k_Cr2O3 .* x_s_Cr2O3;

plot(x_s_Cr2O3, T, '*');
hold on;
plot(x_l_Cr2O3, T, '*');
xlabel('Mole fraction of Cr2O3');
ylabel('Temperature');
hold off;

print('fnldrft','-dpng');
