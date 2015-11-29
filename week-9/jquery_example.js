// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'});

// Release 2: Link your Code


//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
var bodyElement = $('body');


// Release 4: Modify Elements with jQuery
$('.bodyh1').css("color","red");
$('.bodyh1').css("border", "1px solid black");
$('.bodyh1').css("visibility","visible");

// // Release 5: Event Handlers
// $('img').on('mouseover', function(e){
//     e.preventDefault()
//     $(this).attr('src', 'http://4.bp.blogspot.com/-JMrboygBDpw/T0gMZvxRDdI/AAAAAAAAAIU/P-InezeMGRY/s1600/islandfoxpupIRose2009sm.jpg')
//   });

// Release 5: Event Handlers
// $('img').on('mouseover', function(e){
//     e.preventDefault()
//     $(this).attr('src', 'http://4.bp.blogspot.com/-JMrboygBDpw/T0gMZvxRDdI/AAAAAAAAAIU/P-InezeMGRY/s1600/islandfoxpupIRose2009sm.jpg')
//   });
$('img').hover(
  function(){
    $(this).attr('src', 'http://4.bp.blogspot.com/-JMrboygBDpw/T0gMZvxRDdI/AAAAAAAAAIU/P-InezeMGRY/s1600/islandfoxpupIRose2009sm.jpg');
    $(this).css("border", "5px dashed red");
  }, function() {
    $(this).attr('src', './dbc_logo.png');
    $(this).css("border", "0px");
  }
  );



// Release 6: Have Some Fun





});  // end of the document.ready function: do not remove or write DOM manipulation below this.


// What is jQuery?

// The purpose of jQuery is to make it much easier to use JavaScript on your website.

// What does jQuery do for you?

// jQuery takes a lot of common tasks that require many lines of JavaScript code to accomplish, and wraps them into methods that you can call with a single line of code.

// What did you learn about the DOM while working on this challenge?

// JQuery provides methods to manipulate DOM in efficient way. You do not need to write big code to modify the value of any element's attribute or to extract HTML code from a paragraph or division.

// JQuery provides methods such as .attr(), .html(), and .val() which act as getters, retrieving information from DOM elements for later use.