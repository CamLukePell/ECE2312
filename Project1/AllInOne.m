function [] = AllInOne()
    n = input("Number of Recordings = "); %Number of Times to Record
    for i = 1:n
        text = append('File ', num2str(i), " Name: ");
        name = input(text,'s'); %Give a Name to Each file
        data = RecordAudio(); %Record Audio Data 1 by 1
        PlotAudio(data,name); %Plot Audio Time Vs Amp
        Spec(data);       %Plot Audio Spectrogram
        fileName = append(name,".wav");
        audiowrite(fileName,data,44100) %Create .wav file for Audio
    end
end

