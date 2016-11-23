//
//  parallel_functions.h
//  Parallel_C_Codes
//
//  Created by zhangcaihua on 11/21/16.
//  Copyright © 2016 zhangcaihua. All rights reserved.
//

#ifndef parallel_functions_h
#define parallel_functions_h

#include <stdio.h>
#define BUFFER_MAX 1024



/*Structure Definication*/
typedef struct GenCorrectiveDispatchLimitData{
    int *Gen_BusNum;
    double *Gen_Pmax;
    double *Gen_Pmin;
    double *Gen_RampUp;
    double *Gen_RampDown;
    double *Gen_CorrectiveDispatchLimit;
} GenCorrectiveDispatchLimitData_54Unit;

typedef struct GenData{
    int *Gen_BusNum;
    double *Gen_PriceA;
    double *Gen_PriceB;
    double *Gen_PriceC;
    double *Gen_Pmax;
    double *Gen_Pmin;
    int *Gen_InitialOn;
    int *Gen_MinOn;
    int *Gen_MinOff;
    double *Gen_RampUp;
    double *Gen_RampDown;
    double *Gen_StartUp;
    double *Gen_ShutDown;
    double *Gen_FuelPrice;
} GenData_54Unit_IEEE118;

typedef struct LineData{
    int *Line_Num;
    int *Line_FromBus;
    int *Line_ToBus;
    double *Line_Impedance;
    double *Line_PowerLimit;
    } LineData_186Branch_IEEE118;

typedef struct LoadFactiorData{
    int *LoadFactor_BusNum;
    double *LoadFactor_LoadDistribution;
    double *LoadFactor_LoadFactor;
} LoadFactor_91Side_IEEE118;

typedef struct LoadForecastData{
    double *LoadForecast_CorrectionLoad;
    double *LoadForecast_LoadIEEE;
    double *LoadForecast_LoadPJM;
} LoadForecastData_24Hour_IEEE118;

typedef struct ShiftFactorData{
    double *SF;
} SFData_186Branch118Bus_IEEE118;

typedef struct SR_MSR_Data{
    int *SR_MSR_BusNum;
    double *SR_MSR_CostCoefficient;
    double *SR_MSR_MaxSustainedRate;
} SRandMSRData_54Unit_forIEEE118;

typedef struct SRT_Data{
    double *SRT_SpiningResreve;
} SRTData_24Hour_forIEEE118;


/*Function Prototypes*/
int file_size(FILE * fstream, int *row, int *col);
#endif /* parallel_functions_h */
