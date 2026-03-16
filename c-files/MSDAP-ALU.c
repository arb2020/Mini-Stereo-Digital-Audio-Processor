#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

typedef struct {
    uint8_t sign : 1;
    uint8_t index;
} Coeff_t;

typedef struct {
    int64_t output: 40;
} Out_t;


void convolve(Coeff_t* coeffVal, uint8_t* RjVal, int16_t* inVal, Out_t* yVal, unsigned int RjSampleSize, unsigned int inSampleSize);
void writeToFile(FILE *dataOut, Out_t* yOut, unsigned int fileSizeOut);


int main(int argc, char* argv[]) {

    
    FILE *coeffFile, *RjFile, *inFile, *outFile;
    coeffFile = fopen(argv[1], "rb");
    RjFile = fopen(argv[2], "rb");
    inFile = fopen(argv[3], "rb");
    outFile = fopen(argv[4], "w");

    if(coeffFile == NULL || RjFile == NULL || inFile == NULL || outFile == NULL){
        perror("Error: File failed to open");
        exit(-1);
    }

    /*
     *Scanning files
     */

    unsigned int hf;
    Coeff_t hVal[1000];
    int i = 0;
    while(fscanf(coeffFile, "%x", &hf) != EOF) {
        hVal[i].index = (uint8_t) hf;
        hVal[i].sign = (uint8_t) (hf >> 8);
        i++;
    }   

    unsigned int coeffSampleSize = i;

    uint8_t RjVal[100];
    unsigned temp;
    i = 0;
    while(fscanf(RjFile, "%x", &temp) != EOF) {
        RjVal[i] = (uint8_t) temp;
        i++;
    }

    unsigned int RjSampleSize = i;

    int16_t inVal[1000];
    i = 0;
    while(fscanf(inFile, "%x", &inVal[i]) != EOF) {
        i++;
    }

    unsigned int inSampleSize = i;

    Out_t y[1000];

    convolve(hVal, RjVal, inVal, y, RjSampleSize, inSampleSize);
    writeToFile(outFile, y, inSampleSize);

    return 0;
}


void convolve(
    Coeff_t* coeffVal,
    uint8_t* RjVal,
    int16_t* inVal,
    Out_t* yVal,
    unsigned int RjSampleSize,
    unsigned int inSampleSize
) {
    FILE *logf = fopen("convolve_debug.log", "w");
    if (!logf) {
        perror("fopen");
        return;
    }

    int coeffArrayVal = 0;
    Out_t yTemp, xTemp;

    for (int n = 0; n < inSampleSize; n++) {
        coeffArrayVal = 0;
        yTemp.output = 0;

        fprintf(logf, "\n=== n = %d ===\n", n);

        for (int j = 0; j < RjSampleSize; j++) {
            fprintf(logf, "  j = %d  (RjVal = %d)\n", j, RjVal[j]);

            for (int m = 0; m < RjVal[j]; m++) {
                int idx = n - coeffVal[coeffArrayVal].index;

                fprintf(logf,
                        "    coeffArrayVal=%d  coeff.index=%d  coeff.sign=%d\n",
                        coeffArrayVal,
                        coeffVal[coeffArrayVal].index,
                        coeffVal[coeffArrayVal].sign);

                if (idx >= 0) {
                    xTemp.output = ((uint64_t)inVal[idx] << 16);

                    fprintf(logf,
                            "      x idx=%d  xVal=%d  xTemp=%016llx\n",
                            idx,
                            inVal[idx],
                            (unsigned long long)xTemp.output);

                    uint64_t before = yTemp.output;

                    if (coeffVal[coeffArrayVal].sign) {
                        yTemp.output = yTemp.output + ~xTemp.output + 1;
                        fprintf(logf,
                                "      SUB: before=%016llx  after=%016llx\n",
                                (unsigned long long)before,
                                (unsigned long long)yTemp.output);
                    } else {
                        yTemp.output = yTemp.output + xTemp.output;
                        fprintf(logf,
                                "      ADD: before=%016llx  after=%016llx\n",
                                (unsigned long long)before,
                                (unsigned long long)yTemp.output);
                    }
                } else {
                    fprintf(logf, "      x idx < 0 -> skipped\n");
                }

                coeffArrayVal++;
            }

            uint64_t beforeShift = yTemp.output;
            yTemp.output >>= 1;

            fprintf(logf,
                    "    SHIFT >> 1: before=%016llx  after=%016llx\n",
                    (unsigned long long)beforeShift,
                    (unsigned long long)yTemp.output);
        }

        yVal[n] = yTemp;
        fprintf(logf, "=== y[%d] = %016llx ===\n",
                n, (unsigned long long)yVal[n].output);
    }

    fclose(logf);
}

void writeToFile(FILE *dataOut, Out_t* yOut, unsigned int fileSizeOut){

    for(int i = 0; i < fileSizeOut; i++){
            fprintf(dataOut, "%010llX\n", (yOut[i].output & 0xFFFFFFFFFFULL));
    }
}
