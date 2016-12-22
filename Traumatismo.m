function [TAs , TAd , FC , FR , SPO2, Temp , Evaluacion , escGlasgow, Terapeutica]=Traumatismo(i)

        %Función para generar signos vitales acordes a TRAUMATISMO
        Patologia = {'Traumatismo'};
        Tipo = randi([1,4]);
        celda = ['O' num2str(i+1)];     
        xlswrite('ParteAmbulancia.xlsx',Patologia,'Hoja1',celda);
        
        %TipoLesion = {'Politraumatismo','Raquimedular','Craneoencefalico','Toracico'};
        TipoLesion = {'Politraumatismo','Raquimedular','Craneoencefalico','Toracico'};
        switch Tipo
            case 1 %Politraumatismo
                Evaluacion = TipoLesion(Tipo);
                celda = ['F' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',Evaluacion,'Hoja1',celda);
                
                %Lugar de Incidente: 'Hogar','Trabajo','VíaPublica','Carretera','CentroDeportivo','Otro'
                Incidente = {'Trafico','CentroDeportivo'};
                incidente=Incidente(randi([1,length(Incidente)]));
                celda=['A' num2str(i+1)];     
                xlswrite('ParteAmbulancia.xlsx',incidente,'Hoja1',celda);
                
                %Edad: Rango de 16 a 30 años (80%) 
                pd = makedist('Binomial','N',1,'p',0.6);
                edad = random(pd);
                if edad == 1
                Edad = randi([16,30]);
                celda = ['D' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',Edad,'Hoja1',celda);
                end
                if edad == 0
                Edad = randi([31,77]);
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
                
                %TAs (PANI): Hipotensión Rango de 60 a 110 mmHg o normal
                %100 a 140 mmHg
                TAs = randi([60,140]);
                celda = ['G' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',TAs,'Hoja1',celda);

                %TAd (PANI): Hipotensión Rango de 20 a 70 mmHg o normal de 60 a 100 mmHg
                TAd = TAs-40;
                celda = ['H' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',TAd,'Hoja1',celda);

                %FC: Taquicardia Rango de 100 a 250 LPM
                FC = randi([100, 250]);
                celda = ['I' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',FC,'Hoja1',celda);

                %FR: Taquiapnea Rango de 14 a 35 BPM
                FR = randi([14,35]);
                celda = ['J' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',FR,'Hoja1',celda);

                %Saturación de Oxígeno: Hipoxia Rango de 90 a 95 %
                SPO2 = randi([90,95]);
                celda = ['K' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',SPO2,'Hoja1',celda);

                %Temperatura: Hipotermia Rango de 35 a 37.5 °C
                Temp = (randi([32,34]))*1.1;
                celda = ['L' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',Temp,'Hoja1',celda);

                %Escala de Glasgow: (v1 v2 v3)
                %v1 Apertura ocular (1 a 4)
                %v2 Respuesta verbal (1 a 5)
                %v3 Respuesta motora (1 a 6)
                Glasgow(1) = randi([1,2]);
                Glasgow(2) = randi([1,4]);
                Glasgow(3) = randi([1,3]);
                %escGlasgow = {mat2str(Glasgow)};
                escGlasgow = sum(Glasgow);
                celda = ['M' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',escGlasgow,'Hoja1',celda);

                %Terapeutica Empleada
                %Terapeutica = 
                %celda = ['N' num2str(i+1)];
                %xlswrite('ParteAmbulancia.xlsx',Terapeutica,'Hoja1',celda);
                
            case 2 %Raquimedular
                Evaluacion = TipoLesion(Tipo);
                celda = ['F' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',Evaluacion,'Hoja1',celda);
                
                %Lugar de Incidente: 'Hogar','Trabajo','VíaPublica','Carretera','CentroDeportivo','Otro'
                Incidente = {'Trafico','Caida','CentroDeportivo','Otro'};
                incidente=Incidente(randi([1,length(Incidente)]));
                celda=['A' num2str(i+1)];     
                xlswrite('ParteAmbulancia.xlsx',incidente,'Hoja1',celda);
            
                %Edad: Rango de 16 a 35 años (60%) | (40%) 36 a 77 años (Esperanza de vida México)
                pd = makedist('Binomial','N',1,'p',0.6);
                edad = random(pd);
                if edad == 1
                Edad = randi([16,35]);
                celda = ['D' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',Edad,'Hoja1',celda);
                end
                if edad == 0
                Edad = randi([36,77]);
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

                %FC: Bradicardia Rango de 50 a 60 LPM o Taquicardia Rango
                %de 100 a 250
                choose = randi([1,2]);
                if choose == 1
                    FC = randi([50, 60]);
                end
                if choose == 2
                    FC = randi([100, 250]);
                end
                celda = ['I' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',FC,'Hoja1',celda);

                %FR: Bradiapnea Rango de 14 a 35 BPM
                FR = randi([14,35]);
                celda = ['J' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',FR,'Hoja1',celda);

                %Saturación de Oxígeno: Rango de 90 a 95 %
                SPO2 = randi([90,95]);
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
                Glasgow(3) = randi([1,5]);
                %escGlasgow = {mat2str(Glasgow)};
                escGlasgow = sum(Glasgow);
                celda = ['M' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',escGlasgow,'Hoja1',celda);
        
                %Terapeutica Empleada
                %Terapeutica = 
                %celda = ['N' num2str(i+1)];
                %xlswrite('ParteAmbulancia.xlsx',Terapeutica,'Hoja1',celda);


            case 3 %Craneoencefálico
                Evaluacion = TipoLesion(Tipo);
                celda = ['F' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',Evaluacion,'Hoja1',celda);
                
                %Lugar de Incidente: 'Hogar','Trabajo','VíaPublica','Carretera','CentroDeportivo','Otro'
                Incidente = {'Trafico','Caida','Agresion','Otro'};
                incidente=Incidente(randi([1,length(Incidente)]));
                celda=['A' num2str(i+1)];     
                xlswrite('ParteAmbulancia.xlsx',incidente,'Hoja1',celda);
            
                %Edad: Rango de 15 a 35 años (65%) | (35%) 36 a 77 años (Esperanza de vida México)
                pd = makedist('Binomial','N',1,'p',0.65);
                edad = random(pd);
                if edad == 1
                Edad = randi([15,35]);
                celda = ['D' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',Edad,'Hoja1',celda);
                end
                if edad == 0
                Edad = randi([36,77]);
                celda = ['D' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',Edad,'Hoja1',celda);
                end
                
                %Género: 0 = Masculino (76%), 1 = Femenino (24%)
                pd = makedist('Binomial','N',1,'p',0.76);
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
                
                %TAs (PANI): Hipertensión Rango de 140 a 200 mmHg
                TAs = randi([140,200]);
                celda = ['G' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',TAs,'Hoja1',celda);

                %TAd (PANI): Hipertensión Rango de 100 a 160 mmHg
                TAd = TAs-40;
                celda = ['H' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',TAd,'Hoja1',celda);

                %FC: Valores normales Rango de 50 a 100 LPM
                FC = randi([50, 100]);
                celda = ['I' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',FC,'Hoja1',celda);

                %FR: Bradiapnea Rango de 14 a 35 BPM
                FR = randi([14,35]);
                celda = ['J' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',FR,'Hoja1',celda);

                %Saturación de Oxígeno: Hipoxemia Rango de 90 a 95 %
                SPO2 = randi([90,95]);
                celda = ['K' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',SPO2,'Hoja1',celda);
                
                %Temperatura: Fiebre Rango de 37.5 a 39.5 °C
                Temp = (randi([37,39]))*1.015;
                celda = ['L' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',Temp,'Hoja1',celda);
                
                %Escala de Glasgow: (v1 v2 v3)
                %v1 Apertura ocular (1 a 4)
                %v2 Respuesta verbal (1 a 5)
                %v3 Respuesta motora (1 a 6)
                Glasgow(1) = randi([1,3]);
                Glasgow(2) = randi([1,3]);
                Glasgow(3) = randi([1,4]);
                %escGlasgow = {mat2str(Glasgow)};
                escGlasgow = sum(Glasgow);
                celda = ['M' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',escGlasgow,'Hoja1',celda);
        
                %Terapeutica Empleada
                %Terapeutica = 
                %celda = ['N' num2str(i+1)];
                %xlswrite('ParteAmbulancia.xlsx',Terapeutica,'Hoja1',celda);
                
            case 4 %Toracico
                Evaluacion = TipoLesion(Tipo);
                celda = ['F' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',Evaluacion,'Hoja1',celda);
                
                %Lugar de Incidente: 'Tráfico', 'Otro'
                Incidente = {'Trafico','Otro'};
                incidente=Incidente(randi([1,length(Incidente)]));
                celda=['A' num2str(i+1)];     
                xlswrite('ParteAmbulancia.xlsx',incidente,'Hoja1',celda);
            
                %Edad: Rango de 20 a 40 años
                Edad = randi([20,40]);
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
                
                %TAs (PANI): NORMAL Rango de 100 a 140 mmHg
                TAs = randi([100,140]);
                celda = ['G' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',TAs,'Hoja1',celda);

                %TAd (PANI): NORMAL Rango de 60 a 100 mmHg
                TAd = TAs-40;
                celda = ['H' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',TAd,'Hoja1',celda);

                %FC: NORMAL Rango de 60 a 80 LPM
                FC = randi([60, 80]);
                celda = ['I' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',FC,'Hoja1',celda);

                %FR: Taquiapnea Rango > 30 BPM
                FR = randi([30,50]);
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
                Glasgow(1) = randi([3,4]);
                Glasgow(2) = randi([4,5]);
                Glasgow(3) = randi([2,6]);
                %escGlasgow = {mat2str(Glasgow)};
                escGlasgow = sum(Glasgow);
                celda = ['M' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',escGlasgow,'Hoja1',celda);
%         
%                 Terapeutica Empleada
%                 Terapeutica = 
%                 celda = ['N' num2str(i+1)];
%                 xlswrite('ParteAmbulancia.xlsx',Terapeutica,'Hoja1',celda);
        end

end