function [TAs , TAd , FC , FR , SPO2, Temp , evalPam , escGlasgow , Paramedico]=Laceracion(i)

        %Función para generar signos vitales acordes a LACERACION
        Patologia = {'Laceracion'};
        celda = ['O' num2str(i+1)];     
        xlswrite('ParteAmbulancia.xlsx',Patologia,'Hoja1',celda);
        
%         Evaluacion = TipoLesion(Tipo);
%         celda = ['F' num2str(i+1)];
%         xlswrite('ParteAmbulancia.xlsx',Evaluacion,'Hoja1',celda);

        %Lugar de Incidente: 'Hogar','Trabajo','VíaPublica','Carretera','CentroDeportivo','Otro'
        Incidente = {'Trafico','Caida','CentroDeportivo','ViaPublica','TransportePublico','Otro'};
        incidente=Incidente(randi([1,length(Incidente)]));
        celda=['A' num2str(i+1)];     
        xlswrite('ParteAmbulancia.xlsx',incidente,'Hoja1',celda);

        %Edad: Rango de 18 a 77 años (Esperanza de vida México)
        Edad = randi([18,77]);
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
        
        %TAs (PANI): Normal a Bajo Rango de 60 a 140 mmHg o 
        TAs = randi([60,140]);
        celda = ['G' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',TAs,'Hoja1',celda);

        %TAd (PANI): Normal a Bajo Rango de 20 a 100 mmHg
        TAd = TAs-40;
        celda = ['H' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',TAd,'Hoja1',celda);

        %FC: Normal de 60 a 80 LPM o Taquicardia Rango
        %de 100 a 250
        choose = randi([1,2]);
        if choose == 1
            FC = randi([60, 80]);
        end
        if choose == 2
            FC = randi([100, 250]);
        end
        celda = ['I' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',FC,'Hoja1',celda);

        %FR: Normal Rango de 15 a 20 BPM
        FR = randi([15,20]);
        celda = ['J' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',FR,'Hoja1',celda);

        %Saturación de Oxígeno: Normal Rango de 95 a 100 %
        SPO2 = randi([95,100]);
        celda = ['K' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',SPO2,'Hoja1',celda);

        %Temperatura: Rango de 37 a 38.5 °C
        Temp = (randi([34,35]))*1.1;
        celda = ['L' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',Temp,'Hoja1',celda);
 
        %Escala de Glasgow: (v1 v2 v3)
        %v1 Apertura ocular (1 a 4)
        %v2 Respuesta verbal (1 a 5)
        %v3 Respuesta motora (1 a 6)
        Glasgow(1) = randi([3,4]);
        Glasgow(2) = randi([4,5]);
        Glasgow(3) = randi([4,6]);
        %escGlasgow = {mat2str(Glasgow)};
        escGlasgow = sum(Glasgow);
        celda = ['M' num2str(i+1)];
        xlswrite('ParteAmbulancia.xlsx',escGlasgow,'Hoja1',celda);

        %Terapeutica Empleada
        %Terapeutica = 
        %celda = ['N' num2str(i+1)];
        %xlswrite('ParteAmbulancia.xlsx',Terapeutica,'Hoja1',celda);

end