clc
clear
%Par�metros
n=1; %Muestras

%SALIDAS (Patolog�as, Prioridades, Recursos)

target1 = {'Patologia'};                %8 Clases: Traumatismo, Ataque Cerebral, Intoxicaci�n, Quemadura, Laceracion, Crisis diab�tica, Crisis psiqui�trica, Insuficiencia Cardiaca
target2 = {'Prioridad'};                %4 Clases: Prioridad 0 a 3
target3 = {'Recursos'};                 %# Clases: 

tgt1_clase1 = {'Traumatismo'};
tgt1_clase2 = {'Ataque_Cerebral'};
tgt1_clase3 = {'Intoxicaci�n'};
tgt1_clase4 = {'Quemadura'};
tgt1_clase5 = {'Laceraci�n'};
tgt1_clase6 = {'Crisis_diab�tica'};
tgt1_clase7 = {'Crisis_psiqui�trica'};
tgt1_clase8 = {'Insuficiencia_Cardiaca'};

tgt2_clase1 = 1;                         %Prioridad 1: Atenci�n inmediata
tgt2_clase2 = 2;                         %Prioridad 2: Atenci�n urgente
tgt2_clase3 = 3;                         %Prioridad 3: Atenci�n moderada
tgt2_clase4 = 0;                         %Prioridad 4: Muerte


%ENTRADAS (Datos de paciente, Signos Vitales y Evaluaci�n param�dica)
input1 = {'Origen'};
    Incidente = {'Hogar','Trabajo','V�aPublica','Carretera','CentroDeportivo','Otro'};
input2 = {'Destino'};
    Traslado = {'HospitalSSA','HospitalParticular','Otro'};
input3 = {'Nombre'};
input4 = {'Edad'};   
input5 = {'Genero'};
    Genero = {'Masculino','Femenino'};
input6 = {'KeyWords'};               %Evaluaci�n param�dica
input7a = {'TAs'};                   %Tension Arterial Sist�lica
input7b = {'TAd'};                   %Tension Arterial Diast�lica
input8 = {'FC'};                     %Frecuencia Cardiaca
input9 = {'FR'};                     %Frecuencia Respiratoria
input10 = {'SPO2'};                  %Saturaci�n de Ox�geno
input11 = {'Temperatura'};           
input12 = {'Glasgow'};               %Escala de Glasgow [Ocular, Verbal, Motora]
input13 = {'Terapeutica'};           %Atenci�n en ambulancia




%---------------------------ESCRITURA EN EXCEL
%ETIQUETAS
xlswrite('ParteAmbulancia.xlsx',input1,'Hoja1','A1');
xlswrite('ParteAmbulancia.xlsx',input2,'Hoja1','B1');
xlswrite('ParteAmbulancia.xlsx',input3,'Hoja1','C1');
xlswrite('ParteAmbulancia.xlsx',input4,'Hoja1','D1');
xlswrite('ParteAmbulancia.xlsx',input5,'Hoja1','E1');
xlswrite('ParteAmbulancia.xlsx',input6,'Hoja1','F1');
xlswrite('ParteAmbulancia.xlsx',input7a,'Hoja1','G1');
xlswrite('ParteAmbulancia.xlsx',input7b,'Hoja1','H1');
xlswrite('ParteAmbulancia.xlsx',input8,'Hoja1','I1');
xlswrite('ParteAmbulancia.xlsx',input9,'Hoja1','J1');
xlswrite('ParteAmbulancia.xlsx',input10,'Hoja1','K1');
xlswrite('ParteAmbulancia.xlsx',input11,'Hoja1','L1');
xlswrite('ParteAmbulancia.xlsx',input12,'Hoja1','M1');
xlswrite('ParteAmbulancia.xlsx',input13,'Hoja1','N1');
xlswrite('ParteAmbulancia.xlsx',target1,'Hoja1','O1');
xlswrite('ParteAmbulancia.xlsx',target2,'Hoja1','P1');
xlswrite('ParteAmbulancia.xlsx',target3,'Hoja1','Q1');


%-----------------------------------GENERACI�N DE DATOS ALEATORIOS
%Elecci�n de salida
for i=1:n
    Output=randi([1,8]);
    switch Output
        case 1
            %DatosGenerales(i)
            Traumatismo(i)
            Support(i)
            Puntaje(i)
        case 2
            %DatosGenerales(i)
            Quemadura(i)
            Support(i)
            Puntaje(i)
        case 3
            %DatosGenerales(i)
            Laceracion(i)
            Support(i)
            Puntaje(i)
        case 4
            %DatosGenerales(i)
            AtaqueCerebral(i)
            Support(i)
            Puntaje(i)
        case 5
            %DatosGenerales(i)
            CrisisDiabetica(i)
            Support(i)
            Puntaje(i)
        case 6
            %DatosGenerales(i)
            Intoxicacion(i)
            Support(i)
            Puntaje(i)
        case 7
            %DatosGenerales(i)
            ParoCR(i)
            Support(i)
            Puntaje(i)
        case 8
            %DatosGenerales(i)
            CrisisPsiquiatrica(i)
            Support(i)
            Puntaje(i)
    end
end
