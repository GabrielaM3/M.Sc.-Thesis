function [TAs , TAd , FC , FR , SPO2, Temp , evalPam , escGlasgow , Paramedico]=AtaqueCerebral(i)

        %Función para generar signos vitales acordes a ATAQUE CEREBRAL
        Patologia = {'AtaqueCerebral'};
        Tipo = randi([1,2]);
        celda = ['O' num2str(i+1)];     
        xlswrite('ParteAmbulancia.xlsx',Patologia,'Hoja1',celda);
        
        %TipoLesion = {'Isquemico','Hemorragico'};
        TipoLesion = {'Isquemico','Hemorragico'};
        switch Tipo
            case 1 %Isquemico
                Evaluacion = TipoLesion(Tipo);
                celda = ['F' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',Evaluacion,'Hoja1',celda);
                
                %Lugar de Incidente: 'Otro'
                Incidente = {'Otro'};
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
                 
                %TAs (PANI): Hipertensión Rango >220 mmHg
                TAs = randi([220,255]);
                celda = ['G' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',TAs,'Hoja1',celda);

                %TAd (PANI): Hipertensión Rango de 180 a 215 mmHg
                TAd = TAs-40;
                celda = ['H' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',TAd,'Hoja1',celda);

                %FC: NORMAL a ALTO Rango de 50 a 250 LPM
                FC = randi([50, 250]);
                celda = ['I' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',FC,'Hoja1',celda);

                %FR: NORMAL Rango de 12 a 20 BPM
                FR = randi([12,20]);
                celda = ['J' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',FR,'Hoja1',celda);

                %Saturación de Oxígeno: Hipoxia Rango de 90 a 95 %
                SPO2 = randi([90,95]);
                celda = ['K' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',SPO2,'Hoja1',celda);

                %Temperatura: Hipertermia Rango de 37.5 a 39.5 °C
                Temp = (randi([37,39]))*1.015;
                celda = ['L' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',Temp,'Hoja1',celda);

                %Escala de Glasgow: (v1 v2 v3)
                %v1 Apertura ocular (1 a 4)
                %v2 Respuesta verbal (1 a 5)
                %v3 Respuesta motora (1 a 6)
                Glasgow(1) = randi([1,3]);
                Glasgow(2) = randi([1,3]);
                Glasgow(3) = randi([1,3]);
                %escGlasgow = {mat2str(Glasgow)};
                escGlasgow = sum(Glasgow);
                celda = ['M' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',escGlasgow,'Hoja1',celda);
        
%                 %Terapeutica Empleada
%                 %Terapeutica = 
%                 %celda = ['N' num2str(i+1)];
%                 %xlswrite('ParteAmbulancia.xlsx',Terapeutica,'Hoja1',celda);

            case 2 %Hemorragico
                Evaluacion = TipoLesion(Tipo);
                celda = ['F' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',Evaluacion,'Hoja1',celda);
                
                %Lugar de Incidente: 'Otro'
                Incidente = {'Otro'};
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
                 
                %TAs (PANI): Hipertensión Rango >180 mmHg
                TAs = randi([180,255]);
                celda = ['G' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',TAs,'Hoja1',celda);

                %TAd (PANI): Hipertensión Rango de 140 a 215 mmHg
                TAd = TAs-40;
                celda = ['H' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',TAd,'Hoja1',celda);

                %FC: NORMAL a ALTO Rango de 50 a 250 LPM
                FC = randi([50, 250]);
                celda = ['I' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',FC,'Hoja1',celda);

                %FR: NORMAL Rango de 12 a 20 BPM
                FR = randi([12,20]);
                celda = ['J' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',FR,'Hoja1',celda);

                %Saturación de Oxígeno: NORMAL Rango de 95 a 100 %
                SPO2 = randi([95,100]);
                celda = ['K' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',SPO2,'Hoja1',celda);

                %Temperatura: Hipertermia Rango de 37.5 a 39.5 °C
                Temp = (randi([37,39]))*1.015;
                celda = ['L' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',Temp,'Hoja1',celda);

                %Escala de Glasgow: (v1 v2 v3)
                %v1 Apertura ocular (1 a 4)
                %v2 Respuesta verbal (1 a 5)
                %v3 Respuesta motora (1 a 6)
                Glasgow(1) = randi([1,4]);
                Glasgow(2) = randi([1,4]);
                Glasgow(3) = randi([1,5]);
                escGlasgow = sum(Glasgow);
                %escGlasgow = {mat2str(Glasgow)};
                celda = ['M' num2str(i+1)];
                xlswrite('ParteAmbulancia.xlsx',escGlasgow,'Hoja1',celda);
        
%                 %Terapeutica Empleada
%                 %Terapeutica = 
%                 %celda = ['N' num2str(i+1)];
%                 %xlswrite('ParteAmbulancia.xlsx',Terapeutica,'Hoja1',celda);
        end

end