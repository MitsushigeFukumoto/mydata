//
//  main.c
//  Q7
//
//  Created by Mitsushige Fukumoto on 2020/01/23.
//  Copyright © 2020 AIT. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
typedef struct trial{
    int speed;
    int distance;
}Trial;
int estimate2x(int speed,double a){//推定距離
    return speed*a;
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
    //int sum_speed=0;
    //int sum_suitei=0;
    double denom=0;//分母
    double numer=0;//分子
    for(int i=0;i<=num-1;i++){
        //sum_suitei+=list[i].speed * list[i].distance;
        //sum_speed+=list[i].speed * list[i].speed;
        
        Trial t=list[i];
        denom+=t.speed*t.speed;
        numer+=t.speed*t.distance;
    }
    //int a=sum_suitei/sum_speed;
    double a=numer/denom;
    printf("a:%f\n",a);
    
    //int suitei=0;
    //int gosa=0;
    //double s_suitei=0;
    
    double sum=0;
    for(int i=0;i<=num-1;i++){
        //suitei=list[i].speed * a;
        //gosa=list[i].distance - suitei;
        //s_suitei+=gosa * gosa;
        
        Trial t=list[i];
        int est=estimate2x(t.speed,a);
        int er=error(t.distance, est);
        sum+=er * er;
    }
    //s_suitei/=(num-1);
    //double mse=sqrt(s_suitei);
    double mse=sum/num;
    printf("MSE:%f\n",mse);
    return 0;
}
