FROM mcr.microsoft.com/powershell
RUN apt-get update && apt-get install -y \
sudo \
curl \
gnupg
RUN echo "deb http://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
RUN apt-get update && apt-get install -y google-cloud-sdk
RUN pwsh -NoLogo -NoProfile -Command "Install-Module Az -Force"
# RUN pwsh -NoLogo -NoProfile -Command "Install-Module MSOnline -Force"
# RUN pwsh -NoLogo -NoProfile -Command "Install-Module AzureAD -Force"
