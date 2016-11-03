waterXY=H;
Index = 4;
[n,w]=size(waterXY);
if(w==4)
    close;
    figure(2)
    hold on;

    for i=1:n
        if(waterXY(i,Index)==0)
            plot(waterXY(i,1),waterXY(i,2), 'ro', 'MarkerFaceColor','r');
        elseif waterXY(i,Index)==0.5  || waterXY(i,Index)==0.1
            plot(waterXY(i,1),waterXY(i,2), 'go', 'MarkerFaceColor','g');
        elseif(waterXY(i,Index)==1)
            plot(waterXY(i,1),waterXY(i,2), 'bo', 'MarkerFaceColor','b');
        elseif(waterXY(i,Index)==4)
            plot(waterXY(i,1),waterXY(i,2), 'ko', 'MarkerFaceColor','k');
        elseif(waterXY(i,Index)==10)
            plot(waterXY(i,1),waterXY(i,2), 'mo', 'MarkerFaceColor','m');
        elseif(waterXY(i,Index)==20)
            plot(waterXY(i,1),waterXY(i,2), 'co', 'MarkerFaceColor','c');
        elseif(waterXY(i,Index)==30)
            plot(waterXY(i,1),waterXY(i,2), 'yo', 'MarkerFaceColor','y');
        end
    end

    hold off;

elseif(w==4)

    close;
    figure(3)
    hold on;

    for i=1:n
        if(waterXY(i,2)==0)
            plot(waterXY(i,1),waterXY(i,2), 'ro');%, 'MarkerFaceColor','r');
        elseif waterXY(i,2)==0.1 || waterXY(i,2)==0.1
            plot(waterXY(i,1),waterXY(i,2), 'go');
        elseif(waterXY(i,2)==1)
            plot(waterXY(i,1),waterXY(i,2), 'bo');
        elseif(waterXY(i,2)==4)
            plot(waterXY(i,1),waterXY(i,2), 'ko');
        elseif(waterXY(i,2)==10)
            plot(waterXY(i,1),waterXY(i,2), 'mo');
        elseif(waterXY(i,2)==20)
            plot(waterXY(i,1),waterXY(i,2), 'co');
        elseif(waterXY(i,2)==30)
            plot(waterXY(i,1),waterXY(i,2), 'yo');
        end
    end

    hold off;
end

