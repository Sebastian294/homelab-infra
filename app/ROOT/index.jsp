<%@ page import="java.net.InetAddress" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
    <title>Home-Lab Infra</title>
</head>
<body>

<h1>Nodo Activo: <%= InetAddress.getLocalHost().getHostName() %></h1>
<p>IP del Contenedor: <%= InetAddress.getLocalHost().getHostAddress() %></p>

<%
    // Prueba del FS compartido
    try {
        String path = "/usr/local/tomcat/webapps/shared/log.txt";
        FileWriter fw = new FileWriter(path, true);
        fw.write(
            "Visita desde " +
            InetAddress.getLocalHost().getHostName() +
            " a las " +
            new Date() +
            "\n"
        );
        fw.close();
        out.print("<p style='color:green'>Escritura en FS Compartido: EXITOSA</p>");
    } catch (Exception e) {
        out.print("<p style='color:red'>Error en FS Compartido: " + e.getMessage() + "</p>");
    }
%>

</body>
</html>
