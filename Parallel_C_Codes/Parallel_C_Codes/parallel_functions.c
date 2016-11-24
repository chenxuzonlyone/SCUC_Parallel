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


/*Cline_data_read*/
/*The reading sequence is row by row.
So, when output data, please use the same order.*/
int Data_Read( FILE * fstream, int row, int col, double* info)
{
    FILE * fstream_inside = fstream;
    char buffer[BUFFER_MAX];
    char *record, *line;
    int i = 0, j = 0;
    float test_char;
    
    if (fstream_inside == NULL)   {
        printf("\n file opening failed\n");
        return -1;
    }
    
    while ((line = fgets(buffer, sizeof(buffer), fstream_inside)) != NULL)
    {
        record = strtok(line, ",");
        
        // this will eliminate the first line when it is the label of each column
        test_char =  atof(record);
        
        if (test_char != 0.0) {
        
        j = 0;
        while (record != NULL)
        {
            info[j + i*col] = atof(record);
            ++j;
            record = strtok(NULL, ",");
        }
        ++i;
    }
    
    }
    printf("\n");
    rewind(fstream_inside);
    return 0;
}


/*Data read correctiveness testing*/
int Data_Read_Corrective_Test(FILE *outputfile, int row, int col, double *testing_array)
{
    outputfile = fopen("test.txt", "w");
    for (int i = 0; i < row; i++) {
        for (int j = 0; j < col; j++) {
            fprintf(outputfile, "%f\t", testing_array[j+col*i]);
        }
        fprintf(outputfile, "\n");
    }
    
    fclose(outputfile);
    return 0;
}
