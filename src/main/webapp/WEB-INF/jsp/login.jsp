<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html lang="en" style="height: 762px;">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Untitled</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alata&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tauri&amp;display=swap">
   <!-- <link rel="stylesheet" href="assets/css/styles.css"> -->
    <!-- Reference Bootstrap files -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

    <style>
        .failed {
            color: red;
        }
        .alert{
            font-size:14px;
            margin-left: 32px;
        }
    </style>


</head>


<body style="height: 728px;">
<div style="transform: translate(261px) translateX(2px) translateY(-369px);">
    <button class="btn btn-primary" type="button"
            style="transform: translate(-133px) translateX(-67px) translateY(285px);width: 106px;min-width: 144px;background: rgb(157,8,8);">
        Sign Out
    </button>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-6" style="width: 324px;">
            <div style="width: 763px;height: 42px;margin-bottom: 0px;padding-bottom: 0px;padding-left: 347px;padding-top: 60px;padding-right: 135px;">
                <h1 class="d-flex flex-grow-1" style="font-size: 28px;width: 938px;margin-bottom: 24px;">IDI Forms</h1>
                <div style="width: 842px;margin-left: 23px;margin-top: 40px;">
                    <div class="row" style="width: 662px;">
                        <div class="col" style="height: 461px;padding-right: 16px;padding-left: 16px;border-radius: 8px;border: 1px solid rgba(122,122,122,0.71);width: 882px;margin: 16px;">
                            <form:form action="/authenticateTheUser" style="font-size: 13px;color: rgb(102,103,103);"  method="POST" class="form-horizontal">
                                <div style="padding: 4px;margin: 0px;padding-top: 65px;padding-right: 24px;padding-bottom: 0px;padding-left: 24px;border-bottom-color: rgba(102,103,103,0);background: rgba(255,255,255,0);">

                                    <div style="padding: 0px;margin: 0px;padding-top: 3px;"><label class="form-label"
                                            style="font-size: 13px;font-weight: bold;">Username</label><input
                                            class="form-control" type="text" required=""
                                            style="height: 48px;" name="username"></div>
                                    <div style="padding: 0px;margin: 0px;padding-top: 24px;"><label class="form-label"
                                                                                                    style="font-size: 13px;font-weight: bold;">Password</label><input
                                            class="form-control" type="password"  required=""
                                            style="height: 48px;" name="password"></div>
                                    <button class="btn btn-primary" type="submit"
                                       style="width: 575px;margin-top: 96px;height: 64px;padding-left: 11px;margin-right: 0px;margin-left: 0px;padding-top: 8px;background: rgb(20,62,125);">Sign In</button>

                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>
                <div class="col-xs-10">
                    <c:if test="${param.error != null}">
                        <label class="alert alert-danger col-xs-offset-1 col-xs-10">You entered a invalid entry!</label>
                    </c:if>
                    <c:if test="${param.logout !=null}">
                        <label class="alert alert-success col-xs-offset-10 col-xs-12">You've been logged out</label>
                    </c:if>
                </div>
            </div>

        </div>
    </div>
</div>
</body>

</html>