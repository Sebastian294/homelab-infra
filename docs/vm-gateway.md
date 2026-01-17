## Configuración

- **Nombre**: vm-gateway

- **OS**: Debian / Ubuntu Server

- **CPU**: 1

- **RAM**: 1GB

- **Disco**: 10GB

- **Adaptadores** de red:

- **NIC 1 **→ VMnet8 (NAT)

- **NIC 2** → VMnet1 (Host-only)


## Rol
Servidor perimetral encargado de:
- Controlar el acceso a la red
- Proveer salida a Internet
- Aplicar reglas de firewall

## Funciones
- IP forwarding
- NAT
- Firewall básico con iptables

## Seguridad
- Forward restrictivo
- Conexiones entrantes controladas
