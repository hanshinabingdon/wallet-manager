FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /src
COPY ./WalletManager.csproj ./
RUN dotnet restore

COPY . .
RUN dotnet build -p:Configuration=Release -p:Platform="Any CPU"  -o /app

FROM build AS publish
RUN dotnet publish -p:Configuration=Release -p:Platform="Any CPU" -o /app

FROM mcr.microsoft.com/dotnet/aspnet:5.0
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT [ "dotnet", "WalletManager.dll"]
