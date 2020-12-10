# MM209CodingAssignment

Coding Assignment - MM 209 - 190110053, 190110074, 190110078

Assignment is coded in MATLAB a programming language and numerical computing environment developed by MathWorks.

The code takes values of Delta H(melting) of Al2O3 under the variable DeltamHAl2O3; Delta S(melting) of Al2O3 under the variable DeltamSAl2O3; Delta H(melting) of Cr2O3 under the variable DeltamHCr2O3; Delta S(melting) of Cr2O3 under the variable DeltamSCr2O3; as input.

Since Delta G(melting) = 0, we can obtain melting point by dividing Delta H(melting) with Delta S(melting). 

Then creates 30 data points between melting point of Al2O3 to melting point of Cr2O3, these help us generate values of Delta G of both Al2O3 and Cr2O3 at these 30 temperatures by the known formula - "Delta G = Delta H - (T * Delta S)"

Using these Delta G values we obtain k values of Al2O3 and Cr2O3 using the formula - "k = exp(- Delta G / (R * T))".

Using both the k values for Al2O3 and Cr2O3 we generate mole fraction of Cr2O3 in solid and liquid phase as shown respectively - "X(s) = (1 - k(Al2O3)) / (k(Cr2O3) - k(Al2O3))" and "X(l) = k(Cr2O3) * X(s)"

The code then returns a graph between Temperature and Mole percentage of Cr2O3, with temeratures ranging from melting point of Al2O3 (2324K) to melting point of Cr2O3 (2533K) and saves the graph under the name 'fnldrft.png'.


To run the code type, in the COMMAND WINDOW, "Q7(DeltamHAl2O3,DeltamSAl2O3,DeltamHCr2O3,DeltamSCr2O3)", where Q7 is the name of the function and DeltamHAl2O3, DeltamSAl2O3, DeltamHCr2O3, DeltamSCr2O3 represent the values respectively indicated by the variable name and as mentioned above.

Example: 
DeltamHAl2O3 = 107500;
DeltamSAl2O3 = 46.26;
DeltamHCr2O3 = 117400;
DeltamSCr2O3 = 46.35;
are the values that we used to generate the plot(References given).
