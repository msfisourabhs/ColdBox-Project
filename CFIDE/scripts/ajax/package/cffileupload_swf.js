/*ADOBE SYSTEMS INCORPORATED
Copyright 2007 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.FileUpload){
ColdFusion.FileUpload={};
}
var $FS=ColdFusion.FileUpload;
$FS.defaultSWFLocation=_cf_ajaxscriptsrc+"/resources/cf/assets/MultiFileUpload.swf";
var isIE=(navigator.appVersion.indexOf("MSIE")!=-1)?true:false;
var isWin=(navigator.appVersion.toLowerCase().indexOf("win")!=-1)?true:false;
var isOpera=(navigator.userAgent.indexOf("Opera")!=-1)?true:false;
var defaultAddButtonLabel="Add Files";
var defaultUploadButtonLabel="Upload";
var defaultClearButtonLabel="Clear All";
var defaultDeleteButtonLabel="Delete";
var defaultAddIcon=_cf_ajaxscriptsrc+"/resources/cf/images/fileupload/addfile.png";
var defaultUploadIcon=_cf_ajaxscriptsrc+"/resources/cf/images/fileupload/upload.png";
var defaultClearIcon=_cf_ajaxscriptsrc+"/resources/cf/images/fileupload/clear.gif";
var defaultDeleteIcon=_cf_ajaxscriptsrc+"/resources/cf/images/fileupload/delete.png";
var defaultUploadSize=10*1024*1024;
var fileUploadPrefix="cf_fileUpload_";
ColdFusion.FileUpload.create=function(_19f,_1a0,_1a1,_1a2,_1a3,_1a4,_1a5,_1a6,_1a7,_1a8,_1a9,_1aa,_1ab,_1ac,_1ad,_1ae,_1af,_1b0,_1b1,_1b2,_1b3,_1b4,_1b5,_1b6,_1b7,_1b8,_1b9,_1ba,_1bb,_1bc){
var _1bd={};
_1bd.uploadDivId=_19f;
_1bd.fileUploadName=fileUploadPrefix+_19f;
_1bd.url_withoutQuery=_1a0;
_1bd.url_queryString=_1a1;
_1bd.url_CF_cookie=_1a2;
_1bd.url=$FS.constructUrl(_1a0,_1a1,_1a2);
_1bd.onCompleteHandler=_1aa;
_1bd.onUploadCompleteHandler=_1ab;
_1bd.onErrorHandler=_1ac;
_1bd.progressbar=_1b7;
if(_1af==null){
_1af="";
}
_1bd.bgcolor=_1af;
if(_1b0==null){
_1b0="";
}
_1bd.selectcolor=_1b0;
if(_1b1==null){
_1b1="";
}
_1bd.rollovercolor=_1b1;
if(_1b2==null){
_1b2="";
}
_1bd.textcolor=_1b2;
if(_1b5==null){
_1b5="left";
}
_1bd.titletextalign=_1b5;
if(_1b3==null){
_1b3="";
}
_1bd.titletextcolor=_1b3;
if(_1b4==null){
_1b4="";
}
_1bd.headercolor=_1b4;
_1bd.bgcolor=_1af;
_1bd.bgcolor=_1af;
if(_1b6==null){
_1b6="";
}
_1bd.fileFilter=_1b6;
_1bd.disableUploadButton=_1b9;
if(_1bb==null||typeof _1bb=="undefined"){
_1bb="window";
}
_1bd.wmode=_1bb;
_1bd.stopOnError=_1ba;
if(_1a3==null||typeof _1a3==="undefined"){
_1a3=defaultAddButtonLabel;
}
_1bd.addIcon=defaultAddIcon;
_1bd.addButtonLabel=_1a3;
if(_1a5==null||typeof _1a5==="undefined"){
_1a5=defaultUploadButtonLabel;
}
_1bd.uploadButtonLabel=_1a5;
_1bd.uploadIcon=defaultUploadIcon;
if(_1a7==null||typeof _1a7==="undefined"){
_1a7="File Upload ";
}
_1bd.title=_1a7;
_1bd.swfLocation=$FS.defaultSWFLocation;
if(_1a4==null||typeof _1a4==="undefined"){
_1a4=defaultClearButtonLabel;
}
_1bd.clearButtonLabel=_1a4;
_1bd.clearIcon=defaultClearIcon;
if(_1a6==null||typeof _1a6==="undefined"){
_1a6=defaultDeleteButtonLabel;
}
_1bd.deleteButtonLabel=_1a6;
_1bd.deleteIcon=defaultDeleteIcon;
if(_1a8==null||!typeof _1a8==="Number"){
_1a8=-1;
}
_1bd.maxFileSelect=_1a8;
if(_1a9==null||!typeof _1a9==="number"){
_1a9=defaultUploadSize;
}
_1bd.maxUploadSize=_1a9;
if(_1ad==null||typeof _1ad==="undefined"){
_1ad=420;
}
_1bd.widthInPx=_1ad+"px";
_1bd.width=_1ad;
if(_1ae==null||typeof _1ae==="undefined"){
_1ae=300;
}
_1bd.heightInPx=_1ae+"px";
_1bd.height=_1ae;
_1bd.align=_1bc;
ColdFusion.objectCache[_19f]=_1bd;
ColdFusion.objectCache[_1bd.fileUploadName]=_1bd;
var _1be=$FS.constructMarkup(_1bd);
var _1bf=document.getElementById(_19f);
_1bf.innerHTML=_1be;
ColdFusion.Log.info("fileupload.initialized","widget",[_19f]);
};
$FS.constructMarkup=function(_1c0){
var str="";
if(isIE&&isWin&&!isOpera){
str+="<object width=\""+_1c0.width+"\" height=\""+_1c0.height+"\"";
str+=" id=\""+_1c0.fileUploadName+"\" name=\""+_1c0.playerName+"\" type=\"application/x-shockwave-flash\" classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" ";
str+=" data=\""+_1c0.swfLocation+"\">";
str+="<param name=\"movie\" value=\""+_1c0.swfLocation+"\" />";
str+="<param name=\"quality\" value=\""+_1c0.quality+"\" />";
str+="<param name=\"allowFullScreen\" value=\""+_1c0.fullScreen+"\" />";
str+="<param name=\"allowScriptAccess\" value=\"sameDomain\" />";
str+="<param name=\"wmode\" value=\""+_1c0.wmode+"\" />";
str+="<param name=\"flashvars\" value=\"uniqueid="+_1c0.fileUploadName+"&url="+_1c0.url+"&addLabel="+_1c0.addButtonLabel+"&deleteLabel="+_1c0.deleteButtonLabel;
str+="&clearLabel="+_1c0.clearButtonLabel+"&uploadLabel="+_1c0.uploadButtonLabel+"&maxUploadSize="+_1c0.maxUploadSize+"&maxFileSelect="+_1c0.maxFileSelect+"&progress="+_1c0.progressbar;
str+="&stopOnError="+_1c0.stopOnError+"&hideUpload="+_1c0.disableUploadButton+"&bgcolor="+_1c0.bgcolor+"&fileFilter="+_1c0.fileFilter+"&deleteIcon="+_1c0.deleteIcon+"&title="+_1c0.title;
str+="&uploadIcon="+_1c0.uploadIcon+"&textcolor="+_1c0.textcolor+"&titletextcolor="+_1c0.titletextcolor+"&headercolor="+_1c0.headercolor+"&titletextalign="+_1c0.titletextalign+"&rollovercolor="+_1c0.rollovercolor+"&selectcolor="+_1c0.selectcolor+"\" />";
str+="</object>";
}else{
str="<embed src=\""+_1c0.swfLocation+"\" allowScriptAccess=\"samedomain\" pluginspage=\"http://www.adobe.com/go/getflashplayer\" type=\"application/x-shockwave-flash\" wmode=\""+_1c0.wmode+"\"";
str+=" name=\""+_1c0.fileUploadName+"\" width=\""+_1c0.width+"\" height=\""+_1c0.height+"\" quality=\" "+_1c0.quality+"\"";
str+=" flashvars=\"uniqueid="+_1c0.fileUploadName+"&url="+_1c0.url+"&addLabel="+_1c0.addButtonLabel+"&deleteLabel="+_1c0.deleteButtonLabel;
str+="&clearLabel="+_1c0.clearButtonLabel+"&uploadLabel="+_1c0.uploadButtonLabel+"&maxUploadSize="+_1c0.maxUploadSize+"&maxFileSelect="+_1c0.maxFileSelect+"&progress="+_1c0.progressbar;
str+="&stopOnError="+_1c0.stopOnError+"&hideUpload="+_1c0.disableUploadButton+"&bgcolor="+_1c0.bgcolor+"&fileFilter="+_1c0.fileFilter+"&deleteIcon="+_1c0.deleteIcon+"&title="+_1c0.title;
str+="&uploadIcon="+_1c0.uploadIcon+"&textcolor="+_1c0.textcolor+"&titletextcolor="+_1c0.titletextcolor+"&headercolor="+_1c0.headercolor+"&titletextalign="+_1c0.titletextalign+"&rollovercolor="+_1c0.rollovercolor+"&selectcolor="+_1c0.selectcolor+"\" />";
}
return str;
};
$FS.constructUrl=function(_1c2,_1c3,_1c4){
var url=_1c2;
if(_1c3!=null){
url+="?"+_1c3;
if(_1c4!=null){
url+="%26"+_1c4;
}
}else{
if(_1c4!=null){
url+="?"+_1c4;
}
}
return url;
};
coldfusion_FileUploadSwf_complete=function(name,_1c7){
var _1c8=$FS.getFileUploadComponent(name);
var _1c9=ColdFusion.objectCache[name];
var _1ca=_1c9.onCompleteHandler;
if(_1ca!=null&&typeof _1ca=="function"){
_1ca.call(this,_1c7);
}
$FS.addResultToArray(_1c7,_1c9);
};
coldfusion_FileUploadSwf_onError=function(name,_1cc){
var _1cd=$FS.getFileUploadComponent(name);
var _1ce=ColdFusion.objectCache[name];
var _1cf=_1ce.onErrorHandler;
if(_1cf!=null&&typeof _1cf=="function"){
_1cf.call(this,_1cc);
}
$FS.addResultToArray(_1cc,_1ce);
};
coldfusion_FileUploadSwf_UploadCompete=function(name){
var _1d1=$FS.getFileUploadComponent(name);
var _1d2=ColdFusion.objectCache[name];
var _1d3=_1d2.onUploadCompleteHandler;
var _1d4=_1d2.resultArray;
if(_1d3!=null&&typeof _1d3=="function"){
_1d3.call(this,_1d4);
}
_1d2.resultArray=new Array();
};
$FS.addResultToArray=function(_1d5,_1d6){
var _1d7=_1d6.resultArray;
if(_1d7==null||typeof _1d7=="undefined"){
_1d7=_1d6.resultArray=new Array();
}
_1d7.push(_1d5);
};
$FS.cancelUpload=function(name){
var _1d9=fileUploadPrefix+name;
var _1da=$FS.getFileUploadComponent(_1d9);
if(_1da!=null){
_1da.cancelFileUpload();
}else{
ColdFusion.handleError(null,"fileupload.cancelupload.notfound","widget",[name],null,null,true);
}
ColdFusion.Log.info("fileupload.cancelupload.cancelled","widget",[name]);
};
$FS.getSelectedFiles=function(name){
var _1dc=fileUploadPrefix+name;
var _1dd=$FS.getFileUploadComponent(_1dc);
if(_1dd!=null){
return _1dd.getSelectedFileArray();
}else{
ColdFusion.handleError(null,"fileupload.getSelectedFiles.notfound","widget",[name],null,null,true);
}
ColdFusion.Log.info("fileupload.getSelectedFiles.selected","widget",[name]);
};
$FS.clearAllFiles=function(name){
var _1df=fileUploadPrefix+name;
var _1e0=$FS.getFileUploadComponent(_1df);
if(_1e0!=null){
_1e0.clearAllUpload();
}else{
ColdFusion.handleError(null,"fileupload.clearallfiles.notfound","widget",[name],null,null,true);
}
ColdFusion.Log.info("fileupload.clearallfiles.cleared","widget",[name]);
};
$FS.setURL=function(name,src){
var _1e3=$FS.getFileUploadComponent(fileUploadPrefix+name);
var _1e4=ColdFusion.objectCache[name];
if(_1e4==null||typeof (_1e4)=="undefined"){
ColdFusion.handleError(null,"fileupload.setURL.notfound","widget",[name],null,null,true);
}
if(!src||src.length==0){
ColdFusion.handleError(null,"fileupload.setURL.invalidurl","widget",[name],null,null,true);
}
var _1e5=null;
if(src.indexOf("?")>0){
_1e5=src.substring(src.indexOf("?")+1);
_1e5=escape(_1e5);
src=src.substring(0,src.indexOf("?"));
}
if(src.charAt(0)!="/"&&src.indexOf("://")<0){
var _1e6=_1e4.url_withoutQuery;
_1e6=unescape(_1e6);
var _1e7="";
if(_1e6||_1e6.indexOf("/")>-1){
_1e7=_1e6.substring(0,_1e6.lastIndexOf("/")+1);
}
var _1e8=_1e7+src;
var _1e9=_1e8.split("/");
var _1ea=new Array();
var _1eb=0;
for(var i=0;i<_1e9.length;i++){
if(_1e9[i]==".."){
_1ea[--_1eb]="";
}else{
_1ea[_1eb++]=_1e9[i];
}
}
src=_1ea[0];
for(var i=1;i<_1eb;i++){
src=src+"/"+_1ea[i];
}
}
var _1ed=$FS.constructUrl(src,_1e5,_1e4.url_CF_cookie);
_1e4.url=_1ed;
_1e3.setSrc(_1ed);
ColdFusion.Log.info("fileupload.setURL.urlset","widget",[name,_1ed]);
};
$FS.startUpload=function(name){
var _1ef=fileUploadPrefix+name;
var _1f0=$FS.getFileUploadComponent(_1ef);
if(_1f0!=null){
_1f0.submitUploadForm();
}else{
ColdFusion.handleError(null,"fileupload.startupload.notfound","widget",[name],null,null,true);
}
ColdFusion.Log.info("fileupload.startupload.started","widget",[name]);
};
$FS.getFileUploadComponent=function(name){
if(navigator.appName.indexOf("Microsoft")!=-1){
if(window[name]!=null){
return window[name];
}else{
return document[name];
}
}else{
return document[name];
}
};
