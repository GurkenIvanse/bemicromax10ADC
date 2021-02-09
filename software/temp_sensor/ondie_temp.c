/*
 * main.c
 *
 *  Created on: Oct 29, 2014
 *      Author: apanneer
 */


//#include "stdio.h"
#include "system.h"
#include "sys/alt_irq.h"
#include "altera_avalon_timer_regs.h"
#include "altera_avalon_pio_regs.h"
#include "altera_modular_adc_sequencer_regs.h"
#include "altera_modular_adc.h"


alt_u8 celsius_lookup(int adc_avg_in);

int main()
{

	int switch_datain;

	volatile int adc_avg=0 ,i;
	printf("*******PIO and On-Die Temp Sensor example********\nChange Switches 1,2, and 3 to change LEDs 1,2 and 3\nThe value of ADC Channel connected to Temperature Sensing Diode is collected every second and is averaged over 64 Samples\n------------------------------------------------------------------------------------------------------");


	//Starting the ADC sequencer
	IOWR(MODULAR_ADC_0_SEQUENCER_CSR_BASE, 0, 0);
	usleep(10);
	IOWR(MODULAR_ADC_0_SEQUENCER_CSR_BASE, 0, 1);
	adc_recalibrate(MODULAR_ADC_0_SEQUENCER_CSR_BASE);
	//Event loop never exits
	while(1)
	{
		// Reads the value from Switch and Displays in the LED
		switch_datain = IORD_ALTERA_AVALON_PIO_DATA(SW_IO_BASE);
		IOWR_ALTERA_AVALON_PIO_DATA(LED_IO_BASE,switch_datain);
		//Giving a 1 Second delay
		usleep(1000000);

		adc_avg=0;
		//Getting an average of 64 samples
		//__builtin_ldwio (((void *)(((alt_u8*)(1)) + (i * 4))))
		for (i=0;i<6;i++)
		{
			int adc_value=IORD(MODULAR_ADC_0_SAMPLE_STORE_CSR_USE_TSD,i);
			adc_avg=adc_avg+adc_value;
		}
		//printf("\curr adc_avg value =%d",adc_avg);
		printf("\nOn-die temperature = %d",(celsius_lookup(adc_avg/64-3417)-40));
	}
	return 0;
}




alt_u8 celsius_lookup(int adc_avg_in)
{
	 const alt_u8 celsius_lookup_table[383]={
			165,165,165,164,164,164,163,163,163,162,162,162,161,161,161,160,160,160,
			159,159,159,158,158,158,157,157,157,156,156,156,155,155,155,154,154,154,
			153,153,152,152,152,151,151,151,150,150,150,149,149,149,148,148,148,147,
			147,147,146,146,146,145,145,144,144,144,143,143,143,142,142,142,141,141,
			141,140,140,140,139,139,138,138,138,137,137,137,136,136,136,135,135,135,
			134,134,133,133,133,132,132,132,131,131,131,130,130,129,129,128,128,128,
			128,127,127,126,126,126,125,125,125,124,124,124,123,123,122,122,122,121,
			121,121,120,120,119,119,119,118,118,118,117,117,116,116,116,115,115,114,
			114,114,113,113,113,112,112,111,111,111,110,110,109,109,109,108,108,107,
			107,107,106,106,105,105,105,104,104,103,103,103,102,102,101,101,101,100,
			100,99,99,99,98,98,97,97,96,96,96,95,95,94,94,94,93,93,92,92,91,91,91,90,
			 90,89,89,88,88,88,87,87,86,86,85,85,85,84,84,83,83,82,82,82,81,81,80,80,
			 79,79,78,78,78,77,77,76,76,75,75,74,74,73,73,73,72,72,71,71,70,70,69,69,
			 68,68,67,67,67,66,66,65,65,64,64,63,63,62,62,61,61,60,60,59,59,58,58,57,
			 57,56,56,55,55,55,54,54,53,53,52,52,51,51,50,50,49,49,48,48,47,47,46,46,
			 45,45,44,43,43,42,42,41,41,40,40,39,39,38,38,37,37,36,36,35,35,34,34,33,
			 33,32,31,31,30,30,29,29,28,28,27,27,26,26,25,24,24,23,23,22,22,21,21,20,
			 20,19,18,18,17,17,16,16,15,15,14,13,13,12,12,11,11,10, 9, 9, 8, 8, 7, 7,
			  6, 5, 5, 4, 4, 3, 2, 2, 1, 1, 0 };

	//printf("temp = %d",adc_avg_in);
	return (celsius_lookup_table[adc_avg_in]);

}




