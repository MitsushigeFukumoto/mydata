//
//  main.c
//  Q1
//
//  Created by Mitsushige Fukumoto on 2020/01/23.
//  Copyright © 2020 AIT. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, const char * argv[]) {
    FILE *fp;
    fp=fopen("./cars.csv","r");
    if(fp==NULL){
        printf("Cannot open the file.");
        exit(0);
    }
    char line[20];
    int speed;
    int distance;
    while(fgets(line, 20, fp) != NULL){
        speed=atoi(strtok(line,",\n"));
        distance=atoi(strtok(NULL,",\n"));
        printf("%d %d\n",speed,distance);
    }
    return 0;
}
