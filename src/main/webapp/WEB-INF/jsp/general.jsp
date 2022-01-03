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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>

    <style>
        .error {
            color: red;
            font-size: 12px;
            padding-left: 8px;
        }

        .btn-secondary {
            padding: 0px;
            padding-left: 0;
            margin-left: 8px;
            width: 130px;
            height: 36px;
            background: rgb(132, 8, 0);
            font-size: 14px;
        }

        .btn-secondary:hover {
            background: rgb(182, 24, 16);
        }

        .btn, btn-primary {
            font-size: 14px;
        }

        .table td, .table th {
            font-size: 14px;
        }

        .form-control {
            font-size: 13px;
        }
    </style>

    <script>


        function addRow(tableID) {

            var table = document.getElementById(tableID);

            //Get columns
            var rowCount = table.rows.length;
            //Insert new Rows with columns
            var row = table.insertRow(rowCount);

            var cell1 = row.insertCell(0);
            var item = document.createElement("input");
            item.type = "text";
            item.name = "item";
            item.classList.add('form-control');
            item.style.width = "550px";
            item.style.height = "36px";
            item.style.textAlign = "left";
            cell1.appendChild(item);

            var cell2 = row.insertCell(1);
            var quantity = document.createElement("input");
            quantity.type = "text";
            quantity.name = "quantity";
            quantity.value = "0";
            quantity.classList.add('form-control');
            quantity.style.width = "100px";
            quantity.style.height = "36px";
            quantity.style.textAlign = "center";

            cell2.appendChild(quantity);

            var cell3 = row.insertCell(2);
            var cost = document.createElement("input");
            cost.type = "text";
            cost.name = "cost";
            cost.value = "0.0";
            cost.style.width = "100px";
            cost.style.height = "36px";
            cost.classList.add('form-control');
            cost.style.textAlign = "center";
            cell3.appendChild(cost);


            var cell4 = row.insertCell(3);
            var action = document.createElement("button");
            action.classList.add("btn", "btn-primary");
            action.classList.add("btn-secondary");
            action.style.height = "36px";
            action.style.width = "130px";
            action.textContent = "Remove";
            action.addEventListener("click", function () {
                remove(action);
            });

            cell4.appendChild(action);

            let height = $('.tableBorder').height();
            $('.tableBorder').height(height + 60);
        }

        function remove(element) {
            /* alert("row" + element.parentNode.parentNode.rowIndex +
                        " - column" + element.parentNode.cellIndex);*/
            //Remove the row node
            element.parentNode.parentNode.remove();
            //Adjust tableBorder size after removal
            let height = $('.tableBorder').height();
            $('.tableBorder').height(height - 40);
        }

    </script>


</head>

