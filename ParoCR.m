function [TAs , TAd , FC , FR , SPO2, Temp , evalPam , escGlasgow , Paramedico]=ParoCR(i)

        %Función para generar signos vitales acordes a PARO
        %CARDIORRESPIRATORIO
        Patologia = {'ParoCardiorrespiratorio'};
        celda = ['O' num2str(i+1)];     
        xlswrite('ParteAmbulancia.xlsx',Patologia,'Hoja1',celda);
        
        %Lugar de Incidente: 'Otro'
        Incidente = {'Hogar','Trabajo','Escuela','ViaPublica','Otro'};
        incidente=Incidente(randi([1,length(Incidente)]));
        celda=['A' num2str(i+1)];     
        xlswrite('ParteAmbulancia.xlsx',incidente,'Hoja1',celda);

        %Edad: Rango de 1 a 77 años (Esperanza de vida en México)
        Edad = randi([1,77]);
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

        %TAs (PANI): Actividad sin pulso o Hipertension Rango de <60 mmHg o
        % <140 mmHg
        tas = randi([0,1]);
        if tas == 1
            TAs = randi([50,60]);
            celda = ['G' num2str(i+1)];
            xlswrite('ParteAmbulancia.xlsx',TAs,'Hoja1',celda);
        end
        if tas == 0
            TAs = randi([140,200]);
            celda = ['G' num2str(i+1)];
            xlswrite('ParteAmbulancia.xlsx',TAs,'Hoja1',celda);
        end
        

        %TAd (PANI): Actividad sin pulso o Hipertensión Rango de 10 a 20
        %mmHg o 100 a 160 mmHg
        TAd = TAs-40;
        celda = ['H' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',TAd,'Hoja1',celda);

        %FC: Ausencia del pulso, Bradicardia Rango de 5 a 60 LPM
        FC = randi([5, 60]);
        celda = ['I' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',FC,'Hoja1',celda);

        %FR: Insuficiencia Respiratoria Rango de <12 BPM
        FR = randi([1,12]);
        celda = ['J' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',FR,'Hoja1',celda);

        %Saturación de Oxígeno: Cianosis Rango de 80 a 95 %
        SPO2 = randi([80,95]);
        celda = ['K' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',SPO2,'Hoja1',celda);

        %Temperatura: Hipotermia a NORMAL Rango de 34 a 37 °C
        Temp = (randi([36,39]))*0.95;
        celda = ['L' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',Temp,'Hoja1',celda);

        %Escala de Glasgow: (v1 v2 v3)
        %v1 Apertura ocular (1 a 4)
        %v2 Respuesta verbal (1 a 5)
        %v3 Respuesta motora (1 a 6)
        Glasgow(1) = randi([1,2]);
        Glasgow(2) = randi([1,1]);
        Glasgow(3) = randi([1,2]);
        %escGlasgow = {mat2str(Glasgow)};
        escGlasgow = sum(Glasgow);
        celda = ['M' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',escGlasgow,'Hoja1',celda);

%                 Terapeutica Empleada
%                 Terapeutica = 
%                 celda = ['N' num2str(i+1)];
%                 xlswrite('ParteAmbulancia.xlsx',Terapeutica,'Hoja1',celda);
end