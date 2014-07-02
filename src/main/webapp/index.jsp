<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>YOUR IP ADDRESS.</title>
    </head>
    <body>
<%
    String remoteAddr = request.getRemoteAddr();
    String http_x_forward_for = request.getHeader("x-forwarded-for");
    if (http_x_forward_for != null && !http_x_forward_for.isEmpty()) {
        remoteAddr = http_x_forward_for;
    }
%>
<span><%=remoteAddr%></span>
    </body>
</html>
