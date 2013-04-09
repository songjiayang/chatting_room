//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .


function current_time () {
	var d = new Date();
	year ="20"+ (d.getYear()-100);
	mon = d.getMonth()+1;
	date =d.getDate();
	hour = d.getHours();
	min = d.getMinutes();
	sec = d.getSeconds();
  if (mon<10){mon = "0"+mon };
  if(date<10){date = "0"+date};
  if (hour<10) {hour="0"+hour};
  if (min<0) {min="0"+min};
  if (sec<0) {sec= "0"+sec};
  return year+"-"+mon+"-"+date+" "+hour+":"+min+":"+sec
}


 function draw_happy_face(context2D)
 {
  context2D.beginPath();
  context2D.arc(50,50,40,0,Math.PI*2,true);
  var grd=context2D.createRadialGradient(25,50,0,50,50,150);
  grd.addColorStop(0,"#ffff33");
  grd.addColorStop(1,"#ff6600");
  context2D.fillStyle=grd;
  context2D.fill();
 }


function sent_message(){
    faye.publish('/room/<%=@room.id%>/messages/new', {
        username: '<%= session[:username] %>',
        msg: $('#message').val()
    });
    $('#message').val('');
    return false;
  }
