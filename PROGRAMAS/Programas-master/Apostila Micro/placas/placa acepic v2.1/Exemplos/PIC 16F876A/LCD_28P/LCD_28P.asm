;  ASM code generated by mikroVirtualMachine for PIC - V. 8.2.0.0
;  Date/Time: 24/11/2008 12:59:18
;  Info: http://www.mikroe.com


; ADDRESS	OPCODE	ASM
; ----------------------------------------------
$0000	$2804			GOTO	_main
$019E	$	_Delay_1us:
;delays.c,7 :: 		void Delay_1us() {
;delays.c,8 :: 		Delay_us(1);
$019E	$0000			NOP
$019F	$0000			NOP
;delays.c,9 :: 		}
$01A0	$0008			RETURN
$0154	$	_Delay_5500us:
;delays.c,31 :: 		void Delay_5500us() {
;delays.c,32 :: 		Delay_us(5500);
$0154	$300F			MOVLW	15
$0155	$1303			BCF	STATUS, RP1
$0156	$1283			BCF	STATUS, RP0
$0157	$00FB			MOVWF	STACK_11
$0158	$30FF			MOVLW	255
$0159	$00FA			MOVWF	STACK_10
$015A	$0BFB			DECFSZ	STACK_11, F
$015B	$295D			GOTO	$+2
$015C	$2960			GOTO	$+4
$015D	$0BFA			DECFSZ	STACK_10, F
$015E	$295D			GOTO	$-1
$015F	$295A			GOTO	$-5
$0160	$303E			MOVLW	62
$0161	$00FA			MOVWF	STACK_10
$0162	$0BFA			DECFSZ	STACK_10, F
$0163	$2962			GOTO	$-1
;delays.c,33 :: 		}
$0164	$0008			RETURN
$0197	$	_Delay_50us:
;delays.c,19 :: 		void Delay_50us() {
;delays.c,20 :: 		Delay_us(50);
$0197	$3021			MOVLW	33
$0198	$1303			BCF	STATUS, RP1
$0199	$1283			BCF	STATUS, RP0
$019A	$00FA			MOVWF	STACK_10
$019B	$0BFA			DECFSZ	STACK_10, F
$019C	$299B			GOTO	$-1
;delays.c,21 :: 		}
$019D	$0008			RETURN
$00D3	$	_Lcd_Cmd:
$00D3	$1303			BCF	STATUS, RP1
$00D4	$1283			BCF	STATUS, RP0
$00D5	$0820			MOVF	LCD_port_address, 0
$00D6	$0084			MOVWF	FSR
$00D7	$083E			MOVF	FARG_Lcd_Cmd+0, 0
$00D8	$1903			BTFSC	STATUS, Z
$00D9	$28DA			GOTO	L_Lcd_Cmd_0
$00DA	$	L_Lcd_Cmd_0:
$00DA	$1080			BCF	INDF, ___ENABLE
$00DB	$1000			BCF	INDF, ___RS
$00DC	$1280			BCF	INDF, ___DB7
$00DD	$1200			BCF	INDF, ___DB6
$00DE	$1180			BCF	INDF, ___DB5
$00DF	$1100			BCF	INDF, ___DB4
$00E0	$1BBE			BTFSC	FARG_Lcd_Cmd+0, 7
$00E1	$1680			BSF	INDF, ___DB7
$00E2	$1B3E			BTFSC	FARG_Lcd_Cmd+0, 6
$00E3	$1600			BSF	INDF, ___DB6
$00E4	$1ABE			BTFSC	FARG_Lcd_Cmd+0, 5
$00E5	$1580			BSF	INDF, ___DB5
$00E6	$1A3E			BTFSC	FARG_Lcd_Cmd+0, 4
$00E7	$1500			BSF	INDF, ___DB4
$00E8	$0821			MOVF	LCD_cmd_status, 0
$00E9	$1903			BTFSC	STATUS, Z
$00EA	$28ED			GOTO	L_Lcd_Cmd_1
$00EB	$1000			BCF	INDF, ___RS
$00EC	$28EE			GOTO	L_Lcd_Cmd_2
$00ED	$	L_Lcd_Cmd_1:
$00ED	$1400			BSF	INDF, ___RS
$00EE	$	L_Lcd_Cmd_2:
$00EE	$1480			BSF	INDF, ___ENABLE
$00EF	$219E			CALL	_Delay_1us
$00F0	$083E			MOVF	FARG_Lcd_Cmd+0, 0
$00F1	$1903			BTFSC	STATUS, Z
$00F2	$28F3			GOTO	L_Lcd_Cmd_3
$00F3	$	L_Lcd_Cmd_3:
$00F3	$1080			BCF	INDF, ___ENABLE
$00F4	$1000			BCF	INDF, ___RS
$00F5	$1280			BCF	INDF, ___DB7
$00F6	$1200			BCF	INDF, ___DB6
$00F7	$1180			BCF	INDF, ___DB5
$00F8	$1100			BCF	INDF, ___DB4
$00F9	$19BE			BTFSC	FARG_Lcd_Cmd+0, 3
$00FA	$1680			BSF	INDF, ___DB7
$00FB	$193E			BTFSC	FARG_Lcd_Cmd+0, 2
$00FC	$1600			BSF	INDF, ___DB6
$00FD	$18BE			BTFSC	FARG_Lcd_Cmd+0, 1
$00FE	$1580			BSF	INDF, ___DB5
$00FF	$183E			BTFSC	FARG_Lcd_Cmd+0, 0
$0100	$1500			BSF	INDF, ___DB4
$0101	$0821			MOVF	LCD_cmd_status, 0
$0102	$1903			BTFSC	STATUS, Z
$0103	$2906			GOTO	L_Lcd_Cmd_4
$0104	$1000			BCF	INDF, ___RS
$0105	$2907			GOTO	L_Lcd_Cmd_5
$0106	$	L_Lcd_Cmd_4:
$0106	$1400			BSF	INDF, ___RS
$0107	$	L_Lcd_Cmd_5:
$0107	$1480			BSF	INDF, ___ENABLE
$0108	$219E			CALL	_Delay_1us
$0109	$1080			BCF	INDF, ___ENABLE
$010A	$0821			MOVF	LCD_cmd_status, 0
$010B	$1903			BTFSC	STATUS, Z
$010C	$290F			GOTO	L_Lcd_Cmd_6
$010D	$2154			CALL	_Delay_5500us
$010E	$2910			GOTO	L_Lcd_Cmd_7
$010F	$	L_Lcd_Cmd_6:
$010F	$2197			CALL	_Delay_50us
$0110	$	L_Lcd_Cmd_7:
$0110	$0008			RETURN
$0185	$	_Lcd_Chr_CP:
$0185	$1303			BCF	STATUS, RP1
$0186	$1283			BCF	STATUS, RP0
$0187	$01A1			CLRF	LCD_cmd_status, 1
$0188	$083D			MOVF	FARG_Lcd_Chr_CP+0, 0
$0189	$00BE			MOVWF	FARG_Lcd_Cmd+0
$018A	$20D3			CALL	_Lcd_Cmd
$018B	$3001			MOVLW	1
$018C	$00A1			MOVWF	LCD_cmd_status
$018D	$0008			RETURN
$0111	$	_LCD_Out:
$0111	$2923			GOTO	L_LCD_Out_17
$0112	$	L_LCD_Out_19:
$0112	$3080			MOVLW	128
$0113	$1303			BCF	STATUS, RP1
$0114	$1283			BCF	STATUS, RP0
$0115	$00B8			MOVWF	FARG_LCD_Out+0
$0116	$2936			GOTO	L_LCD_Out_18
$0117	$	L_LCD_Out_20:
$0117	$30C0			MOVLW	192
$0118	$00B8			MOVWF	FARG_LCD_Out+0
$0119	$2936			GOTO	L_LCD_Out_18
$011A	$	L_LCD_Out_21:
$011A	$3094			MOVLW	148
$011B	$00B8			MOVWF	FARG_LCD_Out+0
$011C	$2936			GOTO	L_LCD_Out_18
$011D	$	L_LCD_Out_22:
$011D	$30D4			MOVLW	212
$011E	$00B8			MOVWF	FARG_LCD_Out+0
$011F	$2936			GOTO	L_LCD_Out_18
$0120	$	L_LCD_Out_23:
$0120	$3080			MOVLW	128
$0121	$00B8			MOVWF	FARG_LCD_Out+0
$0122	$2936			GOTO	L_LCD_Out_18
$0123	$	L_LCD_Out_17:
$0123	$1303			BCF	STATUS, RP1
$0124	$1283			BCF	STATUS, RP0
$0125	$0838			MOVF	FARG_LCD_Out+0, 0
$0126	$3A01			XORLW	1
$0127	$1903			BTFSC	STATUS, Z
$0128	$2912			GOTO	L_LCD_Out_19
$0129	$0838			MOVF	FARG_LCD_Out+0, 0
$012A	$3A02			XORLW	2
$012B	$1903			BTFSC	STATUS, Z
$012C	$2917			GOTO	L_LCD_Out_20
$012D	$0838			MOVF	FARG_LCD_Out+0, 0
$012E	$3A03			XORLW	3
$012F	$1903			BTFSC	STATUS, Z
$0130	$291A			GOTO	L_LCD_Out_21
$0131	$0838			MOVF	FARG_LCD_Out+0, 0
$0132	$3A04			XORLW	4
$0133	$1903			BTFSC	STATUS, Z
$0134	$291D			GOTO	L_LCD_Out_22
$0135	$2920			GOTO	L_LCD_Out_23
$0136	$	L_LCD_Out_18:
$0136	$0339			DECF	FARG_LCD_Out+1, 0
$0137	$00F0			MOVWF	STACK_0
$0138	$0838			MOVF	FARG_LCD_Out+0, 0
$0139	$07F0			ADDWF	STACK_0, 1
$013A	$0870			MOVF	STACK_0, 0
$013B	$00B8			MOVWF	FARG_LCD_Out+0
$013C	$0870			MOVF	STACK_0, 0
$013D	$00BE			MOVWF	FARG_Lcd_Cmd+0
$013E	$20D3			CALL	_Lcd_Cmd
$013F	$01A1			CLRF	LCD_cmd_status, 1
$0140	$01BB			CLRF	LCD_Out_i_L0, 1
$0141	$	L_LCD_Out_24:
$0141	$083B			MOVF	LCD_Out_i_L0, 0
$0142	$073A			ADDWF	FARG_LCD_Out+2, 0
$0143	$0084			MOVWF	FSR
$0144	$0800			MOVF	INDF, 0
$0145	$00F0			MOVWF	STACK_0
$0146	$0870			MOVF	STACK_0, 0
$0147	$1903			BTFSC	STATUS, Z
$0148	$2951			GOTO	L_LCD_Out_25
$0149	$083B			MOVF	LCD_Out_i_L0, 0
$014A	$073A			ADDWF	FARG_LCD_Out+2, 0
$014B	$0084			MOVWF	FSR
$014C	$0800			MOVF	INDF, 0
$014D	$00BD			MOVWF	FARG_Lcd_Chr_CP+0
$014E	$2185			CALL	_Lcd_Chr_CP
$014F	$0ABB			INCF	LCD_Out_i_L0, 1
$0150	$2941			GOTO	L_LCD_Out_24
$0151	$	L_LCD_Out_25:
$0151	$3001			MOVLW	1
$0152	$00A1			MOVWF	LCD_cmd_status
$0153	$0008			RETURN
$0175	$	_Usart_Write:
$0175	$	L_Usart_Write_3:
$0175	$3000			MOVLW	0
$0176	$1303			BCF	STATUS, RP1
$0177	$1683			BSF	STATUS, RP0
$0178	$1898			BTFSC	TXSTA, 1
$0179	$3001			MOVLW	1
$017A	$00F1			MOVWF	STACK_1
$017B	$0871			MOVF	STACK_1, 0
$017C	$3A00			XORLW	0
$017D	$1D03			BTFSS	STATUS, Z
$017E	$2981			GOTO	L_Usart_Write_4
$017F	$0000			NOP
$0180	$2975			GOTO	L_Usart_Write_3
$0181	$	L_Usart_Write_4:
$0181	$1283			BCF	STATUS, RP0
$0182	$0838			MOVF	FARG_Usart_Write+0, 0
$0183	$0099			MOVWF	TXREG
$0184	$0008			RETURN
$018E	$	_Usart_Data_Ready:
$018E	$3000			MOVLW	0
$018F	$1303			BCF	STATUS, RP1
$0190	$1283			BCF	STATUS, RP0
$0191	$1A8C			BTFSC	PIR1, 5
$0192	$3001			MOVLW	1
$0193	$00F1			MOVWF	STACK_1
$0194	$0871			MOVF	STACK_1, 0
$0195	$00F0			MOVWF	STACK_0
$0196	$0008			RETURN
$0087	$	_Lcd_Init:
$0087	$2154			CALL	_Delay_5500us
$0088	$2154			CALL	_Delay_5500us
$0089	$2154			CALL	_Delay_5500us
$008A	$0838			MOVF	FARG_Lcd_Init+0, 0
$008B	$00A0			MOVWF	LCD_port_address
$008C	$0838			MOVF	FARG_Lcd_Init+0, 0
$008D	$0084			MOVWF	FSR
$008E	$1784			BSF	FSR, 7
$008F	$1080			BCF	INDF, ___ENABLE
$0090	$1000			BCF	INDF, ___RS
$0091	$1300			BCF	INDF, ___RW
$0092	$1280			BCF	INDF, ___DB7
$0093	$1200			BCF	INDF, ___DB6
$0094	$1180			BCF	INDF, ___DB5
$0095	$1100			BCF	INDF, ___DB4
$0096	$1384			BCF	FSR, 7
$0097	$1080			BCF	INDF, ___ENABLE
$0098	$1000			BCF	INDF, ___RS
$0099	$1300			BCF	INDF, ___RW
$009A	$1280			BCF	INDF, ___DB7
$009B	$1200			BCF	INDF, ___DB6
$009C	$1180			BCF	INDF, ___DB5
$009D	$1100			BCF	INDF, ___DB4
$009E	$1580			BSF	INDF, ___DB5
$009F	$1500			BSF	INDF, ___DB4
$00A0	$1480			BSF	INDF, ___ENABLE
$00A1	$1080			BCF	INDF, ___ENABLE
$00A2	$2154			CALL	_Delay_5500us
$00A3	$1480			BSF	INDF, ___ENABLE
$00A4	$1080			BCF	INDF, ___ENABLE
$00A5	$2154			CALL	_Delay_5500us
$00A6	$1480			BSF	INDF, ___ENABLE
$00A7	$1080			BCF	INDF, ___ENABLE
$00A8	$2154			CALL	_Delay_5500us
$00A9	$1580			BSF	INDF, ___DB5
$00AA	$1100			BCF	INDF, ___DB4
$00AB	$1480			BSF	INDF, ___ENABLE
$00AC	$1080			BCF	INDF, ___ENABLE
$00AD	$2154			CALL	_Delay_5500us
$00AE	$0180			CLRF	INDF
$00AF	$1580			BSF	INDF, ___DB5
$00B0	$1480			BSF	INDF, ___ENABLE
$00B1	$1080			BCF	INDF, ___ENABLE
$00B2	$0180			CLRF	INDF
$00B3	$1680			BSF	INDF, ___DB7
$00B4	$1480			BSF	INDF, ___ENABLE
$00B5	$1080			BCF	INDF, ___ENABLE
$00B6	$2154			CALL	_Delay_5500us
$00B7	$0180			CLRF	INDF
$00B8	$1500			BSF	INDF, ___DB4
$00B9	$1480			BSF	INDF, ___ENABLE
$00BA	$1080			BCF	INDF, ___ENABLE
$00BB	$0180			CLRF	INDF
$00BC	$1480			BSF	INDF, ___ENABLE
$00BD	$1080			BCF	INDF, ___ENABLE
$00BE	$2154			CALL	_Delay_5500us
$00BF	$0180			CLRF	INDF
$00C0	$1480			BSF	INDF, ___ENABLE
$00C1	$1080			BCF	INDF, ___ENABLE
$00C2	$1500			BSF	INDF, ___DB4
$00C3	$1480			BSF	INDF, ___ENABLE
$00C4	$1080			BCF	INDF, ___ENABLE
$00C5	$2154			CALL	_Delay_5500us
$00C6	$0180			CLRF	INDF
$00C7	$1480			BSF	INDF, ___ENABLE
$00C8	$1080			BCF	INDF, ___ENABLE
$00C9	$1500			BSF	INDF, ___DB4
$00CA	$1580			BSF	INDF, ___DB5
$00CB	$1600			BSF	INDF, ___DB6
$00CC	$1680			BSF	INDF, ___DB7
$00CD	$1480			BSF	INDF, ___ENABLE
$00CE	$1080			BCF	INDF, ___ENABLE
$00CF	$2154			CALL	_Delay_5500us
$00D0	$3001			MOVLW	1
$00D1	$00A1			MOVWF	LCD_cmd_status
$00D2	$0008			RETURN
$0165	$	_Usart_Init:
$0165	$1303			BCF	STATUS, RP1
$0166	$1683			BSF	STATUS, RP0
$0167	$1698			BSF	TXSTA, 5
$0168	$3090			MOVLW	144
$0169	$1283			BCF	STATUS, RP0
$016A	$0098			MOVWF	RCSTA
$016B	$1683			BSF	STATUS, RP0
$016C	$1787			BSF	TRISC, 7
$016D	$1307			BCF	TRISC, 6
$016E	$	L_Usart_Init_0:
$016E	$1283			BCF	STATUS, RP0
$016F	$1E8C			BTFSS	PIR1, 5
$0170	$2974			GOTO	L_Usart_Init_1
$0171	$081A			MOVF	RCREG, 0
$0172	$00BC			MOVWF	Usart_Init_tmp_L0
$0173	$296E			GOTO	L_Usart_Init_0
$0174	$	L_Usart_Init_1:
$0174	$0008			RETURN
$0004	$	_main:
$0004	$3045			MOVLW	69
$0005	$1303			BCF	STATUS, RP1
$0006	$1283			BCF	STATUS, RP0
$0007	$00A2			MOVWF	lstr1_LCD_28P+0
$0008	$306E			MOVLW	110
$0009	$00A3			MOVWF	lstr1_LCD_28P+1
$000A	$3076			MOVLW	118
$000B	$00A4			MOVWF	lstr1_LCD_28P+2
$000C	$3069			MOVLW	105
$000D	$00A5			MOVWF	lstr1_LCD_28P+3
$000E	$3061			MOVLW	97
$000F	$00A6			MOVWF	lstr1_LCD_28P+4
$0010	$306E			MOVLW	110
$0011	$00A7			MOVWF	lstr1_LCD_28P+5
$0012	$3064			MOVLW	100
$0013	$00A8			MOVWF	lstr1_LCD_28P+6
$0014	$306F			MOVLW	111
$0015	$00A9			MOVWF	lstr1_LCD_28P+7
$0016	$302E			MOVLW	46
$0017	$00AA			MOVWF	lstr1_LCD_28P+8
$0018	$302E			MOVLW	46
$0019	$00AB			MOVWF	lstr1_LCD_28P+9
$001A	$302E			MOVLW	46
$001B	$00AC			MOVWF	lstr1_LCD_28P+10
$001C	$01AD			CLRF	lstr1_LCD_28P+11
$001D	$304F			MOVLW	79
$001E	$00AE			MOVWF	lstr2_LCD_28P+0
$001F	$304B			MOVLW	75
$0020	$00AF			MOVWF	lstr2_LCD_28P+1
$0021	$3021			MOVLW	33
$0022	$00B0			MOVWF	lstr2_LCD_28P+2
$0023	$3021			MOVLW	33
$0024	$00B1			MOVWF	lstr2_LCD_28P+3
$0025	$3021			MOVLW	33
$0026	$00B2			MOVWF	lstr2_LCD_28P+4
$0027	$01B3			CLRF	lstr2_LCD_28P+5
$0028	$306F			MOVLW	111
$0029	$00B4			MOVWF	lstr3_LCD_28P+0
$002A	$306B			MOVLW	107
$002B	$00B5			MOVWF	lstr3_LCD_28P+1
$002C	$3021			MOVLW	33
$002D	$00B6			MOVWF	lstr3_LCD_28P+2
$002E	$01B7			CLRF	lstr3_LCD_28P+3
;LCD_28P.c,1 :: 		void main()
;LCD_28P.c,3 :: 		LCD_Config(&PORTB,0,1,6,5,4,3,2);
$002F	$3006			MOVLW	PORTB
$0030	$00B8			MOVWF	FARG_Lcd_Init+0
$0031	$2087			CALL	_Lcd_Init
;LCD_28P.c,4 :: 		LCD_CMD(LCD_CURSOR_OFF);
$0032	$300C			MOVLW	12
$0033	$00BE			MOVWF	FARG_Lcd_Cmd+0
$0034	$20D3			CALL	_Lcd_Cmd
;LCD_28P.c,5 :: 		LCD_CMD(LCD_CLEAR);
$0035	$3001			MOVLW	1
$0036	$00BE			MOVWF	FARG_Lcd_Cmd+0
$0037	$20D3			CALL	_Lcd_Cmd
;LCD_28P.c,7 :: 		Usart_Init(9600);
$0038	$3033			MOVLW	51
$0039	$1683			BSF	STATUS, RP0
$003A	$0099			MOVWF	SPBRG
$003B	$1518			BSF	TXSTA, BRGH
$003C	$2165			CALL	_Usart_Init
;LCD_28P.c,9 :: 		Lcd_out(1,1,"Enviando...");
$003D	$3001			MOVLW	1
$003E	$00B8			MOVWF	FARG_LCD_Out+0
$003F	$3001			MOVLW	1
$0040	$00B9			MOVWF	FARG_LCD_Out+1
$0041	$3022			MOVLW	lstr1_LCD_28P
$0042	$00BA			MOVWF	FARG_LCD_Out+2
$0043	$2111			CALL	_LCD_Out
;LCD_28P.c,11 :: 		Delay_ms(2000);
$0044	$3015			MOVLW	21
$0045	$00FC			MOVWF	STACK_12
$0046	$30FF			MOVLW	255
$0047	$00FB			MOVWF	STACK_11
$0048	$30FF			MOVLW	255
$0049	$00FA			MOVWF	STACK_10
$004A	$0BFC			DECFSZ	STACK_12, F
$004B	$284D			GOTO	$+2
$004C	$2854			GOTO	$+8
$004D	$0BFB			DECFSZ	STACK_11, F
$004E	$2850			GOTO	$+2
$004F	$2853			GOTO	$+4
$0050	$0BFA			DECFSZ	STACK_10, F
$0051	$2850			GOTO	$-1
$0052	$284D			GOTO	$-5
$0053	$284A			GOTO	$-9
$0054	$3066			MOVLW	102
$0055	$00FB			MOVWF	STACK_11
$0056	$30FF			MOVLW	255
$0057	$00FA			MOVWF	STACK_10
$0058	$0BFB			DECFSZ	STACK_11, F
$0059	$285B			GOTO	$+2
$005A	$285E			GOTO	$+4
$005B	$0BFA			DECFSZ	STACK_10, F
$005C	$285B			GOTO	$-1
$005D	$2858			GOTO	$-5
$005E	$3012			MOVLW	18
$005F	$00FA			MOVWF	STACK_10
$0060	$0BFA			DECFSZ	STACK_10, F
$0061	$2860			GOTO	$-1
$0062	$0000			NOP
$0063	$0000			NOP
;LCD_28P.c,13 :: 		Usart_Write('T');
$0064	$3054			MOVLW	84
$0065	$00B8			MOVWF	FARG_Usart_Write+0
$0066	$2175			CALL	_Usart_Write
;LCD_28P.c,14 :: 		Usart_Write('E');
$0067	$3045			MOVLW	69
$0068	$00B8			MOVWF	FARG_Usart_Write+0
$0069	$2175			CALL	_Usart_Write
;LCD_28P.c,15 :: 		Usart_Write('S');
$006A	$3053			MOVLW	83
$006B	$00B8			MOVWF	FARG_Usart_Write+0
$006C	$2175			CALL	_Usart_Write
;LCD_28P.c,16 :: 		Usart_Write('T');
$006D	$3054			MOVLW	84
$006E	$00B8			MOVWF	FARG_Usart_Write+0
$006F	$2175			CALL	_Usart_Write
;LCD_28P.c,17 :: 		Usart_Write('E');
$0070	$3045			MOVLW	69
$0071	$00B8			MOVWF	FARG_Usart_Write+0
$0072	$2175			CALL	_Usart_Write
;LCD_28P.c,19 :: 		Lcd_out(2,1,"OK!!!");
$0073	$3002			MOVLW	2
$0074	$00B8			MOVWF	FARG_LCD_Out+0
$0075	$3001			MOVLW	1
$0076	$00B9			MOVWF	FARG_LCD_Out+1
$0077	$302E			MOVLW	lstr2_LCD_28P
$0078	$00BA			MOVWF	FARG_LCD_Out+2
$0079	$2111			CALL	_LCD_Out
;LCD_28P.c,21 :: 		while(1)
$007A	$	L_main_0:
;LCD_28P.c,23 :: 		if (Usart_Data_Ready())
$007A	$218E			CALL	_Usart_Data_Ready
$007B	$0870			MOVF	STACK_0, 0
$007C	$1903			BTFSC	STATUS, Z
$007D	$2885			GOTO	L_main_2
;LCD_28P.c,25 :: 		LCD_Out(2,7,"ok!");
$007E	$3002			MOVLW	2
$007F	$00B8			MOVWF	FARG_LCD_Out+0
$0080	$3007			MOVLW	7
$0081	$00B9			MOVWF	FARG_LCD_Out+1
$0082	$3034			MOVLW	lstr3_LCD_28P
$0083	$00BA			MOVWF	FARG_LCD_Out+2
$0084	$2111			CALL	_LCD_Out
;LCD_28P.c,26 :: 		}
$0085	$	L_main_2:
;LCD_28P.c,27 :: 		}
$0085	$287A			GOTO	L_main_0
;LCD_28P.c,28 :: 		}
$0086	$2886			GOTO	$
