# 🌐 Windows HTML Server (Docker + IIS)

This project builds a Windows-based Docker image using **IIS (Internet Information Services)** to serve a beautiful custom HTML page.

---

## 📁 Project Structure

```
windows-html-server/
│
├── Dockerfile       # Dockerfile to create the Windows container with IIS
├── index.html       # HTML page served by the container
└── README.md        # Project documentation
```

---

## 🚀 How to Use

### 1. Prerequisites

- Windows 10/11 Pro or Enterprise
- [Docker Desktop](https://www.docker.com/products/docker-desktop) installed
- **Docker switched to Windows containers**

> 🖱️ Right-click Docker icon in system tray → Click **"Switch to Windows containers…"**

---

### 2. Build the Docker Image

Open PowerShell or Command Prompt in the project directory and run:

```bash
docker build -t win-html-site .
```

---

### 3. Run the Container

```bash
docker run -d -p 8080:80 win-html-site
```

---

### 4. View the Website

Open your browser and go to:

```
http://localhost:8080
```

You should see a beautiful welcome page served from IIS inside the container.

---

## 📦 Useful Docker Commands

```bash
docker ps                        # List running containers
docker stop <container_id>      # Stop a container
docker rm <container_id>        # Remove a container
docker rmi win-html-site        # Delete the image
```

---

## 👨‍💻 Author

**Fardeen Attar**  
📧 Email: [fardeenisa@gmail.com](mailto:fardeenisa@gmail.com)

---

## 🔐 Security Note

> ⚠️ This example does **not include security hardening**.

You can scan and harden this image using tools like:

- [Trivy](https://github.com/aquasecurity/trivy)
- [Nessus](https://www.tenable.com/products/nessus)
- OEM security tools provided by Microsoft or your organization

---

## 📜 License

MIT License – use freely with credit 🙌
