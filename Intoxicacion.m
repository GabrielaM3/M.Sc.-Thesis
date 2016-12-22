function [TAs , TAd , FC , FR , SPO2, Temp , evalPam , escGlasgow , Paramedico]=Intoxicacion(i)

        %Función para generar signos vitales acordes a TRAUMATISMO
        Patologia = {'Intoxicacion'};
        a = [1,1,1,1,1,1,1,1,1,2,3];
        Tipo = datasample(a,1);
        celda = ['O' num2str(i+1)];     
        xlswrite('ParteAmbulancia.xlsx',Patologia,'Hoja1',celda);
        
        %TipoLesion = {'Voluntaria','Accidental','SobredosisFarmacos'};
        TipoLesion = {'Voluntaria','Accidental','SobredosisFarmacos'};
        switch Tipo
            case 1 %Voluntaria
                Evaluacion = TipoLesion(Tipo);
                celda = ['F' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',Evaluacion,'Hoja1',celda);
                
                %Lugar de Incidente: 'Otro'
                Incidente = {'ViaPublica','Hogar','Otro'};
                incidente=Incidente(randi([1,length(Incidente)]));
                celda=['A' num2str(i+1)];     
                xlswrite('ParteAmbulancia.xlsx',incidente,'Hoja1',celda);
            
                %Edad: Rango de 20 a 35 años
                Edad = randi([20,35]);
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
                
                %TAs (PANI): Hipotenso a NORMAL Rango de 70 a 140 mmHg
                TAs = randi([70,140]);
                celda = ['G' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',TAs,'Hoja1',celda);

                %TAd (PANI): Hipotenso a NORMAL Rango de 30 a 100 mmHg
                TAd = TAs-40;
                celda = ['H' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',TAd,'Hoja1',celda);

                %FC: NORMAL a Taquicardia Rango de 60 a 100 LPM
                FC = randi([60, 100]);
                celda = ['I' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',FC,'Hoja1',celda);

                %FR: Bradiapnea a NORMAL Rango de 12 a 20 BPM
                FR = randi([12,20]);
                celda = ['J' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',FR,'Hoja1',celda);

                %Saturación de Oxígeno: Hipoxia a NORMAL Rango de 90 a 100 %
                SPO2 = randi([90,100]);
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
                Glasgow(1) = randi([1,2]);
                Glasgow(2) = randi([1,2]);
                Glasgow(3) = randi([1,3]);
                %escGlasgow = {mat2str(Glasgow)};
                escGlasgow = sum(Glasgow);
                celda = ['M' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',escGlasgow,'Hoja1',celda);
        
%                 Terapeutica Empleada
%                 Terapeutica = 
%                 celda = ['N' num2str(i+1)];
%                 xlswrite('ParteAmbulancia.xlsx',Terapeutica,'Hoja1',celda);

            case 2 %Accidental
                Evaluacion = TipoLesion(Tipo);
                celda = ['F' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',Evaluacion,'Hoja1',celda);
                
                %Lugar de Incidente: 'Otro'
                Incidente = {'Hogar','Trabajo','Escuela','Otro'};
                incidente=Incidente(randi([1,length(Incidente)]));
                celda=['A' num2str(i+1)];     
                xlswrite('ParteAmbulancia.xlsx',incidente,'Hoja1',celda);
            
                %Edad: Rango de 1 a 5 años
                Edad = randi([1,5]);
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
                
                %TAs (PANI): NORMAL Rango de 78 a 112 mmHg
                TAs = randi([78,112]);
                celda = ['G' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',TAs,'Hoja1',celda);

                %TAd (PANI): NORMAL Rango de 48 a 82 mmHg
                TAd = TAs-30;
                celda = ['H' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',TAd,'Hoja1',celda);

                %FC: NORMAL a elevada Rango de 100 a 180 LPM
                FC = randi([100, 180]);
                celda = ['I' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',FC,'Hoja1',celda);

                %FR: NORMAL Rango de 20 a 30 BPM
                FR = randi([20,30]);
                celda = ['J' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',FR,'Hoja1',celda);

                %Saturación de Oxígeno: NORMAL Rango de 95 a 100 %
                SPO2 = randi([95,100]);
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
                Glasgow(2) = randi([4,5]);
                Glasgow(3) = randi([4,5]);
                %escGlasgow = {mat2str(Glasgow)};
                escGlasgow = sum(Glasgow);
                celda = ['M' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',escGlasgow,'Hoja1',celda);
        
%                 Terapeutica Empleada
%                 Terapeutica = 
%                 celda = ['N' num2str(i+1)];
%                 xlswrite('ParteAmbulancia.xlsx',Terapeutica,'Hoja1',celda);

            case 3 %SobredosisFarmacos
                Evaluacion = TipoLesion(Tipo);
                celda = ['F' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',Evaluacion,'Hoja1',celda);
                
                %Lugar de Incidente: 'Otro'
                Incidente = {'ViaPublica','Hogar','Fiesta','Otro'};
                incidente=Incidente(randi([1,length(Incidente)]));
                celda=['A' num2str(i+1)];     
                xlswrite('ParteAmbulancia.xlsx',incidente,'Hoja1',celda);
            
                %Edad: Rango de 20 a 35 años
                Edad = randi([20,35]);
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
                
                %TAs (PANI): Hipotensión-Normal-Hipertensión Rango de 60 a 160 mmHg
                TAs = randi([60,160]);
                celda = ['G' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',TAs,'Hoja1',celda);

                %TAd (PANI): Hipotensión-Normal-Hipertensión Rango de 20 a 120 mmHg
                TAd = TAs-40;
                celda = ['H' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',TAd,'Hoja1',celda);

                %FC: Bradicardia-Normal-Taquicardia Rango de 40 a 255 LPM
                FC = randi([40, 255]);
                celda = ['I' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',FC,'Hoja1',celda);

                %FR: Depresión respiratoria a NORMAL Rango de 12 a 20 BPM
                FR = randi([8,20]);
                celda = ['J' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',FR,'Hoja1',celda);

                %Saturación de Oxígeno: Hipoxia a NORMAL Rango de 90 a 100 %
                SPO2 = randi([90,100]);
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
                Glasgow(1) = randi([1,2]);
                Glasgow(2) = randi([1,3]);
                Glasgow(3) = randi([1,3]);
                %escGlasgow = {mat2str(Glasgow)};
                escGlasgow = sum(Glasgow);
                celda = ['M' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',escGlasgow,'Hoja1',celda);
         
%                 Terapeutica Empleada
%                 Terapeutica = 
%                 celda = ['N' num2str(i+1)];
%                 xlswrite('ParteAmbulancia.xlsx',Terapeutica,'Hoja1',celda);

        end


end