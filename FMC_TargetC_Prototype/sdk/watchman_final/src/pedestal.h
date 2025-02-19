/**
 * @file 	pedestal.h
 * @author	Anthony Schluchin
 * @date	18th December 2018
 * @version 0.0
 */

#ifndef SRC_PEDESTAL_H_
#define SRC_PEDESTAL_H_

#include "data_analysis.h"
#include "axis_peripheral.h"
#include "xil_types.h"
#include "xstatus.h"
#include "TARGETC_RegisterMap.h"
#include "file_hm.h"
#include "xscuwdt.h"

/*** Function prototypes *********************************************/
int init_pedestals(void);
int get_pedestal(int avg, int nmbrofWindows);
int get_windowsRaw(int startWindow, int nmbrofWindows);
int get_15_windows_fct(void);



#endif /* SRC_PEDESTAL_H_ */
