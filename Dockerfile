# Use Windows Server Core as base
FROM mcr.microsoft.com/windows/servercore:ltsc2022

# Install IIS (Internet Information Services)
RUN powershell -Command "Install-WindowsFeature -Name Web-Server"

# Copy custom HTML to IIS root
COPY index.html C:/inetpub/wwwroot/index.html

# Expose HTTP port
EXPOSE 80

# Start IIS in the foreground so the container stays alive
CMD powershell -NoLogo -NoProfile -Command "Start-Service W3SVC; while ($true) { Start-Sleep -Seconds 3600 }"
