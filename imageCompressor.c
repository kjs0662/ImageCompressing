#include "imageCompressor.h"
#include "highgui.h"
#include "cv.h"


char* compressedImage(char* data, int width, int height) {

    // Get RGBA Image Data
    IplImage *newImg = cvCreateImage(cvSize(width, height), IPL_DEPTH_8U, 4);
    memcpy(newImg->imageData, data, sizeof(char)*4*width*height);

    // RGBA -> BGR
    IplImage *newImg2 = cvCreateImage(cvSize(width, height), IPL_DEPTH_8U, 3);
    cvCvtColor(newImg, newImg2, CV_RGBA2BGR);

    int param[3];
    param[0] = CV_IMWRITE_JPEG_QUALITY;
    param[1] = 80;
    
    CvMat *jpegImage = cvEncodeImage(".jpg", newImg2, param);
    IplImage *compressedImg = cvDecodeImage(jpegImage, 1);

    // BGR -> RGBA
    IplImage *newImg3 = cvCreateImage(cvSize(width, height), IPL_DEPTH_8U, 4);
    cvCvtColor(compressedImg, newImg3, CV_BGR2RGBA);

    return newImg3->imageData;
}
