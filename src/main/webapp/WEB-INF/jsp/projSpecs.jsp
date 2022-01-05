<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<html lang="en" style="height: 762px;">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>IDI-Forms - Project Specs</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alata&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tauri&amp;display=swap">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
    <script src="/js/Utils.js"></script>

    <style>

        .table {
            font-size:14px;
        }

        .error {
            color: red;
            font-size: 12px;
            padding-left: 8px;
        }

        .btn-secondary {
            padding: 0px;
            margin-left: 8px;
            width: 130px;
            height: 38px;
            background: rgb(132, 8, 0);
            font-size: 14px;
        }

        .btn-secondary:hover {
            background: rgb(182, 24, 16);
        }

        .table td, .table th.
        .btn, btn-primary {
            font-size: 14px;
        }

        .form-control {
            font-size: 13px;
        }

        .tableID .td {
            width: 2px;
            margin: 0px;
        }

        .line_item {
            width: 350px;
            padding: 0px 0px 0px 8px;
            height: 36px;
            textAlign: "left";
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
            item.style.height = "36px";
            item.classList.add('form-control');
            item.classList.add('line_item');
            item.style.width = "300px";
            item.style.textAlign = "left";
            cell1.appendChild(item);

            var cell2 = row.insertCell(1);

            var dpi = document.createElement("select");
            dpi.name = "dpi";
            var dpis = ${dpis};
            for (let i = 0; i < dpis.length; i++) {
                var option = document.createElement("option");
                option.value = dpis[i];
                option.text = dpis[i];
                console.log(option.value);
                dpi.add(option);
            }

            dpi.classList.add('form-select');
            dpi.style.width = "130px";
            dpi.style.textAlign = "left";
            cell2.appendChild(dpi);

            var cell3 = row.insertCell(2);
            var format = document.createElement("select");
            format.name = "format";
            var formats = '${formats}'.replaceAll("[", "").replace("]", "")
            var formatSplit = formats.split(",");

            for (let i = 0; i < formatSplit.length; i++) {
                var option = document.createElement("option");
                option.value = formatSplit[i];
                option.text = formatSplit[i];
                console.log(option.value);
                format.add(option);
            }

            format.style.width = "130px";
            format.classList.add('form-select');
            format.style.textAlign = "left";
            cell3.appendChild(format);

            var cell4 = row.insertCell(3);
            var mode = document.createElement("select");
            mode.name = "mode";
            var modes = '${modes}'.replaceAll("[", "").replace("]", "")
            var modesSplit = modes.split(",");

            for (let i = 0; i < modesSplit.length; i++) {
                var option = document.createElement("option");
                option.value = modesSplit[i];
                option.text = modesSplit[i];
                console.log(option.value);
                mode.add(option);
            }
            mode.style.width = "124";
            mode.classList.add('form-select');
            mode.style.textAlign = "left";
            cell4.appendChild(mode);

            var cell5 = row.insertCell(4);
            var action = document.createElement("button");
            action.classList.add("btn", "btn-primary");
            action.classList.add("btn-secondary");
            action.style.height = "36px";
            action.style.width = "140px";
            action.textContent = "Remove";
            action.addEventListener("click", function () {
                removeRow(action,'tableBorder');
            });

            cell5.appendChild(action);

            addRowAdjHelper('tableBorder');
        }


    </script>


</head>

