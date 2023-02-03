function [] = Stereo(wavFile)
    [file,freq] = audioread(wavFile);
    emptyArray = zeros(length(file),1);
    newFile = horzcat(file,emptyArray);
    name = split(wavFile,'.');
    newName = string(append(name(1),'Stereo.wav'));
    audiowrite(newName,newFile,44100) %Create .wav file for Audio
end

