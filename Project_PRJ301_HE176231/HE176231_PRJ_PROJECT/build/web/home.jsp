<%-- 
    Document   : home
    Created on : Mar 7, 2023, 8:08:50 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>

        <link href="css/style.css" rel="stylesheet" type="text/css"/>

    </head>
    <style>
        #header{
            position: fixed;
            width: 100%;
            height: auto;
        }
    </style>
    <body style="background-color: black">
        <div id="header">

            <ul>
                <a href="home">
                    <img width="auto"height="50px" src="img/icon.jpg"/>
                </a>
                <div style="display: inline-flex;
                     color: white;
                     font-family: fantasy;
                     font-size: xx-large;">Curse forge </div>
                <c:if test="${sessionScope.acc==null}">
                    <li><a href="signup.jsp">Sign Up</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    </c:if>
                    <c:if test="${sessionScope.acc!=null}">
                    <li><a href="profile.jsp">Profile</a></li>
                    <li><a href="logout">Logout</a></li>
                    <li> <img src="img/Alexface.png" width="40px" alt=""/></li>
                        ${sessionScope.acc}
                    </c:if>

            </ul>

        </div>
        <style>
            #daude{
                padding-top: 1rem;
            }
        </style>
        <div class="hinhanh" id="daude">
            <img width="100%" height="300px" src="img/Sitting in the sun.png" alt=""/>
        </div>
        <div id="second">


            <div class="search">
                <style>
                    .search{
                        border: 5px;
                        border-color: gold;
                    }
                </style>



            </div>
            <div style="margin-left: 3rem;">
                <a style="text-decoration: none;font-size: 2rem; display: none" href="getTypes"> Show types </a><br/><!-- comment -->
            </div>

            <ul id="typechose" style="display: inline-flex;">
                <a style="padding-right: 7rem;background-image: url(img/All.png)" href="getMod?type_id=9"></a>


                <c:forEach items="${requestScope.type}" var="c">
                    <li>

                        <a style="padding-right: 7rem; text-decoration:none;font-style:italic ;color:cornsilk" href="home?type_id=${c.type_id}">
                            <img src="${c.imagine}" width="40px" height="auto" alt=""/>
                            ${c.type_name}
                        </a>
                    </li>
                </c:forEach>




                <div class="sreach">
                    <form action="home" method="get"> 
                        <input type="text" name="modname" placeholder="Enter mod's name..."><!-- comment -->
                        <input type="submit" value="SEARCH">
                        <label for="id">text</label>
                    </form>


                </div>

                <style>
                    .dropbtn {
                        background-color: #a49fad;
                        color: black;
                        padding: 5px;
                        padding-left: 1rem;
                        padding-right: 1rem;
                        font-size: 19px;
                        border: 2px navy;
                    }

                    .dropdown {
                        position: relative;
                        display: inline-block;
                    }

                    .dropdown-content {
                        display: none;
                        position: absolute;
                        background-color: gainsboro;
                        min-width: 190px;
                        box-shadow: 0px 8px 19px 0px rgba(0,0,0,0.2);
                        z-index: 1;
                    }

                    .dropdown-content a {
                        color: black;
                        padding: 12px 16px;
                        text-decoration: none;
                        display: block;
                        font-family:'Courier New';
                        font-size: 16px;
                    }

                    .dropdown-content a:hover {
                        background-color: #ddd;
                    }

                    .dropdown:hover .dropdown-content {
                        display: block;
                    }

                    .dropdown:hover .dropbtn {
                        background-color: #3e8e41;
                    }
                </style>

                <div style="display: inline">


                    <div class="dropdown">
                        <select class="dropbtn" name="sortby">Sort by
                            <div class="dropdown-content">
                                <option value="1">Day of create</a>
                                <option  value="2">Version</a>
                                <option value="3">Number of download</a>
                                    </select>>
                            </div>
                    </div>

                    <div class="dropdown">
                        <select name="Other" class="dropbtn">Other
                            <div class="dropdown-content">

                                <option value="1">World</option>
                                <option value="2">Modpack</option>
                                <option value="3">Resource</option>

                        </select>
                    </div>
                </div>



                <c:if test="${sessionScope.acc!=null}">
                    <style>
                        #add{
                            margin-left: 20px;
                            margin-right:20px;
                            margin-top: 10px;
                            margin-bottom: 10px;
                            border: 2px;
                            border-color: gray;
                            background-color: #333333;
                            color: white;
                            display: flex;
                            border-radius: 10px;
                            float: top;

                        }
                        #add a:link{
                            float: top;
                            text-decoration: none;
                            color: hotpink;

                        }
                    </style>
                    <div style="text-align: center; color: wheat">
                        <c:if test="${sessionScope.AD!=null}">
                            <a href="add">
                                <img height="30px" width="auto" src="img/add.png" alt=""/>
                            </a>
                        </div>   
                    </c:if>
                    
                        
                </c:if>




                <c:if test="${listrespone}!=null&&${listrespone}==Modpack">
                    <c:forEach items="${requestScope.listrespone}" var="c">
                        <div id="boxing">
                            <img style="float:left;" src="${c.imagine}" alt=""/>
                            <a href="home.jsp"></a>

                            <a  style="padding-left: 2rem; float: next" href="see?id=${c.mod_id}">
                                ${c.mod_name}
                            </a>
                            <p style="padding-right:5rem;padding-left:1rem; float: next;text-align: center;font-size: 19px">
                                ${c.mod_detail}
                            </p>
                            <p style="padding-right:5rem;padding-left:1rem; float: right;text-align: right;font-size: 10px">
                                ${c.date}
                            </p>
                        </div>
                    </c:forEach>

                </c:if>     
                <c:if test="${listrespone}!=null&&${listrespone}=='World'">
                    <c:forEach items="${requestScope.listrespone}" var="c">
                        <div id="boxing">
                            <img style="float:left;" src="${c.imagine}" alt=""/>
                            <a href="home.jsp"></a>

                            <a  style="padding-left: 2rem; float: next" href="see?id=${c.world_id}">
                                ${c.world_name}
                            </a>
                            <p style="padding-right:5rem;padding-left:1rem; float: next;text-align: center;font-size: 19px">
                                ${c.world_detail}
                            </p>
                            <p style="padding-right:5rem;padding-left:1rem; float: right;text-align: right;font-size: 10px">
                                ${c.date}
                            </p>
                        </div>
                    </c:forEach>

                </c:if>
                <c:if test="${listrespone}!=null&&${listrespone}=='Resource'">
                    <c:forEach items="${requestScope.listrespone}" var="c">
                        <div id="boxing">
                            <img style="float:left;" src="${c.imagine}" alt=""/>
                            <a href="home.jsp"></a>

                            <a  style="padding-left: 2rem; float: next" href="see?id=${c.Resource_id}">
                                ${c.Resource_name}
                            </a>
                            <p style="padding-right:5rem;padding-left:1rem; float: next;text-align: center;font-size: 19px">
                                ${c.Resource_detail}
                            </p>
                            <p style="padding-right:5rem;padding-left:1rem; float: right;text-align: right;font-size: 10px">
                                ${c.date}
                            </p>
                        </div>
                    </c:forEach>

                </c:if>



                <c:forEach items="${requestScope.listmodbytypes}" var="c">
                    <div id="boxing">
                        <img style="float:left;" src="${c.imagine}" alt=""/>
                        <a href="home.jsp"></a>

                        <a  style="padding-left: 2rem; float: next" href="see?id=${c.mod_id}">
                            ${c.mod_name}
                        </a>
                        <p style="padding-right:5rem;padding-left:1rem; float: next;text-align: center;font-size: 19px">
                            ${c.mod_detail}
                        </p>
                        <p style="padding-right:5rem;padding-left:1rem; float: right;text-align: right;font-size: 10px">
                            ${c.date}
                        </p>
                    </div>
                </c:forEach>



        </div>

        <style>
            #boxing{
                margin-left: 20px;
                margin-right:20px;
                margin-top: 10px;
                margin-bottom: 10px;
                border: 2px;
                border-color: gray;
                background-color: #333333;
                color: white;
                display: flex;
                border-radius: 10px;
                float: top;

            }
            #boxing a:link{
                float: top;
                text-decoration: none;
                color: hotpink;

            }
        </style>






        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <div class="footer">
            <p class="Ceator">
                Made with ♥ by An the Students of FPT<br/>
                Admin:antrung@gmail.com
                <a href="https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox">Contact Me</a>


                <c:if test="${sessionScope.AD!=null}">
                    <a href="statistic">Statistic of server!</a>
                </c:if>
            </p>
        </div>
    </body>
</html>
