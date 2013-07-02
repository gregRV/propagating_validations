$(document).ready(function () {

  // send an HTTP DELETE request for the sign-out link
  $('a#sign-out').on("click", function (e) {
    e.preventDefault();
    var request = $.ajax({ url: $(this).attr('href'), type: 'delete' });
    request.done(function () { window.location = "/"; });
  });

  

  // $('submit').on('click', function(e){
  // 	e.preventDefault();
  // 	$.ajax({
  // 		url: '/events/create'
  // 		type: 'post'
  // 		data: $(this).serialize();
  // 	}).done(function(response){
  // 		// do something here?
  // 	});
  // });


});
