
$(document).ready(function () {
    $('nav').hide().delay(500).fadeIn(1000);
    // event handler when the user clicks on the video link
    $('#video-link').on('click', function () {
        const $video = '<iframe width="560" height="315" src="https://www.youtube.com/embed/xLV-M9MLRgQ?start=21" frameborder="0" allowfullscreen></iframe>';
        $('#container').empty().hide().delay(200).fadeIn(1000).html($video);
    });

    // event handler when the user clicks on the photos link
    $('#photo-link').on('click', function () {
        const $gallery = '<img src="images/pic1.jpg"><img src="images/pic2.jpg">' +
            '<img src="images/pic3.jpg"><img src="images/pic4.jpg">' +
            '<img src="images/pic5.jpg"><img src="images/pic6.jpg">';
        $('#container').empty().hide().delay(200).fadeIn(1000).html($gallery);
    });

    // event handler when the user clicks on skills link
    $('#skills-link').on('click', function () {
        const $skills = '<h3>Programming Languages</h3>' +
            '<p>C++</p>' +
            '<p>Java</p>' +
            '<p>Python</p>' +
            '<p>NodeJs</p>' +
            '<p>Javascript</p>';
        $('#container').empty().hide().delay(200).fadeIn(1000).html($skills);
    });
});