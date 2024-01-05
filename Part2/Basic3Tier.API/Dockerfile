# Use the official SDK image to create a build image
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build

WORKDIR /src

# Copy the CSPROJ files and restore any NuGet packages
COPY Basic3Tier.Core/Basic3Tier.Core.csproj Basic3Tier.Core/
COPY Basic3Tier.Infrastructure/Basic3Tier.Infrastructure.csproj Basic3Tier.Infrastructure/
COPY Basic3TierAPI/Basic3TierAPI.csproj Basic3TierAPI/
COPY Tests/Basic3Tier.Core.Tests/Basic3Tier.Core.Tests.csproj Tests/Basic3Tier.Core.Tests/
COPY Tests/Basic3Tier.Infrastructure.Tests/Basic3Tier.Infrastructure.Tests.csproj Tests/Basic3Tier.Infrastructure.Tests/


# Restore the Nuget packages
RUN dotnet restore Basic3TierAPI/Basic3TierAPI.csproj

# Copy the rest of the source code
COPY Basic3Tier.Core/ Basic3Tier.Core/
COPY Basic3Tier.Infrastructure/ Basic3Tier.Infrastructure/
COPY Basic3TierAPI/ Basic3TierAPI/
COPY Tests/Basic3Tier.Core.Tests/Basic3Tier.Core.Tests.csproj Tests/Basic3Tier.Core.Tests/
COPY Tests/Basic3Tier.Infrastructure.Tests/Basic3Tier.Infrastructure.Tests.csproj Tests/Basic3Tier.Infrastructure.Tests/


# Publish the API project
WORKDIR /src/Basic3TierAPI
RUN dotnet publish -c Release -o /app

# Build the runtime image
EXPOSE 7000
FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS final
WORKDIR /app
COPY --from=build /app .

ENTRYPOINT ["dotnet", "Basic3TierAPI.dll"]
