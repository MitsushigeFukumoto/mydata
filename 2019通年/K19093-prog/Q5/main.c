//
//  main.c
//  Q5
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
int estimate2x(int speed){//推定距離
    return speed*2;
}
int error(int correct,int estimate){
    return correct-estimate;
}
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
    char line[256];
    Trial trial;
    Trial list[50];
    int num=0;
    while(fgets(line, 256, fp) != NULL){
        trial.speed=atoi(strtok(line,","));
        trial.distance=atoi(strtok(NULL,","));
        list[num]=trial;
        num++;
    }
    //int suitei=0;
    //int gosa=0;
    for(int i=0;i<=num-1;i++){
        //suitei=list[i].speed * 2;
        //gosa=list[i].distance - suitei;
        
        Trial t=list[i];
        int est=estimate2x(t.speed);
        int er=error(t.distance, est);
        printf("誤差：%d\n",er);
    }
    return 0;
}
