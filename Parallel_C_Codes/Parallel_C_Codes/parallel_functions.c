//
//  parallel_functions.c
//  Parallel_C_Codes
//
//  Created by zhangcaihua on 11/21/16.
//  Copyright © 2016 zhangcaihua. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include "parallel_functions.h"
#include <math.h>

int file_size(FILE * fstream, int *row, int *col)
{
    FILE * fstream_inside = fstream;
    char buffer[BUFFER_MAX];
    char *record, *line;
    int i = 0, j = 0;
    float test_char;
    
    if (fstream_inside == NULL)   {
        printf("\n file opening failed \n");
        return -1;
    }
    while ((line = fgets(buffer, sizeof(buffer), fstream_inside)) != NULL)
    {
        record = strtok(line, ",");
        
        // this will eliminate the first line when it is the label of each column
        test_char =  atof(record);
        if (test_char == 0.0) {
            i--;
        }
        
        // this will record the row and col number
        while (record != NULL && i == 0)
        {
            j++;
            record = strtok(NULL, ",");
        }
        
        i++;
    }
    // this will change variables' value in calling function
    *row = i;
    *col = j;
    
    rewind(fstream_inside);
    return 0;
}
