$(document).ready(function(){
    $(".lightbox").colorbox({rel:'group1'});







    $('.car-prev').live('click',function(){
        var src = $('#image').attr('data-id');
        var nextImg = $('#'+src).parent().parent().prev('li').find('img');
        console.log(nextImg.length);
        if(nextImg.length >0)
        {
            var img = $(nextImg).attr('data-img');
            var id = $(nextImg).attr('id');
            $('#carousel').find('.active').removeClass('active');
            $('#image').attr('src',img);
            $('#image').attr('data-id',id);
            console.log(id);
            $(nextImg).parent().addClass('active');
        }
        else{
            return;
        }

        });
    $('.car-next').live('click',function(){
        var src = $('#image').attr('data-id');
        var nextImg = $('#'+src).parent().parent().next('li').find('img');
        console.log(nextImg.length);
        if(nextImg.length >0)
        {
            var img = $(nextImg).attr('data-img');
            var id = $(nextImg).attr('id');
            $('#carousel').find('.active').removeClass('active');
            $('#image').attr('src',img);
            $('#image').attr('data-id',id);
            console.log(id);
            $(nextImg).parent().addClass('active');
        }
        else{
            return;
        }

    });
    var img = $('#image').attr('src');
    if (img != undefined) {
        var imgWidth = img.substring(img.lastIndexOf('-') + 1, img.lastIndexOf('x'));
        var imgHeight = img.substring(img.lastIndexOf('x') + 1, img.lastIndexOf('.'));
    }


});