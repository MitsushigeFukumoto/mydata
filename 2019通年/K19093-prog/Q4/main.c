//
//  main.c
//  Q4
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
    char line[1000];
    Trial trial;
    Trial list[50];
    int num=0;
    while(fgets(line, 51, fp) != NULL){
        trial.speed=atoi(strtok(line,","));
        trial.distance=atoi(strtok(NULL,","));
        list[num]=trial;
        num++;
    }
    int min_speed=list[0].speed;
    int max_speed=list[0].speed;
    int min_distance=list[0].distance;
    int max_distance=list[0].distance;
    for(int i=0;i<=num-1;i++){
        if(list[i].speed < min_speed){
            min_speed=list[i].speed;
        }if(list[i].speed > max_speed){
            max_speed=list[i].speed;
        }if(list[i].distance < min_distance){
            min_distance=list[i].distance;
        }if(list[i].distance > max_distance){
            max_distance=list[i].distance;
        }
    }
    printf("min_speed:%d\nmax_speed:%d\nmin_distance:%d\nmax_distnce:%d\n",min_speed,max_speed,min_distance,max_distance);
    return 0;
}
