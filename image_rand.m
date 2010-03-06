% rand image map
x = rand(512, 512);
colormap(gray);
axis('tight');
imagesc(x);
pause;

% press return, see randn image map
x = randn(512,512);
imagesc(x);
