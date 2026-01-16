# Virtualización con VMware

## Plataforma
VMware se utiliza como hipervisor del laboratorio.

## Redes
- NAT: salida a Internet
- Host-only: red interna del laboratorio

## Diseño
La separación de redes permite simular un perímetro de seguridad básico
y aplicar controles de acceso entre máquinas virtuales.

## Redes virtuales en VMware Workstation

- VMnet8 (NAT):
  - Proporciona salida a Internet para actualizaciones y descargas.

- VMnet1 (Host-only):
  - Red interna aislada utilizada para la comunicación entre las máquinas virtuales del laboratorio.
