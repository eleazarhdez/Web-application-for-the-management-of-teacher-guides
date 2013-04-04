// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

//IMPORTANTE lo que está detrás del primer guión tiene que llamarse igual que el método en el modelo.

$(function () {  
  $('#asignatura_profesor_tokens').tokenInput('/profesores.json', { crossDomain: false,
                                                              prePopulate: $('#asignatura_profesor_tokens').data('pre'),
                                                              theme: 'facebook'
  });  
  $('#asignatura_competencia_tokens').tokenInput('/competencies.json', { crossDomain: false,
                                                              prePopulate: $('#asignatura_competencia_tokens').data('pre'),
                                                              theme: 'facebook'
  });  
}); 
$(function () { 
  $('#evaluation_competenciaevaluacion_tokens').tokenInput('/competencies.json', { crossDomain: false,
                                                              prePopulate: $('#evaluation_competenciaevaluacion_tokens').data('pre'),
                                                              theme: 'facebook'
  }); 
});
