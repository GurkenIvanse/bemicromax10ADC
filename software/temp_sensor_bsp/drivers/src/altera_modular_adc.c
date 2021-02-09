/******************************************************************************
*                                                                             *
* License Agreement                                                           *
*                                                                             *
* Copyright (c) 2014 Altera Corporation, San Jose, California, USA.           *
* All rights reserved.                                                        *
*                                                                             *
* Permission is hereby granted, free of charge, to any person obtaining a     *
* copy of this software and associated documentation files (the "Software"),  *
* to deal in the Software without restriction, including without limitation   *
* the rights to use, copy, modify, merge, publish, distribute, sublicense,    *
* and/or sell copies of the Software, and to permit persons to whom the       *
* Software is furnished to do so, subject to the following conditions:        *
*                                                                             *
* The above copyright notice and this permission notice shall be included in  *
* all copies or substantial portions of the Software.                         *
*                                                                             *
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  *
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,    *
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE *
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER      *
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING     *
* FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER         *
* DEALINGS IN THE SOFTWARE.                                                   *
*                                                                             *
* This agreement shall be governed in all respects by the laws of the State   *
* of California and by the laws of the United States of America.              *
*                                                                             *
******************************************************************************/

#include <string.h>
#include <fcntl.h>
#include <errno.h>
#include "priv/alt_file.h"
#include "altera_modular_adc.h"

ALT_LLIST_HEAD(altera_modular_adc_list);

void altera_modular_adc_init(alt_modular_adc_dev* dev)
{
    extern alt_llist altera_modular_adc_list;
    alt_dev_llist_insert((alt_dev_llist*) dev, &altera_modular_adc_list);
}

alt_modular_adc_dev* altera_modular_adc_open (const char *name)
{
    alt_modular_adc_dev *dev;

    /* Find requested device */
    dev = (alt_modular_adc_dev*) alt_find_dev (name, &altera_modular_adc_list);
    if (dev == NULL)
        return NULL;

    return dev;
}

void adc_stop(int sequencer_base)
{
    ALTERA_MODULAR_ADC_SEQUENCER_STOP(sequencer_base);
}

void adc_start(int sequencer_base)
{
    ALTERA_MODULAR_ADC_SEQUENCER_START(sequencer_base);
}

void adc_set_mode_run_once(int sequencer_base)
{
    /* Note: Stop the ADC before calling this function,
       changing ADC mode while RUN bit is set has no effect. */
    ALTERA_MODULAR_ADC_SEQUENCER_MODE_RUN_ONCE(sequencer_base);
}

void adc_set_mode_run_continuously(int sequencer_base)
{
    /* Note: Stop the ADC before calling this function,
       changing ADC mode while RUN bit is set has no effect. */
    ALTERA_MODULAR_ADC_SEQUENCER_MODE_RUN_CONTINUOUSLY(sequencer_base);
}

void adc_recalibrate(int sequencer_base)
{
    /*
     To Recalibrate ADC
     Step:
         1. Backup CMD register, because some value will be overwritten
         2. Stop the ADC Sequencer Core.
         3. Set the recalibration request bits
         2. Start the ADC Sequencer Core.
         5. Poll for RUN bit to be clear
         6. Restore CMD register
     */
    alt_u32 backup_cmd_reg;
    backup_cmd_reg = IORD_ALTERA_MODULAR_ADC_SEQUENCER_CMD_REG(sequencer_base);
    adc_stop(sequencer_base);
    ALTERA_MODULAR_ADC_SEQUENCER_MODE_RUN_RECALIBRATION(sequencer_base);
    adc_start(sequencer_base);
    while(IORD_ALTERA_MODULAR_ADC_SEQUENCER_CMD_REG(sequencer_base)
             & ALTERA_MODULAR_ADC_SEQUENCER_CMD_RUN_MSK);
    IOWR_ALTERA_MODULAR_ADC_SEQUENCER_CMD_REG(sequencer_base, backup_cmd_reg);
}

void adc_interrupt_enable(int sample_store_base)
{
    ALTERA_MODULAR_ADC_SAMPLE_STORAGE_IRQ_ENABLE(sample_store_base);
}

void adc_interrupt_disable(int sample_store_base)
{
    ALTERA_MODULAR_ADC_SAMPLE_STORAGE_IRQ_DISABLE(sample_store_base);
}

void adc_clear_interrupt_status(int sample_store_base)
{
    CLEAR_ALTERA_MODULAR_ADC_SAMPLE_STORAGE_IRQ_STATUS(sample_store_base);
}

int adc_interrupt_asserted(int sample_store_base)
{
    return((READ_ALTERA_MODULAR_ADC_SAMPLE_STORAGE_IRQ_STATUS(sample_store_base)==1) ? -1 : 0);
}

void adc_wait_for_interrupt(int sample_store_base)
{
    WAIT_FOR_ALTERA_MODULAR_ADC_SAMPLE_STORAGE_IRQ(sample_store_base);
}
