//
//  main.c
//  Parallel_C_Codes
//
//  Created by zhangcaihua on 11/21/16.
//  Copyright © 2016 zhangcaihua. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "parallel_functions.h"


int main(int argc, const char * argv[]) {
    
    
    int row_GenCorrective, col_GenCorrective;
    FILE *f_GenCorrective_stream = fopen("/Users/zhangcaihua/Desktop/Parallel_Codes_Collaboration/Data_CSV/GenCorrectiveDispatchLimitData_54Unit.csv", "r");
    file_size(f_GenCorrective_stream, &row_GenCorrective, &col_GenCorrective);// get rows and cols from file
    //printf("row=%d\t col=%d\t\n",row_cline,col_cline);
    
    double *GenCorrectiveDispatchLimitData_54Unit_data;
    GenCorrectiveDispatchLimitData_54Unit_data = calloc(row_GenCorrective*col_GenCorrective, sizeof(double));
    Data_Read( f_GenCorrective_stream, row_GenCorrective, col_GenCorrective, GenCorrectiveDispatchLimitData_54Unit_data);
    
    
    //Data read correctiveness testing
    Data_Read_Corrective_Test(f_GenCorrective_stream, row_GenCorrective, col_GenCorrective, GenCorrectiveDispatchLimitData_54Unit_data		);
    
    
    
    fclose(f_GenCorrective_stream);
    free(GenCorrectiveDispatchLimitData_54Unit_data);
    
    return 0;
}
