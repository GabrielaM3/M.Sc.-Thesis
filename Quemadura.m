function [TAs , TAd , FC , FR , SPO2, Temp , evalPam , escGlasgow , Paramedico]=Quemadura(i)

        %Función para generar signos vitales acordes a QUEMADURA
        Patologia = {'Quemadura'};
        Tipo = randi([1,3]);
        celda = ['O' num2str(i+1)];     
        xlswrite('ParteAmbulancia.xlsx',Patologia,'Hoja1',celda);
        
        %TipoLesion = {'Fuego', 'Electrica', 'Quimica'};
        TipoLesion = {'Fuego', 'Electrica', 'Quimica'};
        Evaluacion = TipoLesion(Tipo);
        celda = ['F' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',Evaluacion,'Hoja1',celda);

        %Lugar de Incidente: 'Hogar','Trabajo','Escuela'
        Incidente = {'Hogar','Trabajo','Escuela'};
        incidente=Incidente(randi([1,length(Incidente)]));
        celda=['A' num2str(i+1)];     
        xlswrite('ParteAmbulancia.xlsx',incidente,'Hoja1',celda);

        %Edad: Rango de 1 a 14 años (80%) | (20%) 15 a 77 años (Esperanza de vida México)
        pd = makedist('Binomial','N',1,'p',0.8);
        edad = random(pd);
        if edad == 1
        Edad = randi([1,14]);
        celda = ['D' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',Edad,'Hoja1',celda);
        end
        if edad == 0
        Edad = randi([15,77]);
        celda = ['D' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',Edad,'Hoja1',celda);
        end

        %Género: 0 = Masculino (75%), 1 = Femenino (25%)
        pd = makedist('Binomial','N',1,'p',0.75);
        genero = random(pd);
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

        %TAs (PANI): Hipotensión Rango de 60 a 110 mmHg
        TAs = randi([60,110]);
        celda = ['G' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',TAs,'Hoja1',celda);

        %TAd (PANI): Hipotensión Rango de 20 a 70 mmHg
        TAd = TAs-40;
        celda = ['H' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',TAd,'Hoja1',celda);

        %FC: Rango >90 LPM
        FC = randi([90, 255]);
        celda = ['I' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',FC,'Hoja1',celda);

        %FR: Taquiapnea Rango > 20 BPM o Bradiapnea por Disnea Rango < 12
        %BPM
        fr = randi([0,1]);
        if fr == 1
            FR = randi([20,50]);
            celda = ['J' num2str(i+1)];
            xlswrite('ParteAmbulancia.xlsx',FR,'Hoja1',celda);
        end
        if fr == 0
            FR = randi([5,12]);
            celda = ['J' num2str(i+1)];
            xlswrite('ParteAmbulancia.xlsx',FR,'Hoja1',celda);
        end
        
        %Saturación de Oxígeno: Rango de 90 a 100 %
        SPO2 = randi([90,100]);
        celda = ['K' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',SPO2,'Hoja1',celda);

        %Temperatura: Rango < 36 o > 38 °C
        Temp = (randi([32,35]))*1.1;
        celda = ['L' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',Temp,'Hoja1',celda);

        %Escala de Glasgow: (v1 v2 v3)
        %v1 Apertura ocular (1 a 4)
        %v2 Respuesta verbal (1 a 5)
        %v3 Respuesta motora (1 a 6)
        Glasgow(1) = randi([1,4]);
        Glasgow(2) = randi([2,5]);
        Glasgow(3) = randi([4,5]);
        %escGlasgow = {mat2str(Glasgow)};
        escGlasgow = sum(Glasgow);
        celda = ['M' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',escGlasgow,'Hoja1',celda);

        %Terapeutica Empleada
        %Terapeutica = 
        %celda = ['N' num2str(i+1)];
        %xlswrite('ParteAmbulancia.xlsx',Terapeutica,'Hoja1',celda);
      
end