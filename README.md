# Classification-of-Diabetic-Retinopathy-using-Deep-Learning-Architecture

Diabetic individuals experience ophthalmological distress known as diabetic 
retinopathy as a result of blood clots, lesions, or hemorrhage development in the 
retina's light-sensitive area. As blood sugar levels rise, blocked blood arteries 
cause new blood vessels to develop, giving rise to mesh-like structures. 
Ophthalmologists must evaluate the branching retinal vasculature in order to 
provide an accurate diagnosis.

Pre-processing is applied to the fundus scans of the eye before segmentation. 
The approach of maximal primary curvature, which makes use of the Hessian 
matrix's maximum Eigenvalues, has been used to extract the branching blood 
veins. Then, morphological opening and adaptive histogram equalization are 
carried out to improve and remove incorrectly segmented sections. When 
compared to healthy people, diabetes or afflicted patients showed a substantially 
larger proliferation of optical nerves. 

The CNN is built for classification and has a convolution and pooling layer 
architecture for classification between the two classes. When DIARETDB1 
dataset is used the model is expected to exhibit an accuracy of 98.7%.
