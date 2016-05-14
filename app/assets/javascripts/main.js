function testfunc() {
  console.log("This is a test");
  alert("HHHHH");
}
$(function() {
  // alert("Page Load");

  $("#login-button").click(function() {
    console.log("This is a test");
    // alert("Click event");
    $("#login-box").fadeIn();
  });

  $("#login-button-close").click(function() {
    $("#login-box").fadeOut();
  });

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
