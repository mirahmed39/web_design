$(document).ready(function() {
    // function for the style application assignment.
    $('#change-styles').on('click', function () {
        $('#special').css("color", "green");
        $('.highlight').css("background-color", "yellow");
        $('p').each(function () {
            $(this).css("color", "white");
            $(this).css("background-color", "blue");
            $(this).css("font-size", "1.4em");
            $(this).css("border", "2px dashed white");
            $(this).css("text-align", "center");

            // get the content of each paragraph and display them in alert.
            const $htmlContent = $(this).html();
            alert($htmlContent);
        });
    });

    // function for the image application assignment
    $('#hide').on('click', function () {
       $('img').hide();
    });
    $('#show').on('click', function () {
        $('img').show();
    });
    $('#fadeout').on('click', function () {
        $('img').fadeOut();
    });

    // function for animation application
    $("#animate").on('click', function () {
        $('#div-to-animate').animate({
            opacity: ".6",
            left: "300px",
            width: "+=100px",
            height: "-=10px"
        });
    });

    // function for username ans password application
    $('input').on('change', function() {
        if($.trim($(this).val()) === '') {
            const message = "Please enter a value for " + $(this).attr('name');
            alert(message);
            $(this).focus();
            $(this).css('background-color', 'yellow');
        } else
            $('#demo').html($(this).val());
    });

});