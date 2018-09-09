<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="PerfetMarriage_01March2018_.Admin77.login" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <title>Admin Panel</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <link rel="icon" href="img/SMALLLOGO.png"/>
  <link href="dist/main_admin.css" rel="stylesheet" />
    <script>
        $(document).ready(function () {
            function checkTime(i) {
                if (i < 10) {
                    i = "0" + i;
                }
                return i;
            }

            function startTime() {
                var today = new Date();
                var h = today.getHours();
                var m = today.getMinutes();
                var s = today.getSeconds();
                // add a zero in front of numbers<10
                m = checkTime(m);
                s = checkTime(s);
                $("#time").html(h + ":" + m + ":" + s);
                t = setTimeout(function () {
                    startTime()
                }, 500);
            }
            startTime();
        });
    </script>
</head>
<body>

    <form runat="server" id="form">
         <link href='http://fonts.googleapis.com/css?family=Raleway:400,200' rel='stylesheet' type='text/css'>

<div class="container">
	<div class="row login_box mb-5">
	    <div class="col-md-12 col-xs-12" align="center">
            <div class="line"><h3 id="time">12 : 30 AM</h3></div>
            <div class="outter"><img src="../img/m3.png" class="image-circle"/></div>   
            <h1>Hi Admin</h1>
	    </div>
        
        <div class="col-md-12 col-xs-12 login_control">
                
                <div class="control">
                    <div class="label">User</div>
                    <input type="text" class="form-control"  required runat="server" id="User"/>
                </div>
                
                <div class="control">
                     <div class="label">Password</div>
                    <input type="password" class="form-control" required runat="server" id="password"/>
                </div>
                <div align="center">
                     <button class="btn btn-orange" type="submit" runat="server" onserverclick="Unnamed_ServerClick">LOGIN</button>
                </div>
                
        </div>
        

       
            
    </div>
</div>

        

        
    </form>
</body>
</html>
