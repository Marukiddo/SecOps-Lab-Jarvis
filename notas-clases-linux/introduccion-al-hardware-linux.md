# 🛡️ Introducción al Hardware en Linux (Perspectiva Defensiva)

En ciberseguridad defensiva, el hardware es la **Raíz de la Confianza (Root of Trust)**. Si no conocemos nuestro hardware, no podemos asegurar nuestro sistema.

## 1. Identificación del Sistema (Jarvis/Nataly)
Antes de defender, debemos saber qué recursos tenemos. Un sistema sin RAM o CPU suficiente puede ser víctima fácil de un ataque de Denegación de Servicio (DoS).

**Comandos básicos:**
- `lscpu`: Ver detalles del procesador (vulnerabilidades como Spectre/Meltdown).
- `free -h`: Monitorizar el uso de memoria RAM en tiempo real.
- `sudo dmidecode -t system`: Información detallada del fabricante y BIOS.

## 2. Dispositivos de Red (El punto de entrada)
La tarjeta de red (NIC) es la frontera de nuestro laboratorio.
- `ip link show`: Ver todas las interfaces de red activas.
- `lspci | grep -i network`: Identificar el hardware físico de red.
*Defensa:* Conocer nuestra MAC address ayuda a detectar ataques de ARP Spoofing.

## 3. Almacenamiento y Particiones
- `lsblk`: Listar discos y particiones.
*Defensa:* Separar `/home` o `/var/log` en particiones distintas evita que un atacante llene el disco principal y bloquee el sistema.

---
*Próximo paso: Auditoría básica de hardware con herramientas nativas.*
