var tabLinks = document.getElementsByClassName("tab-links");
var tabContents = document.getElementsByClassName("tab-contents");
function opentab(tabname) {
	for(tablink of tabLinks){
		tablink.classList.remove("active-links");
	}
	for(tablink of tabContents){
		tablink.classList.remove("active-tab");
	}
	event.currentTarget.classList.add("active-links");
	document.getElementById(tabname).classList.add("active-tab");

}
