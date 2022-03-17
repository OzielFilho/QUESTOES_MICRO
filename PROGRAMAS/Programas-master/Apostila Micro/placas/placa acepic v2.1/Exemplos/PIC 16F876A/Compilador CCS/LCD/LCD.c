/**********************************************************************************
*                  Kit de Desenvolvimento ACEPIC SD
*                ACEPIC Tecnologia e Treinamento LTDA
*
*Microcontrolador: PIC18F4520
*Frequ�ncia:       10MHZ
*Compilador:       CCS
*Autor     :       Eng. Carlos Sandrini
*
*Descri��o :
*Exemplo de utiliza��o do LCD no modo 4 bits de dados
*Conex�o do LCD:
*RS - RB2
*EN - RB3
*D4 � D7 - RB4 � RB7
*
***********************************************************************************/
#include <16F876A.h>
#use delay(clock=8M)
#fuses HS,NOWDT,PUT,NOLVP

#include "LCD_4B.c"

void main() {

  lcd_ini();
  
  //delay_ms(500);
  
  printf(lcd_escreve,"\f   PIC16F876A");
  printf(lcd_escreve,"\nTEST LCD DISPLAY");

  while(true) {
               delay_ms(2000);
               printf(lcd_escreve,"\f"); //Limpa Display
               printf(lcd_escreve,"Test LCD Display");
               printf(lcd_escreve,"\n   PIC16F876A   ");
               delay_ms(2000);
               printf(lcd_escreve,"\f   PIC16F876A");
               printf(lcd_escreve,"\nTEST LCD DISPLAY");
              }

}
