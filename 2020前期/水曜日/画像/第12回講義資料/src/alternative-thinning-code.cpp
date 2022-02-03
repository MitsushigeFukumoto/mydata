
// ximgprocが使えない場合の関数
// main関数より前に追記する

void thinningFunc (const cv::Mat route_img, cv::Mat &dst_img, const int pattern) {
    dst_img = route_img.clone();
    
    for (int y=1; y<route_img.rows-1; y++) {
        for (int x=1; x<route_img.cols-1; x++) {
            unsigned char v9, v2, v3;
            unsigned char v8, v1, v4;
            unsigned char v7, v6, v5;

            v1 = route_img.at<unsigned char>(y  , x  ) / 255;
            v2 = route_img.at<unsigned char>(y-1, x  ) / 255;
            v3 = route_img.at<unsigned char>(y-1, x+1) / 255;
            v4 = route_img.at<unsigned char>(y  , x+1) / 255;
            v5 = route_img.at<unsigned char>(y+1, x+1) / 255;
            v6 = route_img.at<unsigned char>(y+1, x  ) / 255;
            v7 = route_img.at<unsigned char>(y+1, x-1) / 255;
            v8 = route_img.at<unsigned char>(y  , x-1) / 255;
            v9 = route_img.at<unsigned char>(y-1, x-1) / 255;
            
            //条件1
            if (v1 != 1) {
                continue;
            }
            
            //個数を数える
            unsigned char n = v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9;
            //条件2
            if (!(2<=n && n<=6)) { //2<=n<=6を満たさない場合
                continue;
            }
            
            unsigned char count = 0;
            if (v2==0 && v3 == 1) count++;
            if (v3==0 && v4 == 1) count++;
            if (v4==0 && v5 == 1) count++;
            if (v5==0 && v6 == 1) count++;
            if (v6==0 && v7 == 1) count++;
            if (v7==0 && v8 == 1) count++;
            if (v8==0 && v9 == 1) count++;
            if (v9==0 && v2 == 1) count++;
            //条件3
            if (count != 1) { //countが1以外
                continue;
            }
            
            int m1=0, m2=0;
            if (pattern == 0) {
                m1 = v2 * v4 * v6;
                m2 = v4 * v6 * v8;
            }else{ //pattern == 1
                m1 = v2 * v4 * v8;
                m2 = v2 * v6 * v8;
            }
            
            //条件4
            if (!((m1==0) && (m2==0))) { //m1==0 && m2==0でない場合
                continue;
            }
            
            dst_img.at<unsigned char>(y, x) = 0;
        }
    }
}

void zhangSuenThining (const cv::Mat src_img, cv::Mat &dst_img) {
    cv::Mat prev_img, tmp_img, diff_img;
    dst_img = src_img.clone();
    prev_img = cv::Mat::zeros(src_img.size(), CV_8UC1);
    while (1) {
        thinningFunc(dst_img, tmp_img, 0);
        thinningFunc(tmp_img, dst_img, 1);
        cv::absdiff(dst_img, prev_img, diff_img);
        dst_img.copyTo(prev_img);
        
        if (cv::countNonZero(diff_img) == 0) break;
    }
}
// ximgprocが使えない場合の関数 終了

// 使い方：cv::ximgproc::thinning の代わりに
//  zhangSuenThining(src_img, thin_img);
