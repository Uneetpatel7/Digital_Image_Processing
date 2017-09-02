mSec = 5 ;
nBins = 20 ;


%rice.tif in frame 1 with histogram

    subplot(2,2,1)
    I1 = imread('rice.png');
    imshow(I1) ;
    title('Original Image');
    
    subplot(2,2,2)
    myImgHist('rice.png' , nBins);
    title('Histogram');
    
    subplot(2,2,3)
    myImPDF('rice.png', nBins);
    title('PDF');
    
     subplot(2,2,4)
     myImCDF( 'rice.png' , nBins);
     title('CDF');

     pause(mSec);

 %rice.tif with transformation in frame 2    
 
    subplot(2,2,1)
    imshow(I1) ;
    title('Original Image');
    
    subplot(2,2,2)
    myImgNeg('rice.png');
    title('Complement TransFormation');
    
    subplot(2,2,3)
    myImgLog('rice.png', 51);
    title('LogarithmicTransformation');
    
     
     subplot(2,2,4)
     myImgGamma( 'rice.png' ,0.2104 , 5);
     title('Gamma Transformation for E = 5');

     pause(mSec);

     subplot(2,2,1)
    k2 = imread('mri.tif');
    imshow('mri.tif') ;
    title('Original Image');
    
    subplot(2,2,2)
   myImgHist('mri.tif' , nBins);
     title('Histogram');
    
    subplot(2,2,3)
    
    myImPDF('mri.tif', nBins);
     title('PDF');
    subplot(2,2,4)
    
    myImCDF( 'mri.tif' , nBins);
     title('CDF');


pause(mSec);


   subplot(2,2,1)
    
    imshow(k2) ;
    title('Original Image');
    
    subplot(2,2,2)
    myImgNeg('mri.tif');
     title('Complement TransFormation');
    
    subplot(2,2,3)
    
    myImgLog('mri.tif', 51);
     title('LogarithmicTransformation');
    
     
     subplot(2,2,4)
    
    myImgGamma( 'mri.tif' ,0.2104 , 5);
     title('Gamma Transformation for E = 5');

     pause(mSec);
     
      subplot(2,2,1)
    k3 = imread('lena512.bmp');
    imshow(k3) ;
    title('Original Image');
    
    subplot(2,2,2)
   myImgHist('lena512.bmp' , nBins);
     title('Histogram');
    
    subplot(2,2,3)
    
    myImPDF('lena512.bmp', nBins);
     title('PDF');
    subplot(2,2,4)
    
    myImCDF( 'lena512.bmp' , nBins);
     title('CDF');


pause(mSec) ;

   subplot(2,2,1)
   
    imshow(k3) ;
    title('Original Image');
    
    subplot(2,2,2)
    myImgNeg('lena512.bmp');
     title('Complement TransFormation');
    
    subplot(2,2,3)
    myImgLog('lena512.bmp', 51);
     title('LogarithmicTransformation');
    
     
     subplot(2,2,4)
    
     myImgGamma( 'lena512.bmp' ,0.2104 , 5);
     title('Gamma Transformation for E = 5');

     pause(mSec);
     
    subplot(2,2,1)
    I4 = imread('pout.tif');
    imshow(I4) ;
    title('Original Image');
    
    subplot(2,2,2)
    myImgHist('pout.tif' , nBins);
     title('Histogram');
    
    subplot(2,2,3)
    
    myImPDF('pout.tif', nBins);
     title('PDF');
    subplot(2,2,4)
    
     myImCDF( 'pout.tif' , nBins);
     title('CDF');


pause(mSec);


   subplot(2,2,1)
    
    imshow(I4) ;
    title('Original Image');
    
    subplot(2,2,2)
    myImgNeg('pout.tif');
     title('Complement TransFormation');
    
    subplot(2,2,3)
    
    myImgLog('pout.tif', 51);
     title('LogarithmicTransformation');
    
     
     subplot(2,2,4)
    
     myImgGamma( 'pout.tif' ,0.2104 , 5);
     title('Gamma Transformation for E = 5');

     pause(mSec);
     
     
     
     
     