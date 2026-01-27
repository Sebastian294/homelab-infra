# Se documenta el escenario en el que un contenedor queda fuera de servicio o falla

**Detenemos uno de los contenedores:**

Primero, verificamos que el tráfico esté distribuido:

```bash
  $ docker exec -it lab-app_node_1-1 tail  /usr/local/tomcat/webapps/shared/log.txt
```

<img width="773" height="198" alt="image" src="https://github.com/user-attachments/assets/656b7b4e-4ef1-41f1-b139-13460f513a78" />

Se evidencia una alternancia de tráfico entre los contenedores con ID 7d451b395d02 y 5dbd510feb81

Luego, detenemos uno de los contenedores:

```bash
  $ docker stop lab-app_node_2-1
```

Revisamos el trafico:

```bash
  $ docker exec -it lab-app_node_1-1 tail  /usr/local/tomcat/webapps/shared/log.txt
```

<img width="778" height="198" alt="image" src="https://github.com/user-attachments/assets/1f015898-f6eb-4a3a-8c9e-f167e0b0060f" />

Se observa que el tráfico se redirige exclusivamente al contenedor con ID 5dbd510feb81
