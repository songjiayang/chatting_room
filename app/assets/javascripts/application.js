
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function(){  
  var client = new Faye.Client('http://localhost:9292/faye');  
  client.subscribe("/messages/new",function(data){  
    $('.messages').append('<li>'+data.username+":&nbsp;&nbsp;"+data.msg+'</li>');
  });  
});  