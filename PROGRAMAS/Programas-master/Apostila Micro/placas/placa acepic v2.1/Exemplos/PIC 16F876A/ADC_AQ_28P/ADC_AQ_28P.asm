;  ASM code generated by mikroVirtualMachine for PIC - V. 8.2.0.0
;  Date/Time: 24/11/2008 13:38:12
;  Info: http://www.mikroe.com


; ADDRESS	OPCODE	ASM
; ----------------------------------------------
$0000	$2804			GOTO	_main
$0264	$	_Delay_1us:
;delays.c,7 :: 		void Delay_1us() {
;delays.c,8 :: 		Delay_us(1);
$0264	$0000			NOP
$0265	$0000			NOP
;delays.c,9 :: 		}
$0266	$0008			RETURN
$023B	$	_Delay_5500us:
;delays.c,31 :: 		void Delay_5500us() {
;delays.c,32 :: 		Delay_us(5500);
$023B	$300F			MOVLW	15
$023C	$1303			BCF	STATUS, RP1
$023D	$1283			BCF	STATUS, RP0
$023E	$00FB			MOVWF	STACK_11
$023F	$30FF			MOVLW	255
$0240	$00FA			MOVWF	STACK_10
$0241	$0BFB			DECFSZ	STACK_11, F
$0242	$2A44			GOTO	$+2
$0243	$2A47			GOTO	$+4
$0244	$0BFA			DECFSZ	STACK_10, F
$0245	$2A44			GOTO	$-1
$0246	$2A41			GOTO	$-5
$0247	$303E			MOVLW	62
$0248	$00FA			MOVWF	STACK_10
$0249	$0BFA			DECFSZ	STACK_10, F
$024A	$2A49			GOTO	$-1
;delays.c,33 :: 		}
$024B	$0008			RETURN
$025D	$	_Delay_50us:
;delays.c,19 :: 		void Delay_50us() {
;delays.c,20 :: 		Delay_us(50);
$025D	$3021			MOVLW	33
$025E	$1303			BCF	STATUS, RP1
$025F	$1283			BCF	STATUS, RP0
$0260	$00FA			MOVWF	STACK_10
$0261	$0BFA			DECFSZ	STACK_10, F
$0262	$2A61			GOTO	$-1
;delays.c,21 :: 		}
$0263	$0008			RETURN
$016F	$	_Lcd_Cmd:
$016F	$1303			BCF	STATUS, RP1
$0170	$1283			BCF	STATUS, RP0
$0171	$0820			MOVF	LCD_port_address, 0
$0172	$0084			MOVWF	FSR
$0173	$083C			MOVF	FARG_Lcd_Cmd+0, 0
$0174	$1903			BTFSC	STATUS, Z
$0175	$2976			GOTO	L_Lcd_Cmd_0
$0176	$	L_Lcd_Cmd_0:
$0176	$1080			BCF	INDF, ___ENABLE
$0177	$1000			BCF	INDF, ___RS
$0178	$1280			BCF	INDF, ___DB7
$0179	$1200			BCF	INDF, ___DB6
$017A	$1180			BCF	INDF, ___DB5
$017B	$1100			BCF	INDF, ___DB4
$017C	$1BBC			BTFSC	FARG_Lcd_Cmd+0, 7
$017D	$1680			BSF	INDF, ___DB7
$017E	$1B3C			BTFSC	FARG_Lcd_Cmd+0, 6
$017F	$1600			BSF	INDF, ___DB6
$0180	$1ABC			BTFSC	FARG_Lcd_Cmd+0, 5
$0181	$1580			BSF	INDF, ___DB5
$0182	$1A3C			BTFSC	FARG_Lcd_Cmd+0, 4
$0183	$1500			BSF	INDF, ___DB4
$0184	$0821			MOVF	LCD_cmd_status, 0
$0185	$1903			BTFSC	STATUS, Z
$0186	$2989			GOTO	L_Lcd_Cmd_1
$0187	$1000			BCF	INDF, ___RS
$0188	$298A			GOTO	L_Lcd_Cmd_2
$0189	$	L_Lcd_Cmd_1:
$0189	$1400			BSF	INDF, ___RS
$018A	$	L_Lcd_Cmd_2:
$018A	$1480			BSF	INDF, ___ENABLE
$018B	$2264			CALL	_Delay_1us
$018C	$083C			MOVF	FARG_Lcd_Cmd+0, 0
$018D	$1903			BTFSC	STATUS, Z
$018E	$298F			GOTO	L_Lcd_Cmd_3
$018F	$	L_Lcd_Cmd_3:
$018F	$1080			BCF	INDF, ___ENABLE
$0190	$1000			BCF	INDF, ___RS
$0191	$1280			BCF	INDF, ___DB7
$0192	$1200			BCF	INDF, ___DB6
$0193	$1180			BCF	INDF, ___DB5
$0194	$1100			BCF	INDF, ___DB4
$0195	$19BC			BTFSC	FARG_Lcd_Cmd+0, 3
$0196	$1680			BSF	INDF, ___DB7
$0197	$193C			BTFSC	FARG_Lcd_Cmd+0, 2
$0198	$1600			BSF	INDF, ___DB6
$0199	$18BC			BTFSC	FARG_Lcd_Cmd+0, 1
$019A	$1580			BSF	INDF, ___DB5
$019B	$183C			BTFSC	FARG_Lcd_Cmd+0, 0
$019C	$1500			BSF	INDF, ___DB4
$019D	$0821			MOVF	LCD_cmd_status, 0
$019E	$1903			BTFSC	STATUS, Z
$019F	$29A2			GOTO	L_Lcd_Cmd_4
$01A0	$1000			BCF	INDF, ___RS
$01A1	$29A3			GOTO	L_Lcd_Cmd_5
$01A2	$	L_Lcd_Cmd_4:
$01A2	$1400			BSF	INDF, ___RS
$01A3	$	L_Lcd_Cmd_5:
$01A3	$1480			BSF	INDF, ___ENABLE
$01A4	$2264			CALL	_Delay_1us
$01A5	$1080			BCF	INDF, ___ENABLE
$01A6	$0821			MOVF	LCD_cmd_status, 0
$01A7	$1903			BTFSC	STATUS, Z
$01A8	$29AB			GOTO	L_Lcd_Cmd_6
$01A9	$223B			CALL	_Delay_5500us
$01AA	$29AC			GOTO	L_Lcd_Cmd_7
$01AB	$	L_Lcd_Cmd_6:
$01AB	$225D			CALL	_Delay_50us
$01AC	$	L_Lcd_Cmd_7:
$01AC	$0008			RETURN
$021E	$	_Div_16x16_U:
$021E	$1303			BCF	STATUS, RP1
$021F	$1283			BCF	STATUS, RP0
$0220	$01F8			CLRF	STACK_8
$0221	$01F9			CLRF	STACK_9
$0222	$3010			MOVLW	16
$0223	$00FC			MOVWF	STACK_12
$0224	$0D71			RLF	STACK_1, W
$0225	$0DF8			RLF	STACK_8, F
$0226	$0DF9			RLF	STACK_9, F
$0227	$0874			MOVF	STACK_4, W
$0228	$02F8			SUBWF	STACK_8, F
$0229	$0875			MOVF	STACK_5, W
$022A	$1C03			BTFSS	STATUS, C
$022B	$0F75			INCFSZ	STACK_5, W
$022C	$02F9			SUBWF	STACK_9, F
$022D	$1803			BTFSC	STATUS, C
$022E	$2A36			GOTO	$+8
$022F	$0874			MOVF	STACK_4, W
$0230	$07F8			ADDWF	STACK_8, F
$0231	$0875			MOVF	STACK_5, W
$0232	$1803			BTFSC	STATUS, C
$0233	$0F75			INCFSZ	STACK_5, W
$0234	$07F9			ADDWF	STACK_9, F
$0235	$1003			BCF	STATUS, C
$0236	$0DF0			RLF	STACK_0, F
$0237	$0DF1			RLF	STACK_1, F
$0238	$0BFC			DECFSZ	STACK_12, F
$0239	$2A24			GOTO	$-21
$023A	$0008			RETURN
$024C	$	_Lcd_Chr_CP:
$024C	$1303			BCF	STATUS, RP1
$024D	$1283			BCF	STATUS, RP0
$024E	$01A1			CLRF	LCD_cmd_status, 1
$024F	$0837			MOVF	FARG_Lcd_Chr_CP+0, 0
$0250	$00BC			MOVWF	FARG_Lcd_Cmd+0
$0251	$216F			CALL	_Lcd_Cmd
$0252	$3001			MOVLW	1
$0253	$00A1			MOVWF	LCD_cmd_status
$0254	$0008			RETURN
$0255	$	_Delay_22us:
;delays.c,15 :: 		void Delay_22us() {
;delays.c,16 :: 		Delay_us(22);
$0255	$300E			MOVLW	14
$0256	$1303			BCF	STATUS, RP1
$0257	$1283			BCF	STATUS, RP0
$0258	$00FA			MOVWF	STACK_10
$0259	$0BFA			DECFSZ	STACK_10, F
$025A	$2A59			GOTO	$-1
$025B	$0000			NOP
;delays.c,17 :: 		}
$025C	$0008			RETURN
$00C2	$	_WordToStr:
$00C2	$1303			BCF	STATUS, RP1
$00C3	$1283			BCF	STATUS, RP0
$00C4	$0839			MOVF	FARG_WordToStr+2, 0
$00C5	$0084			MOVWF	FSR
$00C6	$3020			MOVLW	32
$00C7	$0080			MOVWF	INDF
$00C8	$0A39			INCF	FARG_WordToStr+2, 0
$00C9	$00F0			MOVWF	STACK_0
$00CA	$0870			MOVF	STACK_0, 0
$00CB	$0084			MOVWF	FSR
$00CC	$3020			MOVLW	32
$00CD	$0080			MOVWF	INDF
$00CE	$3002			MOVLW	2
$00CF	$0739			ADDWF	FARG_WordToStr+2, 0
$00D0	$00F0			MOVWF	STACK_0
$00D1	$0870			MOVF	STACK_0, 0
$00D2	$0084			MOVWF	FSR
$00D3	$3020			MOVLW	32
$00D4	$0080			MOVWF	INDF
$00D5	$3003			MOVLW	3
$00D6	$0739			ADDWF	FARG_WordToStr+2, 0
$00D7	$00F0			MOVWF	STACK_0
$00D8	$0870			MOVF	STACK_0, 0
$00D9	$0084			MOVWF	FSR
$00DA	$3020			MOVLW	32
$00DB	$0080			MOVWF	INDF
$00DC	$3004			MOVLW	4
$00DD	$0739			ADDWF	FARG_WordToStr+2, 0
$00DE	$00F0			MOVWF	STACK_0
$00DF	$0870			MOVF	STACK_0, 0
$00E0	$0084			MOVWF	FSR
$00E1	$3030			MOVLW	48
$00E2	$0080			MOVWF	INDF
$00E3	$3005			MOVLW	5
$00E4	$0739			ADDWF	FARG_WordToStr+2, 0
$00E5	$00F0			MOVWF	STACK_0
$00E6	$0870			MOVF	STACK_0, 0
$00E7	$0084			MOVWF	FSR
$00E8	$0180			CLRF	INDF, 1
$00E9	$3004			MOVLW	4
$00EA	$00BA			MOVWF	WordToStr_pos_L0
$00EB	$	L_WordToStr_4:
$00EB	$0838			MOVF	FARG_WordToStr+1, 0
$00EC	$3C00			SUBLW	0
$00ED	$1D03			BTFSS	STATUS, Z
$00EE	$28F1			GOTO	L_WordToStr_51
$00EF	$0837			MOVF	FARG_WordToStr+0, 0
$00F0	$3C00			SUBLW	0
$00F1	$	L_WordToStr_51:
$00F1	$1803			BTFSC	STATUS, C
$00F2	$2916			GOTO	L_WordToStr_5
$00F3	$083A			MOVF	WordToStr_pos_L0, 0
$00F4	$0739			ADDWF	FARG_WordToStr+2, 0
$00F5	$00BB			MOVWF	FLOC_WordToStr+1
$00F6	$300A			MOVLW	10
$00F7	$00F4			MOVWF	STACK_4
$00F8	$01F5			CLRF	STACK_4+1
$00F9	$0837			MOVF	FARG_WordToStr+0, 0
$00FA	$00F0			MOVWF	STACK_0
$00FB	$0838			MOVF	FARG_WordToStr+1, 0
$00FC	$00F1			MOVWF	STACK_0+1
$00FD	$221E			CALL	_div_16x16_u
$00FE	$0878			MOVF	STACK_8, 0
$00FF	$00F0			MOVWF	STACK_0
$0100	$0879			MOVF	STACK_9, 0
$0101	$00F1			MOVWF	STACK_1
$0102	$3030			MOVLW	48
$0103	$07F0			ADDWF	STACK_0, 1
$0104	$083B			MOVF	FLOC_WordToStr+1, 0
$0105	$0084			MOVWF	FSR
$0106	$0870			MOVF	STACK_0, 0
$0107	$0080			MOVWF	INDF
$0108	$300A			MOVLW	10
$0109	$00F4			MOVWF	STACK_4
$010A	$01F5			CLRF	STACK_4+1
$010B	$0837			MOVF	FARG_WordToStr+0, 0
$010C	$00F0			MOVWF	STACK_0
$010D	$0838			MOVF	FARG_WordToStr+1, 0
$010E	$00F1			MOVWF	STACK_0+1
$010F	$221E			CALL	_div_16x16_u
$0110	$0870			MOVF	STACK_0, 0
$0111	$00B7			MOVWF	FARG_WordToStr+0
$0112	$0871			MOVF	STACK_0+1, 0
$0113	$00B8			MOVWF	FARG_WordToStr+1
$0114	$03BA			DECF	WordToStr_pos_L0, 1
$0115	$28EB			GOTO	L_WordToStr_4
$0116	$	L_WordToStr_5:
$0116	$0008			RETURN
$01AD	$	_LCD_Out:
$01AD	$29BF			GOTO	L_LCD_Out_17
$01AE	$	L_LCD_Out_19:
$01AE	$3080			MOVLW	128
$01AF	$1303			BCF	STATUS, RP1
$01B0	$1283			BCF	STATUS, RP0
$01B1	$00B0			MOVWF	FARG_LCD_Out+0
$01B2	$29D2			GOTO	L_LCD_Out_18
$01B3	$	L_LCD_Out_20:
$01B3	$30C0			MOVLW	192
$01B4	$00B0			MOVWF	FARG_LCD_Out+0
$01B5	$29D2			GOTO	L_LCD_Out_18
$01B6	$	L_LCD_Out_21:
$01B6	$3094			MOVLW	148
$01B7	$00B0			MOVWF	FARG_LCD_Out+0
$01B8	$29D2			GOTO	L_LCD_Out_18
$01B9	$	L_LCD_Out_22:
$01B9	$30D4			MOVLW	212
$01BA	$00B0			MOVWF	FARG_LCD_Out+0
$01BB	$29D2			GOTO	L_LCD_Out_18
$01BC	$	L_LCD_Out_23:
$01BC	$3080			MOVLW	128
$01BD	$00B0			MOVWF	FARG_LCD_Out+0
$01BE	$29D2			GOTO	L_LCD_Out_18
$01BF	$	L_LCD_Out_17:
$01BF	$1303			BCF	STATUS, RP1
$01C0	$1283			BCF	STATUS, RP0
$01C1	$0830			MOVF	FARG_LCD_Out+0, 0
$01C2	$3A01			XORLW	1
$01C3	$1903			BTFSC	STATUS, Z
$01C4	$29AE			GOTO	L_LCD_Out_19
$01C5	$0830			MOVF	FARG_LCD_Out+0, 0
$01C6	$3A02			XORLW	2
$01C7	$1903			BTFSC	STATUS, Z
$01C8	$29B3			GOTO	L_LCD_Out_20
$01C9	$0830			MOVF	FARG_LCD_Out+0, 0
$01CA	$3A03			XORLW	3
$01CB	$1903			BTFSC	STATUS, Z
$01CC	$29B6			GOTO	L_LCD_Out_21
$01CD	$0830			MOVF	FARG_LCD_Out+0, 0
$01CE	$3A04			XORLW	4
$01CF	$1903			BTFSC	STATUS, Z
$01D0	$29B9			GOTO	L_LCD_Out_22
$01D1	$29BC			GOTO	L_LCD_Out_23
$01D2	$	L_LCD_Out_18:
$01D2	$0331			DECF	FARG_LCD_Out+1, 0
$01D3	$00F0			MOVWF	STACK_0
$01D4	$0830			MOVF	FARG_LCD_Out+0, 0
$01D5	$07F0			ADDWF	STACK_0, 1
$01D6	$0870			MOVF	STACK_0, 0
$01D7	$00B0			MOVWF	FARG_LCD_Out+0
$01D8	$0870			MOVF	STACK_0, 0
$01D9	$00BC			MOVWF	FARG_Lcd_Cmd+0
$01DA	$216F			CALL	_Lcd_Cmd
$01DB	$01A1			CLRF	LCD_cmd_status, 1
$01DC	$01B3			CLRF	LCD_Out_i_L0, 1
$01DD	$	L_LCD_Out_24:
$01DD	$0833			MOVF	LCD_Out_i_L0, 0
$01DE	$0732			ADDWF	FARG_LCD_Out+2, 0
$01DF	$0084			MOVWF	FSR
$01E0	$0800			MOVF	INDF, 0
$01E1	$00F0			MOVWF	STACK_0
$01E2	$0870			MOVF	STACK_0, 0
$01E3	$1903			BTFSC	STATUS, Z
$01E4	$29ED			GOTO	L_LCD_Out_25
$01E5	$0833			MOVF	LCD_Out_i_L0, 0
$01E6	$0732			ADDWF	FARG_LCD_Out+2, 0
$01E7	$0084			MOVWF	FSR
$01E8	$0800			MOVF	INDF, 0
$01E9	$00B7			MOVWF	FARG_Lcd_Chr_CP+0
$01EA	$224C			CALL	_Lcd_Chr_CP
$01EB	$0AB3			INCF	LCD_Out_i_L0, 1
$01EC	$29DD			GOTO	L_LCD_Out_24
$01ED	$	L_LCD_Out_25:
$01ED	$3001			MOVLW	1
$01EE	$00A1			MOVWF	LCD_cmd_status
$01EF	$0008			RETURN
$01F0	$	_Adc_Read:
$01F0	$1303			BCF	STATUS, RP1
$01F1	$1283			BCF	STATUS, RP0
$01F2	$019F			CLRF	ADCON0, 1
$01F3	$30C0			MOVLW	192
$01F4	$049F			IORWF	ADCON0, 1
$01F5	$1683			BSF	STATUS, RP0
$01F6	$171F			BSF	ADCON1, 6
$01F7	$179F			BSF	ADCON1, 7
$01F8	$1283			BCF	STATUS, RP0
$01F9	$0830			MOVF	FARG_Adc_Read+0, 0
$01FA	$00F0			MOVWF	STACK_0
$01FB	$0DF0			RLF	STACK_0, 1
$01FC	$1070			BCF	STACK_0, 0
$01FD	$0DF0			RLF	STACK_0, 1
$01FE	$1070			BCF	STACK_0, 0
$01FF	$0DF0			RLF	STACK_0, 1
$0200	$1070			BCF	STACK_0, 0
$0201	$0870			MOVF	STACK_0, 0
$0202	$049F			IORWF	ADCON0, 1
$0203	$141F			BSF	ADCON0, 0
$0204	$2255			CALL	_Delay_22us
$0205	$151F			BSF	ADCON0, 2
$0206	$	L_Adc_Read_0:
$0206	$1D1F			BTFSS	ADCON0, 2
$0207	$2A0A			GOTO	L_Adc_Read_1
$0208	$0000			NOP
$0209	$2A06			GOTO	L_Adc_Read_0
$020A	$	L_Adc_Read_1:
$020A	$101F			BCF	ADCON0, 0
$020B	$3008			MOVLW	8
$020C	$00F2			MOVWF	STACK_2
$020D	$081E			MOVF	ADRESH, 0
$020E	$00F0			MOVWF	STACK_0
$020F	$01F1			CLRF	STACK_0+1
$0210	$0872			MOVF	STACK_2, 0
$0211	$	L_Adc_Read_2:
$0211	$1903			BTFSC	STATUS, Z
$0212	$2A18			GOTO	L_Adc_Read_3
$0213	$0DF0			RLF	STACK_0, 1
$0214	$0DF1			RLF	STACK_0+1, 1
$0215	$1070			BCF	STACK_0, 0
$0216	$3FFF			ADDLW	255
$0217	$2A11			GOTO	L_Adc_Read_2
$0218	$	L_Adc_Read_3:
$0218	$1683			BSF	STATUS, RP0
$0219	$081E			MOVF	ADRESL, 0
$021A	$04F0			IORWF	STACK_0, 1
$021B	$3000			MOVLW	0
$021C	$04F1			IORWF	STACK_0+1, 1
$021D	$0008			RETURN
$0117	$	_IntToStr:
$0117	$1303			BCF	STATUS, RP1
$0118	$1283			BCF	STATUS, RP0
$0119	$01B4			CLRF	IntToStr_negative_L0, 1
$011A	$0830			MOVF	FARG_IntToStr+0, 0
$011B	$00B5			MOVWF	IntToStr_inword_L0
$011C	$0831			MOVF	FARG_IntToStr+1, 0
$011D	$00B6			MOVWF	IntToStr_inword_L0+1
$011E	$3080			MOVLW	128
$011F	$0631			XORWF	FARG_IntToStr+1, 0
$0120	$00F0			MOVWF	STACK_0
$0121	$3080			MOVLW	128
$0122	$0270			SUBWF	STACK_0, 0
$0123	$1D03			BTFSS	STATUS, Z
$0124	$2927			GOTO	L_IntToStr_52
$0125	$3000			MOVLW	0
$0126	$0230			SUBWF	FARG_IntToStr+0, 0
$0127	$	L_IntToStr_52:
$0127	$1803			BTFSC	STATUS, C
$0128	$2933			GOTO	L_IntToStr_12
$0129	$3001			MOVLW	1
$012A	$00B4			MOVWF	IntToStr_negative_L0
$012B	$0830			MOVF	FARG_IntToStr+0, 0
$012C	$3C00			SUBLW	0
$012D	$00B5			MOVWF	IntToStr_inword_L0
$012E	$0831			MOVF	FARG_IntToStr+1, 0
$012F	$1C03			BTFSS	STATUS, C
$0130	$3F01			ADDLW	1
$0131	$01B6			CLRF	IntToStr_inword_L0+1
$0132	$02B6			SUBWF	IntToStr_inword_L0+1, 1
$0133	$	L_IntToStr_12:
$0133	$0835			MOVF	IntToStr_inword_L0, 0
$0134	$00B7			MOVWF	FARG_WordToStr+0
$0135	$0836			MOVF	IntToStr_inword_L0+1, 0
$0136	$00B8			MOVWF	FARG_WordToStr+1
$0137	$0832			MOVF	FARG_IntToStr+2, 0
$0138	$00B9			MOVWF	FARG_WordToStr+2
$0139	$20C2			CALL	_WordToStr
$013A	$3006			MOVLW	6
$013B	$00B3			MOVWF	IntToStr_i_L0
$013C	$	L_IntToStr_13:
$013C	$0833			MOVF	IntToStr_i_L0, 0
$013D	$3C00			SUBLW	0
$013E	$1803			BTFSC	STATUS, C
$013F	$2954			GOTO	L_IntToStr_14
$0140	$0833			MOVF	IntToStr_i_L0, 0
$0141	$0732			ADDWF	FARG_IntToStr+2, 0
$0142	$00F2			MOVWF	STACK_2
$0143	$3001			MOVLW	1
$0144	$0233			SUBWF	IntToStr_i_L0, 0
$0145	$00F0			MOVWF	STACK_0
$0146	$01F1			CLRF	STACK_0+1
$0147	$1C03			BTFSS	STATUS, C
$0148	$03F1			DECF	STACK_0+1, 1
$0149	$0870			MOVF	STACK_0, 0
$014A	$0732			ADDWF	FARG_IntToStr+2, 0
$014B	$0084			MOVWF	FSR
$014C	$0800			MOVF	INDF, 0
$014D	$00F0			MOVWF	STACK_0
$014E	$0872			MOVF	STACK_2, 0
$014F	$0084			MOVWF	FSR
$0150	$0870			MOVF	STACK_0, 0
$0151	$0080			MOVWF	INDF
$0152	$03B3			DECF	IntToStr_i_L0, 1
$0153	$293C			GOTO	L_IntToStr_13
$0154	$	L_IntToStr_14:
$0154	$0832			MOVF	FARG_IntToStr+2, 0
$0155	$0084			MOVWF	FSR
$0156	$3020			MOVLW	32
$0157	$0080			MOVWF	INDF
$0158	$0834			MOVF	IntToStr_negative_L0, 0
$0159	$1903			BTFSC	STATUS, Z
$015A	$296E			GOTO	L_IntToStr_15
$015B	$	L_IntToStr_16:
$015B	$0833			MOVF	IntToStr_i_L0, 0
$015C	$0732			ADDWF	FARG_IntToStr+2, 0
$015D	$0084			MOVWF	FSR
$015E	$0800			MOVF	INDF, 0
$015F	$00F2			MOVWF	STACK_2
$0160	$0872			MOVF	STACK_2, 0
$0161	$3A20			XORLW	32
$0162	$1D03			BTFSS	STATUS, Z
$0163	$2966			GOTO	L_IntToStr_17
$0164	$0AB3			INCF	IntToStr_i_L0, 1
$0165	$295B			GOTO	L_IntToStr_16
$0166	$	L_IntToStr_17:
$0166	$03B3			DECF	IntToStr_i_L0, 1
$0167	$0833			MOVF	IntToStr_i_L0, 0
$0168	$0732			ADDWF	FARG_IntToStr+2, 0
$0169	$00F0			MOVWF	STACK_0
$016A	$0870			MOVF	STACK_0, 0
$016B	$0084			MOVWF	FSR
$016C	$302D			MOVLW	45
$016D	$0080			MOVWF	INDF
$016E	$	L_IntToStr_15:
$016E	$0008			RETURN
$0076	$	_Lcd_Init:
$0076	$223B			CALL	_Delay_5500us
$0077	$223B			CALL	_Delay_5500us
$0078	$223B			CALL	_Delay_5500us
$0079	$0830			MOVF	FARG_Lcd_Init+0, 0
$007A	$00A0			MOVWF	LCD_port_address
$007B	$0830			MOVF	FARG_Lcd_Init+0, 0
$007C	$0084			MOVWF	FSR
$007D	$1784			BSF	FSR, 7
$007E	$1080			BCF	INDF, ___ENABLE
$007F	$1000			BCF	INDF, ___RS
$0080	$1300			BCF	INDF, ___RW
$0081	$1280			BCF	INDF, ___DB7
$0082	$1200			BCF	INDF, ___DB6
$0083	$1180			BCF	INDF, ___DB5
$0084	$1100			BCF	INDF, ___DB4
$0085	$1384			BCF	FSR, 7
$0086	$1080			BCF	INDF, ___ENABLE
$0087	$1000			BCF	INDF, ___RS
$0088	$1300			BCF	INDF, ___RW
$0089	$1280			BCF	INDF, ___DB7
$008A	$1200			BCF	INDF, ___DB6
$008B	$1180			BCF	INDF, ___DB5
$008C	$1100			BCF	INDF, ___DB4
$008D	$1580			BSF	INDF, ___DB5
$008E	$1500			BSF	INDF, ___DB4
$008F	$1480			BSF	INDF, ___ENABLE
$0090	$1080			BCF	INDF, ___ENABLE
$0091	$223B			CALL	_Delay_5500us
$0092	$1480			BSF	INDF, ___ENABLE
$0093	$1080			BCF	INDF, ___ENABLE
$0094	$223B			CALL	_Delay_5500us
$0095	$1480			BSF	INDF, ___ENABLE
$0096	$1080			BCF	INDF, ___ENABLE
$0097	$223B			CALL	_Delay_5500us
$0098	$1580			BSF	INDF, ___DB5
$0099	$1100			BCF	INDF, ___DB4
$009A	$1480			BSF	INDF, ___ENABLE
$009B	$1080			BCF	INDF, ___ENABLE
$009C	$223B			CALL	_Delay_5500us
$009D	$0180			CLRF	INDF
$009E	$1580			BSF	INDF, ___DB5
$009F	$1480			BSF	INDF, ___ENABLE
$00A0	$1080			BCF	INDF, ___ENABLE
$00A1	$0180			CLRF	INDF
$00A2	$1680			BSF	INDF, ___DB7
$00A3	$1480			BSF	INDF, ___ENABLE
$00A4	$1080			BCF	INDF, ___ENABLE
$00A5	$223B			CALL	_Delay_5500us
$00A6	$0180			CLRF	INDF
$00A7	$1500			BSF	INDF, ___DB4
$00A8	$1480			BSF	INDF, ___ENABLE
$00A9	$1080			BCF	INDF, ___ENABLE
$00AA	$0180			CLRF	INDF
$00AB	$1480			BSF	INDF, ___ENABLE
$00AC	$1080			BCF	INDF, ___ENABLE
$00AD	$223B			CALL	_Delay_5500us
$00AE	$0180			CLRF	INDF
$00AF	$1480			BSF	INDF, ___ENABLE
$00B0	$1080			BCF	INDF, ___ENABLE
$00B1	$1500			BSF	INDF, ___DB4
$00B2	$1480			BSF	INDF, ___ENABLE
$00B3	$1080			BCF	INDF, ___ENABLE
$00B4	$223B			CALL	_Delay_5500us
$00B5	$0180			CLRF	INDF
$00B6	$1480			BSF	INDF, ___ENABLE
$00B7	$1080			BCF	INDF, ___ENABLE
$00B8	$1500			BSF	INDF, ___DB4
$00B9	$1580			BSF	INDF, ___DB5
$00BA	$1600			BSF	INDF, ___DB6
$00BB	$1680			BSF	INDF, ___DB7
$00BC	$1480			BSF	INDF, ___ENABLE
$00BD	$1080			BCF	INDF, ___ENABLE
$00BE	$223B			CALL	_Delay_5500us
$00BF	$3001			MOVLW	1
$00C0	$00A1			MOVWF	LCD_cmd_status
$00C1	$0008			RETURN
$0004	$	_main:
$0004	$3041			MOVLW	65
$0005	$1303			BCF	STATUS, RP1
$0006	$1283			BCF	STATUS, RP0
$0007	$00AB			MOVWF	lstr1_ADC_AQ_28P+0
$0008	$3044			MOVLW	68
$0009	$00AC			MOVWF	lstr1_ADC_AQ_28P+1
$000A	$3043			MOVLW	67
$000B	$00AD			MOVWF	lstr1_ADC_AQ_28P+2
$000C	$303A			MOVLW	58
$000D	$00AE			MOVWF	lstr1_ADC_AQ_28P+3
$000E	$01AF			CLRF	lstr1_ADC_AQ_28P+4
;ADC_AQ_28P.c,4 :: 		void main()
;ADC_AQ_28P.c,6 :: 		ADCON1 = 0x04;
$000F	$3004			MOVLW	4
$0010	$1683			BSF	STATUS, RP0
$0011	$009F			MOVWF	ADCON1
;ADC_AQ_28P.c,8 :: 		TRISC.F1 = 0;
$0012	$1087			BCF	TRISC, 1
;ADC_AQ_28P.c,9 :: 		TRISC.F2 = 0;
$0013	$1107			BCF	TRISC, 2
;ADC_AQ_28P.c,11 :: 		LCD_Config(&PORTB,0,1,6,5,4,3,2);
$0014	$3006			MOVLW	PORTB
$0015	$1283			BCF	STATUS, RP0
$0016	$00B0			MOVWF	FARG_Lcd_Init+0
$0017	$2076			CALL	_Lcd_Init
;ADC_AQ_28P.c,12 :: 		LCD_CMD(LCD_CURSOR_OFF);
$0018	$300C			MOVLW	12
$0019	$00BC			MOVWF	FARG_Lcd_Cmd+0
$001A	$216F			CALL	_Lcd_Cmd
;ADC_AQ_28P.c,13 :: 		LCD_CMD(LCD_CLEAR);
$001B	$3001			MOVLW	1
$001C	$00BC			MOVWF	FARG_Lcd_Cmd+0
$001D	$216F			CALL	_Lcd_Cmd
;ADC_AQ_28P.c,15 :: 		Lcd_out(1,1,"ADC:");
$001E	$3001			MOVLW	1
$001F	$00B0			MOVWF	FARG_LCD_Out+0
$0020	$3001			MOVLW	1
$0021	$00B1			MOVWF	FARG_LCD_Out+1
$0022	$302B			MOVLW	lstr1_ADC_AQ_28P
$0023	$00B2			MOVWF	FARG_LCD_Out+2
$0024	$21AD			CALL	_LCD_Out
;ADC_AQ_28P.c,18 :: 		PORTC.F2 = 1;
$0025	$1507			BSF	PORTC, 2
;ADC_AQ_28P.c,22 :: 		while(1)
$0026	$	L_main_0:
;ADC_AQ_28P.c,24 :: 		adc = ADC_READ(3);
$0026	$3003			MOVLW	3
$0027	$00B0			MOVWF	FARG_Adc_Read+0
$0028	$21F0			CALL	_Adc_Read
$0029	$0870			MOVF	STACK_0, 0
$002A	$1283			BCF	STATUS, RP0
$002B	$00A2			MOVWF	_adc
$002C	$0871			MOVF	STACK_0+1, 0
$002D	$00A3			MOVWF	_adc+1
;ADC_AQ_28P.c,26 :: 		IntToStr(adc,txt);
$002E	$0870			MOVF	STACK_0, 0
$002F	$00B0			MOVWF	FARG_IntToStr+0
$0030	$0871			MOVF	STACK_0+1, 0
$0031	$00B1			MOVWF	FARG_IntToStr+1
$0032	$3024			MOVLW	_txt
$0033	$00B2			MOVWF	FARG_IntToStr+2
$0034	$2117			CALL	_IntToStr
;ADC_AQ_28P.c,28 :: 		LCD_OUT(1,6,txt);
$0035	$3001			MOVLW	1
$0036	$00B0			MOVWF	FARG_LCD_Out+0
$0037	$3006			MOVLW	6
$0038	$00B1			MOVWF	FARG_LCD_Out+1
$0039	$3024			MOVLW	_txt
$003A	$00B2			MOVWF	FARG_LCD_Out+2
$003B	$21AD			CALL	_LCD_Out
;ADC_AQ_28P.c,30 :: 		if (adc > 100)
$003C	$3080			MOVLW	128
$003D	$00F0			MOVWF	STACK_0
$003E	$3080			MOVLW	128
$003F	$0623			XORWF	_adc+1, 0
$0040	$0270			SUBWF	STACK_0, 0
$0041	$1D03			BTFSS	STATUS, Z
$0042	$2845			GOTO	L_main_4
$0043	$0822			MOVF	_adc, 0
$0044	$3C64			SUBLW	100
$0045	$	L_main_4:
$0045	$1803			BTFSC	STATUS, C
$0046	$2849			GOTO	L_main_2
;ADC_AQ_28P.c,32 :: 		PORTC.F1 = 0;
$0047	$1087			BCF	PORTC, 1
;ADC_AQ_28P.c,33 :: 		PORTC.F2 = 1;
$0048	$1507			BSF	PORTC, 2
;ADC_AQ_28P.c,34 :: 		}
$0049	$	L_main_2:
;ADC_AQ_28P.c,35 :: 		if (adc < 80)
$0049	$3080			MOVLW	128
$004A	$0623			XORWF	_adc+1, 0
$004B	$00F0			MOVWF	STACK_0
$004C	$3080			MOVLW	128
$004D	$0270			SUBWF	STACK_0, 0
$004E	$1D03			BTFSS	STATUS, Z
$004F	$2852			GOTO	L_main_5
$0050	$3050			MOVLW	80
$0051	$0222			SUBWF	_adc, 0
$0052	$	L_main_5:
$0052	$1803			BTFSC	STATUS, C
$0053	$2856			GOTO	L_main_3
;ADC_AQ_28P.c,37 :: 		PORTC.F1 = 1;
$0054	$1487			BSF	PORTC, 1
;ADC_AQ_28P.c,38 :: 		PORTC.F2 = 0;
$0055	$1107			BCF	PORTC, 2
;ADC_AQ_28P.c,39 :: 		}
$0056	$	L_main_3:
;ADC_AQ_28P.c,43 :: 		delay_ms(1000);
$0056	$300B			MOVLW	11
$0057	$00FC			MOVWF	STACK_12
$0058	$30FF			MOVLW	255
$0059	$00FB			MOVWF	STACK_11
$005A	$30FF			MOVLW	255
$005B	$00FA			MOVWF	STACK_10
$005C	$0BFC			DECFSZ	STACK_12, F
$005D	$285F			GOTO	$+2
$005E	$2866			GOTO	$+8
$005F	$0BFB			DECFSZ	STACK_11, F
$0060	$2862			GOTO	$+2
$0061	$2865			GOTO	$+4
$0062	$0BFA			DECFSZ	STACK_10, F
$0063	$2862			GOTO	$-1
$0064	$285F			GOTO	$-5
$0065	$285C			GOTO	$-9
$0066	$3033			MOVLW	51
$0067	$00FB			MOVWF	STACK_11
$0068	$30FF			MOVLW	255
$0069	$00FA			MOVWF	STACK_10
$006A	$0BFB			DECFSZ	STACK_11, F
$006B	$286D			GOTO	$+2
$006C	$2870			GOTO	$+4
$006D	$0BFA			DECFSZ	STACK_10, F
$006E	$286D			GOTO	$-1
$006F	$286A			GOTO	$-5
$0070	$3088			MOVLW	136
$0071	$00FA			MOVWF	STACK_10
$0072	$0BFA			DECFSZ	STACK_10, F
$0073	$2872			GOTO	$-1
;ADC_AQ_28P.c,44 :: 		}
$0074	$2826			GOTO	L_main_0
;ADC_AQ_28P.c,45 :: 		}
$0075	$2875			GOTO	$
