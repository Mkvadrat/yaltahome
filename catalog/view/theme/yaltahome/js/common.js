$(document).ready(function() {
    /* Search */
    $('input[type=\'submit\']').on('click', function() {
        url = $('base').attr('href');

        var search = $(this).attr('value');
        
        if (search) {
            url += 'search/?filter_name=' + encodeURIComponent(search);
        }

        location = url;
    });

	$('input[name=\'search\']').bind('keydown', function(e) {
		if (e.keyCode == 13) {
			url = $('base').attr('href');

			var search = $(this).attr('value');
            
			if (search) {
				url += 'search/?filter_name=' + encodeURIComponent(search);
			}

			location = url;
		}
	});
});