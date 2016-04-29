% A sample script, which shows the usage of functions, included in
% PCA-based face recognition system (Eigenface method)
%
% See also: CREATEDATABASE, EIGENFACECORE, RECOGNITION

% Original version by Amir Hossein Omidvarnia, October 2007
%                     Email: aomidvar@ece.ut.ac.ir                  

clear all
clc
close all

% You can customize and fix initial directory paths
TrainDatabasePath = 'TrainDatabase';
TestDatabasePath = 'TestDatabase';

prompt = {'Enter test image name (without filename extension):'};
dlg_title = 'Input of PCA-Based Face Recognition System';
num_lines= 1;
def = {'1'};

TestImage  = inputdlg(prompt,dlg_title,num_lines,def);
TestImage = strcat(TestDatabasePath,'/',char(TestImage),'.jpg');
im = imread(TestImage);

T = CreateDatabase(TrainDatabasePath);
[m, A, Eigenfaces] = EigenfaceCore(T);
OutputName = Recognition(TestImage, m, A, Eigenfaces);

SelectedImage = strcat(TrainDatabasePath,'/',OutputName);
SelectedImage = imread(SelectedImage);

subplot(3,10,1)
imshow(im)
title('Test Image');

subplot(3,10,2)
imshow(SelectedImage);
title('Equivalent Image');

subplot(3,10,3)
imshow(reshape(m,180,200)', [min(m) max(m)]);
title('Mean Eigenface');

a = 1.0;

for n=19:-1:10
    subplot(3,10,11+19-n)
    imshow(reshape(Eigenfaces(:,n),180,200)', [a*min(min(Eigenfaces,[],2),[],1) a*max(max(Eigenfaces,[],2),[],1)]);
    title(sprintf('Eigface %d', n));
end

str = strcat('Matched image is :  ',OutputName);
disp(str)

im_grey = rgb2gray(im);
im_vec = double( reshape(im_grey',200*180,1) );

x=m;
for n=19:-1:10
    eigen_norm = Eigenfaces(:,n) / norm(Eigenfaces(:,n));
    x = x + (((im_vec - m)' * eigen_norm) * eigen_norm);

    subplot(3,10,21+19-n)
    imshow(reshape(x,180,200)', [a*min(min(x,[],2),[],1) a*max(max(x,[],2),[],1)]);
    title(sprintf('Rec %d', (20-n)));
end














