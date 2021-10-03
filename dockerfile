# # Sample Dockerfile

# # Indicates that the windowsservercore image will be used as the base image.
# FROM mcr.microsoft.com/windows/servercore:ltsc2019

# # Metadata indicating an image maintainer.
# LABEL maintainer="jshelton@contoso.com"

# # Uses dism.exe to install the IIS role.
# RUN dism.exe /online /enable-feature /all /featurename:iis-webserver /NoRestart

# # Creates an HTML file and adds content to this file.
# RUN echo "Hello World - Dockerfile" > c:\inetpub\wwwroot\index.html

# # Sets a command or process that will run each time a container is run from the new image.
# CMD [ "cmd" ]

#---------------from youtube thatDevOpsGuy---------------------------#
FROM nginx:1.15.8-alpine
#configuration
copy ./nginx.conf /etc/nginx/nginx.conf
#content, comment out the ones you dont need!
copy ./*.html /usr/share/nginx/html/
#copy ./*.css /usr/share/nginx/html/
#copy ./*.png /usr/share/nginx/html/
#copy ./*.js /usr/share/nginx/html/