$(document).ready(function(){
    console.log("Hola jquery")

  // SELECTOR DEL MENU DEL LADO IZQUIERDO
  var listaMenu = $(".list-group-item").click(function(){
      //$(this).css("background","red");
      $(".list-group-item").removeClass("active");
      $(this).addClass("active");
      console.log("click");
  });

 // SELECTOR DE ASIDE LADO DERECHO
 $(".miAside").hide(); // ocualta la barra derecha
 

});

/* AUTOCOMPLETADO EN EL BUSCADOR */
$( function() {
    var availableTags = [
      "ActionScript",
      "AppleScript",
      "Asp",
      "BASIC",
      "C",
      "C++",
      "Clojure",
      "COBOL",
      "ColdFusion",
      "Erlang",
      "Fortran",
      "Groovy",
      "Haskell",
      "Java",
      "JavaScript",
      "Lisp",
      "Perl",
      "PHP",
      "Python",
      "Ruby",
      "Scala",
      "Scheme"
    ];
    $( "#tags" ).autocomplete({
      source: availableTags
    });
  } );


