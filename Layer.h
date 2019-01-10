//
// Created by becky on 24/12/2018.
//

#ifndef DEEPLENS_RL_33111264_LAYER_H
#define DEEPLENS_RL_33111264_LAYER_H


#include "Neuron.h"
#include "ImageHeader.h"
#include "LabelHeader.h"

class Layer {
    public:
        Layer();
        Layer(const Layer &rhsLayer);
        Layer(ImageHeader imgHdr, LabelHeader lblHdr, int neuronSize);
        ~Layer();
        Layer & operator= (Layer rhsVar);
        /**
        *	@brief getter for Neurons
        *	@param
        *	@return neuron
        *	@pre
        *	@post
        */
        Neuron * GetNeurons();

        /**
        *	@brief resizes neurons
        *	@param
        *	@return quarternion conjugate
        *	@pre
        *	@post
        */
        void ResizeLayer(ImageHeader imgHdr, LabelHeader lblHdr, int inputSize);



    private:
        Neuron * theLayer;
        int layerSize;
        void Swap(Layer &rhsVar);

};


#endif //DEEPLENS_RL_33111264_LAYER_H
