//
//  main.c
//  exercise
//
//  Created by Mitsushige Fukumoto on 2019/12/10.
//  Copyright © 2019 AIT. All rights reserved.
//
//
//  main.c
//  prog3
//
//  Created by Mitsushige Fukumoto on 2019/12/05.
//  Copyright © 2019 AIT. All rights reserved.
//

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
typedef struct eq{
    int year;
    int month;
    int day;
    double ido;
    double keido;
    int sindo;
}Eq;

/*int comp( const void *c1, const void *c2 ){
  Eq test1 = *(Eq *)c1;
  Eq test2 = *(Eq *)c2;

  int tmp1 = test1.ido;
  int tmp2 = test2.ido;

  return tmp1 - tmp2;
}*/

void print(Eq eq){
    printf("%f %f %d %d %d %d\n",eq.ido,eq.keido,eq.year,eq.month,eq.day,eq.sindo);
    }

int main(int argc, const char * argv[]) {
    FILE *fp;
    fp=fopen("h2011_eq.csv","r");
    if(fp==NULL){
        printf("Cannot open the file.");
        exit(0);
    }
    char line[1000];
    Eq eq;
    Eq list[10624];
    int num=0;
    while(fgets(line, 10624, fp) != NULL){
        eq.year=atoi(strtok(line,",\n"));
        eq.month=atoi(strtok(NULL,",\n"));
        eq.day=atoi(strtok(NULL,",\n"));
        eq.ido=atof(strtok(NULL,",\n"));
        eq.keido=atof(strtok(NULL,",\n"));
        eq.sindo=atoi(strtok(NULL,",\n"));
        list[num]=eq;
        num++;
    }
    //qsort( list, 10624, sizeof(Eq), comp );
    /*double tmp;
    for(int i=10624;i>0;i--){
        for(int j=0;j<i;j++){
            if(list[j].ido>list[j+1].ido){
                tmp=list[j].ido;
                list[j].ido=list[j+1].ido;
                list[j+1].ido=tmp;
            }
        }
    }*/
    for(int i=0;i<=10624;i++){
        print(list[i]);
    }
    fclose(fp);
    return 0;
}

