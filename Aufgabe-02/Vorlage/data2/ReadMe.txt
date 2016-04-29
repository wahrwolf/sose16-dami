Data Mining, Tutorial 2

TASK 2

The data in the BrainIQ.mat contains 9 variables arranged in columns. They were derived from
neurological experiments with monozygotic twins using MRI (Magnetic Resonance Imaging).

Variable Names in order from left to right: 
	
1)	CCMIDSA: Corpus Callosum Surface Area (cm2)
	
2)	FIQ: Full-Scale IQ

3)	HC: Head Circumference (cm)

4)	ORDER: Birth Order
	
5)	PAIR: Pair ID (Genotype)
	
6)	SEX: Sex (1=Male 2=Female)
	
7)	TOTSA: Total Surface Area (cm2)
	
8)	TOTVOL: Total Brain Volume (cm3)
	
9)	WEIGHT: Body Weight (kg)

Reference:
Tramo MJ, Loftus WC, Green RL, Stukel TA, Weaver JB, Gazzaniga MS.  Brain Size, Head Size, and IQ in Monozygotic Twins.  Neurology  1998; 50:1246-1252.

TASK 3:

fitness.mat: Contains values of a small study concerning the fitness of people of different ages and body fat 

column 1: age of the participants

column 2: body fat in %

TASK 4:

'Eigenface' Face Recognition System
Written by: Amir Hossein Omidvarnia
Email: aomidvar@ece.ut.ac.ir           

This package implements a well-known PCA-based face recognition 
method, which is called 'Eigenface' [1].
All functions are easy to use, as they are heavy commented. 
Furthermore, a sample script is included to show their usage. 

For your convenience, we have prepared sample training and test databases, which are parts 
of 'face94' Essex face database [2]. You just need to copy the above functions along with 
the training and test databases into a specified path (for example 'work' path of your
MATLAB root). Then follow dialog boxes, which will appear upon running 'exampleEigenface.m'.

The order is as follows:

1. Select training and test database paths.
2. Select path of the test image.
3. Run 'CreateDatabase' function to create 2D matrix of all training images.
4. Run 'EigenfaceCore' function to produce basis's of facespace.
5. Run 'Recognition' function to get the name of equivalent image in training database.  


Enjoy it!

References:

[1] P. N. Belhumeur, J. Hespanha, and D. J. Kriegman. Eigenfaces vs. Fisherfaces: Recognition 
    using class specific linear projection. In ECCV (1), pages 45--58, 1996.

[2] Available at:
    http://cswww.essex.ac.uk/mv/allfaces/faces94.zip