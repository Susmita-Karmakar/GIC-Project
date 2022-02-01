<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gudea&display=swap" rel="stylesheet">
        <style>@import url("userProfile.css");body{
background-image:url("laptop.jpg");
}</style>
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>GIC Project</title>
</head>
<body>
    <div>
        <nav id="navbar">
            <div id="nav1">
                <h1><i style="font-size: 50px;" class="fa fa-laptop"></i>&nbsp ProJeM</h1>
           </div>
           <div id="list">
               <ul>
                    <li><a href="home" class="btn-1"><span><i class="fa fa-home"></i>&nbsp</span>Home</a></li>
                   <li><a href="loginForm" class="btn-1"><span><i class="fa fa-user"></i>&nbsp</span>Login</a></li>
                   <li><a href="registerForm" class="btn-1"><span><i class="fa fa-users"></i>&nbsp</span>Register</a></li>
                   <li><a href="FAQ" class="btn-1"><span>&nbsp</span>FAQs</a></li>
                   <li><a href="contact" class="btn-1"><span><i class="fa fa-phone"></i>&nbsp</span>Contact Us</a></li>
                   
               </ul>
           </div>
            
        </nav>
    </div>
    <div id="main-body" style="background-repeat: no-repeat;
    background-size: cover;color:white;background-color: rgba(0, 0, 0, 0.616);" >
        <table class="container">

            <tr>
                <th>Name</th>
                <th>Date of Birth</th>
                <th>Address</th>
                <th>Phone Number</th>
                <th>Email</th>
            </tr>
            <tr>
                <td>${loginKey.name}</td>
                <td>${loginKey.dob}</td>
                <td>${loginKey.address}</td>
                <td>${loginKey.phoneNumber}</td>
                <td>${loginKey.email}</td>
    
            </tr>
    
    
    </table>
    </div>
    
</body>
</html>