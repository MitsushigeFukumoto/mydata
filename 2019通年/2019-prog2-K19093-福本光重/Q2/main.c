//
//  main.c
//  Q2
//
//  Created by Mitsushige Fukumoto on 2020/01/23.
//  Copyright © 2020 AIT. All rights reserved.
//


#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct trial{
    int speed;
    int distance;
}Trial;

void dispTrial(Trial trial){
    printf("%d %d\n",trial.speed,trial.distance);
}

int main(int argc, const char * argv[]) {
    FILE *fp;
    fp=fopen("./cars.csv","r");
    if(fp==NULL){
        printf("Cannot open the file.");
        exit(0);
    }
    char line[]="10,18\n";
    Trial trial;
    trial.speed=atoi(strtok(line,",\n"));
    trial.distance=atoi(strtok(NULL,",\n"));
    dispTrial(trial);
    return 0;
}
