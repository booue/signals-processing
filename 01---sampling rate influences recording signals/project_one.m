% 采样率对于声音信号采集的影响：
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


%数据可视化(声音信号时频域波形绘制)
[x,Fs]=audioread('re_co.wav')
x = x(:,1);
x = x';
N = length(x);%求取抽样点数
t = (0:N-1)/Fs;%显示实际时间
y = fft(x);%对信号进行傅里叶变换
f = Fs/N*(0:round(N/2)-1);%显示实际频点的一半，频域映射，转化为HZ
figure(1)
subplot(211);
plot(t,x,'g');%绘制时域波形
xlabel('Time/s');ylabel('Amplitude');
title('信号的波形');
grid;
subplot(212);
plot(f,abs(y(1:round(N/2))));
xlabel('Frequency/Hz');ylabel('Amplitude');
title('信号的频谱');
grid;
% 
% 
[x1,Fs1]=audioread('re_co1.wav')
x1 = x1(:,1);
x1 = x1';
N = length(x1);%求取抽样点数
t = (0:N-1)/Fs1;%显示实际时间
y = fft(x1);%对信号进行傅里叶变换
f = Fs1/N*(0:round(N/2)-1);%显示实际频点的一半，频域映射，转化为HZ
figure(2)
subplot(221);
plot(t,x1,'g');%绘制时域波形
xlabel('Time/s');ylabel('Amplitude');
title('信号的波形');
grid;
subplot(223);
plot(f,abs(y(1:round(N/2))));
xlabel('Frequency/Hz');ylabel('Amplitude');
title('信号的频谱');
grid;
% 
% 
[x2,Fs2]=audioread('re_co2.wav')
x2 = x2(:,1);
x2 = x2';
N = length(x2);%求取抽样点数
t = (0:N-1)/Fs2;%显示实际时间
y = fft(x2);%对信号进行傅里叶变换
f = Fs2/N*(0:round(N/2)-1);%显示实际频点的一半，频域映射，转化为HZ
subplot(222);
plot(t,x2,'g');%绘制时域波形
xlabel('Time/s');ylabel('Amplitude');
title('信号的波形');
grid;
subplot(224);
plot(f,abs(y(1:round(N/2))));
xlabel('Frequency/Hz');ylabel('Amplitude');
title('信号的频谱');
grid;

