import cv2

BLURRY_THRESHOLD = 90 # 値が低いほど少しのボケでも検出する

img = cv2.imread('uchitane_far.png')

x, y , channel = img.shape

print(f"x={x}, y={y}")

div=10
for i in range(div):
    for j in range(div):
        # 部分画像を取り出す
        part_img = img[(int)(x/div*i):(int)(x/div*(i+1)), (int)(y/div*j):(int)(y/div*(j+1))]
        # 部分画像についてボケを計算
        part_gray_img = cv2.cvtColor(part_img, cv2.COLOR_BGR2GRAY)
        blurry = cv2.Laplacian(part_gray_img, cv2.CV_64F).var()
        #cv2.putText(img, f"({i},{j})", (10+(int)(y/div*j), 20+(int)(x/div*i)),
        #    cv2.FONT_HERSHEY_SIMPLEX, 0.8, (0, 0, 255), 3)
        green = (0, 255, 0)
        red = (0, 0, 255)
        if blurry < BLURRY_THRESHOLD:
            text_color = red
        else:
            text_color = green
        cv2.putText(img, f"({blurry:0.2f})", (10+(int)(y/div*j), 20+(int)(x/div*i)),
            cv2.FONT_HERSHEY_SIMPLEX, 0.8, text_color, 3)

cv2.imshow("frame", img)

cv2.waitKey(0)
cv2.destroyAllWindows()