function [audioData] = RecordAudio()
    recObj = audiorecorder(44100,16,1,1); %Desktop Headset
    sec = input("Seconds to Record = ");
    disp('Start speaking.')
    recordblocking(recObj,sec);
    disp('End of Recording.');
    audioData = getaudiodata(recObj);
end

