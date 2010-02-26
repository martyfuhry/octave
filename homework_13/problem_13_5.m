% problem 13.5
% time fft for m=2^k, k=6,7,...
% plot result

clf;
hold on;

time  = [];
time1 = [];
for i = 6:25
	r  = rand(2^i, 1);
	tic;
	fft(r);
	time(i-5)=toc;
	tic;
	fft([r; rand]);
	time1(i-5)=toc;
end

plot(time, 'b');
plot(time1,'r');
legend("m=2^x","m = 2^x + 1")

hold off;
