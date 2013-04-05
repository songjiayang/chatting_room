
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .


function current_time () {
	var d = new Date();
	year ="2"+ d.getYear();
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