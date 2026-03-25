#!/bin/bash

# --- JARVIS SECURITY HEALTH CHECK ---
# Autor: Maru Barreto (Marukiddo)
# Proyecto: SecOps-Lab-Jarvis

echo "************************************************"
echo "  🛡️ JARVIS - REVISIÓN DE SEGURIDAD 🛡️"
echo "************************************************"

# 1. Comprobar Firewall (UFW)
UFW_STATUS=$(sudo ufw status | grep -E "Status|Estado" | awk '{print $NF}')
if [ "$UFW_STATUS" == "active" ] || [ "$UFW_STATUS" == "activo" ]; then
    echo "[✅] FIREWALL: Activo y Protegiendo."
else
    echo "[❌] FIREWALL: ¡DESACTIVADO! (Revisar sudo ufw enable)"
fi

# 2. Comprobar Fail2Ban
if systemctl is-active --quiet fail2ban; then
    echo "[✅] FAIL2BAN: Corriendo (Vigilando intentos de fuerza bruta)."
else
    echo "[❌] FAIL2BAN: ¡PARADO! (Revisar sudo systemctl start fail2ban)"
fi

# 3. Comprobar Auditd
if systemctl is-active --quiet auditd; then
    echo "[✅] AUDITD: Monitorizando eventos del kernel."
else
    echo "[❌] AUDITD: ¡PARADO! (Revisar sudo systemctl start auditd)"
fi

# 4. Comprobar Rkhunter (Último log)
if [ -f /var/log/rkhunter.log ]; then
    echo "[✅] RKHUNTER: Logs de integridad encontrados."
else
    echo "[❓] RKHUNTER: No se encuentran logs de escaneo recientes."
fi

echo "************************************************"
echo "  Revision Finalizada."
echo "************************************************"
