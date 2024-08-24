%% Question 2 (recording and variables obtained beforehand, see quantization example repository)
% Use a difference equation of the form:
% y(n) = x(n) + ay(n-D) where x(n) is the input audio, y(n) is the output
% (echoed) audio, D is the echo delay in # of samples, and a is the amount 
% of echo fed back.
clc
close all
delay_sec = 0.25;  % change this value to alter than echo delay
D = delay_sec*fs; % converting seconds into samples
a = 0.5; % coefficient of echo fed back, changes the amplitude
y_echoed = y; % setting up the variable to hold the echoed audio
for n = 1:length(y)
     % the index of y_echoed cannot be less than the value of D otherwise
     % there is an error. It will simply hold the same value y(n).
    if n <= D
        y_echoed(n) = y(n);
    else
        y_echoed(n) = y(n) + a.*y_echoed(n-D);
    end
end
plot(y_echoed)
hold on
plot(y)
title('y(n)=x(n)+ay(n-D)', ...
    ['D = ', num2str(D), ', a = ', num2str(a)]);
legend('Echo','Original')
xlabel('time')
ylabel('Amplitude')
axis tight
grid on
sound (y_echoed, fs)

%% Use a difference equation of the form:
% y(n) = x(n) + ax(n-D) where x(n) is the input audio, y(n) is the output
% (echoed) audio, D is the echo delay in # of samples, and a is the amount 
% of echo fed back.
clc
close all
delay_sec = 0.25;  % change this value to alter than echo delay
D = delay_sec*fs; % converting seconds into samples
a = 0.5; % coefficient of echo fed back, changes the amplitude
y_echoed = y; % setting up the variable to hold the echoed audio
for n = 1:length(y)
     % the index of y_echoed cannot be less than the value of D otherwise
     % there is an error. It will simply hold the same value y(n).
    if n <= D
        y_echoed(n) = y(n);
    else
        y_echoed(n) = y(n) + a.*y(n-D);
    end
end
plot(y_echoed)
hold on
plot(y)
title('y(n)=x(n)+ay(n-D)', ...
    ['D = ', num2str(D), ', a = ', num2str(a)]);
legend('Echo','Original')
xlabel('time')
ylabel('Amplitude')
axis tight
grid on
sound (y_echoed, fs)
