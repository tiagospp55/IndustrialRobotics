videoOS = 'winvideo'
info = imaqhwinfo(videoOS)
info.DeviceInfo
camnum = 1;
vid = videoinput(videoOS, camnum)
preview(vid);

% vid = videoinput(videoOS,camnum,'YUY2_1280x720')
preview(vid); %Iniciar preview da camara (opcional)
start(vid) %Adquire dados para memoria (10 frames default)
A=getdata(vid); %transfere as 10 frames para uma variavel

for n = 1:size(AA,4)

    rgb = A(:,:,:,n)
    
    imshown(rgb)
    str = 'Image n.º' + string(n) + 'de' + string(size(AA,4))

    title(str)
    pause(0.5)

end

toc
stop(vid)
delete(vid)
