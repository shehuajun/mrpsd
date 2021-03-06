%
% repeatclose(start, width)
%
% start = starting time of repeat bracket (in ms)
% width = length of the bottom part of the bracket (in ms, def=10)
%
%

%
%  $Id: repeatclose.m,v 1.3 2000/03/06 14:39:11 craig Exp $
%
function [lt, ll, lb] = repeatclose(start, width, t)

if nargin == 1
	width = 10;
end

global num_axes;

margin = 0.05;

lt = line([ start start-width], [num_axes+1-margin num_axes+1-margin ], 'LineStyle', ':');
ll = line([ start start], [margin num_axes+1-margin], 'LineStyle', ':');
lb = line([ start start-width], [margin margin], 'LineStyle', ':');

if nargin == 3
	text(start+width/6, margin, t);
end
