function [TAs , TAd , FC , FR , SPO2, Temp , evalPam , escGlasgow , Paramedico]=CrisisPsiquiatrica(i)

        %Función para generar signos vitales acordes a CRISIS PSIQUIATRICA
        Patologia = {'CrisisPsiquiatrica'};
        celda = ['O' num2str(i+1)];     
        xlswrite('ParteAmbulancia.xlsx',Patologia,'Hoja1',celda);
        
        %Lugar de Incidente: 'Otro'
        Incidente = {'Escuela','Hogar','Trabajo','Calle','Otro'};
        incidente=Incidente(randi([1,length(Incidente)]));
        celda=['A' num2str(i+1)];     
        xlswrite('ParteAmbulancia.xlsx',incidente,'Hoja1',celda);

        %Edad: Rango de 20 a 77 años (Esperanza de vida México)
        Edad = randi([20,77]);
        celda = ['D' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',Edad,'Hoja1',celda);

        %Género: 0 = Masculino (50%), 1 = Femenino (50%)
        genero = randi([0,1]);
        if genero == 1
            GEN = {'Femenino'};
            celda=['E' num2str(i+1)];
            xlswrite('ParteAmbulancia.xlsx',GEN,'Hoja1',celda);
        end
        if genero == 0
            GEN = {'Masculino'};
            celda=['E' num2str(i+1)];
            xlswrite('ParteAmbulancia.xlsx',GEN,'Hoja1',celda);
        end

        %TAs (PANI): Hipertensión Rango de 130 a 200 mmHg
        TAs = randi([130,200]);
        celda = ['G' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',TAs,'Hoja1',celda);

        %TAd (PANI): Hipertensión Rango de 90 a 160 mmHg
        TAd = TAs-40;
        celda = ['H' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',TAd,'Hoja1',celda);

        %FC: Taquicardia Rango de 100 a 250 LPM
        FC = randi([100, 250]);
        celda = ['I' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',FC,'Hoja1',celda);

        %FR: Taquiapnea Rango de 20 a 80 BPM
        FR = randi([20,80]);
        celda = ['J' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',FR,'Hoja1',celda);

        %Saturación de Oxígeno: Hipoxia Rango de 90 a 95 %
        SPO2 = randi([90,95]);
        celda = ['K' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',SPO2,'Hoja1',celda);

        %Temperatura: Rango de 36 a 37 °C
        Temp = (randi([36,37]));
        celda = ['L' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',Temp,'Hoja1',celda);

        %Escala de Glasgow: (v1 v2 v3)
        %v1 Apertura ocular (1 a 4)
        %v2 Respuesta verbal (1 a 5)
        %v3 Respuesta motora (1 a 6)
        Glasgow(1) = randi([2,4]);
        Glasgow(2) = randi([2,3]);
        Glasgow(3) = randi([2,4]);
        %escGlasgow = {mat2str(Glasgow)};
        escGlasgow = sum(Glasgow);
        celda = ['M' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',escGlasgow,'Hoja1',celda);
         
%                 Terapeutica Empleada
%                 Terapeutica = 
%                 celda = ['N' num2str(i+1)];
%                 xlswrite('ParteAmbulancia.xlsx',Terapeutica,'Hoja1',celda);

end