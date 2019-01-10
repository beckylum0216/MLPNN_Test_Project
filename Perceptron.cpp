//
// Created by becky on 23/12/2018.
//

#include <cstdlib>
#include <GL/freeglut.h>
#include <iostream>
#include "Perceptron.h"
#include "ImageHeader.h"
#include "BooleanArithmetic.h"

Perceptron::Perceptron()
{
    layerOne = new Layer();
    layerSize = 1;
    imgLbl = new GLdouble();
}

Perceptron::Perceptron(ImageHeader imgHdr, LabelHeader lblHdr, int layerSize, int neuronSize)
{
    std::cout << "num of images: " << imgHdr.maxImages << std::endl;
    layerOne = new Layer[layerSize];
    for(int ii = 0; ii < layerSize; ii += 1)
    {
        layerOne[ii].ResizeLayer(imgHdr, lblHdr, neuronSize);
    }
    imgLbl = new GLdouble[lblHdr.maxLabels]();
}

Perceptron::~Perceptron()
{
    std::cout << "deleting perceptron... " << std::endl;
    delete[] layerOne;
    delete[] imgLbl;
}

Layer * Perceptron::GetLayer()
{
    return layerOne;
}



void Perceptron::InitLayer(ImageHeader imgHdr, LabelHeader lblHdr, int inputSize)
{
    std::cout << "Running initialisation..." << std::endl;

    for(int hh = 0; hh < 2; hh += 1)
    {
        for(int ii = 0; ii < inputSize; ii += 1)
        {
            std::cout << "Initialising layer: " << ii << std::endl;
            for(int jj = 0; jj < imgHdr.imgWidth; jj += 1)
            {
                for(int kk = 0; kk < imgHdr.imgHeight; kk += 1)
                {
                    layerOne[hh].GetNeurons()[ii].inputArr[jj][kk] = 0.00;
                    layerOne[hh].GetNeurons()[ii].weightOne[jj][kk] = std::rand()%imgHdr.maxImages/(double)(imgHdr.maxImages);
                    layerOne[hh].GetNeurons()[ii].weightTwo[jj][kk] = std::rand()%imgHdr.maxImages/(double)(imgHdr.maxImages);
                }
            }

            layerOne[hh].GetNeurons()[ii].bias = 0.00;
            layerOne[hh].GetNeurons()[ii].output = 0.00;
        }
    }


    for(int aa = 0; aa < lblHdr.maxLabels; aa += 1)
    {
        imgLbl[aa] = 0.00;
    }

    std::cout << "Finished running initialisation..." << std::endl;
}

void Perceptron::ResizePerceptron(ImageHeader imgHdr, LabelHeader lblHdr, int inputSize)
{
    std::cout << "Running Resize perceptron..." << std::endl;
    for(int ii = 0; ii < inputSize; ii += 1)
    {
        layerOne[ii].ResizeLayer(imgHdr, lblHdr, 10);
    }


    std::cout << "Finished resizing perceptron..." << std::endl;
}

GLdouble  Perceptron::SigmoidFunction(GLdouble targetInput)
{
    GLdouble  tempResult;

    tempResult = 1 / 1 + std::exp(targetInput);

    return tempResult;
}


// reading the pictures as black or white
void Perceptron::SetLayer(GLdouble** imgInput, ImageHeader imgHdr, int inputSize)
{


    for(int ii = 0; ii < inputSize; ii += 1)
    {
        for(int jj = 0; jj < imgHdr.imgWidth; jj += 1)
        {
            for(int kk = 0; kk < imgHdr.imgHeight; kk += 1)
            {
                if(imgInput[jj][kk] == 0)
                {
                    layerOne->GetNeurons()[ii].inputArr[jj][kk] = 0;
                } else
                {
                    layerOne->GetNeurons()[ii].inputArr[jj][kk] = 1;
                }

            }
        }

    }
}

void Perceptron::SetLabel(GLdouble *lblInput, LabelHeader lblHdr)
{
    for(int ii = 0; ii < lblHdr.maxLabels; ii += 1)
    {
        imgLbl[ii] = lblInput[ii];
    }
}

void Perceptron::CalculateOutput(ImageHeader imgHdr, int inputSize)
{
    BooleanArithmetic ba;

    for(int ii = 0; ii < inputSize; ii += 1)
    {
        for(int jj = 0; jj < imgHdr.imgWidth; jj += 1)
        {
            for(int kk = 0; kk < imgHdr.imgHeight; kk +=1)
            {
                GLdouble gateOR;
                GLdouble tempNAND;
                GLdouble gateNAND;
                GLdouble gateXOR;
                GLdouble tempOutput;

                gateOR += layerOne->GetNeurons()[ii].weightOne[jj][kk] + layerOne->GetNeurons()[ii].weightTwo[jj][kk];
                tempNAND = ba.DotMultiply(imgHdr, layerOne->GetNeurons()[ii].weightOne, layerOne->GetNeurons()[ii].weightTwo);
                if(tempNAND < 0.50)
                {
                    gateNAND += tempNAND;
                }
                gateXOR = gateOR * gateNAND;
                tempOutput = 1 + layerOne->GetNeurons()[ii].inputArr[jj][kk] * gateXOR;
                layerOne->GetNeurons()[ii].output = SigmoidFunction(tempOutput);
                //std::cout << "layer output: " << layerOne->GetNeurons()[ii].output << std::endl;
            }
        }
    }

    for(int aa = 0; aa < inputSize; aa += 1)
    {
        layerOne->GetNeurons()[aa].output /= imgHdr.maxImages;
    }

}

// calculate the std error
GLdouble Perceptron::CalculateError(ImageHeader imgHdr, int targetNeuron)
{
    GLdouble  tempError;

    tempError = targetNeuron - layerOne->GetNeurons()[targetNeuron].output;

    return tempError;
}

void Perceptron::UpdateNeuronWeights(ImageHeader imgHdr, int targetNeuron, GLdouble stdError, GLdouble learningRate)
{
    for(int ii = 0; ii < imgHdr.imgWidth; ii += 1)
    {
        for(int jj = 0; jj < imgHdr.imgHeight; jj += 1)
        {
            layerOne->GetNeurons()[targetNeuron].weightOne[ii][jj] += learningRate * layerOne->GetNeurons()[targetNeuron].inputArr[ii][jj] * stdError;
        }
    }
}

std::vector <GLdouble> Perceptron::SetTargetOutput(int targetIndex, int outputSize)
{
    std::vector <GLdouble> outputVector;

    for(int ii = 0 ; ii < outputSize; ii += 1)
    {
        if(targetIndex == ii)
        {
            outputVector.push_back(1);
        }
        else
        {
            outputVector.push_back(0);
        }
    }

    return outputVector;
}

int Perceptron::GetLayerPrediction(int outputSize)
{
    GLdouble maxOutput = 0.00;
    int layerPrediction = 0;

    for (int ii = 0; ii < outputSize; ii += 1)
    {
        if(layerOne->GetNeurons()[ii].output > maxOutput)
        {
            maxOutput = layerOne->GetNeurons()[ii].output;
            layerPrediction = ii;
        }
    }

    return layerPrediction;
}