/*ADOBE SYSTEMS INCORPORATED
Copyright 2007 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.Window){
ColdFusion.Window={};
}
ColdFusion.Window.windowIdCounter=1;
ColdFusion.Window.TITLE_BGCOLOR_TEMPLATE="WINDOW_DIV_ID .x-window-tc , WINDOW_DIV_ID .x-window-tl, WINDOW_DIV_ID .x-window-tr, WINDOW_DIV_ID .x-window-bc, WINDOW_DIV_ID .x-window-br, WINDOW_DIV_ID"+" .x-window-bl, WINDOW_DIV_ID  .x-window-ml, WINDOW_DIV_ID .x-window-mr { background-image: none; background-color: COLOR_ID; }";
ColdFusion.Window.create=function(_40e,_40f,url,_411){
if(_40e==null){
ColdFusion.handleError(null,"window.create.nullname","widget",null,null,null,true);
return;
}
if(_40e==""){
ColdFusion.handleError(null,"window.create.emptyname","widget",null,null,null,true);
return;
}
var _412=ColdFusion.objectCache[_40e];
var _413=false;
if(typeof (_412)!="undefined"&&_412!=null){
if(_412.callfromtag){
ColdFusion.handleError(null,"window.create.duplicatename","widget",[_40e]);
}
if(typeof (_412.isConfObj)!="undefined"&&_412.isConfObj==true){
_413=true;
if(_411!=null&&typeof (_411.initshow)!="undefined"){
if(_411.initshow==false){
return;
}
}
}else{
if(!_411||(_411&&_411.initshow!==false)){
ColdFusion.Window.show(_40e);
}
return;
}
}
if(!_412){
ColdFusion.Log.info("window.create.creating","widget",[_40e]);
}
var _414=ColdFusion.Window.createHTML(_40e,_40f,url,_411,_413);
var _415=ColdFusion.objectCache[_40e];
if(_415!=null&&typeof (_415.isConfObj)!="undefined"&&_415.isConfObj==true){
return;
}
return ColdFusion.Window.createJSObj(_40e,url,_414);
};
ColdFusion.Window.createHTML=function(_416,_417,url,_419,_41a){
var _41b=null;
var _41c=null;
if(_419&&_419.divid){
_41b=document.getElementById(_419.divid);
}
if(_41b==null){
_41b=document.createElement("div");
_41c="cf_window"+ColdFusion.Window.windowIdCounter;
ColdFusion.Window.windowIdCounter++;
_41b.id=_41c;
_41b.className="x-hidden";
}
document.body.appendChild(_41b);
var _41d=false;
var _41e=null;
if(_419!=null&&typeof (_419.headerstyle)!="undefined"&&_419.headerstyle!=null){
var _41f=new String(_419.headerstyle);
_41f=_41f.toLowerCase();
var _420=_41f.indexOf("background-color");
if(_420>=0){
_41d=true;
var _421=_41f.indexOf(";",_420+17);
if(_421<0){
_421=_41f.length;
}
_41e=_41f.substring(_420+17,_421);
}
}
var _422=document.getElementById(_416+"_title");
if(_41d==true&&_41e){
var _423="#"+_419.divid;
var _424="NAME_ID .x-window-tc , NAME_ID .x-window-tl, NAME_ID .x-window-tr, NAME_ID .x-window-bc, NAME_ID .x-window-br, NAME_ID .x-window-bl,NAME_ID .x-window-ml, NAME_ID .x-window-mr { background-image: none; background-color: COLOR_ID; }";
var _425=ColdFusion.Util.replaceAll(ColdFusion.Window.TITLE_BGCOLOR_TEMPLATE,"WINDOW_DIV_ID",_423);
var _425=ColdFusion.Util.replaceAll(_425,"COLOR_ID",_41e);
Ext.util.CSS.createStyleSheet(_425);
}
if(_422==null){
_422=document.createElement("div");
_422.id=_416+"_title";
var _426="x-window-header";
_422.className=_426;
if(_417){
_422.innerHTML=_417;
}else{
_422.innerHTML="&nbsp;";
}
_41b.appendChild(_422);
}
var _427=document.getElementById(_416+"_body");
if(_427==null){
_427=document.createElement("div");
_427.id=_416+"_body";
_427.className="x-window-body";
_41b.appendChild(_427);
}
var _428;
_428=ColdFusion.Window.getUpdatedConfigObj(_419,_416);
if(typeof (_428)=="undefined"){
_41b.innerHTML="";
return;
}
if(_41c){
_428.divid=_41c;
}
_428.title=_417;
if(typeof (_428.initshow)!="undefined"&&_428.initshow===false){
_428.url=url;
ColdFusion.objectCache[_416]=_428;
ColdFusion.objectCache[_416+"_body"]=_428;
}
return _428;
};
ColdFusion.Window.createJSObj=function(_429,url,_42b){
var _42c;
var _42d=false;
if(typeof (_42b.childlayoutid)&&_42b.childlayoutid!=null){
_42d=true;
_42b.layout="border";
_42b.items=ColdFusion.objectCache[_42b.childlayoutid];
}else{
_42b.layout="fit";
}
if(typeof (_42b.autoScroll)=="undefined"){
_42b.autoScroll=true;
}
_42b.el=_42b.divid;
if(_42b.onShow){
_42b._cf_onShow=_42b.onShow;
_42b.onShow=null;
}
if(_42b.onHide){
_42b._cf_onHide=_42b.onHide;
_42b.onHide=null;
}
_42c=new Ext.Window(_42b);
_42c.cfwindowname=_429;
_42c.tempx=_42b.tempx;
_42c.tempy=_42b.tempy;
_42c.divid=_42b.divid;
if(typeof (_42b.headerstyle)!="undefined"&&_42b.headerstyle!=null){
var _42e=document.getElementById(_429+"_title");
if(_42e!=null){
_42e.style.cssText="background:none;"+_42b.headerstyle;
}
}
if(typeof (_42b.bodystyle)!="undefined"&&_42b.bodystyle!=null){
var _42f=document.getElementById(_429+"_body");
var _430=_42f.parentNode;
if(_430!=null){
_430.style.cssText=_42b.bodystyle;
}
}
_42c.isConfObj=false;
_42c._cf_body=_429+"_body";
ColdFusion.objectCache[_429]=_42c;
if(_42d){
var _431=_42c.getLayout();
var _432=ColdFusion.objectCache[_42b.childlayoutid];
}
_42c.addListener("beforeclose",ColdFusion.Window.beforeCloseHandler);
var _433=null;
if(typeof (url)!="undefined"&&url!=""){
_433=url;
}
if(_433==null){
if(typeof (_42b.initshow)=="undefined"||_42b.initshow==true){
_42c.addListener("beforeshow",ColdFusion.Window.beforeShowHandler);
ColdFusion.Window.showandhide(_42c,_42b);
}
return;
}
ColdFusion.objectCache[_429+"_body"]=_42c;
if(typeof (_42b.callfromtag)=="undefined"){
var _434;
var _435;
_42c._cf_visible=false;
_42c._cf_dirtyview=true;
_42c.addListener("show",ColdFusion.Window.showHandler);
_42c.addListener("hide",ColdFusion.Window.hideHandler);
_42c.url=_433;
if(_42b){
if(typeof (_42b.initshow)=="undefined"||_42b.initshow==true){
ColdFusion.Window.showandhide(_42c,_42b);
}
_434=_42b.callbackHandler;
_435=_42b.errorHandler;
}
}else{
_42c.callfromtag=true;
_42c._cf_visible=false;
_42c._cf_dirtyview=true;
_42c.addListener("show",ColdFusion.Window.showHandler);
_42c.addListener("beforeshow",ColdFusion.Window.beforeShowHandler);
_42c.addListener("hide",ColdFusion.Window.hideHandler);
if(typeof (_42b.initshow)=="undefined"||_42b.initshow==true){
ColdFusion.Window.showandhide(_42c,_42b);
}
}
};
ColdFusion.Window.showandhide=function(_436,_437){
if(typeof (_437.tempinitshow)!="undefined"&&_437.tempinitshow==false){
var _438=Ext.Element.get(_436.el);
if(typeof _438!="undefined"){
_438.show();
}
_438.hide();
}else{
_436.show();
}
};
ColdFusion.Window.destroy=function(_439,_43a){
if(_439){
var _43b=ColdFusion.Window.getWindowObject(_439);
if(_43b){
if(_43a===true){
_43b.destroy(true);
}else{
_43b.destroy();
}
ColdFusion.objectCache[_439]=null;
}
}
};
ColdFusion.Window.resizeHandler=function(_43c,_43d,_43e){
if(typeof (_43c.fixedcenter)!="undefined"&&_43c.fixedcenter==true){
_43c.center();
}
};
ColdFusion.Window.beforeShowHandler=function(_43f){
if(typeof (_43f.fixedcenter)!="undefined"&&_43f.fixedcenter==true){
_43f.center();
}
};
ColdFusion.Window.beforeCloseHandler=function(_440){
if(_440.destroyonclose!="undefined"&&_440.destroyonclose==true){
ColdFusion.objectCache[_440.cfwindowname]=null;
return true;
}else{
_440.hide();
return false;
}
};
ColdFusion.Window.showHandler=function(_441){
_441._cf_visible=true;
if(_441._cf_dirtyview){
if(typeof (_441.callfromtag)=="undefined"){
ColdFusion.Ajax.replaceHTML(_441._cf_body,_441.url,"GET",null,_441.callbackHandler,_441.errorHandler);
}else{
var _442=ColdFusion.bindHandlerCache[_441._cf_body];
if(_442){
_442();
}
}
_441._cf_dirtyview=false;
}
};
ColdFusion.Window.hideHandler=function(_443){
_443._cf_visible=false;
if(_443._cf_refreshOnShow){
_443._cf_dirtyview=true;
}
};
ColdFusion.Window.xPosition=50;
ColdFusion.Window.yPosition=50;
ColdFusion.Window.resetHTML=function(_444){
var _445=document.getElementById(_444);
if(_445){
_445.innerHTML="";
}
};
ColdFusion.Window.getUpdatedConfigObj=function(_446,_447){
var _448={};
if(_446!=null){
if(typeof (_446)!="object"){
ColdFusion.Window.resetHTML(_447);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidconfig","widget",[_447],null,null,true);
return;
}
for(var key in _446){
if(key=="center"&&ColdFusion.Util.isBoolean(_446["center"])){
_448["fixedcenter"]=_446["center"];
}else{
_448[key]=_446[key];
}
}
}
if(typeof (_448.initshow)!="undefined"){
if(ColdFusion.Util.isBoolean(_448.initshow)==false){
ColdFusion.Window.resetHTML(_447);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidinitshow","widget",[_447],null,null,true);
return;
}else{
_448.initshow=ColdFusion.Util.castBoolean(_448.initshow);
_448._cf_visible=_448.initshow;
}
}
_448.tempcenter=null;
if(typeof (_448.fixedcenter)!="undefined"){
if(ColdFusion.Util.isBoolean(_448.fixedcenter)==false){
ColdFusion.Window.resetHTML(_447);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidcenter","widget",[_447],null,null,true);
return;
}else{
_448.fixedcenter=ColdFusion.Util.castBoolean(_448.fixedcenter);
}
}
if(typeof (_448.resizable)!="undefined"){
if(ColdFusion.Util.isBoolean(_448.resizable)==false){
ColdFusion.Window.resetHTML(_447);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidresizable","widget",[_447],null,null,true);
return;
}else{
_448.resizable=ColdFusion.Util.castBoolean(_448.resizable);
}
}
if(typeof (_448.draggable)!="undefined"){
if(ColdFusion.Util.isBoolean(_448.draggable)==false){
ColdFusion.Window.resetHTML(_447);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invaliddraggable","widget",[_447],null,null,true);
return;
}else{
_448.draggable=ColdFusion.Util.castBoolean(_448.draggable);
}
}
if(typeof (_448.closable)!="undefined"){
if(ColdFusion.Util.isBoolean(_448.closable)==false){
ColdFusion.Window.resetHTML(_447);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidclosable","widget",[_447],null,null,true);
return;
}else{
_448.closable=ColdFusion.Util.castBoolean(_448.closable);
}
}
if(typeof (_448.modal)!="undefined"){
if(ColdFusion.Util.isBoolean(_448.modal)==false){
ColdFusion.Window.resetHTML(_447);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidmodal","widget",[_447],null,null,true);
return;
}else{
_448.modal=ColdFusion.Util.castBoolean(_448.modal);
}
}
if(typeof (_448.refreshonshow)!="undefined"){
if(ColdFusion.Util.isBoolean(_448.refreshonshow)==false){
ColdFusion.Window.resetHTML(_447);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidrefreshonshow","widget",[_447],null,null,true);
return;
}else{
_448._cf_refreshOnShow=ColdFusion.Util.castBoolean(_448.refreshonshow);
}
}
_448.shadow=true;
if(!_448.height){
_448.height=300;
}else{
if(ColdFusion.Util.isInteger(_448.height)==false){
ColdFusion.Window.resetHTML(_447);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidheight","widget",[_447],null,null,true);
return;
}
}
if(!_448.width){
_448.width=500;
}else{
if(ColdFusion.Util.isInteger(_448.width)==false){
ColdFusion.Window.resetHTML(_447);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidwidth","widget",[_447],null,null,true);
return;
}
}
var _44a=false;
if(_448.minwidth){
if(ColdFusion.Util.isInteger(_448.minwidth)==false){
ColdFusion.Window.resetHTML(_447);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidminwidth","widget",[_447],null,null,true);
return;
}
var _44b=_448.minwidth;
var _44c=_448.width;
if(typeof (_44b)!="number"){
_44b=parseInt(_44b);
}
if(typeof (_44c)!="number"){
_44c=parseInt(_44c);
}
if(_44b>_44c){
ColdFusion.Window.resetHTML(_447);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidminwidth","widget",[_447],null,null,true);
return;
}
_448.minWidth=_448.minwidth;
_44a=true;
}
if(_448.minheight){
if(ColdFusion.Util.isInteger(_448.minheight)==false){
ColdFusion.Window.resetHTML(_447);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidminheight","widget",[_447],null,null,true);
return;
}
var _44d=_448.minheight;
var _44e=_448.height;
if(typeof (_44d)!="number"){
_44d=parseInt(_44d);
}
if(typeof (_44e)!="number"){
_44e=parseInt(_44e);
}
if(_44d>_44e){
ColdFusion.Window.resetHTML(_447);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidheightvalue","widget",[_447],null,null,true);
return;
}
_448.minHeight=_448.minheight;
_44a=true;
}
if(_448.x){
if(ColdFusion.Util.isInteger(_448.x)==false){
ColdFusion.Window.resetHTML(_447);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidx","widget",[_447],null,null,true);
return;
}
}
if(_448.y){
if(ColdFusion.Util.isInteger(_448.y)==false){
ColdFusion.Window.resetHTML(_447);
ColdFusion.handleError(null,"window.getupdatedconfigobject.invalidy","widget",[_447],null,null,true);
return;
}
}
if(typeof (_448.x)=="undefined"&&(typeof (_448.fixedcenter)=="undefined"||_448.fixedcenter==false)){
_448.x=ColdFusion.Window.xPosition;
ColdFusion.Window.xPosition+=15;
}
if(typeof (_448.y)=="undefined"&&(typeof (_448.fixedcenter)=="undefined"||_448.fixedcenter==false)){
_448.y=ColdFusion.Window.yPosition;
ColdFusion.Window.yPosition+=15;
}
if(typeof (_448.initshow)!="undefined"&&_448.initshow===false){
_448.tempinitshow=false;
if(typeof (_448.fixedcenter)!="undefined"&&_448.fixedcenter===true){
_448.tempcenter=_448.fixedcenter;
_448.fixedcenter=null;
}else{
_448.tempx=_448.x;
_448.tempy=_448.y;
}
_448.x=-10000;
_448.y=-10000;
}
_448.constraintoviewport=true;
_448.initshow=true;
if(_448.resizable!=null&&_448.resizable==false&&_44a==true){
ColdFusion.Window.resetHTML(_447);
ColdFusion.handleError(null,"window.getupdatedconfigobject.minhwnotallowed","widget",[_447],null,null,true);
return;
}
_448.collapsible=false;
_448.shadow=true;
_448.isConfObj=true;
return _448;
};
ColdFusion.Window.show=function(_44f){
var _450=ColdFusion.objectCache[_44f];
if(typeof (_450)!="undefined"&&_450!=null){
if(typeof (_450.isConfObj)!="undefined"&&_450.isConfObj==true){
_450.initshow=true;
var _451=ColdFusion.Window.createHTML(_44f,null,_450.url,_450,true);
ColdFusion.Window.createJSObj(_44f,_450.url,_451);
}else{
if(_450.isVisible()==false){
_450.show();
ColdFusion.Log.info("window.show.shown","widget",[_44f]);
}
if(_450.tempcenter!=null){
_450.center();
_450.tempcenter=null;
}else{
if(_450.getEl()&&_450.getEl().getX()>0&&_450.getEl().getY()>0){
_450.tempx=null;
_450.tempy=null;
}else{
if(_450.tempx!=null&&_450.tempy!=null){
_450.setPosition(_450.tempx,_450.tempy);
_450.tempx=null;
_450.tempy=null;
}else{
var x=_450.getEl().getX();
var y=_450.getEl().getY();
_450.setPosition(x+1,y+1);
_450.setPosition(x,y);
}
}
}
}
}else{
ColdFusion.handleError(null,"window.show.notfound","widget",[_44f],null,null,true);
}
};
ColdFusion.Window.hide=function(_454){
var _455=ColdFusion.objectCache[_454];
if(_455){
if(_455.isVisible&&_455.isVisible()==true){
_455.hide();
ColdFusion.Log.info("window.hide.hidden","widget",[_454]);
}
}else{
ColdFusion.handleError(null,"window.hide.notfound","widget",[_454],null,null,true);
}
};
ColdFusion.Window.onShow=function(_456,_457){
var _458=ColdFusion.objectCache[_456];
if(typeof (_458)!="undefined"&&_458!=null){
_458._cf_onShow=_457;
if(_458.addListener){
_458.addListener("show",ColdFusion.Window.onShowWrapper);
}
}else{
ColdFusion.handleError(null,"window.onshow.notfound","widget",[_456],null,null,true);
}
};
ColdFusion.Window.onShowWrapper=function(_459){
_459._cf_onShow.call(null,_459.cfwindowname);
};
ColdFusion.Window.onHide=function(_45a,_45b){
var _45c=ColdFusion.objectCache[_45a];
if(typeof (_45c)!="undefined"&&_45c!=null){
_45c._cf_onHide=_45b;
if(_45c.addListener){
_45c.addListener("hide",ColdFusion.Window.onHideWrapper);
}
}else{
ColdFusion.handleError(null,"window.onhide.notfound","widget",[_45a],null,null,true);
}
};
ColdFusion.Window.onHideWrapper=function(_45d){
_45d._cf_onHide.call(null,_45d.cfwindowname);
};
ColdFusion.Window.getWindowObject=function(_45e){
if(!_45e){
ColdFusion.handleError(null,"window.getwindowobject.emptyname","widget",null,null,null,true);
return;
}
var _45f=ColdFusion.objectCache[_45e];
if(_45f==null||(typeof (_45f.isConfObj)=="undefined"&&Ext.Window.prototype.isPrototypeOf(_45f)==false)){
ColdFusion.handleError(null,"window.getwindowobject.notfound","widget",[_45e],null,null,true);
return;
}
if(typeof (_45f.isConfObj)!="undefined"&&_45f.isConfObj==true){
_45f.initshow=true;
var _460=ColdFusion.Window.createHTML(_45e,null,_45f.url,_45f,true);
ColdFusion.Window.createJSObj(_45e,_45f.url,_460);
ColdFusion.Window.hide(_45e);
_45f=ColdFusion.objectCache[_45e];
}
return _45f;
};
