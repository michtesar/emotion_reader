function dataVector = readstream(ip, port)
% READSTREAM Read OpenVibe TCP/IP EEG data stream.
%   readstream() use default localhost:5678 address with
%   plotting on (ploton - true/false boolean).
%
%   readstream(ip, port, graph) use custom ip address (ip - string),
%   port (port - integer).
%
% To map the LEDs color see LEDTOPO
%
% Michael Tesar <michtesar@gmail.com>
% 2017
if nargin < 1
    ip = 'localhost';
    port = 5678;
end

try
    t = tcpclient(ip, port);
catch ME
    warning('Cannot reach TCP/IP communication!');
    rethrow(ME);
end
% Header format is 32 bytes from the start as 
% documentation of OpenVibe says:
% http://openvibe.inria.fr/documentation/1.2.0/Doc_BoxAlgorithm_TCPWriter.html
%   Format version
%   Endianness
%   Sampling frequency
%   Number of chunks
%   Samples per chunk
%   Reserved0
%   Reserved1
%   Reserved2

% Start communication with Arduino
arduino = serial('COM3', 'BAUD', 9600);
fopen(arduino);
pause(3);

header = read(t, 8, 'uint32');
times = 1;
if ~isempty(header)   
    while true
        buffer = read(t, header(5) * header(4) * times, 'double');
        stream = reshape(buffer, [header(4), header(5) * times])';
        plot(stream);
        dataVector = mean(stream, 1);
        
        % Print to user
        disp('OpenVibe stream mean:'); disp(dataVector);
        disp('OpenVibe stream color packet'); disp(ledtopo(dataVector)); 
            
        % Sending values to Arduino to led LEDs
        disp('This goes to Arduino'); disp(ledlights(ledtopo(dataVector)));
        
        try
            colorArray = sprintf('%d, ', ledlights(ledtopo(dataVector)));
            fprintf(arduino, [colorArray(1:end-1), '\n']);
        catch
            fclose(arduino);
        end   
    end
end