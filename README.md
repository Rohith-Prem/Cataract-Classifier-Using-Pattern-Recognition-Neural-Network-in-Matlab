# Cataract-Classifier-Using-Pattern-Recognition-Neural-Network-in-Matlab
Employing the pattern recognition neural network in Matlab to classify color images of retinal fundus into various categories of cataract.

The dataset images are preprocessed to extract the features necessary to train the neural network. The images are first converted to green channel to obtain maximum contrast between details. These images then undergo Top-Bottom Hat Transformation followed by contrast correction and filtering to obtain optimum images for feature extraction. Four features namely Contrast, Correlation, Homogeinity and Energy are extracted from the gray level co-occurence matrix of each image. A total of 51 images were processed for feature extraction and training. These features were used to train a back propagation neural network with 10 hidden neurons using the NPR tool box in Matlab.The confusion matrix and ROC characteristics were plotted to analyze the efficiency of the trained neural network. This neural network was finally incorporated into a graphical user interface using GUIDE toolbox of Matlab. The application is able to classify degree of cataract into three catagories namely Mild, Medium, and Severe.
PS: all files are matlab code
Description of files:
prefeat - code for pre processing of images and feature extraction.
dataset - contains the matrix of extracted features and target matrix for training the neural network.
trainer - code for training a neural network with the given dataset.
retinalCataractClassifier - the trained neural network implemented as a Matlab function.
tester - code to test the classifier.
gui.fig - Matlab GUIDE figure code(front end).
gui.m - Backend code for the gui.

