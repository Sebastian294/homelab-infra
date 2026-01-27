#  Desde nuestra VM se ejecuta lo siguiente:

```bash
$ docker exec -it lab-app_node_1-1 tail  /usr/local/tomcat/webapps/shared/log.txt
```
<img width="768" height="199" alt="image" src="https://github.com/user-attachments/assets/0743364a-f07f-4405-be85-6128cc2f0603" />

Se observa un balanceo de carga entre los contenedores con ID 189d92bfe223 y edb0a498be6a
