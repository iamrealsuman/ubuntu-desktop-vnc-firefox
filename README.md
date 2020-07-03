# ubuntu-desktop-vnc-firefox


# How to Use

### Run the Container

    docker run -itd --name ubuntu-desktop-vnc-firefox -p 5901:5901 ubuntu-desktop-vnc-firefox:latest

### Now Access your Guest Desktop via VNC

      <hostip>:5901
            
Password for vnc : `password`
            
Tips: for MAC users, can use `vnc://<host ip>:5901` direct from Safari browsers to use `Screen Sharing Application` 
