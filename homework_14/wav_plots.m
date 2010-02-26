% some basic plots with audio files


[b,R] = wavread('audio/shostakovich.wav');
N = length(b);

% Compute the interpolation model coefficients
c = dct(b);                
w = sqrt(2/N);
f = linspace(0,R/2,N)';

% Shows a plot of the frequencies coefficients for the sample
% plot (f,w*c);


% Generate a mask of zeros and ones. m is 0 for every frequency above 3000, 1 otherwise.
% This mask will cut-off all frequencies above 3000 cycles/second.
% m = (f<3000);
% plot (f,w*m.*c);   % Display the filtered frequency coefficients.
% y = idct(m.*c);    % Generate a filtered sound sample data set
% sound(y,R);        % Listen to the result

