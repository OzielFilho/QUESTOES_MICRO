#INCLUDE <18F4550.h>
#fuses HS,CPUDIV1,PLL5,USBDIV,WDT128
#use delay(clock=20000000)
#use rs232(baud=9600, xmit=PIN_C6, rcv=PIN_C7, BRGH1OK)
char selection;
int32 a,n,valor,centena,dezena,unidade,calc;
int32 ac,ad,au,null;
unsigned int32 angulo;
#int_rda
void serial ()
{  selection=getc();
   ac=getc()-'0';
   ad=getc()-'0';
   au=getc()-'0';
   null=getc()-'0';//descarta caractere nulo/indevido enviado pela serial
   if(selection=='p')
   {      a=1;   }
   else
   {      a=0;ac=0;ad=0;au=0;null=0;   }
   valor=((100*ac)+(10*ad)+au);
   angulo=((9.44*valor)+700);
   calc=angulo;
   printf("Recebido: %lu -> %lu %lu %lu \r\nAngulo calculado(em ms):%lu \r\n",valor,ac,ad,au,calc);
}
void main()
{  setup_wdt(WDT_ON);
   enable_interrupts (global);
   enable_interrupts (int_rda);
   printf ("teste...serial ok! \r\n");
   printf ("Envie p+angulo.\r\nExemplo:enviando p090, posiciona o servo em 90 graus\r\n\r\n");
   while(1)
   {restart_wdt();
    while(a==1)
      { n=20;
         do
         {  output_high(pin_d4);
            delay_us(angulo);
            output_low(pin_d4);
            delay_ms(20);
            n--;
         }
         while(n>0);
         //delay_ms(1000);
    }}}



