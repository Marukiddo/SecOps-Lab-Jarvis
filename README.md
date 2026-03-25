# 🛡️ Laboratorio de Ciberseguridad (Blue Team Edition)

Notas y prácticas enfocadas en **Ciberseguridad Defensiva**, auditoría y administración segura de sistemas Linux.

- **Enfoque:** Protección de activos, monitorización de logs y hardening de sistemas.
- **Hardware:** Pruebas realizadas en el entorno JARVIS y NATALY.

## 📊 Estado Actual de Seguridad

### Auditoría Inicial (Lynis) - 25/03/2026
- **Hardening Index:** 62/100
- **Resultado:** Sistema base.

### Auditoría Post-Hardening (Round 1-3) - 25/03/2026 ✅
- **Hardening Index:** 69/100 (**+7 puntos!** 🔥)
- **Mejoras Implementadas:** 
  - Kernel Hardening (sysctl).
  - IDS/Scanner (Rkhunter).
  - Auditoría Avanzada (Auditd Rules).
  - Privacidad de Red (Postfix Anonimization).
  - Banners de Privacidad Legales.

## 🗺️ Hoja de Ruta Defensiva

### 1. Fundamentos (Hardware y OS) 🏗️
- [x] Introducción al Hardware en Linux (Perspectiva Defensiva)
- [x] Auditoría inicial con Lynis (Score: 62)
- [x] Implementación de sugerencias críticas de Lynis (Score: 69).
- [ ] SSH Hardening (Desactivar root y passwords).

### 2. Hardening y Firewalling 🧱
- [x] Configuración básica de Firewall (UFW/Iptables).
- [ ] SSH Hardening (Desactivar root y passwords).

### 3. Monitorización y Detección 👁️
- [ ] Análisis de logs con `journalctl` y `/var/log`.
- [ ] Detección de intrusos básica con `AIDE` y `Fail2Ban`.

---
*Este laboratorio es un diario de aprendizaje personal.*
