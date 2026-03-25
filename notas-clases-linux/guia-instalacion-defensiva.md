# 🛠️ Guía de Instalación y Activación: Stack Defensivo

Este documento registra el proceso de instalación y configuración inicial de las herramientas esenciales para el Laboratorio Defensivo en **Jarvis**.

## 🛡️ Herramientas Instaladas

### 1. UFW (Uncomplicated Firewall)
Es nuestra primera línea de defensa perimetral. Controla el tráfico entrante y saliente.
- **Activación:** 
  ```bash
  sudo ufw default deny incoming
  sudo ufw default allow outgoing
  sudo ufw allow ssh
  sudo ufw enable
  ```

### 2. Fail2Ban
Previene ataques de fuerza bruta analizando logs y bloqueando IPs sospechosas.
- **Estado:** Activo por defecto tras la instalación.
- **Monitorización:** `sudo fail2ban-client status sshd`

### 3. Lynis
Herramienta de auditoría de seguridad exhaustiva. 
- **Primer escaneo:** `sudo lynis audit system`
- **Objetivo:** Obtener una puntuación inicial de seguridad (Hardening Index).

### 4. Auditd
Monitoriza eventos del kernel para auditoría forense.
- **Verificación:** `sudo systemctl status auditd`

---
*Documento actualizado tras el primer gran reset de seguridad.*
