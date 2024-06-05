/*
 * PWM_initialization.c
 *
 * Created: 05.06.2024
 *  Author: Noah Dünninghaus
 */

#include "PWM_initialization.h"

void PinMux_init();
void initEPWM();

void PinMux_init()
{
    EALLOW;                                 //Allow access to register
    GpioCtrlRegs.GPAMUX1.all=0;             // gpio 15 to gpio 0 a;; general purpouse I/O
    GpioCtrlRegs.GPAMUX1.bit.GPIO0=1;       // epwm active Port P0
    GpioCtrlRegs.GPAMUX1.bit.GPIO2=1;       // epwm active Port P2
    GpioCtrlRegs.GPAMUX1.bit.GPIO4=1;       // epwm active Port P4
    EDIS;                                   //Deny access to register

}

//
// initEPWM1 - Configure ePWM1
//
void initEPWM()
{

    EPwm1Regs.TBPRD = 2000;                     // Set timer period 801 TBCLKs
    EPwm1Regs.TBPHS.bit.TBPHS = 0x0000;        // Phase is 0
    EPwm1Regs.TBCTR = 0x0000;
    // Set Compare values
    EPwm1Regs.CMPA.bit.CMPA = 1000;    // Set compare A value
    EPwm2Regs.CMPA.bit.CMPA = 1000;    // Set compare A value
    EPwm3Regs.CMPA.bit.CMPA = 1000;    // Set compare A value
    // Setup counter mode
    EPwm1Regs.TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN; // Count up and down
    EPwm1Regs.TBCTL.bit.PHSEN = TB_DISABLE;        // Disable phase loading
    EPwm1Regs.TBCTL.bit.HSPCLKDIV = TB_DIV1;       // Clock ratio to SYSCLKOUT
    EPwm1Regs.TBCTL.bit.CLKDIV = TB_DIV1;
    EPwm1Regs.AQCTLA.bit.CAU = AQ_SET;            // Set PWM1A on event A, up count
    EPwm1Regs.AQCTLA.bit.CAD = AQ_CLEAR;          // Clear PWM1A on event A,
                                                  // down count

}

