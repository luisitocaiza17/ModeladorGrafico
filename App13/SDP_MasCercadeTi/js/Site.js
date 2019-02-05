function ValidateNumber(e) {
    // Allow: backspace, delete, tab, escape, enter and .
    if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
    // Allow: Ctrl+A, Command+A
            (e.keyCode === 65 && (e.ctrlKey === true || e.metaKey === true)) ||
    // Allow: home, end, left, right, down, up
            (e.keyCode >= 35 && e.keyCode <= 40)) {
        // let it happen, don't do anything
        return;
    }
    // Ensure that it is a number and stop the keypress
    if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
        e.preventDefault();
    }
}

function ValidateEmail(e) {
    e.filter(function () {
        var emil = e.val();
        var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
        if (!emailReg.test(emil)) {
            alert('Por favor ingrese un e-mail válido');
        } else {
            // No hace falta un mensaje
        }
    })
}

function HideShowHijos(val) {
    var Num = parseInt(val);

    for (i = 1; i <= Num; i++) {
        $('#Hijo' + i.toString()).show();
    }

    for (i = Num+1; i <= 10; i++) {
        $('#Hijo' + i.toString()).hide();
    }
}

$(document).ready(function () {
    $('#txt_Identificacion').keydown(function (e) { ValidateNumber(e); });
    $('#txt_Telefono').keydown(function (e) { ValidateNumber(e); });
    $('#txt_Celular').keydown(function (e) { ValidateNumber(e); });

    $('#txt_EmailLaboral').focusout(function () { ValidateEmail($(this)) });
    $('#txt_EmailPersonal').focusout(function () { ValidateEmail($(this)) });


    HideShowHijos($('#ddl_NumeroHijos').val());
    $('#ddl_NumeroHijos').change(function () { HideShowHijos($(this).val()) });
});

