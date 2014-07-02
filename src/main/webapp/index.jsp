<%
    String remoteAddr = request.getRemoteAddr();
    String http_x_forward_for = request.getHeader("x-forwarded-for");
    if (http_x_forward_for != null && !http_x_forward_for.isEmpty()) {
        remoteAddr = http_x_forward_for;
    }
%><%=remoteAddr%>