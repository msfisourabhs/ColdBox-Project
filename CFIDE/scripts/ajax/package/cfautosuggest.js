/*ADOBE SYSTEMS INCORPORATED
Copyright 2007 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.Autosuggest){
ColdFusion.Autosuggest={};
}
var staticgifpath=_cf_ajaxscriptsrc+"/resources/cf/images/static.gif";
var dynamicgifpath=_cf_ajaxscriptsrc+"/resources/cf/images/loading.gif";
ColdFusion.Autosuggest.loadAutoSuggest=function(_461,_462){
var _463=ColdFusion.objectCache[_462.autosuggestid];
if(typeof (_461)=="string"){
_461=_461.split(",");
}else{
var _464=false;
if(_461&&ColdFusion.Util.isArray(_461)){
_464=true;
if(_461.length>0&&(typeof (_461[0])!="string"&&typeof (_461[0])!="number")){
_464=false;
}
}
if(!_464){
ColdFusion.handleError(_463.onbinderror,"autosuggest.loadautosuggest.invalidvalue","widget",[_462.autosuggestid]);
return;
}
}
var _465=document.getElementById(_462.autosuggestid).value;
if(_465.length==1&&_461.length==0){
var _466=new Array();
_463.dataSource.flushCache();
_463.dataSource=new YAHOO.widget.DS_JSArray(_466);
_463.autosuggestitems=_466;
}
if(_461.length>0){
var i=0;
var _468=false;
var _466=new Array();
for(i=0;i<_461.length;i++){
if(_461[i]){
if(typeof (_461[i])=="string"){
_466[i]=_461[i];
}else{
if(typeof (_461[i])=="number"){
_466[i]=_461[i]+"";
}else{
_466[i]=new String(_461[i]);
}
}
if(_466[i].indexOf(_465)==0){
_468=true;
}
}
}
if(_468==false&&_463.showloadingicon==true){
document.getElementById(_462.autosuggestid+"_cf_button").src=staticgifpath;
}
_463.dataSource.flushCache();
_463.dataSource=new YAHOO.widget.DS_JSArray(_466);
_463.autosuggestitems=_466;
if(_463.queryMatchContains){
_463.dataSource.queryMatchContains=_463.queryMatchContains;
}
_463._sendQuery(_465);
}else{
if(_463.showloadingicon==true){
document.getElementById(_462.autosuggestid+"_cf_button").src=staticgifpath;
_463.showloadingicon==false;
}
}
};
ColdFusion.Autosuggest.checkToMakeBindCall=function(arg,_46a,_46b,_46c,_46d){
var _46c=document.getElementById(_46a).value;
if(!_46b.isContainerOpen()&&_46c.length>0&&arg.keyCode!=39&&(arg.keyCode>31||(arg.keyCode==8&&_46b.valuePresent==true))){
_46b.valuePresent=false;
if(_46b.showloadingicon==true){
document.getElementById(_46a+"_cf_button").src=dynamicgifpath;
}
ColdFusion.Log.info("autosuggest.checktomakebindcall.fetching","widget",[_46a,_46c]);
if(_46b.cfqueryDelay>0){
var _46e=setTimeout(_46d,_46b.cfqueryDelay*1000,this);
if(_46b._nDelayID!=-1){
clearTimeout(_46b._cf_nDelayID);
}
_46b._cf_nDelayID=_46e;
}else{
_46d.call(this);
}
}
};
ColdFusion.Autosuggest.checkValueNotInAutosuggest=function(_46f,_470){
if(_46f.autosuggestitems){
for(var i=0;i<_46f.autosuggestitems.length;i++){
if(_470==_46f.autosuggestitems[i]){
return false;
}
}
}
return true;
};
ColdFusion.Autosuggest.triggerOnChange=function(type,args){
var _474=args[0];
var _475=document.getElementById(_474.id);
ColdFusion.Event.callBindHandlers(_474.id,null,"change");
};
ColdFusion.Autosuggest.init=function(_476,_477,_478){
return new YAHOO.widget.AutoComplete(_476,_477,_478);
};
ColdFusion.Autosuggest.getAutosuggestObject=function(_479){
var _47a=ColdFusion.objectCache[_479];
if(_47a==null||typeof (_47a)=="undefined"){
ColdFusion.handleError(null,"autosuggest.getAutosuggestObject.notfound","widget",[_479],null,null,true);
}
return _47a;
};
ColdFusion.Autosuggest.initJS_ARRAY=function(_47b){
return new YAHOO.widget.DS_JSArray(_47b);
};
