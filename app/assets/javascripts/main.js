$(function() {
  // Button click event handler
  $("#login-button").click(function() {
    console.log("Login button to display form has been clicked!!!");
    $("#login-box").fadeIn();
  });

  // Button click event handler
  $("#profile-button").click(function() {
    console.log("Profile button to display form has been clicked!!!");
    $("#set-avatar-box").fadeIn();
  });

  $("#login-button-close").click(function() {
    $("#login-box").fadeOut();
  });
  $("#login-cancel-button").click(function() {
    $("#login-box").fadeOut();
  });
  $("#set-avatar-button-close").click(function() {
    $("#set-avatar-box").fadeOut();
  });

  $("#login-form").on("ajax:success", updateTask);

  function updateTask() {
    console.log("We recevied an AJAX success response!!");
    console.log(arguments);
    console.log(arguments[1].errors)
    if (arguments[1].errors) {
      $("#log-in-status").show();
      $("#log-in-status").html("You are not logged in");
      $("#login-button").html("LOG IN");
      $("#login-box").fadeOut();
    } else {
      $("#log-in-status").show();
      $("#profile-button").show();
      $("#log-in-status").html(arguments[1]);
      $("#login-button").html("LOG OUT");
      $("#login-box").fadeOut();
    }
  }

});

// $(document).on('ready page:load', function() {
//     // your stuff here
//     alert("HHHHH2");
//     $("#login-button").click(function(e) {
//       e.preventDefault();
//       console.log("This is a test2");
//       alert("HHHHH2333");
//     });
// });
