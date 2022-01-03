<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security"  uri="http://www.springframework.org/security/tags"%>


<html lang="en" style="height: 762px;">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Untitled</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alata&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tauri&amp;display=swap">
    <link rel="stylesheet" href="assets/css/styles.css">
    	<!-- Reference Bootstrap files -->
	<link rel="stylesheet"
		 href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

	<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>

	<style>

			.btn-secondary{
				  margin-left: 8px;
				  width: 104px;
				  height: 32px;
				  background: rgb(132,8,0);
				  font-size: 13px;
				}
			.btn-secondary:hover{
			    background: rgb(182,24,16);
			}
			.form-control{
  		  	  font-size:13px;
  			}
			.btn,btn-primary{
			  font-size: 13px;
			  width:130px;
                width: 104px;
                height: 32px;
			}
			.table td, .table th {
       		 font-size: 14px;
   			 }

	</style>



</head>

<body style="height: 728px;">
    <nav class="navbar navbar-light navbar-expand-md my-auto" style="height: max;width: 256px;max-height: none;min-height: 729px;background: #003875;min-width: 256px;max-width: 256px;">

      	<form:form action="${pageContext.request.contextPath}/logout" method="POST">

        <div class="container-fluid"><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav" style="width: 247px;height: 367px;transform: translateY(-77px);">
                    <li class="nav-item" style="transform: translateY(0px);width: 211px;height: 186px;font-size: 16px;color: rgb(64,108,153);">
                        <div style="width: 1080px;transform: translate(288px) translateY(-115px);height: 1368px;padding: 0;margin-top: 24px;">
                            <div style="transform: translateX(-45px) translateY(-35px);width: 1080;height: 10px;">
                                <h1 class="d-flex flex-grow-1" style="font-size: 14px;width: 1080px;color: rgb(86,86,86);transform: translateX(0px) translateY(-23px);border: 0px none var(--bs-body-bg);border-bottom: 1px solid rgb(72,72,72);padding-left: 22px;margin-bottom: 0;margin-top: 0;padding-top: 0px;padding-bottom: 9px;">IDI Spec Sheet</h1>
                            </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-6" style="padding-top:40px;width: 324px;">
                                        <div style="width: 763px;height: 42px;margin-bottom: 0px;padding-bottom: 0px;">
                                            <h1 class="d-flex flex-grow-1" style="font-size: 28px;width: 938px;margin-bottom: 24px;">Home</h1>
                                            <div style="width: 990px;margin-left: 23px;margin-top: 40px;">
                                                <div class="row">
                                                    <div id="tableBorder" class="tableBorder" style="height: 350px;padding-right: 16px;padding-left: 16px;border-radius: 8px;border: 1px solid rgba(122,122,122,0.71);">
                                                        <div class="card" style="margin-top: 24px;height: 30px;background: rgb(0,51,106);margin-right: 4px;margin-left: 4px;">
                                                            <div class="card-body" style="padding: 0px;margin: 0px;margin-top: 10px;transform: translateY(-4px);margin-left: 8px;font-size: 16px;">
                                                                <h4 class="card-title" style="font-size: 13px;margin: 0px;padding: 0px;padding-bottom: 0px;color: rgb(247,247,247);">My Projects</h4>
                                                            </div>
                                                                <div style="padding: 4px;margin: 0px;padding-top: 24px;">
                                                                    <div class="table-responsive">
                                                                        <table  class="table" id="projTbl">
                                                                            <thead>
                                                                                <tr>
                                                                                    <th style="text-align: left;">Name</th>
                                                                                    <th style="text-align: left;">Job #</th>
                                                                                    <th style="text-align: left;">Action</th>
                                                                                </tr>
                                                                            </thead>
                                                                              <c:forEach items="${projects}" var="project" >
																	               <!-- construct an "view" link with proj id -->
																					<c:url var="view" value="/showSelProj">
																						<c:param name="projId" value="${project.id}" />

																					</c:url>
																					<!-- construct an "delete" link with proj id -->
																					<c:url var="remove" value="/deleteProj">
																						<c:param name="projId" value="${project.id}" />
																					</c:url>
    																			<tr>
																				     <td><span><label style="padding:8px;width:400px;">${project.pName}</label></span></td>
																				     <td><span><label  style="padding:8px;width:100px;">${project.id}</label></span></td>
																					 <td>
																				    		<div class="btn-group" role="group">
																				    		<a class="btn btn-primary" href="${view}" id="view"> View </a>
																							<a  style="margin-left:16px;" class="btn btn-primary btn-secondary" href="${remove}" onclick="if (!(confirm('Are you sure you want to delete this employee?'))) return false" id="remove"> Remove </a>
																				    	</div>
																				    </td>
																				 </tr>
																			 </c:forEach>
                                                                        </table>

                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col"><a class="btn btn-primary" role="button" id="newProject" style="background: rgb(20,62,125);padding-top:6px;margin-top: 16px;font-size: 13px;height: 36px;width: 144px;" href="showInfo" >Create New Project</a></div>
                                                                    </div>
                                                                </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col bounce animated">
                                                        <div class="alert alert-success invisible bounce animated beautiful" role="alert"><Strong>Success!</Strong> Created app successfully.</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <input class="btn btn-primary" value="Log Out" type="submit" id="signOut" style="transform: translateX(32px) translateY(88px);height:36px;width: 106px;min-width: 140px;background: rgb(132,8,0);"/></div>
        </div>
        </form:form>
    </nav>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
</body>

<script>
  var projects = document.getElementById('projTbl');
  var pLen = projects.rows.length;
  console.log(pLen);
  if(pLen==1){
	  $('.tableBorder').height((250));
  }else{
	  $('.tableBorder').height((pLen * 100)+50);
  }
</script>

</html>