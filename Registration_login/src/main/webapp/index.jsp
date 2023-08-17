<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        
        <title>Login page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
       <div class=" d-flex justify-content-center">
        
        <form class="content1" action="Login">
            <h1 style="text-align: center;">LOGIN!!</h1><br><br>

            Enter the Username : <input type="text"  name="uname" placeholder="abc"><br><br>
            Enter the Password : <input type="Password"  name="pass" placeholder="********"><br><br><br>
            <input class="L-BUTTON" type="submit" value="LOGIN">
           
        </form>
       </div>
       <div class="d-flex justify-content-center">
        <div class="p-2">If not registerd, click</div>
        <div class="p-2"> <form action="Registration.jsp"><input class="L-BUTTON" type="submit" value="REGISTER"></form></div>
       </div>
       <footer> <h4>This is the login page.</h4>
        Harshit Srivastava</footer>
        
       
        
     
    </body>
</html>