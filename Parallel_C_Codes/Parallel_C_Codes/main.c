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
    
    
    int row_cline, col_cline;
    FILE *f_cline_stream = fopen("/Users/zhangcaihua/Desktop/Parallel_Codes_Collaboration/Data_CSV/LineData_186Branch_IEEE118.csv", "r");
    file_size(f_cline_stream, &row_cline, &col_cline);// get rows and cols from file
    printf("row=%d\t col=%d\t\n",row_cline,col_cline);
    
    
    
    return 0;
}
