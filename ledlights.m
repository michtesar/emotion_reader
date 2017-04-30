function vectorData = ledlights(colorStreamMatrix)
    dataSize = size(colorStreamMatrix);
    dataSize = dataSize(1) * dataSize(2);
    vectorData = reshape(colorStreamMatrix', [1, dataSize]);
end