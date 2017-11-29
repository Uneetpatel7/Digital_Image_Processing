Author: Uneet Patel 2015csb1038
----------------------------------
email: 2015CSB1038@iitrpr.ac.in
----------------------------------
Figure1:

data(Fig1.tif) = 88kb
after RLE(Fig1_rle.mat) = 4kb
compression ratio = 88/4 = 22
relative redundancy = 1-(1/22) = 0.9545

after HuffmanEncoding (Fig1_hc.mat) = 5kb
compression ratio = 88/5 = 17.6
relative redundancy = 1-(1/17.6) = 0.9431

after RLE & HuffmanEncoding (Fig1_rle_hc.mat) = 5kb
compression ratio = 88/5 = 17.6
relative redundancy = 1-(1/17.6) = 0.9431

Figure2:

data(Fig2.tif) = 2kb
after RLE(Fig2_rle.mat) = 1kb
compression ratio = 2/1 = 2
relative redundancy = 1-(1/2) = 0.50

after HuffmanEncoding (Fig2_hc.mat) = 4kb
compression ratio = 2/4 = 0.5
relative redundancy = 1-(1/0.5) = -1

after RLE & HuffmanEncoding (Fig2_rle_hc.mat) = 1kb
compression ratio = 2/1 = 2
relative redundancy = 1-(1/2) = 0.50

Figure3:

data(Fig3.tif) = 44kb
after RLE(Fig3_rle.mat) = 19kb
compression ratio = 44/19 = 2.31
relative redundancy = 1-(1/2.31) = 0.5670

after HuffmanEncoding (Fig3_hc.mat) = 17kb
compression ratio = 44/17 = 2.588
relative redundancy = 1-(1/2.588) = 0.6136

after RLE & HuffmanEncoding (Fig3_rle_hc.mat) = 25kb
compression ratio = 44/25 = 1.76
relative redundancy = 1-(1/1.76) = 0.4318


Comments on Compression Algorithms:

RLE reduces spatial redundancy hence it works really well on images with same intensities consecutively.
Therefore RLE works well and achieves high compression ratio on all 3 figures.

Huffman encoding reduces coding redundancies hence it works well with images with lesser number of intensity values. Hence it achies high compression ratio on figure 1 and 3 but fails miserably on figure 2 as it has all (0-255) intensity values. 


