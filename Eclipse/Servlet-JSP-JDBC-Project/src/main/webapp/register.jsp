<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background: linear-gradient(135deg, #c8f1f7, #c6ecd9, #eefaf6);
    height: 100vh;
}

.glass-card {
    backdrop-filter: blur(14px);
    -webkit-backdrop-filter: blur(14px);
    
    /* slightly darker glass */
    background: rgba(255, 255, 255, 0.4);

    border-radius: 15px;
    border: 1px solid rgba(255, 255, 255, 0.35);

    /* smoother, premium shadow */
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
}
</style>

</head>

<body class="d-flex justify-content-center align-items-center">

<div class="glass-card p-4 shadow" style="width: 400px;">
    
    <h3 class="text-center mb-3 text-success">Register</h3>
    <!-- This is where we will display the status "message" -->
    <%
    String msg=(String) request.getAttribute("message");
    if(msg!=null){
    %>
    <div class="alert alert-info text-content">
    <%=msg %>
    </div>
    <%	
    }
    %>

    <form action="regForm" method="post">

        <div class="mb-3">
            <label class="form-label">Name</label>
            <input type="text" name="name" class="form-control"/>
        </div>

        <div class="mb-3">
            <label class="form-label">Email</label>
            <input type="email" name="email" class="form-control"/>
        </div>

        <div class="mb-3">
            <label class="form-label">Password</label>
            <input type="password" name="password" class="form-control"/>
        </div>

        <div class="mb-3">
            <label class="form-label">Gender</label><br/>
            <input type="radio" name="gender" value="male"/> Male
            <input type="radio" name="gender" value="female"/> Female
        </div>

        <div class="mb-3">
            <label class="form-label">City</label>
            <select name="city" class="form-select">
                <option>Select Current City</option>
                <option>Bangalore</option>
                <option>Pune</option>
                <option>Hyderabad</option>
                <option>Mumbai</option>
                <option>Delhi</option>
            </select>
        </div>

        <button type="submit" class="btn btn-success w-100">Register</button>
    </form>

    <p class="text-center mt-3">
        Already have an account? <a href="login.jsp">Login</a>
    </p>

</div>

</body>
</html>