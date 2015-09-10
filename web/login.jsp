<%-- 
    Document   : login
    Created on : Sep 10, 2015, 5:04:29 PM
    Author     : tobias
--%>

<jsp:include page="/includes/header.jsp"/>

<div class="container">

    <form class="form-signin" method="POST" action="j_security_check">
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="text" name="j_username" id="inputEmail" class="form-control" placeholder="User" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="j_password" id="inputPassword" class="form-control" placeholder="Password" required>
        <div class="checkbox">
            <label>
                <input type="checkbox" value="remember-me"> Remember me
            </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    </form>
    <%String msg = request.getParameter("error");
    if (msg != null) {%>
        <div style="color:red"><%= msg%></div>
    <%}%>
    
</div> <!-- /container -->

<jsp:include page="/includes/footer.jsp"/>
