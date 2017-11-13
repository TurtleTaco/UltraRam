#include <stdio.h>
#include <stdint.h>
#include <time.h>
#include <stdlib.h>
#include "ap_int.h"

typedef union resType{
	int64_t varIn;
	int8_t padding[9];

}resType;

int64_t sum_io() {
	int64_t sum = 0;
	int array_size = 20000;

//	does not need to be exactly 72 bits in width
//	resType array_one[array_size];
//	resType array_two[array_size];
	int array_one[array_size];
	int array_two[array_size];

#pragma HLS resource variable=array_one core=XPM_MEMORY uram
#pragma HLS resource variable=array_two core=XPM_MEMORY uram

	int i = 0;

	for (i = 0; i < 20000; i++){
//		array_one[i].varIn = 5;
//		array_two[i].varIn = 23;
		array_one[i] = 5;
		array_two[i] = 23;
	}

	int iterator = 0;

	for (iterator = 0; iterator < 20000; iterator++){
//		sum = array_one[iterator].varIn + array_two[iterator].varIn;
		sum = array_one[iterator] + array_two[iterator];
		sum = sum * 0.01;
	}

	return sum;
}