<body style="height: 728px;">
<nav class="navbar navbar-light navbar-expand-md my-auto"
     style="height: max;width: 256px;max-height: none;min-height: 729px;background: #003875;min-width: 256px;max-width: 256px;">
    <form:form style="font-size: 13px;color: rgb(102,103,103);" action="${pageContext.request.contextPath}/showGeneral"
               modelAttribute="specs">

    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navcol-1">
            <ul class="navbar-nav" style="width: 247px;height: 367px;transform: translateY(-77px);padding-top: 0px;">
                <li class="nav-item"
                    style="transform: translateY(0px);width: 209px;height: 177px;font-size: 16px;color: rgb(64,108,153);">
                    <a class="nav-link" href="#"
                       style="color: rgba(249,249,249,0.4);font-family: 'Nunito Sans', sans-serif;font-weight: bold;background: rgba(249,249,249,0);width: 244px;padding-left: 32px;margin-top: 0px;">Project
                        Info</a><a class="nav-link"
                                   style="color: rgb(249,249,249);font-family: 'Nunito Sans', sans-serif;font-weight: bold;background: rgba(204,200,200,0.7);width: 244px;padding-left: 32px;margin-top: 8px;">Project
                    Specs</a><a class="nav-link" href="#"
                                style="color: rgba(249,249,249,0.4);font-family: 'Nunito Sans', sans-serif;font-weight: bold;background: transparent;width: 244px;padding-left: 32px;margin-top: 8px;">General</a>
                    <div style="width: 1080px;transform: translate(288px) translateY(-125px);height: 1368px;padding-top: 0px;">
                        <div style="transform: translateX(-45px) translateY(-80px);width: 1080;height: 10px;">
                            <h1 class="d-flex flex-grow-1"
                                style="font-size: 14px;width: 1080px;color: rgb(38,38,38);transform: translateX(0px) translateY(-23px);border: 0px none var(--bs-body-bg);border-bottom: 1px solid rgb(72,72,72);padding-left: 22px;margin-bottom: 0;margin-top: 0;padding-top: 0px;padding-bottom: 9px;">
                                IDI Spec Sheet</h1>
                        </div>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6" style="width: 324px;">
                                    <div style="width: 763px;height: 42px;margin-bottom: 0px;padding-bottom: 0px;">
                                        <h1 class="d-flex flex-grow-1"
                                            style="font-size: 28px;width: 938px;margin-bottom: 24px;"></h1>
                                        <div style="width: 990px;margin-left: 23px;margin-top: 40px;padding-top: 16px;">
                                            <div class="row" style="margin-top: 8px;">
                                                <div class="tableBorder"
                                                     style="height: 267px;padding-right: 16px;padding-left: 16px;border-radius: 8px;border: 1px solid rgba(122,122,122,0.71);">
                                                    <div>
                                                        <div class="card"
                                                             style="margin-top: 24px;height: 30px;background: rgb(0,51,106);margin-right: 4px;margin-left: 4px;">
                                                            <div class="card-body"
                                                                 style="padding: 0px;margin: 0px;margin-top: 10px;transform: translateY(-4px);margin-left: 8px;font-size: 16px;">
                                                                <h4 class="card-title"
                                                                    style="font-size: 13px;margin: 0px;padding: 0px;padding-bottom: 0px;color: rgb(247,247,247);">
                                                                    Specifications</h4>
                                                            </div>
                                                            <div style="padding: 4px;margin: 0px;padding-top: 24px;">
                                                                <div class="table-responsive">
                                                                    <table id="tableID" class="table">
                                                                        <thead>
                                                                        <tr>
                                                                            <th style="text-align: left">Item</th>
                                                                            <th style="text-align: center">DPI</th>
                                                                            <th style="width: 140px; text-align: center">
                                                                                Format
                                                                            </th>
                                                                            <th style="text-align: center">Mode</th>
                                                                            <th style="text-align: center">Action</th>
                                                                        </tr>
                                                                        </thead>
                                                                        <c:forEach items="${specs.specsList}" var="spec"
                                                                                   varStatus="status">
                                                                            <!-- construct an "delete" link with proj id -->
                                                                            <c:url var="remove" value="/deleteSpec">
                                                                                <c:param name="spec_id"
                                                                                         value="${spec.id}"/>
                                                                            </c:url>
                                                                            <form:hidden
                                                                                    path="specsList[${status.index}].id"
                                                                                    value="${spec.id}"/>
                                                                            <tr>
                                                                                <td style="width:30px;"><form:input
                                                                                        path="specsList[${status.index}].name"
                                                                                        style="height:36px;width:300px;"
                                                                                        class="form-control line_item"
                                                                                        value="${spec.name}"
                                                                                        id="${spec.name}"/>
                                                                                <td style="width:30px">
                                                                                    <form:select
                                                                                            cssStyle="width:130px"
                                                                                            id="${spec.name}${status.index}dpi"
                                                                                            cssClass="form-select"
                                                                                            path="specsList[${status.index}].dpi_id.name">
                                                                                        <form:options items="${dpis}"/>
                                                                                    </form:select>
                                                                                <td style="width:30px">
                                                                                    <form:select
                                                                                            cssStyle="width:130px"
                                                                                            id="${spec.name}${status.index}format"
                                                                                            cssClass="form-select"
                                                                                            path="specsList[${status.index}].format_id.name">
                                                                                        <form:options
                                                                                                items="${formats}"/>

                                                                                    </form:select>
                                                                                <td style="width:30px"><form:select
                                                                                        cssStyle="width:130px"
                                                                                        id="${spec.name}${status.index}mode"
                                                                                        cssClass="form-select"
                                                                                        path="specsList[${status.index}].mode_id.name">
                                                                                    <form:options items="${modes}"/>
                                                                                </form:select>
                                                                                </td>
                                                                                <td>
                                                                                    <a style="padding-top:6px;height:36px;width: 140px;"
                                                                                       class="btn btn-primary btn-secondary"
                                                                                       href="${remove}">
                                                                                        Remove
                                                                                    </a>
                                                                                </td>
                                                                                <!-- Here, once the document is ready, we set the spec fields-->
                                                                                <script>$(document).ready(function () {
                                                                                    $("#${spec.name}${status.index}dpi").val(${spec.dpi_id.name});
                                                                                    $("#${spec.name}${status.index}format").val("${spec.format_id.name}");
                                                                                    $("#${spec.name}${status.index}mode").val("${spec.mode_id.name}");
                                                                                })
                                                                                </script>
                                                                            </tr>
                                                                        </c:forEach>

                                                                    </table>
                                                                </div>
                                                            </div>
                                                            <div style="padding: 4px;margin: 0px;padding-top: 8px;height: 61px;">
                                                                <button class="btn btn-primary" id="addNewLine"
                                                                        onclick="addRow('tableID')" type="button"
                                                                        style="padding: 0 0 0 8; height:36px;width:140px; font-size: 13px; background: rgb(20,62,125);"
                                                                        name="addNewLine">Add New Line
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6" style="width: 60px;padding: 0px;padding-left: 565px;">
                                    <input class="btn btn-primary" type="submit" value="Next" id="next"
                                           style="height:36px;width: 140px;background: rgb(20,62,125);" name="next"/>
                                </div>
                                <div><a class="btn btn-primary" role="button" id="home"
                                        style="transform: translate(-135px) translateX(-125px) translateY(500px);width: 106px;min-width: 144px;background: rgb(132,8,0);"
                                        href="showHome" name="home">Home</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    </form:form>

                </li>
            </ul>
        </div>

    </div>
</nav>
</body>

<script>
    tableResize('.tableID', '.tableBorder');

</script>

</html>