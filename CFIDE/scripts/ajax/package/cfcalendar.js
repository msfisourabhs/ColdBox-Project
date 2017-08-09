/*ADOBE SYSTEMS INCORPORATED
Copyright 2007 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.Calendar){
ColdFusion.Calendar={};
}
ColdFusion.Calendar.monthNamesShort=new Array("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec");
ColdFusion.Calendar.monthNamesLong=new Array("January","February","March","April","May","June","July","August","September","October","November","December");
ColdFusion.Calendar.dayNamesShort=new Array("Sun","Mon","Tue","Wed","Thu","Fri","Sat");
ColdFusion.Calendar.dayNamesLong=new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
ColdFusion.Calendar.calTableIdCounter=0;
if(navigator.userAgent.toLowerCase().indexOf("safari")>-1){
var set_month=Date.prototype.setMonth;
Date.prototype.setMonth=function(num){
if(num<=-1){
var n=Math.ceil(-num);
var _47e=Math.ceil(n/12);
var _47f=(n%12)?12-n%12:0;
this.setFullYear(this.getFullYear()-_47e);
return set_month.call(this,_47f);
}else{
return set_month.apply(this,arguments);
}
};
}
if(!String.escape){
String.escape=function(_480){
return _480.replace(/('|\\)/g,"\\$1");
};
}
ColdFusion.Calendar.setUpCalendar=function(_481,mask,_483,_484,_485,_486,_487){
var _488=ColdFusion.DOM.getElement(_481+_486+"_cf_button",_486);
var _489=ColdFusion.DOM.getElement(_481,_486);
var _48a=null;
var _48b=null;
if(_489.value!=""){
_48a=_489.value;
_48b=_48a.split("/");
}
var _48c=_481+"_cf_calendar"+ColdFusion.Calendar.calTableIdCounter;
ColdFusion.Calendar.calTableIdCounter++;
var _48d=ColdFusion.DOM.getElement(_481+_486+"_cf_container",_486);
var _48e=_489.offsetLeft;
ColdFusion.DOM.getElement(_481+_486+"_cf_container",_486).style.left=_48e;
YAHOO.widget.Calendar.IMG_ROOT=_cf_ajaxscriptsrc+"/resources/yui/";
var _48f;
if(_48b&&_48b[0]&&_48b[2]){
_48f=new YAHOO.widget.Calendar(_48c,_481+_486+"_cf_container",{close:true,pagedate:_48b[0]+"/"+_48b[2]});
}else{
_48f=new YAHOO.widget.Calendar(_48c,_481+_486+"_cf_container",{close:true});
}
_48f.calendarinputid=_481;
_48f.calendarinput=_489;
_48f.mask=mask;
_48f.formname=_486;
_48f.cfg.setProperty("MONTHS_LONG",_485);
_48f.cfg.setProperty("WEEKDAYS_SHORT",_484);
_48f.cfg.setProperty("START_WEEKDAY",_483);
ColdFusion.objectCache[_48c+_486]=_48f;
_48f.select(_48a);
_48f.render();
_48f.hide();
_48f.selectEvent.subscribe(ColdFusion.Calendar.handleDateSelect,_48f,true);
YAHOO.util.Event.addListener(_481+_486+"_cf_button","click",ColdFusion.Calendar.handleCalendarLinkClick,_48f,true);
if(_487!=null){
var year=_487.year;
var _491=_487.month;
var day=_487.day;
var _493=new Date(year,_491.valueOf()-1,day);
_489.value=ColdFusion.Calendar.createFormattedOutput(_481,mask,year,_491,day,_493);
}
};
ColdFusion.Calendar.openedCalendarInstance=null;
ColdFusion.Calendar.handleCalendarLinkClick=function(type,args){
var _496=args;
if(ColdFusion.Calendar.openedCalendarInstance){
ColdFusion.Calendar.openedCalendarInstance.hide();
}
if(!_496.extMask){
var _497=ColdFusion.Calendar.convertToExtMask(_496.mask);
_496.extMask=_497;
}
var _498=ColdFusion.DOM.getElement(args.calendarinputid,_496.formname).value;
var _499=null;
if(typeof (_498)!="undefined"&&ColdFusion.trim(_498)!=""){
_499=Date.parseDate(_498,_496.extMask);
}
if(_499!=null){
_496.setMonth(_499.getMonth());
_496.setYear(_499.getFullYear());
_496.select(_499);
_496.render();
}
ColdFusion.Calendar.openedCalendarInstance=_496;
_496.show();
};
ColdFusion.Calendar.handleDateSelect=function(type,args,_49c){
var _49d=args[0];
var date=_49d[0];
var year=date[0],month=date[1],day=date[2];
var _4a0=new Date(year,month.valueOf()-1,day);
_49c.calendarinput.value=ColdFusion.Calendar.createFormattedOutput(_49c.calendarinputid,_49c.mask,year,month,day,_4a0);
ColdFusion.Event.callBindHandlers(_49c.calendarinputid,null,"change");
_49c.hide();
};
ColdFusion.Calendar.convertToExtMask=function(mask){
mask=mask.toUpperCase();
if(mask.indexOf("DD")!=-1){
mask=mask.replace(/DD/g,"d");
}
if(mask.indexOf("D")!=-1){
mask=mask.replace(/D/g,"d");
}
if(mask.indexOf("MMMM")!=-1){
mask=mask.replace(/MMMM/g,"F");
}else{
if(mask.indexOf("MMM")!=-1){
mask=mask.replace(/MMM/g,"M");
}else{
if(mask.indexOf("MM")!=-1){
mask=mask.replace(/MM/g,"m");
}else{
if(mask.indexOf("M")!=-1){
mask=mask.replace(/M/g,"m");
}
}
}
}
if(mask.indexOf("YYYY")!=-1){
mask=mask.replace(/YYYY/g,"Y");
}
if(mask.indexOf("YY")!=-1){
mask=mask.replace(/YY/g,"y");
}
if(mask.indexOf("EEEE")!=-1){
mask=mask.replace(/EEEE/g,"l");
}
if(mask.indexOf("EEE")!=-1){
mask=mask.replace(/EEE/g,"D");
}
if(mask.indexOf("E")!=-1){
mask=mask.replace(/E/g,"w");
}
return mask;
};
ColdFusion.Calendar.createFormattedOutput=function(_4a2,mask,year,_4a5,day,date){
mask=mask.toUpperCase();
year=new String(year);
_4a5=new String(_4a5);
day=new String(day);
var _4a8=date.getDay();
if(mask.indexOf("DD")!=-1){
if(day.length==1){
day="0"+day;
}
mask=mask.replace(/DD/g,day);
}
if(mask.indexOf("D"!=-1)){
if(day.length!=-1&&day.charAt(0)=="0"){
day=day.charAt(1);
}
mask=mask.replace(/D/g,day);
}
if(mask.indexOf("MMMM")!=-1){
_4a5=ColdFusion.Calendar.monthNamesLong[_4a5.valueOf()-1];
mask=mask.replace(/MMMM/g,_4a5);
}else{
if(mask.indexOf("MMM")!=-1){
_4a5=ColdFusion.Calendar.monthNamesShort[_4a5.valueOf()-1];
mask=mask.replace(/MMM/g,_4a5);
}else{
if(mask.indexOf("MM")!=-1){
if(_4a5.length==1){
_4a5="0"+_4a5;
}
mask=mask.replace(/MM/g,_4a5);
}else{
if(mask.indexOf("M")!=-1){
if(_4a5.length!=-1&&_4a5.charAt(0)=="0"){
_4a5=_4a5.charAt(1);
}
mask=mask.replace(/M/g,_4a5);
}
}
}
}
if(mask.indexOf("YYYY")!=-1){
mask=mask.replace(/YYYY/g,year);
}
if(mask.indexOf("YY")!=-1){
year=year.substring(2);
mask=mask.replace(/YY/g,year);
}
if(mask.indexOf("EEEE")!=-1){
_4a8=ColdFusion.Calendar.dayNamesLong[_4a8.valueOf()];
mask=mask.replace(/EEEE/g,_4a8);
}
if(mask.indexOf("EEE")!=-1){
_4a8=ColdFusion.Calendar.dayNamesShort[_4a8.valueOf()];
mask=mask.replace(/EEE/g,_4a8);
}
if(mask.indexOf("E")!=-1){
_4a8=_4a8.valueOf();
_4a8=new String(_4a8);
if(_4a8.length!=-1&&_4a8.charAt(0)=="0"&&_4a8.charAt(1)){
_4a8=_4a8.charAt(1);
}
mask=mask.replace(/E/g,_4a8);
}
return mask;
};
