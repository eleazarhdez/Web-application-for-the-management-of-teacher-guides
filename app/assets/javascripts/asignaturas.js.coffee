# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $("#asignatura_nombre").validate
    expression: "if(VAL != '') return true; else return false;"
    message: "Nombre requerido."


$(document).ready ->
  $("#asignatura_codigo").validate
    expression: "if(VAL != '') return true; else return false;"
    message: "Codigo requerido."

$(document).ready ->
  $("#asignatura_profesor_tokens").validate
    expression: "if(VAL != '') return true; else return false;"
    message: "Profesor requerido."
