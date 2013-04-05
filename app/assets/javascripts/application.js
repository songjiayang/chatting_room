
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .


function current_time () {
	var d = new Date();
	return (d.getYear()+'-'+d.getMonth()+'-'+d.getDate()+' '+d.getHours()+':'+d.getMinutes()+':'+d.getSeconds())
}