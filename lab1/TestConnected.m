option = input(' Choose the neighbour type to find connected set \n1: 4 – Neighbors  \n2: Diagonal Neighbors \n3: 8 – Neighbors \n ');
%T = input('Input T\n');

        subplot(2,2,1);
        imshow('img22gd2.tif'); 

        if (option == 1)
                ConnectedSet('img22gd2.tif',67,45,2,1,2)
                title('T=2');
                ConnectedSet('img22gd2.tif',67,45,1,1,3)
                title('T=1');
                ConnectedSet('img22gd2.tif',67,45,3,1,4)
                title('T=3');
        end
        if (option == 2)
                ConnectedSet('img22gd2.tif',67,45,2,2,2)
                title('T=2');
                ConnectedSet('img22gd2.tif',67,45,1,2,3)
                title('T=1');
                ConnectedSet('img22gd2.tif',67,45,3,2,4)
                title('T=3');
        end
        if (option == 3)
                ConnectedSet('img22gd2.tif',67,45,2,3,2)
                title('T=2');
                ConnectedSet('img22gd2.tif',67,45,1,3,3)
                title('T=1');
                ConnectedSet('img22gd2.tif',67,45,3,3,4)
                title('T=3');
        end