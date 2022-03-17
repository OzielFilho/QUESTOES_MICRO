#include<16F877A.h>             

#device ADC = 10                //Define 10 bits para o resultado da convers�o AD

#use delay (clock=8000000)        

#fuses HS, NOWDT, PUT, BROWNOUT, NOLVP //Configura��o dos fus�veis

#include "LCD8B.c"      //Diretiva de inclus�o do arquivo LCD8B.c ao projeto
 
unsigned int32 ad0,ad1;    //Vari�ves para armazenamento da convers�o
unsigned int32 tensao;

 
void main()                 //Fun��o principal 
{                                  
lcd_ini();             //Chama a fun��o para inicializa��o do LCD     
               
SETUP_ADC_PORTS(RA0_RA1_RA3_ANALOG);  //Configura as entradas anal�gicas 
                                                                             //RA0,RA1,RA3
SETUP_ADC(ADC_CLOCK_INTERNAL);       //Configura o conversor AD interno

printf(lcd_escreve,"\f  CONVERSAO AD");

delay_ms(1500); 

while(true)                               //Loop principal
   {

   SET_ADC_CHANNEL(0);                     //Configura o canal de leitura 0
   delay_us(100);                                //Tempo de ajuste do canal (necess�rio) 
   ad0 = READ_ADC();                          //Faz a convers�o AD e a salva na vari�vel 
                                                                       //ad0
   tensao = (ad0*5000)/1023;                                                                     
   printf(lcd_escreve,"\fV1 = %04lu mV",tensao);    //Mostra valor da convers�o do canal 0

   SET_ADC_CHANNEL(1);         //Configura o canal de leitura 1
   delay_us(100);         //Tempo de ajuste do canal (necess�rio) 
   ad1 = READ_ADC();             //Faz a convers�o AD e a salva na vari�vel 
                                                                       //ad1
   tensao = (ad1*5000)/1023;
   //Mostra valor da convers�o dos canais 1 e 3
   printf(lcd_escreve,"\nV2 = %04lu mV",tensao); 
  
   delay_ms(500);                 //Atraso de 1 segundo       
   }
}        

