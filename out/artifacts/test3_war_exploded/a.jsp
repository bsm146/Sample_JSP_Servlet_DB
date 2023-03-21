<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>a</title>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>

    pageContext.request.contextPath : ${pageContext.request.contextPath}
    <br>
    request.getRequestURL : <%=request.getRequestURL()%>
    <br>
    request.getContextPath : <%=request.getContextPath()%>

    <h1>AJAX Example</h1>
    <button id="btnGetData">Get Data</button>
    <a href="${pageContext.request.contextPath}/controller/hello">bbbbbbb</a>
    <div id="result"></div>

<%--    <c:redirect url="b.jsp?b=BBB"/>--%>
    <c:redirect url="/controller/hello"/>

    <script>

        $(document).ready(function () {
            $("#btnGetData").click(function () {

                let num = 0;

                $.ajax({
                    type: "GET",
                    url: "b.jsp",
                    data: num,
                    success: function (data) {
                        $("#result").html(data);
                    }
                });
            });
        });

    </script>

</body>
</html>
