% �����ʶ��������źŲɼ���Ӱ�죺
% recorder = audiorecorder;
% 
% Fs = 1000;
% Fs1 = 8000;
% Fs2 = 40000;
% nBits = 16;
% NumChannels = 1;
% 
% % recorder = audiorecorder(Fs,nBits,NumChannels);
% % recorder = audiorecorder(Fs1,nBits,NumChannels);
% % recorder = audiorecorder(Fs2,nBits,NumChannels);
% 
% 
% disp('strat speaking:');
% recordblocking(recorder,5);
% disp('stop speaking');
% 
% myrecording = getaudiodata(recorder);
% audiowrite('re_co.wav',myrecording,1000);
% audiowrite('re_co1.wav',myrecording,8000);
% audiowrite('re_co2.wav',myrecording,40000);
% play(recorder)


%���ݿ��ӻ�(�����ź�ʱƵ���λ���)
[x,Fs]=audioread('re_co.wav')
x = x(:,1);
x = x';
N = length(x);%��ȡ��������
t = (0:N-1)/Fs;%��ʾʵ��ʱ��
y = fft(x);%���źŽ��и���Ҷ�任
f = Fs/N*(0:round(N/2)-1);%��ʾʵ��Ƶ���һ�룬Ƶ��ӳ�䣬ת��ΪHZ
figure(1)
subplot(211);
plot(t,x,'g');%����ʱ����
xlabel('Time/s');ylabel('Amplitude');
title('�źŵĲ���');
grid;
subplot(212);
plot(f,abs(y(1:round(N/2))));
xlabel('Frequency/Hz');ylabel('Amplitude');
title('�źŵ�Ƶ��');
grid;
% 
% 
[x1,Fs1]=audioread('re_co1.wav')
x1 = x1(:,1);
x1 = x1';
N = length(x1);%��ȡ��������
t = (0:N-1)/Fs1;%��ʾʵ��ʱ��
y = fft(x1);%���źŽ��и���Ҷ�任
f = Fs1/N*(0:round(N/2)-1);%��ʾʵ��Ƶ���һ�룬Ƶ��ӳ�䣬ת��ΪHZ
figure(2)
subplot(221);
plot(t,x1,'g');%����ʱ����
xlabel('Time/s');ylabel('Amplitude');
title('�źŵĲ���');
grid;
subplot(223);
plot(f,abs(y(1:round(N/2))));
xlabel('Frequency/Hz');ylabel('Amplitude');
title('�źŵ�Ƶ��');
grid;
% 
% 
[x2,Fs2]=audioread('re_co2.wav')
x2 = x2(:,1);
x2 = x2';
N = length(x2);%��ȡ��������
t = (0:N-1)/Fs2;%��ʾʵ��ʱ��
y = fft(x2);%���źŽ��и���Ҷ�任
f = Fs2/N*(0:round(N/2)-1);%��ʾʵ��Ƶ���һ�룬Ƶ��ӳ�䣬ת��ΪHZ
subplot(222);
plot(t,x2,'g');%����ʱ����
xlabel('Time/s');ylabel('Amplitude');
title('�źŵĲ���');
grid;
subplot(224);
plot(f,abs(y(1:round(N/2))));
xlabel('Frequency/Hz');ylabel('Amplitude');
title('�źŵ�Ƶ��');
grid;

