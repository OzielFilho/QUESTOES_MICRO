/*******************************************************************************
*                     Kit de desenvolvimento ACEPIC PRO V2.0                   *
*                      ACEPIC Tecnologia e Treinamento LTDA                    *
*                               www.acepic.com.br                              * 
*                                                                              *
*Objetivo: Leitura do canal AN0 mostrando no LCD                               *
*Obs.:     Ligar chave 1 do DIP DP1.                                           *
********************************************************************************/
#include<16F877A.h>        //Aqui � incluso o header (*.h)  para o microcontrolador utilizado.

#device ADC = 10           //Define 10 bits para o resultado da convers�o AD

#use delay (clock=8000000) //Aqui definimos a frequ�ncia do cristal para c�lculo dos delays
#fuses HS, NOWDT, PUT, BROWNOUT, NOLVP //Configura��o dos fus�veis


#include "LCD8B.c"  //Diretiva de inclus�o do arquivo LCD8B.c ao projeto

long int ad;

void main()         //Fun��o principal 
{         

lcd_ini();         /*Chamada � fun��o lcd_ini()... Esta fun��o � para a inicializa��o
                   do LCD e est� no arquivo LCD8B.c*/ 

SETUP_ADC_PORTS(RA0_ANALOG);   //Configurada a entrada anal�gica, somente a entrada RA0
SETUP_ADC(ADC_CLOCK_INTERNAL); //Configurado o conversor AD interno   
SET_ADC_CHANNEL(0);            //Configurado o canal de leitura 0   
  

printf(lcd_escreve,"     ACEPIC");       //Escreve na primeira linha a palavra ACEPIC
printf(lcd_escreve,"\n TEC. E TREIN. "); //Escreve na segunda linha as palavras TEC. E TREIN.

delay_ms(1500);     //Atraso de 1,5ms

while(true)         //Loop principal
     {
     ad = READ_ADC();                     //Faz a convers�o AD e a salva na vari�vel ad 
     printf(lcd_escreve,"\fADC = %lu",ad);//Mostra a mensagem 'ADC =' + o valor da convers�o 
     delay_ms(1000);                      //Atraso de 1 segundo   
     }

}
