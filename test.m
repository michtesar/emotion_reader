arduino = serial('COM3', 'BAUD', 9600);
fopen(arduino);
pause(3);
for c = 1:255
    fprintf(arduino, '%d, %d, %d\n', [c, 255, 0]);
end
fclose(arduino);