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
    <link rel="stylesheet" href="assets/css/styles.css">
    	<!-- Reference Bootstrap files -->
	<link rel="stylesheet"
		 href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	
	<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
	
	<script>


	</script>
	
	<style>
		.error{color:red;
		     font-size: 12px;
		     padding-left:8px; 
		}
		.btn-secondary{
		  "padding: 0px;
		  padding-left: 0;
		  margin-left: 8px;
		  width: 86px;
		  background: rgb(132,8,0);
		  font-size: 13px;"
		}
		.float-end{
		  font-size: 13px;
		}
		.form-control{
  		  font-size:13px;
  		}
		.btn,btn-primary{
		  font-size: 15px;
		}

        .file-upload{
            height:32px;
        }
		
	</style>
</head>	


<body style="height: 728px;">
    <nav class="navbar navbar-light navbar-expand-md my-auto" style="height: max;width: 256px;max-height: none;min-height: 729px;background: #003875;min-width: 256px;max-width: 256px;">
        <form:form   enctype="multipart/form-data"  action="/showProjSpecs" style="font-size: 13px;color: rgb(102,103,103);" method="POST" modelAttribute="projectinfo">
	         <!--  Associate data with Project Id -->
	       	<form:hidden path="id"/>
	         <div class="container-fluid"><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
	            <div class="collapse navbar-collapse" id="navcol-1">
	                <ul class="navbar-nav" style="width: 247px;height: 367px;transform: translateY(-77px);">
	                    <li class="nav-item" style="transform: translateY(0px);width: 211px;height: 186px;font-size: 16px;color: rgb(64,108,153);"><a class="nav-link" href="#" style="color: rgba(249,249,249,1);font-family: 'Nunito Sans', sans-serif;font-weight: bold;background: rgba(204,200,200,0.7);width: 244px;padding-left: 32px;">Project Info</a>
                            <a class="nav-link" href="#" style="color: rgba(249,249,249,.4);font-family: 'Nunito Sans', sans-serif;font-weight: bold;background: rgba(204,200,200,0.0);width: 244px;padding-left: 32px;margin-top: 8px;">Project Specs</a>
                            <a class="nav-link" href="#" style="color: rgba(249,249,249,.4);font-family: 'Nunito Sans', sans-serif;font-weight: bold;background: rgba(204,200,200,0.0);width: 244px;padding-left: 32px;margin-top: 8px;">General</a>
	                        <div style="width: 1080px;transform: translate(288px) translateY(-125px);height: 1368px;">
	                            <div style="transform: translateX(-45px) translateY(-35px);width: 1080;height: 10px;">
	                                <h1 class="d-flex flex-grow-1" style="font-size: 14px;width: 1080px;color: rgb(86,86,86);transform: translateX(0px) translateY(-48px);border: 0px none var(--bs-body-bg);border-bottom: 1px solid rgb(72,72,72);padding-left: 22px;margin-bottom: 0;margin-top: 0;padding-top: 1px;padding-bottom: 9px;">IDI Spec Sheet</h1>
	                            </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-6" style="width: 324px;">
                                        <div style="width: 763px;height: 42px;margin-bottom: 0px;padding-bottom: 0px;">
                                            <h1 class="d-flex flex-grow-1" style="font-size: 28px;width: 938px;margin-bottom: 24px;"></h1>
                                            <div style="width: 990px;margin-left: 23px;margin-top: 40px;">
                                                <div class="row">
                                                    <div class="col" style="height: 560px;padding-right: 16px;padding-left: 16px;border-radius: 8px;border: 1px solid rgba(122,122,122,0.71);">
                                                        <div class="card" style="margin-top: 24px;height: 30px;background: rgb(0,51,106);margin-right: 4px;margin-left: 4px;">
                                                            <div class="card-body" style="padding: 0px;margin: 0px;margin-top: 10px;transform: translateY(-4px);margin-left: 8px;font-size: 16px;">
                                                                <h4 class="card-title" style="font-size: 13px;margin: 0px;padding: 0px;padding-bottom: 0px;color: rgb(247,247,247);">Project Details</h4>
                                                            </div>
                                                                <div style="padding: 4px;margin: 0px;padding-top: 24px;"><label class="form-label" style="font-size: 12px;font-weight: bold;">Project Name (*)</label><form:input class="form-control" style="height:38px;" type="text" required="" path="pName" value="${projectinfo.pName}"/></div>
                                                                <form:errors path="pName" cssClass="error" />
                                                                <div style="padding: 4px;margin: 0px;padding-top: 24px;"><label class="form-label file-upload" style="height:24px;font-size: 12px;font-weight: bold;">Manifest</label><form:input multiple="true" class="form-control file-upload" type="file" accept=".xls,.xlsx" required="" path="pManifest" /></div>
                                                           
                                                                <div style="padding: 4px;margin: 0px;padding-top: 24px;">
                                                                    <div style="border-radius: 0px;border-bottom: 1px solid rgb(191,191,191) ;"><label class="form-label" style="font-size: 12px;font-weight: bold;">Post-Process Notes</label></div>
                                                                    <div style="padding-left: 8px;padding-top: 16px;padding-right: 8px;">
                                                                        <div><span style="font-size: 14px;">Delete Blanks</span>
                                                                        <form:checkbox class="float-end"  data-bss-hover-animate="pulse" id="${projectinfo.ppBlanks}" style="width: 16px; height: 16px;" path="ppBlanks"/>
                                                                            <div><span style="font-size: 14px;" >Bookmarking</span><form:checkbox class="float-end"  data-bss-hover-animate="pulse" id="${projectinfo.ppBookmark}" style="width: 16px;height: 16px;"  path="ppBookmark" value="${projectinfo.ppBookmark}"/>
                                                                            <div><span style="font-size: 14px;">Embed</span><form:checkbox class="float-end"  data-bss-hover-animate="pulse" id="${projectinfo.ppEmbed}" style="width: 16px;height: 16px;" path="ppEmbed"  value="${projectinfo.ppEmbed}"/></div>
                                                                            <div><span style="font-size: 14px;" >Extraction</span><form:checkbox class="float-end" data-bss-hover-animate="pulse" id="${projectinfo.ppExtract}" style="width: 16px;height: 16px;" path="ppExtract"  value="${projectinfo.ppExtract}"/></div>
                                                                                <div><span style="font-size: 14px;" >Metadata</span><form:checkbox class="float-end"  data-bss-hover-animate="pulse" id="${projectinfo.ppMeta}" style="width: 16px;height: 16px;"  path="ppMeta" value="${projectinfo.ppMeta}"/>                                                                                </div>
                                                                                  <div><span style="font-size: 14px;">OCR</span><form:checkbox class="float-end"  data-bss-hover-animate="pulse" id="${projectinfo.ppOCR}" style="width: 16px;height: 16px;" path="ppOCR" value="${projectinfo.ppOCR}"/></div>                                     
                                                                                    <div><span style="font-size: 14px;">Luratech</span><form:checkbox class="float-end"  data-bss-hover-animate="pulse" id="${projectinfo.ppLtech}" style="width: 16px;height: 16px;" path="ppLtech" value="${projectinfo.ppLtech}"/></div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                     <div style="padding: 4px;margin: 0px;padding-top: 16px;"><label class="form-label" style="font-size: 12px;font-weight: bold;">Sample Due Date</label>
                                                                <form:input style="height:38px;"  class="form-control" id="sampleDate" type="date" path="sampleDate"  value="${projectinfo.sampleDate}"/></div>
                                                           
                                                        </div>
                                                    </div>
                                                    <div class="col" style="padding-left: 16px;padding-right: 0px;">
                                                        <div class="container" style="padding-right: 0px;padding-left: 0px;">
                                                            <div class="col" style="height: 309px;padding-right: 16px;padding-left: 16px;border-radius: 8px;border: 1px solid rgba(122,122,122,0.71);">
                                                                <div>
                                                                    <div class="card" style="margin-top: 24px;height: 30px;background: rgb(0,51,106);margin-right: 4px;margin-left: 4px;">
                                                                        <div class="card-body" style="padding: 0px;margin: 0px;margin-top: 10px;transform: translateY(-4px);margin-left: 8px;font-size: 16px;">
                                                                            <h4 class="card-title" style="font-size: 13px;margin: 0px;padding: 0px;padding-bottom: 0px;color: rgb(247,247,247);">Preparation</h4>
                                                                        </div>
                                                                            <div style="padding: 4px;margin: 0px;padding-top: 24px;">
                                                                                <div style="border-radius: 0px;border-bottom: 1px solid rgb(191,191,191);font-size: 14px;"><label class="form-label" style="font-weight: bold;font-size: 12px;">Pre-Prep</label></div>
                                                                                <div style="padding-left: 8px;padding-top: 16px;padding-right: 8px;">
                                                                                    <div><span style="font-size: 14px;">Send to Prep</span><form:checkbox  class="float-end" data-bss-hover-animate="pulse" id="${projectinfo.prepArc}" style="width: 16px;height: 16px;" path="prepArc"  value="${projectinfo.prepArc}"/></div>
                                                                                        <div><span style="font-size: 14px;">Cut Binding</span><form:checkbox  class="float-end" data-bss-hover-animate="pulse" id="${projectinfo.prepBind}" style="width: 16px;height: 16px;" name="cutBinding" path="prepBind" value="${projectinfo.prepBind}"/></div>
                                                                                </div>
                                                                            </div>
                                                                            <div style="padding: 4px;margin: 0px;padding-top: 24px;">
                                                                                <div style="border-radius: 0px;border-bottom: 1px solid rgb(191,191,191) ;"><label class="form-label" style="font-size: 12px;font-weight: bold;">Post-Prep</label></div>
                                                                                <div style="padding-left: 8px;padding-top: 16px;padding-right: 8px;">
                                                                                    <div><span style="font-size: 14px;">Re-Prep</span><form:checkbox  class="float-end"   id="${projectinfo.pprep}" style="width: 16px;height: 16px;"  path="pprep" value="${projectinfo.pprep}"/>
                                                                                        <div><span style="font-size: 14px;">Shredding</span><form:checkbox class="float-end"  id="${projectinfo.pShred}" style="width: 16px;height: 16px;"  path="pShred" value="${projectinfo.pShred}"/></div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col" style="height: 242px;padding-right: 16px;padding-left: 16px;border-radius: 8px;border: 1px solid rgba(122,122,122,0.71);margin-top: 8px;">
                                                                <div>
                                                                    <div class="card" style=" margin-top: 24px; height: 30px; background: rgb(0,51,106); margin-right: 4px; margin-left: 4px;">
                                                                        <div class="card-body" style="padding: 0px;margin: 0px;margin-top: 10px;transform: translateY(-4px);margin-left: 8px; font-size: 16px;">
                                                                            <h4 class="card-title" style="font-size: 13px;margin: 0px;padding: 0px;padding-bottom: 0px;color: rgb(247,247,247);">Indexing</h4>
                                                                        </div>
                                                                            <div style="padding: 4px;margin: 0px;padding-top: 24px;"><label class="form-label" style="font-size: 12px;font-weight: bold;">Requirements</label>
                                                                            <form:textarea class="form-control" id="indexingReq" style="max-height:109px; height: 109px;" name="indexingReq" path="indexReq" value="${projectinfo.indexReq}"/></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" style="margin-top: 8px;padding-right: 0px;">
                                                    <div class="col" style="height: 396px;padding-right: 16px;padding-left: 19px;border-radius: 8px;border: 1px solid rgba(122,122,122,0.71);margin-right: 0px;">
                                                        <div>
                                                            <div class="card" style="margin-top: 24px;height: 30px;background: rgb(0,51,106);margin-right: 4px;margin-left: 4px;">
                                                                <div class="card-body" style="padding: 0px;margin: 0px;margin-top: 10px;transform: translateY(-4px);margin-left: 8px;font-size: 16px;">
                                                                    <h4 class="card-title" style="font-size: 13px;margin: 0px;padding: 0px;padding-bottom: 0px;color: rgb(247,247,247);">Delivery</h4>
                                                                </div>
                                                                    <div style="padding: 4px;margin: 0px;padding-top: 24px;">
                                                                        <div style="border-radius: 0px;border-bottom: 1px solid rgb(191,191,191) ;"><label class="form-label" style="font-size: 12px;font-weight: bold;">Physical Delivery</label></div>
                                                                        <div style="padding-left: 8px;padding-top: 16px;padding-right: 8px;">
                                                                            <div><span style="font-size: 14px;">CD / DVD</span><form:checkbox class="float-end"  data-bss-hover-animate="pulse"  style="width: 16px;height: 16px;" name="pCDDVD" path="pDelCD"  id="${projectinfo.pDelCD}"/>
                                                                                <div><span style="font-size: 14px;">Flash Drive</span><form:checkbox  class="float-end"   data-bss-hover-animate="pulse" id="${projectinfo.pDelFlash}" style="width: 16px;height: 16px;" name="pFlashDrive" path="pDelFlash" value="${projectinfo.pDelFlash}"/></div>
                                                                                <div><span style="font-size: 14px;">Hard Drive</span><form:checkbox  class="float-end"   data-bss-hover-animate="pulse" id="${projectinfo.pDelHDD}" style="width: 16px;height: 16px;" name="pHarddrive" path="pDelHDD" value="${projectinfo.pDelHDD}"/>
                                                                                    <div></div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div style="padding: 4px;margin: 0px;padding-top: 24px;">
                                                                        <div style="border-radius: 0px;border-bottom: 1px solid rgb(191,191,191) ;"><label class="form-label" style="font-size: 12px;font-weight: bold;">Digital Delivery</label></div>
                                                                        <div style="padding-left: 8px;padding-top: 16px;padding-right: 8px;">
                                                                            <div><span style="font-size: 14px;">FTP</span><form:checkbox class="float-end"  data-bss-hover-animate="pulse" style="width: 16px;height: 16px;" id="{projectinfo.dDelFTP}" value="{projectinfo.dDelFTP}" path="dDelFTP"/>
                                                                                <div><span style="font-size: 14px;">Website (DigiFind-IT)</span><form:checkbox class="float-end"   data-bss-hover-animate="pulse" id="${projectinfo.dDelWeb}" style="width: 16px;height: 16px;" path="dDelWeb" value="${projectinfo.dDelWeb}"/></div>
                                                                                <div><span style="font-size: 14px;">Cloud Service</span><form:checkbox class="float-end"   data-bss-hover-animate="pulse" id="${projectinfo.dDelCloud}" style="width: 16px;height: 16px;" path="dDelCloud" value="${projectinfo.dDelCloud}"/>
                                                                                    <div></div>
                                                                                    <div><span style="font-size: 14px;">DocuBase</span><form:checkbox class="float-end"   data-bss-hover-animate="pulse" id="${projectinfo.dDelDocubase}" style="width: 16px;height: 16px;" name="dDocubase" path="dDelDocubase"  value="${projectinfo.dDelDocubase}"/>
                                                                                        <div></div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col" style="height: 396px;padding-right: 2px;padding-left: 2;border-radius: 8px;border: 1px solid rgba(122,122,122,0.71);margin-left: 32px;margin-right: 0px;">
                                                        <div>
                                                            <div class="card" style="margin-top: 24px;height: 30px;background: rgb(0,51,106);margin-right: 20px;margin-left: 4px;">
                                                                <div class="card-body" style="padding: 0px;margin: 0px;margin-top: 10px;transform: translateY(-4px);margin-left: 8px;font-size: 16px;">
                                                                    <h4 class="card-title" style="font-size: 13px;margin: 0px;padding: 0px;padding-bottom: 0px;color: rgb(247,247,247);">Shipment</h4>
                                                                </div>
                                                                    <div style="padding: 4px;margin: 0px;padding-top: 24px;">
                                                                        <div style="border-radius: 0px;border-bottom: 1px solid rgb(191,191,191) ;"><label class="form-label" style="font-size: 12px;font-weight: bold;">Return Method</label></div>
                                                                        <div style="padding-left: 8px;padding-top: 16px;padding-right: 8px;">
                                                                            <div><span style="font-size: 14px;">UPS / FEDEx</span><form:checkbox  class="float-end" data-bss-hover-animate="pulse" id="${projectinfo.retUPS}" style="width: 16px;height: 16px;"  path="retUPS"  value="${projectinfo.retUPS}"/>
                                                                                <div><span style="font-size:14px;">IDI Van</span><form:checkbox  class="float-end"  data-bss-hover-animate="pulse" id="${projectinfo.retIDIVan}" style="width: 16px;height: 16px;"  path="retIDIVan" value="${projectinfo.retIDIVan}"/></div>
                                                                                <div>
                                                                                    <div></div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" style="height: 213px;padding-top: 8px;">
                                                    <div class="col" style="height: 247px;padding-right: 16px;padding-left: 16px;border-radius: 8px;border: 1px solid rgba(122,122,122,0.71);width: 594px;">
                                                        <div>
                                                            <div class="card" style="margin-top: 24px;height: 30px;background: rgb(0,51,106);margin-right: 4px;margin-left: 4px;">
                                                                <div class="card-body" style="padding: 0px;margin: 0px;margin-top: 10px;transform: translateY(-4px);margin-left: 8px;font-size: 16px;">
                                                                    <h4 class="card-title" style="font-size: 13px;margin: 0px;padding: 0px;padding-bottom: 0px;color: rgb(247,247,247);">Delivery Notes</h4>
                                                                </div>
                                                                    <div style="padding: 4px;margin: 0px;padding-top: 24px;">
                                                                        <div style="padding-left: 8px;padding-top: 16px;padding-right: 8px;"><form:textarea class="form-control" id="delNotes" style="height: 109px;" name="delNotes" path="delNotes" value="${projectinfo.delNotes}"/></div>
                                                                    </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" style="height: 213px; padding-top: 8px ;margin-left: -12px; margin-top: 41px;">
                                                    <div class="col-auto col-md-6" style="width: 107px;padding: 0px;padding-left: 566px;">
                                                    <input class="btn btn-primary" type="submit" value="Next"  id="next" style="width: 144px;background: rgb(20,62,125);margin-left: 303px;margin-top: 37px;"></div>
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
        </div>
                </form:form> 
        
    </nav>
    <div style="transform: translate(258px) translateX(-15px) translateY(-399px);"><a class="btn btn-primary" role="button" id="home" style="font-size:14px;transform: translate(-133px) translateX(-67px) translateY(285px);padding-top:6px;height:36px;width: 104px;min-width: 140px;background: rgb(132,8,0);" href="showHome" id="home">Home</a></div>

</body>

</html>

<script>
	  $('input[type="checkbox"]').each(function()
	      {   
		     console.log(this.id);
	          if(this.id == 'true'){
	          		this.checked = true;
	          }
	   });
</script>