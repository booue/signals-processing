% % �ɼ��Ĳ����ʺͲ��Ų����ʲ�ͬ���������źŵ�Ӱ��
% recorder = audiorecorder;
% 
% Fs2 = 44100;
% nBits = 16;
% NumChannels = 1;
% 
% recorder = audiorecorder(Fs2,nBits,NumChannels);
% 
% 
% disp('strat speaking:');
% recordblocking(recorder,7);
% disp('stop speaking');
% 
% myrecording = getaudiodata(recorder);
% audiowrite('data_record.wav',myrecording,44100)
info = audioinfo('data_record.wav')
% audiowrite('data_record1.wav',myrecording,22050)
info1 = audioinfo('data_record1.wav')
% audiowrite('data_record2.wav',myrecording,88200)
info2 = audioinfo('data_record2.wav')

% sound(myrecording,44100) %��������ͬ
% sound(myrecording,22050) % �����ʱ�֮ǰ�ͣ�soundĬ��Ϊ8192Hz
% sound(myrecording,88200) %�����ʱ�֮ǰ��







% ���ݿ��ӻ�����
[y,f] = audioread('data_record.wav');
t = 0:seconds(1/f):seconds(info.Duration);
t = t(1:end-1);
subplot(1,3,1)
plot(t,y)
title('����Ƶ����ͬ')

[y1,f1] = audioread('data_record1.wav');
t1 = 0:seconds(1/f1):seconds(info1.Duration);
t1 = t1(1:end-1);
subplot(1,3,2)
plot(t1,y1)
title('����Ƶ�ʱ�Ϊ��һ�롱')

[y2,f2] = audioread('data_record2.wav');
t2 = 0:seconds(1/f2):seconds(info2.Duration);
t2 = t2(1:end-1);
subplot(1,3,3)
plot(t2,y2)
title('����Ƶ�ʱ�Ϊ��������')