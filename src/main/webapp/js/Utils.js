function tableResize(tableID, tableBorderID) {
    var projects = document.getElementById(tableID);
    var pLen = projects.rows.length;
    if (pLen <= 1) {
        $(tableBorderID).height((200));
    } else {
        $(tableBorderID).height((pLen * 80) + 50);
    }
}

function removeRow(element, border) {
    /* alert("row" + element.parentNode.parentNode.rowIndex +
                " - column" + element.parentNode.cellIndex);*/
    //Remove the row node
    element.parentNode.parentNode.remove();
    //Adjust tableBorder size after removal
    addRowAdjHelper(border);
}

function addRowAdjHelper(border) {
    let height = $(border).height();
    $(border).height(height + 60);
}

function removeRowAdjHelper(border) {
    let height = $(border).height();
    $(border).height(height - 60);
}



//
// //Checkmark all fields that have been selected previously
// function checkBoxHelper(){
//     $('input[type="checkbox"]').each(function()
//     {
//         console.log(this.id);
//         if(this.id == 'true'){
//             this.checked = true;
//         }
//     });
// }