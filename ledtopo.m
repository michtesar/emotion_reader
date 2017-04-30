function colorVector = ledtopo(streamData)
% LEDTOPO Map RGB values from streamed EEG signal for Arduino LEDs
%   ledtopo(streamData) maps color from streamed vector (most probably
%   32 channels) into RGB values as the output of the function of 'jet'
%   colormap. Streamed data has to vector not matrix.
%
% You can change colormap scheme by switching default one 'jet' as for
%
% MATLAB implemented one. See also COLORMAP
%
% Michael Tesar <michtesar@gmail.com>
% 2017
colorResolution = 256;
colors = jet(colorResolution);

rgbSignal = (streamData-min(streamData))/range(streamData);
rgbSignal = round(rgbSignal*(colorResolution-1))+1;
rgbSignal = colors(rgbSignal,:);

% Convert decimal RGB to 0-255 values
colorVector = uint8(rgbSignal * 255 + 0.5)-1;
end