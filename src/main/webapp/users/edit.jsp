<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/header.jsp" %>
<div class="container-fluid">

    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Users</h1>
        <a class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" href="<c:url value="/user/add"/>"><i
                class="fas fa-download fa-sm text-white-50"></i> Dodaj użytkownika</a>
    </div>

    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Edycja użytkownika</h6>
        </div>
        <div class="card-body">
            <form method="post">
                <div class="form-group">
                    <label for="userName">Nazwa</label>
                    <input name="userName" type="text" class="form-control" id="userName" value="${user.userName}">
                </div>
                <div class="form-group">
                    <label for="userEmail">Email</label>
                    <input name="userEmail" type="email" class="form-control" id="userEmail" value="${user.email}">
                </div>
                <div class="form-group">
                    <label for="userPassword">Hasło</label>
                    <input name="userPassword" type="password" class="form-control" id="userPassword" placeholder="Hasło użytkownika">
                </div>
                <input type="hidden" name="id" value="${user.id}"/>
                <button type="submit" class="btn btn-primary">Zapisz</button>
            </form>
        </div>
    </div>

</div>
<%@ include file="/footer.jsp" %>