<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password</title>

    <%@include file="../component/allcss.jsp"%>

    <style type = "text/css">
        .point-card {
            box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
            margin-bottom: 20px;
        }

    </style>

</head>
<body>
    <%@include file="../component/navbar.jsp"%>

    <c:if test="${empty userObj}">
        <c:redirect url="user_login.jsp"></c:redirect>
    </c:if>

    
    <div class="container p-5">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card point-card">

                    <p class="text-center fs-3">Change Password</p> 

                        <c:if test="${not empty sucMsg }">
                            <p class="text-center text-success fs-3">${sucMsg}</p>
                            <c:remove var="sucMsg" scope="session"/>
                        </c:if>

                        <c:if test="${not empty errorMsg }">
                            <p class="text-center text-danger fs-3">${errorMsg}</p>
                            <c:remove var="errorMsg" scope="session"/>
                        </c:if>

                        <div class="card-body">

                            <form action="changePassword" method="post">
                                <div class="mb-3">
                                    <label>Enter Old Password</label> <input type="text" name="oldPassword" class="form-control" required>
                                </div>

                                <div class="mb-3">
                                    <label>Enter New Password</label> <input type="text" name="newPassword" class="form-control" required>
                                </div>

                                <input type ="hidden" value="${userObj.id}" name="uid">

                                <button class="btn btn-success col-md-12">Confirm</button>
                            </form>
                        </div>
                </div>
            </div>
        </div>
    </div>
    
</body>
</html>