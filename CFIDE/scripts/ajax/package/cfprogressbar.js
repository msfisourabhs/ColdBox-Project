/*ADOBE SYSTEMS INCORPORATED
Copyright 2007 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.ProgressBar){
ColdFusion.ProgressBar={};
}
var $P=ColdFusion.ProgressBar;
ColdFusion.ProgressBar.create=function(_119,_11a,_11b,_11c,_11d,_11e,_11f,_120,_121,_122){
var _123={renderTo:_119,interval:_11c,onComplete:_120,autodisplay:_11f,onError:_122};
var _124={renderTo:_119};
if(_11e!=null&&typeof (_11e)!=undefined){
_123.width=_11e;
_124.width=_11e;
}else{
_124.width=400;
}
if(_11d!=null&&typeof (_11d)!=undefined){
_123.height=_11d;
_124.height=_11d;
}else{
_123.autoHeight=true;
_124.autoHeight=true;
}
if(_11a!=null){
_123.manual=true;
_123.status_retrieval_fn=_11a;
}else{
_123.manual=false;
_123.duration=_11b;
}
_123.hidden=!_11f;
_124.hidden=_123.hidden;
if(_121!=null&&typeof _121!="undefined"){
_123.cls=_121;
_124.cls=_121;
}
var _125=new Ext.ProgressBar(_124);
_123.progressBarComp=_125;
ColdFusion.objectCache[_119]=_123;
ColdFusion.Log.info("progressbar.create.created","widget",[_119]);
};
$P.start=function(_126){
var _127=$P.getProgressBarObject(_126);
var _128=ColdFusion.objectCache[_126];
if(!_127.isVisible()){
_127=_127.show();
}
_128.started=true;
if(_128.manual==false){
var _129=_128.interval;
var _12a=_128.duration;
var _12b=_12a/_129;
_127.wait({interval:_129,duration:_12a,increment:_12b,fn:$P.automaticPBCompleteHandler,scope:_128});
}else{
var _12c=setInterval(_128.status_retrieval_fn,_128.interval);
_128.processId=_12c;
}
ColdFusion.Log.info("progressbar.start.started","widget",[_126]);
};
$P.stop=function(_12d,_12e){
var pBar=$P.getProgressBarObject(_12d);
var _130=ColdFusion.objectCache[_12d];
var _131=_130.processId;
if(typeof _130.started!="undefined"&&_130.started==true){
_130.started=false;
}else{
ColdFusion.Log.info("progressbar.stop.nonrunning","widget",[_12d]);
return;
}
if(_131!=null&&typeof (_131)!="undefined"){
clearInterval(_131);
}
if(typeof _130.manual!="undefined"&&_130.manual==false){
pBar.reset();
}
if(_12e&&_12e==true){
var _132=_130.onComplete;
if(_132!=null&&_132.call){
_132.call();
}
}
ColdFusion.Log.info("progressbar.stop.stopped","widget",[_12d]);
};
$P.hide=function(_133){
var pBar=$P.getProgressBarObject(_133);
if(pBar.isVisible()){
pBar.hide();
}
ColdFusion.Log.info("progressbar.hide.hidden","widget",[_133]);
};
$P.show=function(_135){
var pBar=$P.getProgressBarObject(_135);
if(!pBar.isVisible()){
pBar.show();
}
ColdFusion.Log.info("progressbar.show.shown","widget",[_135]);
};
$P.reset=function(_137){
var pBar=$P.getProgressBarObject(_137);
if(typeof pBar!="undefined"){
pBar.reset();
}
ColdFusion.Log.info("progressbar.reset.reset","widget",[_137]);
};
$P.updateStatus=function(_139,_13a,_13b){
var pBar=$P.getProgressBarObject(_139);
if(typeof (_13a)=="undefined"||typeof (_13a)!="number"){
ColdFusion.handleError(null,"progressbar.updatestatus.invalidstatus","widget",[_139,_13a],null,null,true);
return;
}
if(typeof pBar!="undefined"){
pBar.updateProgress(_13a,_13b);
}
ColdFusion.Log.info("progressbar.updatestatus.updated","widget",[_139]);
};
$P.update=function(_13d,_13e){
var _13f={};
var _140=ColdFusion.objectCache[_13d];
if(_140==null||typeof (_140)=="undefined"){
ColdFusion.handleError(null,"progressbar.update.notfound","widget",[_13d],null,null,true);
return;
}
if(_13e.duration){
if(typeof _13e.duration==="number"||typeof _13e.duration=="object"){
_13f.duration=_13e.duration;
}else{
ColdFusion.handleError(null,"progressbar.update.invalidduration","widget",[_13d],null,null,true);
return;
}
}
if(_13e.interval){
if(typeof _13e.interval==="number"||typeof _13e.interval=="object"){
_13f.interval=_13e.interval;
}else{
ColdFusion.handleError(null,"progressbar.update.invalidinterval","widget",[_13d],null,null,true);
return;
}
}
if(_13e.oncomplete){
if(typeof _13e.oncomplete==="function"||typeof _13e.oncomplete=="object"){
_13f.onComplete=_13e.oncomplete;
}else{
ColdFusion.handleError(null,"progressbar.update.invalidoncomplete","widget",[_13d],null,null,true);
return;
}
}
for(key in _13f){
_140[key]=_13f[key];
}
ColdFusion.Log.info("progressbar.update.updated","widget",[_13d]);
};
$P.loadStatus=function(data,_142){
var _143=ColdFusion.AjaxProxy.JSON.decode(data);
var _144=_143.MESSAGE;
var _145=_143.STATUS;
var pBar=$P.getProgressBarObject(_142._cf_progressbarid);
pBar.updateProgress(_145,_144);
if(_145&&(_145===1||_145==1||_145>1)){
$P.stop(_142._cf_progressbarid,true);
}
};
$P.automaticPBCompleteHandler=function(){
var _147=this.progressBarComp;
_147.updateProgress(1);
if(this.onComplete&&typeof this.onComplete=="function"){
this.onComplete.call(_147,_147);
}
};
$P.errorHandler=function(_148,_149,_14a){
var pbId=_14a.bindToParams._cf_progressbarid;
var _14c=ColdFusion.objectCache[pbId];
var _14d=_14c.onError;
if(_14d!=null&&typeof _14d==="function"){
_14d.call(null,_148,_149);
}
$P.stop(pbId);
};
$P.getProgressBarObject=function(_14e){
var _14f=ColdFusion.objectCache[_14e];
if(_14f==null||typeof (_14f)=="undefined"){
ColdFusion.handleError(null,"progressbar.getProgressBarObject.missingprogressbarid","widget",[_14e],null,null,true);
return;
}
if(_14f.progressBarComp&&typeof _14f.progressBarComp!="undefined"){
return _14f.progressBarComp;
}else{
ColdFusion.handleError(null,"progressbar.getProgressBarObject.missingprogressbarcomponent","widget",[_14e],null,null,true);
return;
}
};
