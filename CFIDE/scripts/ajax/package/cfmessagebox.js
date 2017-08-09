/*ADOBE SYSTEMS INCORPORATED
Copyright 2007 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.MessageBox){
ColdFusion.MessageBox={};
}
var $MB=ColdFusion.MessageBox;
var $XB=Ext.MessageBox;
var DEFAULT_OK=$XB.buttonText.ok;
var DEFAULT_NO=$XB.buttonText.no;
var DEFAULT_CANCEL=$XB.buttonText.cancel;
var DEFAULT_YES=$XB.buttonText.yes;
var DEFAULT_ALERT_BUTTON_TYPE=$XB.OK;
var DEFAULT_CONFIRM_BUTTON_TYPE=$XB.YESNO;
var DEFAULT_PROMPT_BUTTON_TYPE=$XB.OKCANCEL;
var CF_BEFORE_SHOW_HANDLER_ADDED=false;
var CURRENT_MESSAGEBOX_ID;
ColdFusion.MessageBox.init=function(_4a9,type,_4ab,_4ac,_4ad,_4ae,_4af,_4b0,_4b1,_4b2,_4b3,icon,_4b5,x,y,_4b8,_4b9){
var _4ba={messageBoxId:_4a9,type:type,callBack_Fn:_4b3,multiline:_4b1,modal:_4b2,width:_4b5,bodyStyle:_4b9};
if(_4ab==null||typeof (_4ab)=="undefined"){
_4ab="";
}
_4ab=ColdFusion.Util.replaceAll(_4ab,"\n","<br>");
_4ba.messageText=_4ab;
if(_4ad!=null&&typeof (_4ad)!="undefined"){
_4ba.label_OK=_4ad;
}
if(_4ae!=null&&typeof (_4ae)!="undefined"){
_4ba.label_NO=_4ae;
}
if(_4b0!=null&&typeof (_4b0)!="undefined"){
_4ba.label_YES=_4b0;
}
if(_4af!=null&&typeof (_4af)!="undefined"){
_4ba.label_CANCEL=_4af;
}
if(_4ac==null||typeof (_4ac)=="undefined"){
type=type.toLowerCase();
if(type=="alert"){
_4ac="Alert";
}else{
if(type=="confirm"){
_4ac="Confirm";
}else{
if(type=="prompt"){
_4ac="Prompt";
}
}
}
}
_4ba.title=_4ac;
if(_4b8&&typeof (_4b8)=="string"){
_4ba.buttonType=_4b8;
}
if(icon&&typeof (icon)=="string"){
_4ba.icon=icon;
}
if(typeof x=="number"&&x>=0){
_4ba.x=x;
}
if(typeof y=="number"&&y>=0){
_4ba.y=y;
}
ColdFusion.objectCache[_4a9]=_4ba;
};
$MB.show=function(_4bb){
var _4bc=$MB.getMessageBoxObject(_4bb);
var type=_4bc.type;
type=(new String(type)).toLowerCase();
if(!CF_BEFORE_SHOW_HANDLER_ADDED){
var _4be=Ext.MessageBox.getDialog();
_4be.addListener("beforeshow",$MB.beforeShowHandler,_4bc);
CF_BEFORE_SHOW_HANDLER_ADDED=true;
}
CURRENT_MESSAGEBOX_ID=_4bb;
var _4bf=_4bc.buttonType;
var _4c0={ok:DEFAULT_OK,no:DEFAULT_NO,cancel:DEFAULT_CANCEL,yes:DEFAULT_YES};
if(_4bc.label_OK){
_4c0.ok=_4bc.label_OK;
}
if(_4bc.label_YES){
_4c0.yes=_4bc.label_YES;
}
if(_4bc.label_NO){
_4c0.no=_4bc.label_NO;
}
if(_4bc.label_CANCEL){
_4c0.cancel=_4bc.label_CANCEL;
}
Ext.MessageBox.buttonText=_4c0;
if(typeof _4bf!="undefined"){
_4bf=_4bf.toUpperCase();
if(_4bf&&_4bf!=="OKCANCEL"&&_4bf!=="OK"&&_4bf!=="YESNOCANCEL"&&_4bf!=="YESNO"){
ColdFusion.handleError(null,"messagebox.show.invalidbuttontype","widget",[messagebox,_4bf],null,null,true);
}
switch(_4bf){
case "OK":
_4bf=$XB.OK;
break;
case "OKCANCEL":
_4bf=$XB.OKCANCEL;
break;
case "YESNOCANCEL":
_4bf=$XB.YESNOCANCEL;
break;
case "YESNO":
_4bf=$XB.YESNO;
break;
}
}
var icon=_4bc.icon;
var _4c2="";
if(icon&&typeof (icon)==="string"){
icon=icon.toUpperCase();
switch(icon){
case "ERROR":
_4c2=$XB.ERROR;
break;
case "INFO":
_4c2=$XB.INFO;
break;
case "QUESTION":
_4c2=$XB.QUESTION;
break;
case "WARNING":
_4c2=$XB.WARNING;
break;
}
}
var _4c3={title:_4bc.title,msg:_4bc.messageText,fn:_4bc.callBack_Fn,modal:_4bc.modal,icon:_4c2,scope:null};
if(_4bc.width){
_4c3.width=_4bc.width;
if(_4c3.width>600){
_4c3.maxWidth=_4c3.width;
}
if(_4c3.width<100){
_4c3.minWidth=_4c3.width;
}
}
if(type==="alert"){
if(!_4bf){
_4bf=DEFAULT_ALERT_BUTTON_TYPE;
}
_4c3.buttons=_4bf;
$XB.show(_4c3);
}
if(type==="confirm"){
if(!_4bf){
_4bf=DEFAULT_CONFIRM_BUTTON_TYPE;
}
_4c3.buttons=_4bf;
$XB.show(_4c3);
}
if(type==="prompt"){
if(!_4bf){
_4bf=DEFAULT_PROMPT_BUTTON_TYPE;
}
_4c3.buttons=_4bf;
_4c3.prompt=true;
_4c3.multiline=_4bc.multiline;
_4c3.value="",$XB.show(_4c3);
}
ColdFusion.Log.info("messagebox.show.shown","widget",[_4bb]);
};
$MB.create=function(_4c4,type,_4c6,_4c7,_4c8,_4c9){
if(_4c4&&typeof _4c4!="string"){
ColdFusion.handleError(null,"messagebox.create.invalidname","widget",null,null,null,true);
return;
}
if(!_4c4||ColdFusion.trim(_4c4)==""){
ColdFusion.handleError(null,"messagebox.create.invalidname","widget",null,null,null,true);
return;
}
var _4ca=ColdFusion.objectCache[_4c4];
if(_4ca!=null||typeof _4ca!="undefined"){
ColdFusion.handleError(null,"messagebox.create.duplicatename","widget",[_4c4],null,null,true);
return;
}
if(_4c7&&typeof _4c7!="string"){
ColdFusion.handleError(null,"messagebox.create.invalidmessage","widget",[_4c4],null,null,true);
return;
}
if(!_4c7||ColdFusion.trim(_4c7)==""){
ColdFusion.handleError(null,"messagebox.create.invalidmessage","widget",[_4c4],null,null,true);
return;
}
if(_4c6&&typeof _4c6!="string"){
ColdFusion.handleError(null,"messagebox.create.invalidtitle","widget",[_4c4],null,null,true);
return;
}
if(type&&typeof type!="string"){
ColdFusion.handleError(null,"messagebox.create.invalidtype","widget",[_4c4],null,null,true);
return;
}
if(!type||ColdFusion.trim(type)==""){
ColdFusion.handleError(null,"messagebox.create.emptytype","widget",[_4c4],null,null,true);
return;
}
if(_4c8&&typeof _4c8!=="function"){
ColdFusion.handleError(null,"messagebox.create.invalidcallback","widget",[_4c4],null,null,true);
return;
}
var _4cb=DEFAULT_CANCEL;
var _4cc=DEFAULT_NO;
var _4cd=DEFAULT_OK;
var _4ce=DEFAULT_YES;
var _4cf=true;
var _4d0=null;
var _4d1=false;
var icon;
var _4d3;
var x;
var y;
var _4d6;
if(_4c9&&_4c9.labelok){
_4cd=_4c9.labelok;
}
if(_4c9&&_4c9.labelno){
_4cc=_4c9.labelno;
}
if(_4c9&&_4c9.labelyes){
_4ce=_4c9.labelyes;
}
if(_4c9&&_4c9.labelcancel){
_4cb=_4c9.labelcancel;
}
if(_4c9&&typeof _4c9.multiline==="boolean"){
_4d1=_4c9.multiline;
}
if(_4c9&&typeof _4c9.modal==="boolean"){
_4cf=_4c9.modal;
}
if(_4c9&&_4c9.buttontype){
_4d0=_4c9.buttontype;
if(type.toUpperCase()!=="CONFIRM"){
ColdFusion.handleError(null,"messagebox.create.invalidtypeandbuttontypecombination","widget",[_4c4],null,null,true);
}else{
if(_4d0.toUpperCase()!="YESNO"&&_4d0.toUpperCase()!="YESNOCANCEL"){
ColdFusion.handleError(null,"messagebox.create.invalidbuttontype","widget",[_4c4,_4d0],null,null,true);
}
}
}
if(_4c9&&_4c9.width){
_4d3=_4c9.width;
if(_4d3&&typeof _4d3!="number"){
ColdFusion.handleError(null,"messagebox.create.widthnotnumeric","widget",[_4c4,_4d3],null,null,true);
}
}
if(_4c9&&typeof _4c9.x!="undefined "){
if(_4c9.x&&typeof _4c9.x!="number"){
ColdFusion.handleError(null,"messagebox.create.xnotnumeric","widget",[_4c4,_4c9.x],null,null,true);
return;
}
x=_4c9.x;
}
if(_4c9&&typeof _4c9.y!="undefined"){
if(_4c9.y&&typeof _4c9.y!="number"){
ColdFusion.handleError(null,"messagebox.create.ynotnumeric","widget",[_4c4,_4c9.y],null,null,true);
return;
}
y=_4c9.y;
}
if(_4c9&&_4c9.icon){
icon=_4c9.icon;
if(icon){
icon=icon.toUpperCase();
if(icon!="ERROR"&&icon!="INFO"&&icon!="QUESTION"&&icon!="WARNING"){
ColdFusion.handleError(null,"messagebox.create.invalidicon","widget",[_4c4,icon],null,null,true);
}
}
}
if(_4c9&&_4c9.bodystyle){
_4d6=_4c9.bodystyle;
}
$MB.init(_4c4,type,_4c7,_4c6,_4cd,_4cc,_4cb,_4ce,_4d1,_4cf,_4c8,icon,_4d3,x,y,_4d0,_4d6);
ColdFusion.Log.info("messagebox.create.created","widget",[_4c4,type]);
};
$MB.updateMessage=function(_4d7,_4d8){
var _4d9=$MB.getMessageBoxObject(_4d7);
_4d9.messageText=_4d8;
ColdFusion.Log.info("messagebox.updatemessage.updated","widget",[_4d7]);
};
$MB.updateTitle=function(_4da,_4db){
var _4dc=$MB.getMessageBoxObject(_4da);
_4dc.title=_4db;
ColdFusion.Log.info("messagebox.updatetitle.updated","widget",[_4da]);
};
$MB.update=function(_4dd,_4de){
var _4df=$MB.getMessageBoxObject(_4dd);
var _4e0={};
if(!_4de||typeof _4de!="object"){
ColdFusion.handleError(null,"messagebox.update.invalidconfigobject","widget",[_4dd],null,null,true);
return;
}
if(_4de.name&&typeof _4de.name=="string"){
ColdFusion.handleError(null,"messagebox.update.nameupdatenotallowed","widget",[_4dd],null,null,true);
return;
}
if(_4de.type&&typeof _4de.type=="string"){
ColdFusion.handleError(null,"messagebox.update.typeupdatenotallowed","widget",[_4dd],null,null,true);
return;
}
if(_4de.message){
if(typeof _4de.message==="string"||typeof _4de.message=="object"){
_4e0.messageText=_4de.message;
}else{
ColdFusion.handleError(null,"messagebox.update.invalidmessage","widget",[_4dd],null,null,true);
return;
}
}
if(_4de.title){
if(typeof _4de.title==="string"||typeof _4de.title=="object"){
_4e0.title=_4de.title;
}else{
ColdFusion.handleError(null,"messagebox.update.invalidtitle","widget",[_4dd],null,null,true);
return;
}
}
if(_4de.labelok!=null||typeof _4de.labelok!="undefined"){
if(typeof _4de.labelok==="string"||typeof _4de.labelok=="object"){
_4e0.label_OK=_4de.labelok;
}else{
ColdFusion.handleError(null,"messagebox.update.invalidlabelok","widget",[_4dd],null,null,true);
return;
}
}
if(_4de.labelno!=null||typeof _4de.labelno!="undefined"){
if(typeof _4de.labelno==="string"||typeof _4de.labelno=="object"){
_4e0.label_NO=_4de.labelno;
}else{
ColdFusion.handleError(null,"messagebox.update.invalidlabelno","widget",[_4dd],null,null,true);
return;
}
}
if(_4de.labelyes!=null||typeof _4de.labelyes!="undefined"){
if(typeof _4de.labelyes==="string"||typeof _4de.labelyes=="object"){
_4e0.label_YES=_4de.labelyes;
}else{
ColdFusion.handleError(null,"messagebox.update.invalidlabelyes","widget",[_4dd],null,null,true);
return;
}
}
if(_4de.labelcancel!=null||typeof _4de.labelcancel!="undefined"){
if(typeof _4de.labelcancel==="string"||typeof _4de.labelcancel=="object"){
_4e0.label_CANCEL=_4de.labelcancel;
}else{
ColdFusion.handleError(null,"messagebox.update.invalidlabelcancel","widget",[_4dd],null,null,true);
return;
}
}
if(typeof _4de.modal=="boolean"){
_4e0.modal=_4de.modal;
}
if(typeof _4de.multiline==="boolean"){
if(_4df.type.toLowerCase()!="prompt"){
ColdFusion.handleError(null,"messagebox.update.invalidtypeformultiline","widget",[_4dd],null,null,true);
return;
}
_4e0.multiline=_4de.multiline;
}
if(_4de&&_4de.width){
if(typeof _4de.width==="number"||typeof _4de.width=="object"){
_4e0.width=_4de.width;
}else{
ColdFusion.handleError(null,"messagebox.update.invalidwidth","widget",[_4dd],null,null,true);
return;
}
}
if(_4de.icon!=null||typeof _4de.icon!="undefined"){
if(typeof _4de.icon==="string"){
icon=_4de.icon.toUpperCase();
if(icon!="ERROR"&&icon!="INFO"&&icon!="QUESTION"&&icon!="WARNING"){
ColdFusion.handleError(null,"messagebox.update.invalidicon","widget",[_4dd],null,null,true);
return;
}
_4e0.icon=_4de.icon;
}else{
if(typeof _4de.icon=="object"&&_4de.icon==null){
_4e0.icon=null;
}else{
ColdFusion.handleError(null,"messagebox.update.invalidicon","widget",[_4dd],null,null,true);
return;
}
}
}
if(_4de.callbackhandler!=null||typeof _4de.callbackhandler!="undefined"){
if(typeof _4de.callbackhandler==="function"||typeof _4de.callbackhandler==="object"){
_4e0.callBack_Fn=_4de.callbackhandler;
}else{
ColdFusion.handleError(null,"messagebox.update.invalidcallbackhandler","widget",[_4dd],null,null,true);
return;
}
}
if(_4de.x!=null||typeof _4de.x!="undefined"){
if(typeof _4de.x==="number"||typeof _4de.x=="object"){
_4e0.x=_4de.x;
}else{
ColdFusion.handleError(null,"messagebox.update.xnotnumeric","widget",[_4dd,_4de.x],null,null,true);
return;
}
}
if(_4de.y!=null||typeof _4de.y!="undefined"){
if(typeof _4de.y==="number"||typeof _4de.y=="object"){
_4e0.y=_4de.y;
}else{
ColdFusion.handleError(null,"messagebox.update.ynotnumeric","widget",[_4dd,_4de.y],null,null,true);
return;
}
}
if(_4de.bodystyle!=null||typeof _4de.bodystyle!="undefined"){
if(typeof _4de.bodystyle==="string"||typeof _4de.bodystyle=="object"){
_4e0.bodyStyle=_4de.bodystyle;
}else{
ColdFusion.handleError(null,"messagebox.update.invalidbodystyle","widget",[_4dd],null,null,true);
return;
}
}
if(_4de.buttontype!=null||typeof _4de.buttontype!="undefined"){
if(typeof _4de.buttontype==="string"||typeof _4de.buttontype==="object"){
buttonType=_4de.buttontype;
if(_4df.type.toUpperCase()!=="CONFIRM"){
ColdFusion.handleError(null,"messagebox.update.invalidtypeandbuttontypecombination","widget",[_4dd],null,null,true);
return;
}else{
if(buttonType.toUpperCase()!="YESNO"&&buttonType.toUpperCase()!="YESNOCANCEL"){
ColdFusion.handleError(null,"messagebox.update.invalidbuttontype","widget",[_4dd],null,null,true);
return;
}
}
_4e0.buttonType=_4de.buttontype;
}else{
ColdFusion.handleError(null,"messagebox.update.invalidbuttontype","widget",[_4dd],null,null,true);
return;
}
}
for(key in _4e0){
_4df[key]=_4e0[key];
}
ColdFusion.Log.info("messagebox.update.updated","messagebox",[_4dd]);
};
$MB.getMessageBoxObject=function(_4e1){
var _4e2=ColdFusion.objectCache[_4e1];
if(_4e2==null||typeof (_4e2)=="undefined"){
ColdFusion.handleError(null,"messagebox.getmessageboxobject.missingmessageboxid","widget",[_4e1],null,null,true);
}
return _4e2;
};
$MB.isMessageBoxDefined=function(_4e3){
var _4e4=ColdFusion.objectCache[_4e3];
if(_4e4==null||typeof (_4e4)=="undefined"){
return false;
}else{
return true;
}
};
$MB.beforeShowHandler=function(_4e5){
var _4e6=$MB.getMessageBoxObject(CURRENT_MESSAGEBOX_ID);
var _4e7=_4e6.x;
var _4e8=_4e6.y;
var _4e9=_4e6.bodyStyle;
var _4ea=_4e5.body.parent();
var id=_4ea.id;
var ele=document.getElementById(id);
ele.style.cssText=_4e9;
if(_4e7&&_4e8&&typeof _4e7=="number"&&typeof _4e8=="number"&&_4e7>=0&&_4e8>=0){
_4e5.setPosition(_4e7,_4e8);
}else{
_4e5.center();
}
};
