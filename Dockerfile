FROM mcr.microsoft.com/dotnet/sdk:5.0

WORKDIR /app
COPY . .
#EXPOSE 5000
ENTRYPOINT [ "dotnet", "watch", "run", "--urls", "https://0.0.0.0:5001"]