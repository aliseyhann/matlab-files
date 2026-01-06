function [r, theta] = rectToPolar(x, y)
% -----------------------------------------------------
% rectToPolar.m
% -----------------------------------------------------
% rectToPolar converts two-dimensional rectangular
% to polar coordinates
% -----------------------------------------------------
% Syntax: [r, theta] = rectToPolar(x, y)
% x is the x coordinate
% y is the y coordinate
% r is the radius
% theta is the angle in radians (-pi <= theta <= pi)
% -----------------------------------------------------
r = sqrt(x^2 + y^2);
theta = atan2(y, x);
end