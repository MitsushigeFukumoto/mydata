//
//  main.cpp
//  templateMatching4student
//
//  Created by sawano on 2018/07/03.
//  Copyright © 2018年 AIT. All rights reserved.
//


#include <iostream>
#include <opencv2/opencv.hpp>

//----------------------------
//マクロ

//全体の画像 (探索対象画像) のファイル名
#define TARGET_IMG_FILE "bg.jpg"

//テンプレート画像
#define TEMPLATE_IMG_FILE "face.jpg"
//結果画像
#define RESULT_IMG_FILE "result.jpg"


//ウィンドウの名前
//探索対象
#define TARGET_IMG_WINDOW "target"
//テンプレート
#define TEMPLATE_IMG_WINDOW "template"


//----------------------------

int main(int argc, const char * argv[]) {
    
    double min_val, max_val;    //最小値，最大値
    cv::Point min_loc, max_loc; //最小値の位置，最大値の位置
    //全体画像，テンプレート画像，類似度マップ
    cv::Mat target_img, template_img, compare_img;
    
    //カラーで取得
    target_img = cv::imread(TARGET_IMG_FILE); //全体画像
    template_img = cv::imread(TEMPLATE_IMG_FILE); //テンプレート画像
    if (target_img.empty() || template_img.empty()) { //入力失敗の場合
        fprintf(stderr, "File is not opened.\n");
        return (-1);
    }
    
    //テンプレートマッチング前に表示
    cv::imshow(TARGET_IMG_WINDOW, target_img);
    cv::waitKey();
    
    //テンプレートマッチング

    //類似度マップから次の値の取得．最小値，最大値，最小値の位置，最大値の位置

    //長方形の表示

    cv::imshow(TARGET_IMG_WINDOW, target_img);
    cv::waitKey();
    
    //画像の保存
    cv::imwrite(RESULT_IMG_FILE, target_img);
    
    
    return 0;
}
