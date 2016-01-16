// DOM Manipulation Challenge


// I worked on this challenge [with: Peter ].


// Add your JavaScript calls to this page:

// Release 0:
document.getElementById("release-0").className = "done";



// Release 1:
document.getElementById("release-1").style.display = "none";



// Release 2:
//document.getElementsByTagName("h1").innerHTML = "I completed release 2";
document.body.innerHTML = document.body.innerHTML.replace("Change this text to finish release 2", "I completed release 2");


// Release 3:
document.getElementById("release-3").style.background = "#955251";



// Release 4:
var changeFont = document.getElementsByClassName("release-4");
for (var i = 0; i < changeFont.length; i++){
 var element = changeFont[i];
 element.style.fontSize = "2em";
};

// Release 5:
var hide = document.getElementById("hidden");
document.body.appendChild(hide.content.cloneNode(true));
