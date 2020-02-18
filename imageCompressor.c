#include "imageCompressor.h"
#include "highgui.h"
#include "cv.h"
#include <jni.h>
#include <com_jinseonkim_photocloud_imageService_ImageCompressing.h>

JNIEXPORT jbyteArray JNICALL Java_com_jinseonkim_photocloud_imageService_ImageCompressing_compressedImage
        (JNIEnv * env, jobject obj, jbyteArray data, jint width, jint height) {
    IplImage *newImg = cvCreateImage(cvSize(width, height), IPL_DEPTH_8U, 3);
    size_t len = sizeof(char)*3*width*height;
    jbyte *bytes =(*env)->GetByteArrayElements(env, data, 0);
    char *imageData = malloc(len);
    memcpy(imageData, bytes, len);
    memcpy(newImg->imageData, imageData, len);
    (*env)->ReleaseByteArrayElements(env, data, bytes, JNI_ABORT);
    free(imageData);

    int param[3];
    param[0] = CV_IMWRITE_JPEG_QUALITY;
    param[1] = 80;

    CvMat *jpegImage = cvEncodeImage(".jpg", newImg, param);
    IplImage *compressedImg = cvDecodeImage(jpegImage, 1);

    jbyteArray array;
    array = (*env)->NewByteArray(env, len);
    (*env)->SetByteArrayRegion(env, array, 0, len, (jbyte*)compressedImg->imageData);

    return array;
}

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
