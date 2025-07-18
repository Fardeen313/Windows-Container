# Use Windows Server Core as base
FROM mcr.microsoft.com/windows/servercore:ltsc2022

# Install IIS (Internet Information Services)
RUN powershell -Command "Install-WindowsFeature -Name Web-Server"

# Create web directory
RUN mkdir C:\mywebsite

# Copy custom HTML to IIS root
COPY index.html C:\inetpub\wwwroot\index.html

# Expose HTTP port
EXPOSE 80

# Start IIS in foreground
CMD powershell -NoLogo -NoProfile -Command "Start-Service W3SVC; while ($true) { Start-Sleep -Seconds 3600 }"
