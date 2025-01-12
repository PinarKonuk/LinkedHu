<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Reported Groups</title>
    <link rel="stylesheet" href="../../resources/static/css/admin.css">
    <script src="https://kit.fontawesome.com/6e9897a906.js" crossorigin="anonymous"></script>
</head>
<body>

<!----Nav Bar starts---->
<nav>
    <!----Logo starts---->
    <div class="logo">
        <label> <i id="icon" class="fa-solid fa-globe"></i> LinkedHU_CENG</label>

    </div>
    <!----Logo ends---->

    <!----Search form starts---->
    <div class="search-form">
        <input id="search-bar" type="search" placeholder="      Search..">
        <button type="submit" id="search-button">
            <i class="fa-solid fa-magnifying-glass"></i>
        </button>
    </div>
    <!----Search form ends---->

    <div class="profile">
        <a> Hacettepe CS Sekreterlik <img class="profile-photo" src="../../resources/static/img/hacettepe-logo.jpg"></a>
    </div>

</nav>
<!----Nav Bar ends---->
<main class="container">
    <!----Left starts---->
    <div class="left">

        <div class="menu">
            <a class="menu-item" href="enrollments"><span><i
                    class="fa-solid fa-circle-check"></i><p> Enrollments </p></span></a>
            <a class="menu-item" href="manage-accounts"><span><i
                    class="fa-solid fa-user"></i><p>Manage Accounts</p></span></a>
            <a class="menu-item " id="reports-bans"><span><i
                    class="fa-solid fa-circle-minus"></i><p>Reports and Bans</p></span></a>
            <div class="hidden-pages">
                <a class="menu-item sub-item" href="reported-accounts"><span><i
                        class="fa-solid fa-user-slash"></i><p>Accounts </p></span></a>
                <a class="menu-item sub-item active-menu-item" href="reported-groups"><span><i
                        class="fa-solid fa-users-between-lines"></i><p>Groups </p></span></a>
                <a class="menu-item sub-item" href="reported-posts"><span><i
                        class="fa-solid fa-file-circle-exclamation"></i><p>Posts </p></span></a>
            </div>
            <a class="menu-item" href="/mail"><span><i class="fa-solid fa-envelope"></i>Send Email</span></a>

        </div>
    </div>
    <!----Left ends---->

    <!----Right starts---->
    <div class="right">
        <h3 class="title">Reported Groups</h3>
        <div class="accounts groups">
            <div class=actions>
            </div>
            <div class="reported-accounts-header">
                <p>Group Name</p>
                <p>Number of Reports</p>
                <p>Number of Members</p>
                <p>Group Founder</p>
                <p>Delete Group</p>
            </div>
            <c:forEach items="${groups}" var="group">
                <div class="profile-summary reported group">
                    <div class="reported-group-info">
                        <a><img class="profile-photo" src="../displayGp/${group.id}"></a>
                        <p>${group.name}</p>
                    </div>
                    <p class="reports-number">${group.reportCount}</p>
                    <p class="member-number">${group.getMembers().size()}</p>
                    <p class="group-admin"> ${group.founder.firstName} ${group.founder.lastName}</p>

                    <button class="button delete" onclick="location.href='reported-groups/deleteGroup/${group.id}'">Delete Group</button>

                </div>
            </c:forEach>
        </div>
    </div>
    <!----Right ends---->
</main>


<script src="../../resources/static/js/main.js">
</script>
</body>
</html>