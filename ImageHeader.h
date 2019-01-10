//
// Created by becky on 25/12/2018.
//

#ifndef TEMPMNIST_IMAGEHEADER_H
#define TEMPMNIST_IMAGEHEADER_H


class ImageHeader {
    public:
        /// magic number
        int magicNumber;
        // number of images
        int maxImages;
        // number of columns
        int imgWidth;
        // number of rows
        int imgHeight;
};


#endif //TEMPMNIST_IMAGEHEADER_H
