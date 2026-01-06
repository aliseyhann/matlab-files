% first quadrant test
x = 2; y = 3;
[r, th] = rectToPolar(x,y)
% second quadrant test
x = -2; y = 3;
[r, th] = rectToPolar(x,y)
% third quadrant test
x = -2; y = -3;
[r, th] = rectToPolar(x,y)
% fourth quadrant test
x = 2; y = -3;
[r, th] = rectToPolar(x,y)
% test on axes
x = 2; y = 0;
[r, th] = rectToPolar(x,y)
x = 0; y = 3;
[r, th] = rectToPolar(x,y)
x = -2; y = 0;
[r, th] = rectToPolar(x,y)
