//
//  main.c
//  prog8
//
//  Created by Mitsushige Fukumoto on 2019/11/28.
//  Copyright © 2019 AIT. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
typedef struct iris{
    double sepal_length;
    double sepal_width;
    double petal_length;
    double petal_width;
    char class[30];
}Iris;


int main(int argc, const char * argv[]) {
    FILE *fp;
    fp=fopen("iris.data","r");
    if(fp==NULL){
        printf("Cannot open the file.");
        exit(0);
    }
    char line[50];
    Iris iris;
    Iris list[150];
    double s_sepal_length=0,s_sepal_width=0,s_petal_length=0,s_petal_width=0;
    double ve_sepal_length=0,ve_sepal_width=0,ve_petal_length=0,ve_petal_width=0;
    double vi_sepal_length=0,vi_sepal_width=0,vi_petal_length=0,vi_petal_width=0;
    int s_count=0,ve_count=0,vi_count=0;
    int num=0;
    while(fgets(line, 50, fp) != NULL){
        iris.sepal_length=atof(strtok(line,",\n"));
        iris.sepal_width=atof(strtok(NULL,",\n"));
        iris.petal_length=atof(strtok(NULL,",\n"));
        iris.petal_width=atof(strtok(NULL,",\n"));
        strcpy(iris.class, strtok(NULL,",\n"));
        list[num]=iris;
        num++;
    }
    for(int i=0;i<=150;i++){
        if(strcmp(list[i].class,"Iris-setosa")==0){
            s_sepal_length+=list[i].sepal_length;
            s_sepal_width+=list[i].sepal_width;
            s_petal_length+=list[i].petal_length;
            s_petal_width+=list[i].petal_width;
            s_count++;
        }
    }
    for(int i=0;i<=150;i++){
        if(strcmp(list[i].class,"Iris-versicolor")==0){
            ve_sepal_length+=list[i].sepal_length;
            ve_sepal_width+=list[i].sepal_width;
            ve_petal_length+=list[i].petal_length;
            ve_petal_width+=list[i].petal_width;
            ve_count++;
        }
    }
    for(int i=0;i<=150;i++){
        if(strcmp(list[i].class,"Iris-virginica")==0){
            vi_sepal_length+=list[i].sepal_length;
            vi_sepal_width+=list[i].sepal_width;
            vi_petal_length+=list[i].petal_length;
            vi_petal_width+=list[i].petal_width;
            vi_count++;
        }
    }
    double sum_s1=fabs(5.7-list[0].sepal_length)+fabs(4.0-list[0].sepal_width)+fabs(1.2-list[0].petal_length)+fabs(0.2-list[0].petal_width);
    double sum_s2;
    char c[20];
    strcpy(c,list[0].class);
    for(int i=1;i<=150;i++){
        sum_s2=fabs(5.7-list[i].sepal_length)+fabs(4.0-list[i].sepal_width)+fabs(1.2-list[i].petal_length)+fabs(0.2-list[i].petal_width);
        if(sum_s1>sum_s2){
            strcpy(c,list[i].class);
            sum_s1=sum_s2;
        }
    }
    printf("5.7,4.0,1.2,0.2 :%s\n",c);
    
    sum_s1=fabs(5.9-list[0].sepal_length)+fabs(2.9-list[0].sepal_width)+fabs(4.2-list[0].petal_length)+fabs(1.5-list[0].petal_width);
    strcpy(c,list[0].class);
    for(int i=1;i<=150;i++){
        sum_s2=fabs(5.9-list[i].sepal_length)+fabs(2.9-list[i].sepal_width)+fabs(4.2-list[i].petal_length)+fabs(1.5-list[i].petal_width);
        if(sum_s1>sum_s2){
            strcpy(c,list[i].class);
            sum_s1=sum_s2;
        }
    }
    printf("5.9,2.9,4.2,1.5 :%s\n",c);
    
    sum_s1=fabs(5.6-list[0].sepal_length)+fabs(2.8-list[0].sepal_width)+fabs(4.8-list[0].petal_length)+fabs(2.0-list[0].petal_width);
    strcpy(c,list[0].class);
    for(int i=1;i<=150;i++){
        sum_s2=fabs(5.6-list[i].sepal_length)+fabs(2.8-list[i].sepal_width)+fabs(4.8-list[i].petal_length)+fabs(2.0-list[i].petal_width);
        if(sum_s1>sum_s2){
            strcpy(c,list[i].class);
            sum_s1=sum_s2;
        }
    }
    printf("5.6,2.8,4.8,2.0 :%s\n",c);

    fclose(fp);
    return 0;
}
