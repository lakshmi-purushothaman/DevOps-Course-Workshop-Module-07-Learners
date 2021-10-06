FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build

USER root

 # Using Debian, as root
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs

WORKDIR /source

COPY . /source

# Build the app
#RUN dotnet build

#WORKDIR /source/DotnetTemplate.Web

#RUN npm install
#RUN npm run build

# copy csproj and restore as distinct layers
#COPY *.sln .
COPY DotnetTemplate.Web/*.csproj ./DotnetTemplate.Web/
RUN dotnet restore

# copy everything else and build app
COPY DotnetTemplate.Web/. ./DotnetTemplate.Web/
WORKDIR /source/DotnetTemplate.Web
RUN dotnet publish -c release -o /app

#Final Image
FROM mcr.microsoft.com/dotnet/aspnet:5.0
WORKDIR /app
COPY --from=build /app ./

ENTRYPOINT [ "dotnet","DotnetTemplate.Web.dll" ]
