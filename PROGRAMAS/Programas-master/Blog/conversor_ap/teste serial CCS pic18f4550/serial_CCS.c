#define led pin_d0 
#include <18F4550.h>
#fuses HS,CPUDIV1,PLL5,USBDIV
#use delay(clock=20000000)
#use rs232(baud=9600, xmit=PIN_C6, rcv=PIN_C7)
void main()
{
while(true)
   {
char selection;
printf("\r\nSelecione:\r\n");//Pequeno menu com as opções
printf(" 1) L - ligar led \r\n");
printf(" 2) D - desligar led \r\n");
do    {
      selection=getc();
      } while (!((selection=='L')||(selection=='D')));//Espera que o caractere enviado seja "L" ou "D".
if (selection=='L')// se o valor enviado for igual a "L" liga o led no pino D0
      {output_high(led);}
else
      {output_low(led);}// se o valor enviado for igual a "D" liga o led no pino D0
   }
}

