//E2->pinos DE/RE max485 com transistor
//RO->RC7(RX)
//DI->RC6(TX)
// GND RS485 ENTRA
// 3,3V RS-485 SAI

#define led0 pin_d0
#define led1 pin_d1
#include <18F4550.h>
#device adc=10
#fuses  HSPLL PLL5 CPUDIV1 USBDIV
#use delay(clock = 48000000)
#use rs232(baud=9600,parity=N,xmit=PIN_C6,rcv=PIN_C7,bits=8)
const int32 tm=3036;
#int_timer1
void funcao_tempo()
{float ad1;static boolean led=1;static unsigned int32 n;
set_timer1(tm+get_timer1());
n++;
if (n==5)
{n=0;
led=!led;
output_bit(led1,led);
}
 if ((input(pin_b0)==0)&&(input(pin_b1)==0)) 
{output_high(led0);}
ad1=read_adc();
delay_us(100);
 //if (ad1<200)  { output_low(led0);  }
 }
void main()
{float ad1;
char selection;
port_b_pullups(TRUE);
enable_interrupts(GLOBAL);
enable_interrupts(INT_timer1);
setup_timer_1(T1_INTERNAL|T1_DIV_BY_8);
set_timer1(tm);                                             
setup_adc_ports(AN0);
SETUP_ADC(ADC_CLOCK_INTERNAL);
SET_ADC_CHANNEL(0);
output_bit(pin_e2,1); // RS485 
while(true)
{  
   output_bit(pin_e2,0);// RS485 
   printf("\r\nSelecione:\r\n");
   printf("    1) L - ligar led \r\n");
   printf("    2) D - desligar led \r\n");
   delay_ms(500);
   output_bit(pin_e2,1); // RS485 
  do {
   selection=getc();
  } while (!((selection=='L')||(selection=='D')));
  if (selection=='L')
  {output_high(led0);
  delay_ms(500);//TEMPO PARA TERMINAR DE ENVIAR TUDO PELO 485
  }
  
else  {output_low(led0);
  delay_ms(500);//TEMPO PARA TERMINAR DE ENVIAR TUDO PELO 485
  }}}


