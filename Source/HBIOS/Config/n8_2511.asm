;
;==================================================================================================
;   ROMWBW 2.X CONFIGURATION FOR N8 2511
;==================================================================================================
;
; BUILD CONFIGURATION OPTIONS
;
CPUOSC		.EQU	18432000	; CPU OSC FREQ
RAMSIZE		.EQU	512		; SIZE OF RAM IN KB, MUST MATCH YOUR HARDWARE!!!
CONBAUD		.EQU	38400		; DEFAULT BAUDRATE USED BELOW
;
CRTACT		.EQU	FALSE		; CRT ACTIVATION AT STARTUP
VDAEMU		.EQU	EMUTYP_ANSI	; DEFAULT VDA EMULATION (EMUTYP_TTY, EMUTYP_ANSI, ...)
;
DSKYENABLE	.EQU	FALSE		; TRUE FOR DSKY SUPPORT (DO NOT COMBINE WITH PPIDE)
;
SIMRTCENABLE	.EQU	FALSE		; SIMH CLOCK DRIVER
DSRTCENABLE	.EQU	TRUE		; DS-1302 CLOCK DRIVER
DSRTCMODE	.EQU	DSRTCMODE_STD	; DSRTCMODE_STD, DSRTCMODE_MFPIC
;
UARTENABLE	.EQU	FALSE		; TRUE FOR UART SUPPORT (N8 USES ASCI DRIVER)
UARTCNT		.EQU	0		; NUMBER OF UARTS
;
ASCIENABLE	.EQU	TRUE		; TRUE FOR Z180 ASCI SUPPORT
ASCI0BAUD	.EQU	CONBAUD		; ASCI0 BAUDRATE (IMPLEMENTED BY Z180_ASCIB0)
ASCI1BAUD	.EQU	CONBAUD		; ASCI1 BAUDRATE (IMPLEMENTED BY Z180_ASCIB1)
;
VDUENABLE	.EQU	FALSE		; TRUE FOR VDU BOARD SUPPORT
CVDUENABLE	.EQU	FALSE		; TRUE FOR CVDU BOARD SUPPORT
UPD7220ENABLE	.EQU	FALSE		; TRUE FOR uPD7220 BOARD SUPPORT
SCGENABLE	.EQU	TRUE		; TRUE FOR N8 (TMS9918) VIDEO/KBD SUPPORT
;
MDENABLE	.EQU	TRUE		; TRUE FOR ROM/RAM DISK SUPPORT (ALMOST ALWAYS WANT THIS ENABLED)
MDTRACE		.EQU	1		; 0=SILENT, 1=ERRORS, 2=EVERYTHING (ONLY RELEVANT IF MDENABLE = TRUE)
;
FDENABLE	.EQU	TRUE		; TRUE FOR FLOPPY SUPPORT
FDMODE		.EQU	FDMODE_N8	; FDMODE_DIO, FDMODE_ZETA, FDMODE_DIDE, FDMODE_N8, FDMODE_DIO3
FDTRACE		.EQU	1		; 0=SILENT, 1=FATAL ERRORS, 2=ALL ERRORS, 3=EVERYTHING (ONLY RELEVANT IF FDENABLE = TRUE)
FDMEDIA		.EQU	FDM144		; FDM720, FDM144, FDM360, FDM120 (ONLY RELEVANT IF FDENABLE = TRUE)
FDMEDIAALT	.EQU	FDM720		; ALTERNATE MEDIA TO TRY, SAME CHOICES AS ABOVE (ONLY RELEVANT IF FDMAUTO = TRUE)
FDMAUTO		.EQU	TRUE		; SELECT BETWEEN MEDIA OPTS ABOVE AUTOMATICALLY
;
RFENABLE	.EQU	FALSE		; TRUE FOR RAM FLOPPY SUPPORT
RFCNT		.EQU	1		; NUMBER OF RAM FLOPPY UNITS
;
IDEENABLE	.EQU	FALSE		; TRUE FOR IDE SUPPORT
IDEMODE		.EQU	IDEMODE_DIO	; IDEMODE_DIO, IDEMODE_DIDE
IDECNT		.EQU	1		; NUMBER OF IDE UNITS
IDETRACE	.EQU	1		; 0=SILENT, 1=ERRORS, 2=EVERYTHING (ONLY RELEVANT IF IDEENABLE = TRUE)
IDE8BIT		.EQU	FALSE		; USE IDE 8BIT TRANSFERS (PROBABLY ONLY WORKS FOR CF CARDS!)
IDECAPACITY	.EQU	64		; CAPACITY OF DEVICE (IN MB)
;
PPIDEENABLE	.EQU	FALSE		; TRUE FOR PPIDE SUPPORT (DO NOT COMBINE WITH DSKYENABLE)
PPIDEIOB	.EQU	$80		; PPIDE IOBASE
PPIDECNT	.EQU	1		; NUMBER OF PPIDE UNITS
PPIDETRACE	.EQU	1		; 0=SILENT, 1=ERRORS, 2=EVERYTHING (ONLY RELEVANT IF PPIDEENABLE = TRUE)
PPIDE8BIT	.EQU	FALSE		; USE IDE 8BIT TRANSFERS (PROBABLY ONLY WORKS FOR CF CARDS!)
PPIDECAPACITY	.EQU	64		; CAPACITY OF DEVICE (IN MB)
PPIDESLOW	.EQU	FALSE		; ADD DELAYS TO HELP PROBLEMATIC HARDWARE (TRY THIS IF PPIDE IS UNRELIABLE)
;
SDENABLE	.EQU	TRUE		; TRUE FOR SD SUPPORT
SDMODE		.EQU	SDMODE_N8	; SDMODE_JUHA, SDMODE_CSIO, SDMODE_UART, SDMODE_PPI, SDMODE_DSD
SDTRACE		.EQU	1		; 0=SILENT, 1=ERRORS, 2=EVERYTHING (ONLY RELEVANT IF IDEENABLE = TRUE)
SDCAPACITY	.EQU	64		; CAPACITY OF DEVICE (IN MB)
SDCSIOFAST	.EQU	FALSE		; TABLE-DRIVEN BIT INVERTER
;
PRPENABLE	.EQU	FALSE		; TRUE FOR PROPIO SUPPORT
PRPIOB		.EQU	$A8		; PORT IO ADDRESS BASE
PRPSDENABLE	.EQU	TRUE		; TRUE FOR PROPIO SD SUPPORT
PRPSDTRACE	.EQU	1		; 0=SILENT, 1=ERRORS, 2=EVERYTHING (ONLY RELEVANT IF PRPSDENABLE = TRUE)
PRPSDCAPACITY	.EQU	64		; CAPACITY OF DEVICE (IN MB)
PRPCONENABLE	.EQU	TRUE		; TRUE FOR PROPIO CONSOLE SUPPORT (PS/2 KBD & VGA VIDEO)
;
PPPENABLE	.EQU	FALSE		; TRUE FOR PARPORTPROP SUPPORT
PPPSDENABLE	.EQU	TRUE		; TRUE FOR PARPORTPROP SD SUPPORT
PPPSDTRACE	.EQU	1		; 0=SILENT, 1=ERRORS, 2=EVERYTHING (ONLY RELEVANT IF PPPENABLE = TRUE)
PPPSDCAPACITY	.EQU	64		; CAPACITY OF PPP SD DEVICE (IN MB)
PPPCONENABLE	.EQU	TRUE		; TRUE FOR PROPIO CONSOLE SUPPORT (PS/2 KBD & VGA VIDEO)
;
HDSKENABLE	.EQU	FALSE		; TRUE FOR SIMH HDSK SUPPORT
HDSKTRACE	.EQU	1		; 0=SILENT, 1=ERRORS, 2=EVERYTHING (ONLY RELEVANT IF IDEENABLE = TRUE)
HDSKCAPACITY	.EQU	64		; CAPACITY OF DEVICE (IN MB)
;
PPKENABLE	.EQU	TRUE		; TRUE FOR PARALLEL PORT KEYBOARD
PPKTRACE	.EQU	1		; 0=SILENT, 1=ERRORS, 2=EVERYTHING (ONLY RELEVANT IF PPKENABLE = TRUE)
KBDENABLE	.EQU	FALSE		; TRUE FOR PS/2 KEYBOARD ON I8242
KBDTRACE	.EQU	1		; 0=SILENT, 1=ERRORS, 2=EVERYTHING (ONLY RELEVANT IF KBDENABLE = TRUE)
;
TTYENABLE	.EQU	TRUE		; INCLUDE TTY EMULATION SUPPORT
ANSIENABLE	.EQU	TRUE		; INCLUDE ANSI EMULATION SUPPORT
ANSITRACE	.EQU	1		; 0=SILENT, 1=ERRORS, 2=EVERYTHING (ONLY RELEVANT IF ANSIENABLE = TRUE)
;
BOOTTYPE	.EQU	BT_MENU		; BT_MENU (WAIT FOR KEYPRESS), BT_AUTO (BOOT_DEFAULT AFTER BOOT_TIMEOUT SECS)
BOOT_TIMEOUT	.EQU	20		; APPROX TIMEOUT IN SECONDS FOR AUTOBOOT, 0 FOR IMMEDIATE
BOOT_DEFAULT	.EQU	'Z'		; SELECTION TO INVOKE AT TIMEOUT
;
Z180_CLKDIV	.EQU	1		; 0=OSC/2, 1=OSC/1
Z180_MEMWAIT	.EQU	1		; MEMORY WAIT STATES TO INSERT (0-3)
Z180_IOWAIT	.EQU	3		; IO WAIT STATES TO INSERT (0-3)
Z180_ASCIB0	.EQU	20H		; SERIAL PORT 0 DIV, SEE Z180 CLOCKING DOCUMENT
Z180_ASCIB1	.EQU	20H		; SERIAL PORT 1 DIV, SEE Z180 CLOCKING DOCUMENT