<body style="height: 728px;">
<nav class="navbar navbar-light navbar-expand-md my-auto"
     style="height: max;width: 256px;max-height: none;min-height: 729px;background: #003875;min-width: 256px;max-width: 256px;">
    <form:form action="${pageContext.request.contextPath}/complete" style="font-size: 13px;color: rgb(102,103,103);" modelAttribute="general">

        <div class="container-fluid">
            <button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span
                    class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav" style="width: 247px;height: 367px;transform: translateY(-77px);">
                    <li class="nav-item"
                        style="transform: translateY(0px);width: 211px;height: 186px;font-size: 16px;color: rgb(64,108,153);">
                        <a class="nav-link" href="#"
                           style="color: rgba(249,249,249,0.4);font-family: 'Nunito Sans', sans-serif;font-weight: bold;background: rgba(204,200,200,0.0);width: 244px;padding-left: 32px;">Project
                            Info</a>
                        <a class="nav-link" href="#"
                           style="color: rgba(249,249,249,.4);font-family: 'Nunito Sans', sans-serif;font-weight: bold;background: rgba(204,200,200,0.0);width: 244px;padding-left: 32px;margin-top: 8px;">Project
                            Specs</a>
                        <a class="nav-link" href="#"
                           style="color: rgba(249,249,249,0.95);font-family: 'Nunito Sans', sans-serif;font-weight: bold;background: rgba(204,200,200,0.7);width: 244px;padding-left: 32px;margin-top: 8px;">General</a>
                        <div style="width: 1080px;transform: translate(288px) translateY(-125px);height: 1368px;">
                            <div style="transform: translateX(-45px) translateY(-35px);width: 1080;height: 10px;">
                                <h1 class="d-flex flex-grow-1"
                                    style="font-size: 14px;width: 1080px;color: rgb(86,86,86);transform: translateX(0px) translateY(-48px);border: 0px none var(--bs-body-bg);border-bottom: 1px solid rgb(72,72,72);padding-left: 22px;margin-bottom: 0;margin-top: 0;padding-top: 1px;padding-bottom: 9px;">
                                    IDI Spec Sheet</h1>
                            </div>
                            <div class="container" style="padding-top:24px;">
                                <div class="row">
                                    <div class="col-md-6" style="width: 324px;">
                                        <div style="width: 763px;height: 42px;margin-bottom: 0px;padding-bottom: 0px;">
                                            <h1 class="d-flex flex-grow-1"
                                                style="font-size: 28px;width: 938px;margin-bottom: 24px;"></h1>
                                            <div style="width: 990px;margin-left: 23px;margin-top: 60px;">
                                                <div class="row">
                                                    <div class="col"
                                                         style="height: 640px;padding-right: 16px;padding-left: 16px;border-radius: 8px;border: 1px solid rgba(122,122,122,0.71);">
                                                        <div class="card"
                                                             style="margin-top: 24px;height: 30px;background: rgb(0,51,106);margin-right: 4px;margin-left: 4px;">
                                                            <div class="card-body"
                                                                 style="padding: 0px;margin: 0px;margin-top: 10px;transform: translateY(-4px);margin-left: 8px;font-size: 16px;">
                                                                <h4 class="card-title"
                                                                    style="font-size: 13px;margin: 0px;padding: 0px;padding-bottom: 0px;color: rgb(247,247,247);">
                                                                    Customer Details</h4>
                                                            </div>
                                                            <form:hidden value="${id}" path="id"></form:hidden>
                                                            <div style="padding: 4px;margin: 0px;padding-top: 24px;">
                                                                <label class="form-label"
                                                                       style="font-size: 12px;font-weight: bold;">Customer
                                                                    Name (*)</label><form:input class="form-control"
                                                                                                type="text" required=""
                                                                                                style="height: 40px;"
                                                                                                value="${cName}"
                                                                                                path="cName"/></div>
                                                            <form:errors path="cName" cssClass="error"/>
                                                            <div style="padding: 4px;margin: 0px;padding-top: 16px;">
                                                                <label class="form-label"
                                                                       style="font-size: 12px;font-weight: bold;">Attention</label><form:input
                                                                    class="form-control" type="text" required=""
                                                                    style="height: 40px;" value="${cAtten}"
                                                                    path="cAtten"/></div>
                                                            <div style="padding: 4px;margin: 0px;padding-top: 16px;">
                                                                <label class="form-label"
                                                                       style="font-size: 12px;font-weight: bold;">Address
                                                                    (*)</label><form:textarea class="form-control"
                                                                                              style="max-height:100px; height: 100px;"
                                                                                              required=""
                                                                                              value="${cAddress}"
                                                                                              path="cAddress"/>
                                                                <form:errors path="cAddress" cssClass="error"/>
                                                                <div style="padding: 0px;margin: 0px;padding-top: 16px;">
                                                                    <label class="form-label"
                                                                           style="font-size: 12px;font-weight: bold;">Phone
                                                                        (*)</label><form:input class="form-control"
                                                                                               type="text" required=""
                                                                                               style="height: 40px;"
                                                                                               value="${cPhone}"
                                                                                               path="cPhone"/></div>
                                                                <form:errors path="cPhone" cssClass="error"/>
                                                                <div style="padding: 0px;margin: 0px;padding-top: 16px;">
                                                                    <label class="form-label"
                                                                           style="font-size: 12px;font-weight: bold;">Email
                                                                        (*)</label><form:input class="form-control"
                                                                                               type="text" required=""
                                                                                               style="height: 40px;"
                                                                                               value="${cEmail}"
                                                                                               path="cEmail"/></div>
                                                                <form:errors path="cEmail" cssClass="error"/>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="col" style="padding-left: 16px;padding-right: 0px;">
                                                        <div class="container"
                                                             style="padding-right: 0px;padding-left: 0px;">
                                                            <div class="col"
                                                                 style="height: 240px;padding-right: 16px;padding-left: 16px;border-radius: 8px;border: 1px solid rgba(122,122,122,0.71);">
                                                                <div>
                                                                    <div class="card"
                                                                         style="margin-top: 24px;height: 30px;background: rgb(0,51,106);margin-right: 4px;margin-left: 4px;">
                                                                        <div class="card-body"
                                                                             style="padding: 0px;margin: 0px;margin-top: 10px;transform: translateY(-4px);margin-left: 8px;font-size: 16px;">
                                                                            <h4 class="card-title"
                                                                                style="font-size: 13px;margin: 0px;padding: 0px;padding-bottom: 0px;color: rgb(247,247,247);">
                                                                                Billing</h4>
                                                                        </div>
                                                                        <div style="padding: 4px;margin: 0px;padding-top: 24px;font-size: 14px;">
                                                                            <label class="form-label"
                                                                                   style="font-size: 12px;font-weight: bold;">Billing
                                                                                Address (*)</label><form:textarea
                                                                                class="form-control"
                                                                                style="max-height:96px;height: 96px;"
                                                                                required="" path="bAddress"/></div>
                                                                        <form:errors path="bAddress" cssClass="error"/>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col"
                                                                 style="height: 392px;padding-right: 16px;padding-left: 16px;border: 1px solid rgba(122,122,122,0.71);border-radius: 8px;margin-top: 8px;">
                                                                <div>
                                                                    <div class="card"
                                                                         style="margin-top: 24px;height: 30px;background: rgb(0,51,106);margin-right: 4px;margin-left: 4px;">
                                                                        <div class="card-body"
                                                                             style="padding: 0px;margin: 0px;margin-top: 10px;transform: translateY(-4px);margin-left: 8px;font-size: 16px;">
                                                                            <h4 class="card-title"
                                                                                style="font-size: 13px;margin: 0px;padding: 0px;padding-bottom: 0px;color: rgb(247,247,247);">
                                                                                Logistics</h4>
                                                                        </div>
                                                                        <div style="padding: 8px;margin: 0px;padding-top: 24px;">
                                                                            <label class="form-label"
                                                                                   style="font-size: 12px;font-weight: bold;">Pick-up
                                                                                Date</label><form:input
                                                                                class="form-control" type="date"
                                                                                path="puDate"/></div>
                                                                        <div style="padding: 8px;margin: 0px;padding-top: 16px;">
                                                                            <label class="form-label"
                                                                                   style="font-size: 12px;font-weight: bold;">Est.
                                                                                Start Date</label><form:input
                                                                                class="form-control" type="date"
                                                                                path="stDate"
                                                                                style="color: rgb(33,37,41);"/></div>
                                                                        <div style="padding: 8px;margin: 0px;padding-top: 16px;">
                                                                            <label class="form-label"
                                                                                   style="font-size: 12px;font-weight: bold;">Completion
                                                                                Date</label><form:input
                                                                                class="form-control" type="date"
                                                                                path="compDate"/></div>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" style="margin-top: 8px;">
                                                    <div class="col"
                                                         style="height: 244px;padding-right: 16px;padding-left: 16px;border-radius: 8px;border: 1px solid rgba(122,122,122,0.71);">
                                                        <div>
                                                            <div class="card"
                                                                 style="margin-top: 24px;height: 30px;background: rgb(0,51,106);margin-right: 4px;margin-left: 4px;">
                                                                <div class="card-body"
                                                                     style="padding: 0px;margin: 0px;margin-top: 10px;transform: translateY(-4px);margin-left: 8px;font-size: 16px;">
                                                                    <h4 class="card-title"
                                                                        style="font-size: 13px;margin: 0px;padding: 0px;padding-bottom: 0px;color: rgb(247,247,247);">
                                                                        Pricing Info</h4>
                                                                </div>
                                                                <div style="padding: 4px;margin: 0px;padding-top: 24px;">
                                                                    <div style="border-radius: 0px;border-bottom: 1px solid rgb(191,191,191) ;">
                                                                        <label class="form-label"
                                                                               style="font-weight: bold;font-size: 12px;">Priced
                                                                            By</label></div>
                                                                    <div style="padding-left: 8px;padding-top: 16px;padding-right: 8px;">
                                                                        <div><span style="font-size: 14px;">Image</span><form:checkbox
                                                                                class="float-end"
                                                                                style="width: 16px;height: 16px;"
                                                                                path="pImage"/>
                                                                            <div><span
                                                                                    style="font-size: 14px;">Bound</span><form:checkbox
                                                                                    class="float-end"
                                                                                    style="width: 16px;height: 16px;"
                                                                                    path="pBound"/></div>
                                                                            <div><span
                                                                                    style="font-size: 14px;">Box</span><form:checkbox
                                                                                    class="float-end"
                                                                                    style="width: 16px;height: 16px;"
                                                                                    path="pBox"/>
                                                                                <div><span style="font-size: 14px;">Large Format</span><form:checkbox
                                                                                        class="float-end"
                                                                                        style="width: 16px;height: 16px;"
                                                                                        path="plFormat"/></div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" style="margin-top: 8px;">
                                                    <div class="col"
                                                         style="height: 244px;padding-right: 16px;padding-left: 16px;border-radius: 8px;border: 1px solid rgba(122,122,122,0.71);">
                                                        <div>
                                                            <div class="card"
                                                                 style="margin-top: 24px;height: 30px;background: rgb(0,51,106);margin-right: 4px;margin-left: 4px;">
                                                                <div class="card-body"
                                                                     style="padding: 0px;margin: 0px;margin-top: 10px;transform: translateY(-4px);margin-left: 8px;font-size: 16px;">
                                                                    <h4 class="card-title"
                                                                        style="font-size: 13px;margin: 0px;padding-top: 0px;padding-bottom: 0px;color: rgb(247,247,247);">
                                                                        Additional Notes</h4>
                                                                </div>
                                                                <div style="padding: 4px;margin: 0px;padding-top: 24px;">
                                                                    <form:textarea class="form-control"
                                                                                   style="height: 109px; margin-top:16px;"
                                                                                   path="additNotes"/></div>
                                                                <div style="padding: 4px;margin: 0px;padding-top: 24px;"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" style="margin-top: 8px;">
                                                    <div class="tableBorder"
                                                         style="height: 250px;padding-right: 16px;padding-left: 16px;border-radius: 8px;border: 1px solid rgba(122,122,122,0.71);">
                                                        <div>
                                                            <div class="card"
                                                                 style="margin-top: 24px;height: 30px;background: rgb(0,51,106);margin-right: 4px;margin-left: 4px;">
                                                                <div class="card-body"
                                                                     style="padding: 0px;margin: 0px;margin-top: 10px;transform: translateY(-4px);margin-left: 8px;font-size: 16px;">
                                                                    <h4 class="card-title"
                                                                        style="font-size: 13px;margin: 0px;padding: 0px;padding-bottom: 0px;color: rgb(247,247,247);">
                                                                        Invoice Lines</h4>
                                                                </div>
                                                                <div style="padding: 4px;margin: 0px;padding-top: 24px;">
                                                                    <div class="table-responsive">
                                                                        <table class="table" id="invoiceTbl">
                                                                            <thead>
                                                                            <tr>
                                                                                <th style="text-align: Left;">Item</th>
                                                                                <th style="text-align: Center;">
                                                                                    Quantity
                                                                                </th>
                                                                                <th style="text-align: Center;">Cost
                                                                                </th>
                                                                                <th style="text-align: Center;">Action
                                                                                </th>
                                                                            </tr>
                                                                            </thead>
                                                                            <c:forEach items="${invoices}" var="invoice"
                                                                                       varStatus="status">
                                                                                <c:url var="remove"
                                                                                       value="/deleteInvoice">
                                                                                    <c:param name="invoice_id"
                                                                                             value="${invoice.id}"/>
                                                                                </c:url>

                                                                                <form:hidden value="${invoice.id}"
                                                                                             path="invoices[${status.index}].id"/>
                                                                                <form:hidden value="${invoice.proj_id}"
                                                                                             path="invoices[${status.index}].proj_id"/>

                                                                                <tr>
                                                                                    <td><form:input
                                                                                            path="invoices[${status.index}].item"
                                                                                            value="${invoice.item}"
                                                                                            class="form-control"
                                                                                            style="height:36px;text-align: Left; width:550px;"
                                                                                            type="text"/>
                                                                                    </td>
                                                                                    <td><form:input class="form-control"
                                                                                                    value="${invoice.quantity}"
                                                                                                    path="invoices[${status.index}].quantity"
                                                                                                    style="height:36px;text-align: Center; width:100px;"
                                                                                                    type="text"
                                                                                    />
                                                                                    </td>
                                                                                    <td><form:input
                                                                                            path="invoices[${status.index}].cost"
                                                                                            value="${invoice.cost}"
                                                                                            class="form-control"
                                                                                            style="height:36px;width:100px;text-align: Center"
                                                                                            type="text"/>
                                                                                    </td>
                                                                                    <td>
                                                                                        <a style="padding-top:6px; width: 130px; height:36px"
                                                                                           class="btn btn-primary btn-secondary"
                                                                                           href="${remove}">
                                                                                            Remove
                                                                                        </a>
                                                                                    </td>
                                                                                </tr>
                                                                            </c:forEach>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                                <div style="padding-left: 16px;margin: 0px;padding-top: 8px;height: 61px;">
                                                                    <button class="btn btn-primary" type="button"
                                                                            style="padding-left: 8px; height:36px;width:144px; font-size: 13px; background: rgb(20,62,125);"
                                                                            onclick="addRow('invoiceTbl')">Add New Line
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row"
                                                     style="height: 213px;padding-top: 0;margin-left: -12px;margin-top: 41px;">
                                                    <div class="col-auto col-md-6"
                                                         style="width: 138px;padding: 0px;padding-left: 566px;">
                                                        <input id="complete" class="btn btn-primary" type="submit"
                                                               value="Complete"
                                                               style="height:38px;width: 144px;background: rgb(20,62,125);margin-left: 303px;margin-top: 0;padding-top: 4px;"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6" style="width: 60px;padding: 0px;padding-left: 565px;">
                                        <a class="btn btn-primary"
                                           style="width: 144px;background: rgb(20,62,125);" value="Previous"
                                           href="showProjSpecs">Previous
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div>
                <a class="btn btn-primary" value="Home"
                   style="transform: translate(50px) translateX(-20px) translateY(89px);height:38px;width: 144px;background: rgb(132,8,0);"
                   href="showHome">Home
                </a>
            </div>

        </div>
    </form:form>
</nav>

</body>
<script>
    var projects = document.getElementById('invoiceTbl');
    var pLen = projects.rows.length;
    if (pLen == 1) {
        $('.tableBorder').height((250));
    } else {
        $('.tableBorder').height((pLen * 100) + 50);
    }

</script>
</html>