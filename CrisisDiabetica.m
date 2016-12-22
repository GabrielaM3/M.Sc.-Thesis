function [TAs , TAd , FC , FR , SPO2, Temp , evalPam , escGlasgow , Paramedico]=CrisisDiabetica(i)

        %Función para generar signos vitales acordes a CRISIS DIABETICA
        Patologia = {'CrisisDiabetica'};
        celda = ['O' num2str(i+1)];     
        xlswrite('ParteAmbulancia.xlsx',Patologia,'Hoja1',celda);
        
        %Lugar de Incidente: 'Hogar','Trabajo','VíaPublica','Carretera','CentroDeportivo','Otro'
        Incidente = {'Hogar','Trabajo','Otro'};
        incidente=Incidente(randi([1,length(Incidente)]));
        celda=['A' num2str(i+1)];     
        xlswrite('ParteAmbulancia.xlsx',incidente,'Hoja1',celda);

        %Edad: Rango de 20 a 49 años (25%) | (75%) 50 a 77 años (Esperanza de vida México)
        pd = makedist('Binomial','N',1,'p',0.25);
        edad = random(pd);
        if edad == 1
        Edad = randi([20,49]);
        celda = ['D' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',Edad,'Hoja1',celda);
        end
        if edad == 0
        Edad = randi([50,77]);
        celda = ['D' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',Edad,'Hoja1',celda);
        end

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

        %TAs (PANI): Normal a ligeramente disminuida Rango de 80 a 140 mmHg
        TAs = randi([80,140]);
        celda = ['G' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',TAs,'Hoja1',celda);

        %TAd (PANI): Normal a ligeramente disminuida Rango de 40 a 100 mmHg
        TAd = TAs-40;
        celda = ['H' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',TAd,'Hoja1',celda);

        %FC: Taquicardia Rango de 100 a 160 LPM
        FC = randi([100, 160]);
        celda = ['I' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',FC,'Hoja1',celda);

        %FR: Respiración de Kussmaul Rango de > 20 BPM
        FR = randi([20,80]);
        celda = ['J' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',FR,'Hoja1',celda);

        %Saturación de Oxígeno: Rango de 90 a 95 %
        SPO2 = randi([90,95]);
        celda = ['K' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',SPO2,'Hoja1',celda);

        %Temperatura: Rango de 36 a 37 °C
        Temp = (randi([33,34]))*1.1;
        celda = ['L' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',Temp,'Hoja1',celda);

        %Escala de Glasgow: (v1 v2 v3)
        %v1 Apertura ocular (1 a 4)
        %v2 Respuesta verbal (1 a 5)
        %v3 Respuesta motora (1 a 6)
        Glasgow(1) = randi([3,4]);
        Glasgow(2) = randi([1,4]);
        Glasgow(3) = randi([5,6]);
        %escGlasgow = {mat2str(Glasgow)};
        escGlasgow = sum(Glasgow);
        celda = ['M' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',escGlasgow,'Hoja1',celda);

        %Terapeutica Empleada
        %Terapeutica = 
        %celda = ['N' num2str(i+1)];
        %xlswrite('ParteAmbulancia.xlsx',Terapeutica,'Hoja1',celda);

end