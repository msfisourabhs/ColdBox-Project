/*ADOBE SYSTEMS INCORPORATED
Copyright 2007 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.Menu){
ColdFusion.Menu={};
}
ColdFusion.Menu.menuItemMouseOver=function(id,_68c){
var _68d=document.getElementById(id);
_68d.tempfontcolor=_68d.firstChild.style.color;
if(_68c){
_68d.firstChild.style.color=_68c;
}
};
ColdFusion.Menu.menuItemMouseOut=function(id){
var _68f=document.getElementById(id);
if(_68f.tempfontcolor){
_68f.firstChild.style.color=_68f.tempfontcolor;
}else{
_68f.firstChild.style.color="black";
}
};
ColdFusion.Menu.initMenu=function(_690,_691){
return new YAHOO.widget.Menu(_690,_691);
};
ColdFusion.Menu.initMenuBar=function(_692,_693){
return new YAHOO.widget.MenuBar(_692,_693);
};
