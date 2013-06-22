# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $("#profesore_name").validate
    expression: "if(VAL != 'admin' && VAL != 'profesor' && VAL != 'gestor') return false; else return true;"
    message: "Nombre requerido"

$(document).ready ->
  $("#profesore_password").validate
    expression: "if(VAL != 'admin' && VAL != 'profesor' && VAL != 'gestor') return false; else return true;"
    message: "Contraseña requerida."


$(document).ready ->
  $("#profesore_rol").validate
    expression: "if(VAL != 'admin' && VAL != 'profesor' && VAL != 'gestor') return false; else return true;"
    message: "Roles disponibles: profesor, gestor, admin."

$(document).ready ->
  $("#profesore_mail").validate
    expression: "if(VAL == '' || VAL.match(/^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i)) return true; else return false;"
    message: "Formato inválido. Ejemplo: name@domain.com"