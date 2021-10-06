FROM mcr.microsoft.com/dotnet/sdk:5.0

USER root

 # Using Debian, as root
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs

WORKDIR /app

COPY . /app

# Build the app
RUN dotnet build

WORKDIR /app/DotnetTemplate.Web

RUN npm install
RUN npm run build

ENTRYPOINT [ "dotnet","run" ]
