FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /src
COPY . .
RUN dotnet restore

RUN dotnet build -p:Configuration=Release -p:Platform="Any CPU"  -o /app

FROM build AS publish
RUN dotnet publish -p:Configuration=Release -p:Platform="Any CPU" -o /app

FROM mcr.microsoft.com/dotnet/aspnet:5.0
WORKDIR /app
COPY --from=publish /app .
ENV ASPNETCORE_URLS http://*:5000
ENTRYPOINT [ "dotnet", "WalletManager.dll"]
