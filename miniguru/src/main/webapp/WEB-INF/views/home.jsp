<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Miniguru</title>
    <link rel="icon" href="/resources/images/logo.png" type="image/x-icon" sizes="32x32">
    <jsp:include page="common-page/common-header.jsp"/>
	<!-- jquery -->
	<script src="/resources/js/jquery-3.4.1.min.js"></script>
	<!-- bootstrap -->
	<script src="/resources/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <div class="container" id="contactUs">
        <div class="row py-3"></div>
        <div class="row aboutUs py-3">
            <div class="col-12 col-md-6">
                <form action="saveContacts" method="post" modelAttribute="contacts">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                        <label for="inputName4">Name</label>
                        <input type="text" class="form-control" id="inputName4" placeholder="Name" name="name" required>
                        </div> 
                        <div class="form-group col-md-6">
                        <label for="inputPhone4">Email</label>
                        <input type="email" class="form-control" id="inputPhone4" placeholder="Email" name="email" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputAddress">Message</label>
                        <textarea type="text-area" class="form-control" id="inputAddress" placeholder="Message:" name="message" required></textarea>
                    </div>
                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-info">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- End of Contact Us -->
    
<script>
    document.querySelectorAll('a[href^="#"]')
    .forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();

            document.querySelector(this.getAttribute('href')).scrollIntoView({
            behavior: 'smooth'
            });
        });
    });
    window.onscroll = function() {myFunction()};

    var navbar = document.getElementById("navbar");
    var sticky = navbar.offsetTop;

    function myFunction() {
    if (window.pageYOffset >= sticky) {
        navbar.classList.add("sticky")
    } else {
        navbar.classList.remove("sticky");
    }
    }
    $("a").each(function() {
        if ((window.location.pathname.indexOf($(this).attr('active'))) > -1) {
            $(this).addClass('activeMenuItem');
        }
    });
</script>
</body>
</html>