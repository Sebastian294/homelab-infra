# Arquitectura del HomeLab

## Objetivo
Definir la arquitectura base del laboratorio de infraestructura Linux,
simulando un entorno empresarial real.

## Virtualización
Se utiliza un hipervisor para aislar servicios y facilitar escalabilidad y backups.

## Componentes
- Host físico
- Hipervisor
- Máquinas virtuales separadas por rol

## Máquinas virtuales
### vm-gateway
- Control de acceso
- Firewall
- NAT

### vm-web
- Servidor web Apache
- VirtualHosts
- Certificados SSL

### vm-admin
- Administración
- Automatización
- Análisis de logs

## Red
- Red interna privada
- Acceso externo limitado y controlado

## Seguridad
- Principio de mínimo privilegio
- Hardening progresivo
- Enfoque defensivo
