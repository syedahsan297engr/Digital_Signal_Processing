x1 = [1,2,2];
x2 = [1,2,3,4];
y1 = circonvt(x1, x2, 4);
y2 = circonvt(x1, x2, 5);
y3 = circonvt(x1, x2, 6);
subplot(3,1,1)
stem(0:length(y1)-1,y1,'r')
subplot(3,1,2)
stem(0:length(y2)-1,y2,'g')
subplot(3,1,3)
stem(0:length(y3)-1,y3)