/*ADOBE SYSTEMS INCORPORATED
Copyright 2007 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
function cfinit(){
if(!window.ColdFusion){
ColdFusion={};
var $C=ColdFusion;
if(!$C.Ajax){
$C.Ajax={};
}
var $A=$C.Ajax;
if(!$C.AjaxProxy){
$C.AjaxProxy={};
}
var $X=$C.AjaxProxy;
if(!$C.Bind){
$C.Bind={};
}
var $B=$C.Bind;
if(!$C.Event){
$C.Event={};
}
var $E=$C.Event;
if(!$C.Log){
$C.Log={};
}
var $L=$C.Log;
if(!$C.Util){
$C.Util={};
}
var $U=$C.Util;
if(!$C.DOM){
$C.DOM={};
}
var $D=$C.DOM;
if(!$C.Spry){
$C.Spry={};
}
var $S=$C.Spry;
if(!$C.Pod){
$C.Pod={};
}
var $P=$C.Pod;
if(!$C.objectCache){
$C.objectCache={};
}
if(!$C.required){
$C.required={};
}
if(!$C.importedTags){
$C.importedTags=[];
}
if(!$C.requestCounter){
$C.requestCounter=0;
}
if(!$C.bindHandlerCache){
$C.bindHandlerCache={};
}
window._cf_loadingtexthtml="<div style=\"text-align: center;\">"+window._cf_loadingtexthtml+"&nbsp;"+CFMessage["loading"]+"</div>";
$C.globalErrorHandler=function(_4f7,_4f8){
if($L.isAvailable){
$L.error(_4f7,_4f8);
}
if($C.userGlobalErrorHandler){
$C.userGlobalErrorHandler(_4f7);
}
if(!$L.isAvailable&&!$C.userGlobalErrorHandler){
alert(_4f7+CFMessage["globalErrorHandler.alert"]);
}
};
$C.handleError=function(_4f9,_4fa,_4fb,_4fc,_4fd,_4fe,_4ff,_500){
var msg=$L.format(_4fa,_4fc);
if(_4f9){
$L.error(msg,"http");
if(!_4fd){
_4fd=-1;
}
if(!_4fe){
_4fe=msg;
}
_4f9(_4fd,_4fe,_500);
}else{
if(_4ff){
$L.error(msg,"http");
throw msg;
}else{
$C.globalErrorHandler(msg,_4fb);
}
}
};
$C.setGlobalErrorHandler=function(_502){
$C.userGlobalErrorHandler=_502;
};
$A.createXMLHttpRequest=function(){
try{
return new XMLHttpRequest();
}
catch(e){
}
var _503=["Microsoft.XMLHTTP","MSXML2.XMLHTTP.5.0","MSXML2.XMLHTTP.4.0","MSXML2.XMLHTTP.3.0","MSXML2.XMLHTTP"];
for(var i=0;i<_503.length;i++){
try{
return new ActiveXObject(_503[i]);
}
catch(e){
}
}
return false;
};
$A.isRequestError=function(req){
return ((req.status!=0&&req.status!=200)||req.getResponseHeader("server-error"));
};
$A.sendMessage=function(url,_507,_508,_509,_50a,_50b,_50c){
var req=$A.createXMLHttpRequest();
if(!_507){
_507="GET";
}
if(_509&&_50a){
req.onreadystatechange=function(){
$A.callback(req,_50a,_50b);
};
}
if(_508){
_508+="&_cf_nodebug=true&_cf_nocache=true";
}else{
_508="_cf_nodebug=true&_cf_nocache=true";
}
if(window._cf_clientid){
_508+="&_cf_clientid="+_cf_clientid;
}
if(_507=="GET"){
if(_508){
_508+="&_cf_rc="+($C.requestCounter++);
if(url.indexOf("?")==-1){
url+="?"+_508;
}else{
url+="&"+_508;
}
}
$L.info("ajax.sendmessage.get","http",[url]);
req.open(_507,url,_509);
req.send(null);
}else{
$L.info("ajax.sendmessage.post","http",[url,_508]);
req.open(_507,url,_509);
req.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
if(_508){
req.send(_508);
}else{
req.send(null);
}
}
if(!_509){
while(req.readyState!=4){
}
if($A.isRequestError(req)){
$C.handleError(null,"ajax.sendmessage.error","http",[req.status,req.statusText],req.status,req.statusText,_50c);
}else{
return req;
}
}
};
$A.callback=function(req,_50f,_510){
if(req.readyState!=4){
return;
}
req.onreadystatechange=new Function;
_50f(req,_510);
};
$A.submitForm=function(_511,url,_513,_514,_515,_516){
var _517=$C.getFormQueryString(_511);
if(_517==-1){
$C.handleError(_514,"ajax.submitform.formnotfound","http",[_511],-1,null,true);
return;
}
if(!_515){
_515="POST";
}
_516=!(_516===false);
var _518=function(req){
$A.submitForm.callback(req,_511,_513,_514);
};
$L.info("ajax.submitform.submitting","http",[_511]);
var _51a=$A.sendMessage(url,_515,_517,_516,_518);
if(!_516){
$L.info("ajax.submitform.success","http",[_511]);
return _51a.responseText;
}
};
$A.submitForm.callback=function(req,_51c,_51d,_51e){
if($A.isRequestError(req)){
$C.handleError(_51e,"ajax.submitform.error","http",[req.status,_51c,req.statusText],req.status,req.statusText);
}else{
$L.info("ajax.submitform.success","http",[_51c]);
if(_51d){
_51d(req.responseText);
}
}
};
$C.empty=function(){
};
$C.setSubmitClicked=function(_51f,_520){
var el=$D.getElement(_520,_51f);
el.cfinputbutton=true;
$C.setClickedProperty=function(){
el.clicked=true;
};
$E.addListener(el,"click",$C.setClickedProperty);
};
$C.getFormQueryString=function(_522,_523){
var _524;
if(typeof _522=="string"){
_524=(document.getElementById(_522)||document.forms[_522]);
}else{
if(typeof _522=="object"){
_524=_522;
}
}
if(!_524||null==_524.elements){
return -1;
}
var _525,elementName,elementValue,elementDisabled;
var _526=false;
var _527=(_523)?{}:"";
for(var i=0;i<_524.elements.length;i++){
_525=_524.elements[i];
elementDisabled=_525.disabled;
elementName=_525.name;
elementValue=_525.value;
if(!elementDisabled&&elementName){
switch(_525.type){
case "select-one":
case "select-multiple":
for(var j=0;j<_525.options.length;j++){
if(_525.options[j].selected){
if(window.ActiveXObject){
_527=$C.getFormQueryString.processFormData(_527,_523,elementName,_525.options[j].attributes["value"].specified?_525.options[j].value:_525.options[j].text);
}else{
_527=$C.getFormQueryString.processFormData(_527,_523,elementName,_525.options[j].hasAttribute("value")?_525.options[j].value:_525.options[j].text);
}
}
}
break;
case "radio":
case "checkbox":
if(_525.checked){
_527=$C.getFormQueryString.processFormData(_527,_523,elementName,elementValue);
}
break;
case "file":
case undefined:
case "reset":
break;
case "button":
_527=$C.getFormQueryString.processFormData(_527,_523,elementName,elementValue);
break;
case "submit":
if(_525.cfinputbutton){
if(_526==false&&_525.clicked){
_527=$C.getFormQueryString.processFormData(_527,_523,elementName,elementValue);
_526=true;
}
}else{
_527=$C.getFormQueryString.processFormData(_527,_523,elementName,elementValue);
}
break;
case "textarea":
var _52a;
if(window.FCKeditorAPI&&(_52a=$C.objectCache[elementName])&&_52a.richtextid){
var _52b=FCKeditorAPI.GetInstance(_52a.richtextid);
if(_52b){
elementValue=_52b.GetXHTML();
}
}
_527=$C.getFormQueryString.processFormData(_527,_523,elementName,elementValue);
break;
default:
_527=$C.getFormQueryString.processFormData(_527,_523,elementName,elementValue);
break;
}
}
}
if(!_523){
_527=_527.substr(0,_527.length-1);
}
return _527;
};
$C.getFormQueryString.processFormData=function(_52c,_52d,_52e,_52f){
if(_52d){
if(_52c[_52e]){
_52c[_52e]+=","+_52f;
}else{
_52c[_52e]=_52f;
}
}else{
_52c+=encodeURIComponent(_52e)+"="+encodeURIComponent(_52f)+"&";
}
return _52c;
};
$A.importTag=function(_530){
$C.importedTags.push(_530);
};
$A.checkImportedTag=function(_531){
var _532=false;
for(var i=0;i<$C.importedTags.length;i++){
if($C.importedTags[i]==_531){
_532=true;
break;
}
}
if(!_532){
$C.handleError(null,"ajax.checkimportedtag.error","widget",[_531]);
}
};
$C.getElementValue=function(_534,_535,_536){
if(!_534){
$C.handleError(null,"getelementvalue.noelementname","bind",null,null,null,true);
return;
}
if(!_536){
_536="value";
}
var _537=$B.getBindElementValue(_534,_535,_536);
if(typeof (_537)=="undefined"){
_537=null;
}
if(_537==null){
$C.handleError(null,"getelementvalue.elnotfound","bind",[_534,_536],null,null,true);
return;
}
return _537;
};
$B.getBindElementValue=function(_538,_539,_53a,_53b,_53c){
var _53d="";
if(window[_538]){
var _53e=eval(_538);
if(_53e&&_53e._cf_getAttribute){
_53d=_53e._cf_getAttribute(_53a);
return _53d;
}
}
var _53f=$C.objectCache[_538];
if(_53f&&_53f._cf_getAttribute){
_53d=_53f._cf_getAttribute(_53a);
return _53d;
}
var el=$D.getElement(_538,_539);
var _541=(el&&((!el.length&&el.length!=0)||(el.length&&el.length>0)||el.tagName=="SELECT"));
if(!_541&&!_53c){
$C.handleError(null,"bind.getbindelementvalue.elnotfound","bind",[_538]);
return null;
}
if(el.tagName!="SELECT"){
if(el.length>1){
var _542=true;
for(var i=0;i<el.length;i++){
var _544=(el[i].getAttribute("type")=="radio"||el[i].getAttribute("type")=="checkbox");
if(!_544||(_544&&el[i].checked)){
if(!_542){
_53d+=",";
}
_53d+=$B.getBindElementValue.extract(el[i],_53a);
_542=false;
}
}
}else{
_53d=$B.getBindElementValue.extract(el,_53a);
}
}else{
var _542=true;
for(var i=0;i<el.options.length;i++){
if(el.options[i].selected){
if(!_542){
_53d+=",";
}
_53d+=$B.getBindElementValue.extract(el.options[i],_53a);
_542=false;
}
}
}
if(typeof (_53d)=="object"){
$C.handleError(null,"bind.getbindelementvalue.simplevalrequired","bind",[_538,_53a]);
return null;
}
if(_53b&&$C.required[_538]&&_53d.length==0){
return null;
}
return _53d;
};
$B.getBindElementValue.extract=function(el,_546){
var _547=el[_546];
if((_547==null||typeof (_547)=="undefined")&&el.getAttribute){
_547=el.getAttribute(_546);
}
return _547;
};
$L.init=function(){
if(window.YAHOO&&YAHOO.widget&&YAHOO.widget.Logger){
YAHOO.widget.Logger.categories=[CFMessage["debug"],CFMessage["info"],CFMessage["error"],CFMessage["window"]];
YAHOO.widget.LogReader.prototype.formatMsg=function(_548){
var _549=_548.category;
return "<p>"+"<span class='"+_549+"'>"+_549+"</span>:<i>"+_548.source+"</i>: "+_548.msg+"</p>";
};
var _54a=new YAHOO.widget.LogReader(null,{width:"30em",fontSize:"100%"});
_54a.setTitle(CFMessage["log.title"]||"ColdFusion AJAX Logger");
_54a._btnCollapse.value=CFMessage["log.collapse"]||"Collapse";
_54a._btnPause.value=CFMessage["log.pause"]||"Pause";
_54a._btnClear.value=CFMessage["log.clear"]||"Clear";
$L.isAvailable=true;
}
};
$L.log=function(_54b,_54c,_54d,_54e){
if(!$L.isAvailable){
return;
}
if(!_54d){
_54d="global";
}
_54d=CFMessage[_54d]||_54d;
_54c=CFMessage[_54c]||_54c;
_54b=$L.format(_54b,_54e);
YAHOO.log(_54b,_54c,_54d);
};
$L.format=function(code,_550){
var msg=CFMessage[code]||code;
if(_550){
for(i=0;i<_550.length;i++){
if(!_550[i].length){
_550[i]="";
}
var _552="{"+i+"}";
msg=msg.replace(_552,_550[i]);
}
}
return msg;
};
$L.debug=function(_553,_554,_555){
$L.log(_553,"debug",_554,_555);
};
$L.info=function(_556,_557,_558){
$L.log(_556,"info",_557,_558);
};
$L.error=function(_559,_55a,_55b){
$L.log(_559,"error",_55a,_55b);
};
$L.dump=function(_55c,_55d){
if($L.isAvailable){
var dump=(/string|number|undefined|boolean/.test(typeof (_55c))||_55c==null)?_55c:recurse(_55c,typeof _55c,true);
$L.debug(dump,_55d);
}
};
$X.invoke=function(_55f,_560,_561,_562,_563){
var _564="method="+_560+"&_cf_ajaxproxytoken="+_561;
var _565=_55f.returnFormat||"json";
_564+="&returnFormat="+_565;
if(_55f.queryFormat){
_564+="&queryFormat="+_55f.queryFormat;
}
if(_55f.formId){
var _566=$C.getFormQueryString(_55f.formId,true);
if(_562!=null){
for(prop in _566){
_562[prop]=_566[prop];
}
}else{
_562=_566;
}
_55f.formId=null;
}
var _567="";
if(_562!=null){
_567=$X.JSON.encode(_562);
_564+="&argumentCollection="+encodeURIComponent(_567);
}
$L.info("ajaxproxy.invoke.invoking","http",[_55f.cfcPath,_560,_567]);
if(_55f.callHandler){
_55f.callHandler.call(null,_55f.callHandlerParams,_55f.cfcPath,_564);
return;
}
var _568;
if(_55f.async){
_568=function(req){
$X.callback(req,_55f,_563);
};
}
var req=$A.sendMessage(_55f.cfcPath,_55f.httpMethod,_564,_55f.async,_568,null,true);
if(!_55f.async){
return $X.processResponse(req,_55f);
}
};
$X.callback=function(req,_56c,_56d){
if($A.isRequestError(req)){
$C.handleError(_56c.errorHandler,"ajaxproxy.invoke.error","http",[req.status,_56c.cfcPath,req.statusText],req.status,req.statusText,false,_56d);
}else{
if(_56c.callbackHandler){
var _56e=$X.processResponse(req,_56c);
_56c.callbackHandler(_56e,_56d);
}
}
};
$X.processResponse=function(req,_570){
var _571=true;
for(var i=0;i<req.responseText.length;i++){
var c=req.responseText.charAt(i);
_571=(c==" "||c=="\n"||c=="\t"||c=="\r");
if(!_571){
break;
}
}
var _574=(req.responseXML&&req.responseXML.childNodes.length>0);
var _575=_574?"[XML Document]":req.responseText;
$L.info("ajaxproxy.invoke.response","http",[_575]);
var _576;
var _577=_570.returnFormat||"json";
if(_577=="json"){
_576=_571?null:$X.JSON.decode(req.responseText);
}else{
_576=_574?req.responseXML:(_571?null:req.responseText);
}
return _576;
};
$X.init=function(_578,_579){
var _57a=_579.split(".");
var ns=self;
for(i=0;i<_57a.length-1;i++){
if(_57a[i].length){
ns[_57a[i]]=ns[_57a[i]]||{};
ns=ns[_57a[i]];
}
}
var _57c=_57a[_57a.length-1];
if(ns[_57c]){
return ns[_57c];
}
ns[_57c]=function(){
this.httpMethod="GET";
this.async=false;
this.callbackHandler=null;
this.errorHandler=null;
this.formId=null;
};
ns[_57c].prototype.cfcPath=_578;
ns[_57c].prototype.setHTTPMethod=function(_57d){
if(_57d){
_57d=_57d.toUpperCase();
}
if(_57d!="GET"&&_57d!="POST"){
$C.handleError(null,"ajaxproxy.sethttpmethod.invalidmethod","http",[_57d],null,null,true);
}
this.httpMethod=_57d;
};
ns[_57c].prototype.setSyncMode=function(){
this.async=false;
};
ns[_57c].prototype.setAsyncMode=function(){
this.async=true;
};
ns[_57c].prototype.setCallbackHandler=function(fn){
this.callbackHandler=fn;
this.setAsyncMode();
};
ns[_57c].prototype.setErrorHandler=function(fn){
this.errorHandler=fn;
this.setAsyncMode();
};
ns[_57c].prototype.setForm=function(fn){
this.formId=fn;
};
ns[_57c].prototype.setQueryFormat=function(_581){
if(_581){
_581=_581.toLowerCase();
}
if(!_581||(_581!="column"&&_581!="row")){
$C.handleError(null,"ajaxproxy.setqueryformat.invalidformat","http",[_581],null,null,true);
}
this.queryFormat=_581;
};
ns[_57c].prototype.setReturnFormat=function(_582){
if(_582){
_582=_582.toLowerCase();
}
if(!_582||(_582!="plain"&&_582!="json"&&_582!="wddx")){
$C.handleError(null,"ajaxproxy.setreturnformat.invalidformat","http",[_582],null,null,true);
}
this.returnFormat=_582;
};
$L.info("ajaxproxy.init.created","http",[_578]);
return ns[_57c];
};
$U.isWhitespace=function(s){
var _584=true;
for(var i=0;i<s.length;i++){
var c=s.charAt(i);
_584=(c==" "||c=="\n"||c=="\t"||c=="\r");
if(!_584){
break;
}
}
return _584;
};
$U.getFirstNonWhitespaceIndex=function(s){
var _588=true;
for(var i=0;i<s.length;i++){
var c=s.charAt(i);
_588=(c==" "||c=="\n"||c=="\t"||c=="\r");
if(!_588){
break;
}
}
return i;
};
$C.trim=function(_58b){
return _58b.replace(/^\s+|\s+$/g,"");
};
$U.isInteger=function(n){
var _58d=true;
if(typeof (n)=="number"){
_58d=(n>=0);
}else{
for(i=0;i<n.length;i++){
if($U.isInteger.numberChars.indexOf(n.charAt(i))==-1){
_58d=false;
break;
}
}
}
return _58d;
};
$U.isInteger.numberChars="0123456789";
$U.isArray=function(a){
return (typeof (a.length)=="number"&&!a.toUpperCase);
};
$U.isBoolean=function(b){
if(b===true||b===false){
return true;
}else{
if(b.toLowerCase){
b=b.toLowerCase();
return (b==$U.isBoolean.trueChars||b==$U.isBoolean.falseChars);
}else{
return false;
}
}
};
$U.isBoolean.trueChars="true";
$U.isBoolean.falseChars="false";
$U.castBoolean=function(b){
if(b===true){
return true;
}else{
if(b===false){
return false;
}else{
if(b.toLowerCase){
b=b.toLowerCase();
if(b==$U.isBoolean.trueChars){
return true;
}else{
if(b==$U.isBoolean.falseChars){
return false;
}else{
return false;
}
}
}else{
return false;
}
}
}
};
$U.checkQuery=function(o){
var _592=null;
if(o&&o.COLUMNS&&$U.isArray(o.COLUMNS)&&o.DATA&&$U.isArray(o.DATA)&&(o.DATA.length==0||(o.DATA.length>0&&$U.isArray(o.DATA[0])))){
_592="row";
}else{
if(o&&o.COLUMNS&&$U.isArray(o.COLUMNS)&&o.ROWCOUNT&&$U.isInteger(o.ROWCOUNT)&&o.DATA){
_592="col";
for(var i=0;i<o.COLUMNS.length;i++){
var _594=o.DATA[o.COLUMNS[i]];
if(!_594||!$U.isArray(_594)){
_592=null;
break;
}
}
}
}
return _592;
};
$X.JSON=new function(){
var _595={}.hasOwnProperty?true:false;
var _596=/^("(\\.|[^"\\\n\r])*?"|[,:{}\[\]0-9.\-+Eaeflnr-u \n\r\t])+?$/;
var pad=function(n){
return n<10?"0"+n:n;
};
var m={"\b":"\\b","\t":"\\t","\n":"\\n","\f":"\\f","\r":"\\r","\"":"\\\"","\\":"\\\\"};
var _59a=function(s){
if(/["\\\x00-\x1f]/.test(s)){
return "\""+s.replace(/([\x00-\x1f\\"])/g,function(a,b){
var c=m[b];
if(c){
return c;
}
c=b.charCodeAt();
return "\\u00"+Math.floor(c/16).toString(16)+(c%16).toString(16);
})+"\"";
}
return "\""+s+"\"";
};
var _59f=function(o){
var a=["["],b,i,l=o.length,v;
for(i=0;i<l;i+=1){
v=o[i];
switch(typeof v){
case "undefined":
case "function":
case "unknown":
break;
default:
if(b){
a.push(",");
}
a.push(v===null?"null":$X.JSON.encode(v));
b=true;
}
}
a.push("]");
return a.join("");
};
var _5a2=function(o){
return "\""+o.getFullYear()+"-"+pad(o.getMonth()+1)+"-"+pad(o.getDate())+"T"+pad(o.getHours())+":"+pad(o.getMinutes())+":"+pad(o.getSeconds())+"\"";
};
this.encode=function(o){
if(typeof o=="undefined"||o===null){
return "null";
}else{
if(o instanceof Array){
return _59f(o);
}else{
if(o instanceof Date){
return _5a2(o);
}else{
if(typeof o=="string"){
return _59a(o);
}else{
if(typeof o=="number"){
return isFinite(o)?String(o):"null";
}else{
if(typeof o=="boolean"){
return String(o);
}else{
var a=["{"],b,i,v;
for(var i in o){
if(!_595||o.hasOwnProperty(i)){
v=o[i];
switch(typeof v){
case "undefined":
case "function":
case "unknown":
break;
default:
if(b){
a.push(",");
}
a.push(this.encode(i),":",v===null?"null":this.encode(v));
b=true;
}
}
}
a.push("}");
return a.join("");
}
}
}
}
}
}
};
this.decode=function(json){
if(typeof json=="object"){
return json;
}
if($U.isWhitespace(json)){
return null;
}
var _5a8=$U.getFirstNonWhitespaceIndex(json);
if(_5a8>0){
json=json.slice(_5a8);
}
if(window._cf_jsonprefix&&json.indexOf(_cf_jsonprefix)==0){
json=json.slice(_cf_jsonprefix.length);
}
try{
if(_596.test(json)){
return eval("("+json+")");
}
}
catch(e){
}
throw new SyntaxError("parseJSON");
};
}();
if(!$C.JSON){
$C.JSON={};
}
$C.JSON.encode=$X.JSON.encode;
$C.JSON.decode=$X.JSON.decode;
$C.navigate=function(url,_5aa,_5ab,_5ac,_5ad,_5ae){
if(url==null){
$C.handleError(_5ac,"navigate.urlrequired","widget");
return;
}
if(_5ad){
_5ad=_5ad.toUpperCase();
if(_5ad!="GET"&&_5ad!="POST"){
$C.handleError(null,"navigate.invalidhttpmethod","http",[_5ad],null,null,true);
}
}else{
_5ad="GET";
}
var _5af;
if(_5ae){
_5af=$C.getFormQueryString(_5ae);
if(_5af==-1){
$C.handleError(null,"navigate.formnotfound","http",[_5ae],null,null,true);
}
}
if(_5aa==null){
if(_5af){
if(url.indexOf("?")==-1){
url+="?"+_5af;
}else{
url+="&"+_5af;
}
}
$L.info("navigate.towindow","widget",[url]);
window.location.replace(url);
return;
}
$L.info("navigate.tocontainer","widget",[url,_5aa]);
var obj=$C.objectCache[_5aa];
if(obj!=null){
if(typeof (obj._cf_body)!="undefined"&&obj._cf_body!=null){
_5aa=obj._cf_body;
}
}
$A.replaceHTML(_5aa,url,_5ad,_5af,_5ab,_5ac);
};
$A.checkForm=function(_5b1,_5b2,_5b3,_5b4,_5b5){
var _5b6=_5b2.call(null,_5b1);
if(_5b6==false){
return false;
}
var _5b7=$C.getFormQueryString(_5b1);
$L.info("ajax.submitform.submitting","http",[_5b1.name]);
$A.replaceHTML(_5b3,_5b1.action,_5b1.method,_5b7,_5b4,_5b5);
return false;
};
$A.replaceHTML=function(_5b8,url,_5ba,_5bb,_5bc,_5bd){
var _5be=document.getElementById(_5b8);
if(!_5be){
$C.handleError(_5bd,"ajax.replacehtml.elnotfound","http",[_5b8]);
return;
}
var _5bf="_cf_containerId="+encodeURIComponent(_5b8);
_5bb=(_5bb)?_5bb+"&"+_5bf:_5bf;
$L.info("ajax.replacehtml.replacing","http",[_5b8,url,_5bb]);
if(_cf_loadingtexthtml){
try{
_5be.innerHTML=_cf_loadingtexthtml;
}
catch(e){
}
}
var _5c0=function(req,_5c2){
var _5c3=false;
if($A.isRequestError(req)){
$C.handleError(_5bd,"ajax.replacehtml.error","http",[req.status,_5c2.id,req.statusText],req.status,req.statusText);
_5c3=true;
}
var _5c4=new $E.CustomEvent("onReplaceHTML",_5c2);
var _5c5=new $E.CustomEvent("onReplaceHTMLUser",_5c2);
$E.loadEvents[_5c2.id]={system:_5c4,user:_5c5};
if(req.responseText.search(/<script/i)!=-1){
try{
_5c2.innerHTML="";
}
catch(e){
}
$A.replaceHTML.processResponseText(req.responseText,_5c2,_5bd);
}else{
try{
_5c2.innerHTML=req.responseText;
}
catch(e){
}
}
$E.loadEvents[_5c2.id]=null;
_5c4.fire();
_5c4.unsubscribe();
_5c5.fire();
_5c5.unsubscribe();
$L.info("ajax.replacehtml.success","http",[_5c2.id]);
if(_5bc&&!_5c3){
_5bc();
}
};
try{
$A.sendMessage(url,_5ba,_5bb,true,_5c0,_5be);
}
catch(e){
try{
_5be.innerHTML=$L.format(CFMessage["ajax.replacehtml.connectionerrordisplay"],[url,e]);
}
catch(e){
}
$C.handleError(_5bd,"ajax.replacehtml.connectionerror","http",[_5b8,url,e]);
}
};
$A.replaceHTML.processResponseText=function(text,_5c7,_5c8){
var pos=0;
var _5ca=0;
var _5cb=0;
_5c7._cf_innerHTML="";
while(pos<text.length){
var _5cc=text.indexOf("<s",pos);
if(_5cc==-1){
_5cc=text.indexOf("<S",pos);
}
if(_5cc==-1){
break;
}
pos=_5cc;
var _5cd=true;
var _5ce=$A.replaceHTML.processResponseText.scriptTagChars;
for(var i=1;i<_5ce.length;i++){
var _5d0=pos+i+1;
if(_5d0>text.length){
break;
}
var _5d1=text.charAt(_5d0);
if(_5ce[i][0]!=_5d1&&_5ce[i][1]!=_5d1){
pos+=i+1;
_5cd=false;
break;
}
}
if(!_5cd){
continue;
}
var _5d2=text.substring(_5ca,pos);
if(_5d2){
_5c7._cf_innerHTML+=_5d2;
}
var _5d3=text.indexOf(">",pos)+1;
if(_5d3==0){
pos++;
continue;
}else{
pos+=7;
}
var _5d4=_5d3;
while(_5d4<text.length&&_5d4!=-1){
_5d4=text.indexOf("</s",_5d4);
if(_5d4==-1){
_5d4=text.indexOf("</S",_5d4);
}
if(_5d4!=-1){
_5cd=true;
for(var i=1;i<_5ce.length;i++){
var _5d0=_5d4+2+i;
if(_5d0>text.length){
break;
}
var _5d1=text.charAt(_5d0);
if(_5ce[i][0]!=_5d1&&_5ce[i][1]!=_5d1){
_5d4=_5d0;
_5cd=false;
break;
}
}
if(_5cd){
break;
}
}
}
if(_5d4!=-1){
var _5d5=text.substring(_5d3,_5d4);
var _5d6=_5d5.indexOf("<!--");
if(_5d6!=-1){
_5d5=_5d5.substring(_5d6+4);
}
var _5d7=_5d5.lastIndexOf("//-->");
if(_5d7!=-1){
_5d5=_5d5.substring(0,_5d7-1);
}
if(_5d5.indexOf("document.write")!=-1||_5d5.indexOf("CF_RunContent")!=-1){
if(_5d5.indexOf("CF_RunContent")!=-1){
_5d5=_5d5.replace("CF_RunContent","document.write");
}
_5d5="var _cfDomNode = document.getElementById('"+_5c7.id+"'); var _cfBuffer='';"+"if (!document._cf_write)"+"{document._cf_write = document.write;"+"document.write = function(str){if (_cfBuffer!=null){_cfBuffer+=str;}else{document._cf_write(str);}};};"+_5d5+";_cfDomNode._cf_innerHTML += _cfBuffer; _cfBuffer=null;";
}
try{
eval(_5d5);
}
catch(ex){
$C.handleError(_5c8,"ajax.replacehtml.jserror","http",[_5c7.id,ex]);
}
}
_5cc=text.indexOf(">",_5d4)+1;
if(_5cc==0){
_5cb=_5d4+1;
break;
}
_5cb=_5cc;
pos=_5cc;
_5ca=_5cc;
}
if(_5cb<text.length-1){
var _5d2=text.substring(_5cb,text.length);
if(_5d2){
_5c7._cf_innerHTML+=_5d2;
}
}
try{
_5c7.innerHTML=_5c7._cf_innerHTML;
}
catch(e){
}
_5c7._cf_innerHTML="";
};
$A.replaceHTML.processResponseText.scriptTagChars=[["s","S"],["c","C"],["r","R"],["i","I"],["p","P"],["t","T"]];
$D.getElement=function(_5d8,_5d9){
var _5da=function(_5db){
return (_5db.name==_5d8||_5db.id==_5d8);
};
var _5dc=$D.getElementsBy(_5da,null,_5d9);
if(_5dc.length==1){
return _5dc[0];
}else{
return _5dc;
}
};
$D.getElementsBy=function(_5dd,tag,root){
tag=tag||"*";
var _5e0=[];
if(root){
root=$D.get(root);
if(!root){
return _5e0;
}
}else{
root=document;
}
var _5e1=root.getElementsByTagName(tag);
if(!_5e1.length&&(tag=="*"&&root.all)){
_5e1=root.all;
}
for(var i=0,len=_5e1.length;i<len;++i){
if(_5dd(_5e1[i])){
_5e0[_5e0.length]=_5e1[i];
}
}
return _5e0;
};
$D.get=function(el){
if(!el){
return null;
}
if(typeof el!="string"&&!(el instanceof Array)){
return el;
}
if(typeof el=="string"){
return document.getElementById(el);
}else{
var _5e4=[];
for(var i=0,len=el.length;i<len;++i){
_5e4[_5e4.length]=$D.get(el[i]);
}
return _5e4;
}
return null;
};
$E.loadEvents={};
$E.CustomEvent=function(_5e6,_5e7){
return {name:_5e6,domNode:_5e7,subs:[],subscribe:function(func,_5e9){
var dup=false;
for(var i=0;i<this.subs.length;i++){
var sub=this.subs[i];
if(sub.f==func&&sub.p==_5e9){
dup=true;
break;
}
}
if(!dup){
this.subs.push({f:func,p:_5e9});
}
},fire:function(){
for(var i=0;i<this.subs.length;i++){
var sub=this.subs[i];
sub.f.call(null,this,sub.p);
}
},unsubscribe:function(){
this.subscribers=[];
}};
};
$E.windowLoadImpEvent=new $E.CustomEvent("cfWindowLoadImp");
$E.windowLoadEvent=new $E.CustomEvent("cfWindowLoad");
$E.windowLoadUserEvent=new $E.CustomEvent("cfWindowLoadUser");
$E.listeners=[];
$E.addListener=function(el,ev,fn,_5f2){
var l={el:el,ev:ev,fn:fn,params:_5f2};
$E.listeners.push(l);
var _5f4=function(e){
if(!e){
var e=window.event;
}
fn.call(null,e,_5f2);
};
if(el.addEventListener){
el.addEventListener(ev,_5f4,false);
return true;
}else{
if(el.attachEvent){
el.attachEvent("on"+ev,_5f4);
return true;
}else{
return false;
}
}
};
$E.isListener=function(el,ev,fn,_5f9){
var _5fa=false;
var ls=$E.listeners;
for(var i=0;i<ls.length;i++){
if(ls[i].el==el&&ls[i].ev==ev&&ls[i].fn==fn&&ls[i].params==_5f9){
_5fa=true;
break;
}
}
return _5fa;
};
$E.callBindHandlers=function(id,_5fe,ev){
var el=document.getElementById(id);
if(!el){
return;
}
var ls=$E.listeners;
for(var i=0;i<ls.length;i++){
if(ls[i].el==el&&ls[i].ev==ev&&ls[i].fn._cf_bindhandler){
ls[i].fn.call(null,null,ls[i].params);
}
}
};
$E.registerOnLoad=function(func,_604,_605,user){
if($E.registerOnLoad.windowLoaded){
if(_604&&_604._cf_containerId&&$E.loadEvents[_604._cf_containerId]){
if(user){
$E.loadEvents[_604._cf_containerId].user.subscribe(func,_604);
}else{
$E.loadEvents[_604._cf_containerId].system.subscribe(func,_604);
}
}else{
func.call(null,null,_604);
}
}else{
if(user){
$E.windowLoadUserEvent.subscribe(func,_604);
}else{
if(_605){
$E.windowLoadImpEvent.subscribe(func,_604);
}else{
$E.windowLoadEvent.subscribe(func,_604);
}
}
}
};
$E.registerOnLoad.windowLoaded=false;
$E.onWindowLoad=function(fn){
if(window.addEventListener){
window.addEventListener("load",fn,false);
}else{
if(window.attachEvent){
window.attachEvent("onload",fn);
}else{
if(document.getElementById){
window.onload=fn;
}
}
}
};
$C.addSpanToDom=function(){
var _608=document.createElement("span");
document.body.insertBefore(_608,document.body.firstChild);
};
$E.windowLoadHandler=function(e){
if(window.Ext){
Ext.BLANK_IMAGE_URL=_cf_contextpath+"/CFIDE/scripts/ajax/resources/ext/images/default/s.gif";
}
$C.addSpanToDom();
$L.init();
$E.registerOnLoad.windowLoaded=true;
$E.windowLoadImpEvent.fire();
$E.windowLoadImpEvent.unsubscribe();
$E.windowLoadEvent.fire();
$E.windowLoadEvent.unsubscribe();
$E.windowLoadUserEvent.fire();
$E.windowLoadUserEvent.unsubscribe();
};
$E.onWindowLoad($E.windowLoadHandler);
$B.register=function(_60a,_60b,_60c,_60d){
for(var i=0;i<_60a.length;i++){
var _60f=_60a[i][0];
var _610=_60a[i][1];
var _611=_60a[i][2];
if(window[_60f]){
var _612=eval(_60f);
if(_612&&_612._cf_register){
_612._cf_register(_611,_60c,_60b);
continue;
}
}
var _613=$C.objectCache[_60f];
if(_613&&_613._cf_register){
_613._cf_register(_611,_60c,_60b);
continue;
}
var _614=$D.getElement(_60f,_610);
var _615=(_614&&((!_614.length&&_614.length!=0)||(_614.length&&_614.length>0)||_614.tagName=="SELECT"));
if(!_615){
$C.handleError(null,"bind.register.elnotfound","bind",[_60f]);
}
if(_614.length>1&&!_614.options){
for(var j=0;j<_614.length;j++){
$B.register.addListener(_614[j],_611,_60c,_60b);
}
}else{
$B.register.addListener(_614,_611,_60c,_60b);
}
}
if(!$C.bindHandlerCache[_60b.bindTo]&&typeof (_60b.bindTo)=="string"){
$C.bindHandlerCache[_60b.bindTo]=function(){
_60c.call(null,null,_60b);
};
}
if(_60d){
_60c.call(null,null,_60b);
}
};
$B.register.addListener=function(_617,_618,_619,_61a){
if(!$E.isListener(_617,_618,_619,_61a)){
$E.addListener(_617,_618,_619,_61a);
}
};
$B.assignValue=function(_61b,_61c,_61d,_61e){
if(!_61b){
return;
}
if(_61b.call){
_61b.call(null,_61d,_61e);
return;
}
var _61f=$C.objectCache[_61b];
if(_61f&&_61f._cf_setValue){
_61f._cf_setValue(_61d);
return;
}
var _620=document.getElementById(_61b);
if(!_620){
$C.handleError(null,"bind.assignvalue.elnotfound","bind",[_61b]);
}
if(_620.tagName=="SELECT"){
var _621=$U.checkQuery(_61d);
var _622=$C.objectCache[_61b];
if(_621){
if(!_622||(_622&&(!_622.valueCol||!_622.displayCol))){
$C.handleError(null,"bind.assignvalue.selboxmissingvaldisplay","bind",[_61b]);
return;
}
}else{
if(typeof (_61d.length)=="number"&&!_61d.toUpperCase){
if(_61d.length>0&&(typeof (_61d[0].length)!="number"||_61d[0].toUpperCase)){
$C.handleError(null,"bind.assignvalue.selboxerror","bind",[_61b]);
return;
}
}else{
$C.handleError(null,"bind.assignvalue.selboxerror","bind",[_61b]);
return;
}
}
_620.options.length=0;
var _623;
var _624=false;
if(_622){
_623=_622.selected;
if(_623&&_623.length>0){
_624=true;
}
}
if(!_621){
for(var i=0;i<_61d.length;i++){
var opt=new Option(_61d[i][1],_61d[i][0]);
_620.options[i]=opt;
if(_624){
for(var j=0;j<_623.length;j++){
if(_623[j]==opt.value){
opt.selected=true;
}
}
}
}
}else{
if(_621=="col"){
var _628=_61d.DATA[_622.valueCol];
var _629=_61d.DATA[_622.displayCol];
if(!_628||!_629){
$C.handleError(null,"bind.assignvalue.selboxinvalidvaldisplay","bind",[_61b]);
return;
}
for(var i=0;i<_628.length;i++){
var opt=new Option(_629[i],_628[i]);
_620.options[i]=opt;
if(_624){
for(var j=0;j<_623.length;j++){
if(_623[j]==opt.value){
opt.selected=true;
}
}
}
}
}else{
if(_621=="row"){
var _62a=-1;
var _62b=-1;
for(var i=0;i<_61d.COLUMNS.length;i++){
var col=_61d.COLUMNS[i];
if(col==_622.valueCol){
_62a=i;
}
if(col==_622.displayCol){
_62b=i;
}
if(_62a!=-1&&_62b!=-1){
break;
}
}
if(_62a==-1||_62b==-1){
$C.handleError(null,"bind.assignvalue.selboxinvalidvaldisplay","bind",[_61b]);
return;
}
for(var i=0;i<_61d.DATA.length;i++){
var opt=new Option(_61d.DATA[i][_62b],_61d.DATA[i][_62a]);
_620.options[i]=opt;
if(_624){
for(var j=0;j<_623.length;j++){
if(_623[j]==opt.value){
opt.selected=true;
}
}
}
}
}
}
}
}else{
_620[_61c]=_61d;
}
$E.callBindHandlers(_61b,null,"change");
$L.info("bind.assignvalue.success","bind",[_61d,_61b,_61c]);
};
$B.localBindHandler=function(e,_62e){
var _62f=document.getElementById(_62e.bindTo);
var _630=$B.evaluateBindTemplate(_62e,true);
$B.assignValue(_62e.bindTo,_62e.bindToAttr,_630);
};
$B.localBindHandler._cf_bindhandler=true;
$B.evaluateBindTemplate=function(_631,_632,_633,_634,_635){
var _636=_631.bindExpr;
var _637="";
if(typeof _635=="undefined"){
_635=false;
}
for(var i=0;i<_636.length;i++){
if(typeof (_636[i])=="object"){
var _639=null;
if(!_636[i].length||typeof _636[i][0]=="object"){
_639=$X.JSON.encode(_636[i]);
}else{
var _639=$B.getBindElementValue(_636[i][0],_636[i][1],_636[i][2],_632,_634);
if(_639==null){
if(_632){
_637="";
break;
}else{
_639="";
}
}
}
if(_633){
_639=encodeURIComponent(_639);
}
_637+=_639;
}else{
var _63a=_636[i];
if(_635==true&&i>0){
if(typeof (_63a)=="string"&&_63a.indexOf("&")!=0){
_63a=encodeURIComponent(_63a);
}
}
_637+=_63a;
}
}
return _637;
};
$B.jsBindHandler=function(e,_63c){
var _63d=_63c.bindExpr;
var _63e=new Array();
var _63f=_63c.callFunction+"(";
for(var i=0;i<_63d.length;i++){
var _641;
if(typeof (_63d[i])=="object"){
if(_63d[i].length){
if(typeof _63d[i][0]=="object"){
_641=_63d[i];
}else{
_641=$B.getBindElementValue(_63d[i][0],_63d[i][1],_63d[i][2],false);
}
}else{
_641=_63d[i];
}
}else{
_641=_63d[i];
}
if(i!=0){
_63f+=",";
}
_63e[i]=_641;
_63f+="'"+_641+"'";
}
_63f+=")";
var _642=_63c.callFunction.apply(null,_63e);
$B.assignValue(_63c.bindTo,_63c.bindToAttr,_642,_63c.bindToParams);
};
$B.jsBindHandler._cf_bindhandler=true;
$B.urlBindHandler=function(e,_644){
var _645=_644.bindTo;
if($C.objectCache[_645]&&$C.objectCache[_645]._cf_visible===false){
$C.objectCache[_645]._cf_dirtyview=true;
return;
}
var url=$B.evaluateBindTemplate(_644,false,true,false,true);
var _647=$U.extractReturnFormat(url);
if(_647==null||typeof _647=="undefined"){
_647="JSON";
}
if(_644.bindToAttr||typeof _644.bindTo=="undefined"||typeof _644.bindTo=="function"){
var _644={"bindTo":_644.bindTo,"bindToAttr":_644.bindToAttr,"bindToParams":_644.bindToParams,"errorHandler":_644.errorHandler,"url":url,returnFormat:_647};
try{
$A.sendMessage(url,"GET",null,true,$B.urlBindHandler.callback,_644);
}
catch(e){
$C.handleError(_644.errorHandler,"ajax.urlbindhandler.connectionerror","http",[url,e]);
}
}else{
$A.replaceHTML(_645,url,null,null,null,_644.errorHandler);
}
};
$B.urlBindHandler._cf_bindhandler=true;
$B.urlBindHandler.callback=function(req,_649){
if($A.isRequestError(req)){
$C.handleError(_649.errorHandler,"bind.urlbindhandler.httperror","http",[req.status,_649.url,req.statusText],req.status,req.statusText);
}else{
$L.info("bind.urlbindhandler.response","http",[req.responseText]);
var _64a;
try{
if(_649.returnFormat==null||_649.returnFormat==="JSON"){
_64a=$X.JSON.decode(req.responseText);
}else{
_64a=req.responseText;
}
}
catch(e){
if(req.responseText!=null&&typeof req.responseText=="string"){
_64a=req.responseText;
}else{
$C.handleError(_649.errorHandler,"bind.urlbindhandler.jsonerror","http",[req.responseText]);
}
}
$B.assignValue(_649.bindTo,_649.bindToAttr,_64a,_649.bindToParams);
}
};
$A.initSelect=function(_64b,_64c,_64d,_64e){
$C.objectCache[_64b]={"valueCol":_64c,"displayCol":_64d,selected:_64e};
};
$S.setupSpry=function(){
if(typeof (Spry)!="undefined"&&Spry.Data){
Spry.Data.DataSet.prototype._cf_getAttribute=function(_64f){
var val;
var row=this.getCurrentRow();
if(row){
val=row[_64f];
}
return val;
};
Spry.Data.DataSet.prototype._cf_register=function(_652,_653,_654){
var obs={bindParams:_654};
obs.onCurrentRowChanged=function(){
_653.call(null,null,this.bindParams);
};
obs.onDataChanged=function(){
_653.call(null,null,this.bindParams);
};
this.addObserver(obs);
};
if(Spry.Debug.trace){
var _656=Spry.Debug.trace;
Spry.Debug.trace=function(str){
$L.info(str,"spry");
_656(str);
};
}
if(Spry.Debug.reportError){
var _658=Spry.Debug.reportError;
Spry.Debug.reportError=function(str){
$L.error(str,"spry");
_658(str);
};
}
$L.info("spry.setupcomplete","bind");
}
};
$E.registerOnLoad($S.setupSpry,null,true);
$S.bindHandler=function(_65a,_65b){
var url;
var _65d="_cf_nodebug=true&_cf_nocache=true";
if(window._cf_clientid){
_65d+="&_cf_clientid="+_cf_clientid;
}
var _65e=window[_65b.bindTo];
var _65f=(typeof (_65e)=="undefined");
if(_65b.cfc){
var _660={};
var _661=_65b.bindExpr;
for(var i=0;i<_661.length;i++){
var _663;
if(_661[i].length==2){
_663=_661[i][1];
}else{
_663=$B.getBindElementValue(_661[i][1],_661[i][2],_661[i][3],false,_65f);
}
_660[_661[i][0]]=_663;
}
_660=$X.JSON.encode(_660);
_65d+="&method="+_65b.cfcFunction;
_65d+="&argumentCollection="+encodeURIComponent(_660);
$L.info("spry.bindhandler.loadingcfc","http",[_65b.bindTo,_65b.cfc,_65b.cfcFunction,_660]);
url=_65b.cfc;
}else{
url=$B.evaluateBindTemplate(_65b,false,true,_65f);
$L.info("spry.bindhandler.loadingurl","http",[_65b.bindTo,url]);
}
var _664=_65b.options||{};
if((_65e&&_65e._cf_type=="json")||_65b.dsType=="json"){
_65d+="&returnformat=json";
}
if(_65e){
if(_65e.requestInfo.method=="GET"){
_664.method="GET";
if(url.indexOf("?")==-1){
url+="?"+_65d;
}else{
url+="&"+_65d;
}
}else{
_664.postData=_65d;
_664.method="POST";
_65e.setURL("");
}
_65e.setURL(url,_664);
_65e.loadData();
}else{
if(!_664.method||_664.method=="GET"){
if(url.indexOf("?")==-1){
url+="?"+_65d;
}else{
url+="&"+_65d;
}
}else{
_664.postData=_65d;
_664.useCache=false;
}
var ds;
if(_65b.dsType=="xml"){
ds=new Spry.Data.XMLDataSet(url,_65b.xpath,_664);
}else{
ds=new Spry.Data.JSONDataSet(url,_664);
ds.preparseFunc=$S.preparseData;
}
ds._cf_type=_65b.dsType;
var _666={onLoadError:function(req){
$C.handleError(_65b.errorHandler,"spry.bindhandler.error","http",[_65b.bindTo,req.url,req.requestInfo.postData]);
}};
ds.addObserver(_666);
window[_65b.bindTo]=ds;
}
};
$S.bindHandler._cf_bindhandler=true;
$S.preparseData=function(ds,_669){
var _66a=$U.getFirstNonWhitespaceIndex(_669);
if(_66a>0){
_669=_669.slice(_66a);
}
if(window._cf_jsonprefix&&_669.indexOf(_cf_jsonprefix)==0){
_669=_669.slice(_cf_jsonprefix.length);
}
return _669;
};
$P.init=function(_66b){
$L.info("pod.init.creating","widget",[_66b]);
var _66c={};
_66c._cf_body=_66b+"_body";
$C.objectCache[_66b]=_66c;
};
$B.cfcBindHandler=function(e,_66e){
var _66f=(_66e.httpMethod)?_66e.httpMethod:"GET";
var _670={};
var _671=_66e.bindExpr;
for(var i=0;i<_671.length;i++){
var _673;
if(_671[i].length==2){
_673=_671[i][1];
}else{
_673=$B.getBindElementValue(_671[i][1],_671[i][2],_671[i][3],false);
}
_670[_671[i][0]]=_673;
}
var _674=function(_675,_676){
$B.assignValue(_676.bindTo,_676.bindToAttr,_675,_676.bindToParams);
};
var _677={"bindTo":_66e.bindTo,"bindToAttr":_66e.bindToAttr,"bindToParams":_66e.bindToParams};
var _678={"async":true,"cfcPath":_66e.cfc,"httpMethod":_66f,"callbackHandler":_674,"errorHandler":_66e.errorHandler};
if(_66e.proxyCallHandler){
_678.callHandler=_66e.proxyCallHandler;
_678.callHandlerParams=_66e;
}
$X.invoke(_678,_66e.cfcFunction,_66e._cf_ajaxproxytoken,_670,_677);
};
$B.cfcBindHandler._cf_bindhandler=true;
$U.extractReturnFormat=function(url){
var _67a;
var _67b=url.toUpperCase();
var _67c=_67b.indexOf("RETURNFORMAT");
if(_67c>0){
var _67d=_67b.indexOf("&",_67c+13);
if(_67d<0){
_67d=_67b.length;
}
_67a=_67b.substring(_67c+13,_67d);
}
return _67a;
};
$U.replaceAll=function(_67e,_67f,_680){
var _681=_67e.indexOf(_67f);
while(_681>-1){
_67e=_67e.replace(_67f,_680);
_681=_67e.indexOf(_67f);
}
return _67e;
};
$U.cloneObject=function(obj){
var _683={};
for(key in obj){
var _684=obj[key];
if(typeof _684=="object"){
_684=$U.cloneObject(_684);
}
_683.key=_684;
}
return _683;
};
$C.clone=function(obj,_686){
if(typeof (obj)!="object"){
return obj;
}
if(obj==null){
return obj;
}
var _687=new Object();
for(var i in obj){
if(_686===true){
_687[i]=$C.clone(obj[i]);
}else{
_687[i]=obj[i];
}
}
return _687;
};
$C.printObject=function(obj){
var str="";
for(key in obj){
str=str+"  "+key+"=";
value=obj[key];
if(typeof (value)=="object"){
value=$C.printObject(value);
}
str+=value;
}
return str;
};
}
}
cfinit();
