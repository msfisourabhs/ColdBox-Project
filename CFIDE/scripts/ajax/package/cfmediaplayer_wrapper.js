/*ADOBE SYSTEMS INCORPORATED
Copyright 2007 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.MediaPlayer){
ColdFusion.MediaPlayer={};
}
var $MP=ColdFusion.MediaPlayer;
$MP.defaultSWFLocation=_cf_ajaxscriptsrc+"/resources/cf/assets/StrobeMediaPlayback.swf",$MP.defaultOptions={swf:$MP.defaultSWFLocation,width:480,height:275,src:"",javascriptControls:true,playButtonOverlay:true,loop:false,autoPlay:false,controlBarMode:"docked",javascriptCallbackFunction:"triggerHandler"};
$MP.playerMap={};
$MP.playerWrapperMap={};
$MP.playerOptionsMap={};
$MP.jsFunctionMap={};
$MP.titleDataMap={};
$MP.videoMonitorMap={};
$MP.bindInfoMap={};
$MP.bindElements={};
$MP.baseURI;
$MP.fancyBoxLeftBorderOffset=5;
$MP.fancyBoxBottonBorderOffset=6;
$MP.hasHTML5VideoPlaybackSupport=!!document.createElement("video").canPlayType;
String.prototype.trim=function(){
return this.replace(/^\s+|\s+$/g,"");
};
ColdFusion.MediaPlayer.init=function(_694){
var _695=$MP.defaultOptions;
_695.id=_694.id;
var _696={};
var _697={};
var _698={};
var _699=null;
var _69a={onStart:null,onComplete:null,onPause:null,onError:null,onLoad:null,onStartCallback:playbackStart,onPauseCallback:playbackPause};
if(_694.width!=null&&typeof (_694.width)!="undefined"){
_695.width=_694.width;
}else{
_695.width=480;
}
if(_694.height!=null&&typeof (_694.height)!="undefined"){
_695.height=_694.height;
}else{
_695.height=275;
}
if(_694.baseURI!=null){
$MP.baseURI=_694.baseURI;
}
if(_694.src!=null&&_694.src!=""){
_695.src=resolveSource(_694.src);
}else{
_695.src="";
}
if(_694.PosterImage!=null&&_694.PosterImage!=""){
_695.poster=resolveSource(_694.PosterImage);
}else{
_695.poster="";
}
if(_694.javascriptControls==null){
_695.javascriptControls=true;
}
if(_694.playButtonOverlay==null){
_695.playButtonOverlay=true;
}
if(_694.repeat!=null){
if(_694.repeat=="true"){
_695.loop=true;
}else{
_695.loop=false;
}
}else{
_695.loop=false;
}
if(_694.autoPlay!=null){
if(_694.autoPlay=="true"){
_695.autoPlay=true;
}else{
_695.autoPlay=false;
}
}else{
_695.autoPlay=false;
}
if(_694.bgcolor!=null){
_695.backgroundColor=_694.bgcolor;
_697.bgColor=_694.bgcolor;
}
if(_694.controlbar!=null){
if(_694.controlbar==false){
_695.controlBarMode="none";
}else{
_695.controlBarMode="docked";
}
}
if(_694.skin!=null){
_695.skin=resolveSource(_694.skin);
}else{
_695.skin="";
}
if(_694.onComplete!=null){
_69a.onComplete=_694.onComplete;
}
if(_694.onLoad!=null){
_69a.onLoad=_694.onLoad;
}
if(_694.onStart!=null){
_69a.onStart=_694.onStart;
}
if(_694.onPause!=null){
_69a.onPause=_694.onPause;
}
if(_694.onError!=null){
_69a.onError=_694.onError;
}
if(_694.onBind!=null){
_69a.onBind=_694.onBind;
}
if(_694.hideTitle!=null){
_696.hideTitle=_694.hideTitle;
}
if(_694.title!=null){
_696.title=_694.title;
}
if(_694.title_text_color!=null){
_696.title_text_color=_694.title_text_color;
}
if(_694.title_bgcolor!=null){
_696.title_bgcolor=_694.title_bgcolor;
}
if(_694.border_left!=null){
_697.border_left=_694.border_left;
}
if(_694.border_right!=null){
_697.border_right=_694.border_right;
}
if(_694.border_top!=null){
_697.border_top=_694.border_top;
}
if(_694.border_bottom!=null){
_697.border_bottom=_694.border_bottom;
}
if(_694.progress_color!=null){
_698.progress_color=_694.progress_color;
}
if(_694.progress_bgcolor!=null){
_698.progress_bgcolor=_694.progress_bgcolor;
}
if(_694.controls_color!=null){
_698.controls_color=_694.controls_color;
}
if(_694.controlbar_bgcolor!=null){
_698.controlbar_bgcolor=_694.controlbar_bgcolor;
}
if(!_695.javascriptControls){
$(".strobeMediaPlaybackControlBar,.smp-error,.playoverlay").show();
}
if(_694.bindData!=null&&_694.bindData!="undefined"){
_699=$.extend(true,{},_695);
handleBindingMediaPlayer(_699,_694.bindData,_694.type,_69a);
return;
}
handleWmode(_694,_695);
playerInitialization(_695,_694.type,_69a,_696,_697,_698);
};
function handleWmode(_69b,_69c){
if(navigator.platform.indexOf("Linux")!=-1){
_69c.wmode="direct";
return;
}
if(_69b.wmode!=null){
_69c.wmode=_69b.wmode;
}else{
_69c.wmode="direct";
}
var _69d=document.getElementById(_69c.id+"_"+"videoTitle");
if((_69d!==null&&(_69b.hideTitle==null||_69b.hideTitle==false))||(_69c.backgroundColor!=null&&_69c.backgroundColor.trim()!="")){
_69c.wmode="transparent";
}
}
function isValidSourceElementExist(_69e,type){
if(_69e.src!=null&&_69e.src!=""){
if(type=="html"&&$MP.hasHTML5VideoPlaybackSupport&&isHTMLFileFormatSupported(_69e.src)){
return true;
}else{
if(type=="flash"&&isFlashSupported()&&isFlashFileFormatSupported(_69e.src)){
return true;
}
}
}
var _6a0=document.getElementById(_69e.id+"_extendData");
if(_6a0==null||_6a0.childNodes==null||!isFlashSupported()){
return false;
}
var _6a1=_6a0.getElementsByTagName("source");
for(var k=0;k<_6a1.length;k++){
var src=_6a1[k].getAttribute("src");
if(type=="html"&&$MP.hasHTML5VideoPlaybackSupport&&isHTMLFileFormatSupported(src)){
return true;
}else{
if(type=="flash"&&isFlashSupported()&&isFlashFileFormatSupported(src)){
return true;
}
}
}
return false;
}
function hideTitle(id){
var _6a5=document.getElementById(id+"_"+"videoTitle");
if(_6a5==null){
id=id.substring(0,id.indexOf("_strobemediaplayback-video"));
_6a5=document.getElementById(id+"_"+"videoTitle");
}
if(_6a5!=null){
$("#"+id+"_"+"videoTitle").fadeOut(600,null);
}
}
function playbackStart(id){
var _6a7=getFuncMap(id);
if(_6a7.onStart!=null){
_6a7.onStart();
}
var _6a8=getWrapper(id);
if(_6a8!=null){
_6a8.playOverlay.fadeOut(600);
}
hideTitle(id);
}
function showTitle(id){
var _6aa=document.getElementById(id+"_"+"videoTitle");
if(_6aa==null){
id=id.substring(0,id.indexOf("_strobemediaplayback-video"));
_6aa=document.getElementById(id+"_"+"videoTitle");
}
if(_6aa!=null){
$("#"+id+"_"+"videoTitle").fadeIn(1,null);
}
}
function playbackPause(id){
var _6ac=getFuncMap(id);
if(_6ac.onPause!=null){
_6ac.onPause();
}
var _6ad=getWrapper(id);
if(_6ad!=null){
_6ad.playOverlay.fadeIn(600);
}
showTitle(id);
}
function playbackComplete(id){
var _6af=getFuncMap(id);
if(_6af.onComplete!=null){
_6af.onComplete();
}
var _6b0=getWrapper(id);
if(_6b0!=null){
_6b0.playOverlay.fadeIn(600);
_6b0.slider.css("left",0+"px");
_6b0.currenttime.html("0:00");
}
showTitle(id);
}
function updateFlashVideoSource(_6b1){
if(_6b1.src!=null&&_6b1.src!=""){
if(isFlashSupported()&&isFlashFileFormatSupported(_6b1.src)){
return;
}
}
var _6b2=document.getElementById(_6b1.id+"_extendData");
if(_6b2==null||_6b2.childNodes==null||!isFlashSupported()){
return;
}
var _6b3=_6b2.getElementsByTagName("source");
for(var k=0;k<_6b3.length;k++){
var src=_6b3[k].getAttribute("src");
if(isFlashSupported()&&isFlashFileFormatSupported(src)){
_6b1.src=resolveSource(src);
return;
}
}
return;
}
function playerInitialization(_6b6,type,_6b8,_6b9,_6ba,_6bb){
var _6bc=true;
var _6bd=isValidSourceElementExist(_6b6,"html");
var _6be=isValidSourceElementExist(_6b6,"flash");
var _6bf=$MP.handleUserDefinedFlashParams(_6b6,type);
if(_6bf){
_6b6.favorFlashOverHtml5Video=true;
}else{
if(isFlashSupported()){
if(type==null||type=="flash"){
if(_6be){
_6b6.favorFlashOverHtml5Video=true;
}else{
if(_6bd){
_6b6.favorFlashOverHtml5Video=false;
}else{
_6bc=false;
}
}
}else{
if(_6bd){
_6b6.favorFlashOverHtml5Video=false;
}else{
if(_6be){
_6b6.favorFlashOverHtml5Video=true;
}else{
_6bc=false;
}
}
}
}else{
if($MP.hasHTML5VideoPlaybackSupport){
_6b6.favorFlashOverHtml5Video=false;
}else{
_6bc=false;
}
}
}
if(_6b6.favorFlashOverHtml5Video){
updateFlashVideoSource(_6b6);
}
if(!_6bc){
if($MP.hasHTML5VideoPlaybackSupport){
_6b6.favorFlashOverHtml5Video=false;
}else{
$(".playoverlay").hide();
ColdFusion.MediaPlayer.logError(_6b6.id,"The video could not be loaded");
return;
}
}
var _6c0={"tablet":{"startSize":{"width":+_6b6.width,"height":+_6b6.height},"name":_6b6.id+"_"+"strobemediaplayback-video"},"smartphone":{"startSize":{"width":+_6b6.width,"height":+_6b6.height},"name":_6b6.id+"_"+"strobemediaplayback-video"},"default":{"startSize":{"width":+_6b6.width,"height":+_6b6.height},"name":_6b6.id+"_"+"strobemediaplayback-video"}};
strobeMediaPlayback.draw(_6b6.id+"_"+"strobemediaplayback-video",_6c0,_6b6);
var _6c1=$("#"+_6b6.id+"_"+"strobemediaplayback-video");
var _6c2=$("#"+_6b6.id);
var _6c3=_6c2.get(0);
var _6c4;
if(_6c3==null){
_6b6.id=_6b6.id+"_strobemediaplayback-video";
$MP.playerOptionsMap[_6b6.id]=_6b6;
$MP.videoMonitorMap[_6b6.id]={paused:true,muted:false};
}else{
_6c4=$("#"+_6b6.id+"_"+"strobemediaplayback-video  .html5player").strobemediaplaybackhtml5(_6b6,_6b8);
$MP.playerMap[_6b6.id]=_6c3;
$MP.playerWrapperMap[_6b6.id]=_6c4;
$MP.playerOptionsMap[_6b6.id]=_6b6;
}
$MP.jsFunctionMap[_6b6.id]=_6b8;
$MP.titleDataMap[_6b6.id]=_6b9;
if(_6c3!=null&&_6c3.nodeName!=null&&_6c3.nodeName.toLowerCase()=="video"){
handleVolumeSlider(_6b6.id);
_6c3.volume=0.6;
handlePlayoverlay(_6b6.id,_6b6.width,_6b6.height);
handleErrorElement(_6b6.id,_6b6.width,_6b6.height);
var _6c5=$MP.playerWrapperMap[_6b6.id];
_6c5.playOverlay.css("display","block");
_6c1.css("width","100%");
_6c1.css("height","100%");
handlebackgroundColor(_6b6);
handleControlsStyle(_6b6.id,_6bb);
_6c4.useHTML5=true;
var _6c6=document.getElementById(_6b6.id+"_extendData");
if(_6c6!=null){
$MP.handleUserDefinedHTML5Element(_6c3,_6b6.id+"_extendData");
}else{
handleTitle(_6b6.id,_6b6.src,_6b9);
var _6c7=getFuncMap(_6b6.id);
var _6c8=document.getElementById(_6b6.id);
var _6c9=_6c8.getElementsByTagName("source");
if(_6c9!=null&&_6c9.length!=0){
_6c9[0].setAttribute("onerror","onError(event)");
}
}
}else{
handleTitle(_6b6.id,_6b6.src,_6b9);
}
handleBorderStyle(_6b6.id,_6ba);
if($MP.bindInfoMap[_6b6.id]==null){
var _6ca=document.getElementById(_6b6.id+"_extendData");
if(_6ca==null){
var id=_6b6.id.substring(0,_6b6.id.indexOf("_"));
_6ca=document.getElementById(id+"_extendData");
}
if(_6ca!=null&&_6ca.parentNode!=null){
_6ca.parentNode.removeChild(_6ca);
}
}
}
function handleVolumeChangeUI(_6cc,_6cd){
var _6ce=getWrapper(_6cc);
if(_6cd<=0){
_6ce.volumeHigh.css("background-position","0px -72px");
}else{
if(_6cd<=0.3){
_6ce.volumeHigh.css("background-position","-24px -72px");
}else{
if(_6cd<=0.7){
_6ce.volumeHigh.css("background-position","-48px -72px");
}else{
_6ce.volumeHigh.css("background-position","-72px -72px");
}
}
}
}
function handleVolumeSlider(_6cf){
var _6d0=getWrapper(_6cf);
var _6d1=_6d0.volumeSlider;
_6d1.slider({orientation:"vertical",range:"min",min:0,max:90,value:60,slide:function(_6d2,ui){
var _6d4=ui.value/100;
_6d0.currentVolume=_6d4;
handleChangeVolume(_6cf,_6d4);
}});
_6d0.volumeHigh.mouseover(function(){
var _6d5=getWrapper(_6cf);
var _6d6=_6d5.volumeSlider;
_6d6.css("display","block");
_6d5.volumeContainer.css("display","block");
});
_6d0.volumeHigh.mouseout(function(_6d7){
var _6d8=getWrapper(_6cf);
var _6d9=_6d8.volumeSlider;
var _6da=_6d8.volumeContainer;
var _6db=_6d7.relatedTarget;
if(_6db.className!="controls"){
_6d9.css("display","none");
_6da.css("display","none");
}
});
_6d0.volumeHigh.click(function(_6dc){
var _6dd=getWrapper(_6cf);
if(_6dd.currentVolume==null){
_6dd.currentVolume=0.6;
}
var pos=_6d0.volumeHigh.css("background-position");
if(pos.indexOf("0px")!=0){
_6d0.volumeHigh.css("background-position","0px -72px");
_6d0.volumeSlider.slider("value",0);
handleChangeVolume(_6cf,0);
}else{
_6d0.volumeSlider.slider("value",_6dd.currentVolume*100);
if(_6dd.currentVolume<=0.1){
_6d0.volumeHigh.css("background-position","0px -72px");
}else{
if(_6dd.currentVolume<=0.3){
_6d0.volumeHigh.css("background-position","-24px -72px");
}else{
if(_6dd.currentVolume<=0.7){
_6d0.volumeHigh.css("background-position","-48px -72px");
}else{
_6d0.volumeHigh.css("background-position","-72px -72px");
}
}
}
handleChangeVolume(_6cf,_6dd.currentVolume);
}
});
_6d0.controlbar.mouseout(function(_6df){
if(_6df.relatedTarget==null){
return;
}
var _6e0=_6df.relatedTarget.className;
if(_6df.relatedTarget.className!="controls"&&_6e0!="volume-container"&&_6e0.indexOf("ui-slider")==-1){
var _6e1=getWrapper(_6cf);
var _6e2=_6e1.volumeSlider;
var _6e3=_6e1.volumeContainer;
_6e2.css("display","none");
_6e3.css("display","none");
}
});
}
function handleBindingMediaPlayer(_6e4,_6e5,type,_6e7){
var _6e8=document.getElementById(_6e4.id+"_"+"html5MediaPlayback");
if(_6e8==null){
return;
}
var _6e9=_6e8.innerHTML;
if(_6e9==null){
return;
}
var _6ea={};
_6ea.videoContent=_6e9;
_6ea.type=type;
_6ea.player_options=_6e4;
_6ea.jsfunction=_6e7;
$MP.bindInfoMap[_6e4.id]=_6ea;
var _6eb=-1;
var _6ec=0;
var _6ed=_6e5;
do{
var _6ee;
_6eb=_6e5.indexOf(",",_6ec);
if(_6eb!=-1){
_6ee=_6e5.substring(_6ec,_6eb);
_6ec=_6eb+1;
_6ed=_6e5.substring(_6eb+1);
}else{
_6ee=_6ed;
}
var _6ef=_6ee;
var _6f0;
if(_6ee.indexOf("@")!=-1){
_6ef=_6ee.substring(0,_6ee.indexOf("@"));
_6f0=_6ee.substring(_6ee.indexOf("@")+1);
}else{
_6ef=_6ee;
_6f0="onClick";
}
var _6f1=document.getElementById(_6ef);
if(_6f1==null){
continue;
}
handleTitle(_6e4.id,_6e4.src);
var _6f2=getVideoTitle(_6e4.src);
if(_6f0==null||_6f0.toLowerCase()=="onclick"){
bindFancyBox(false,true,_6ef,_6f0,_6e4,type,_6e7,_6e9,_6f2);
}else{
var _6f3=document.getElementById(_6ef);
_6f0=_6f0.substring(2);
$("#"+_6ef).live(_6f0.toLowerCase(),function(e){
bindFancyBox(true,true,_6ef,_6f0,_6e4,type,_6e7,_6e9,_6f2);
});
}
}while(_6eb!=-1);
var _6f5=document.getElementById(_6e4.id+"_"+"mediacontainer");
_6f5.parentNode.removeChild(_6f5);
}
function bindFancyBox(fire,_6f7,_6f8,_6f9,_6fa,type,_6fc,_6fd,_6fe){
var _6ff=document.getElementById(_6fa.id+"_"+"videoTitle");
if(_6ff==null){
_6fe="";
}else{
if(_6fe==null||_6fe==""){
_6fe="video";
}
}
if(fire){
$("#"+_6f8).fancybox({content:_6fd,overlayShow:true,overlayOpacity:0.7,width:_6fa.width+$MP.fancyBoxLeftBorderOffset,height:_6fa.height+$MP.fancyBoxBottonBorderOffset,title:_6fe,autoDimensions:false,onComplete:function(){
var _700=$.extend(true,{},$MP.bindInfoMap[_6fa.id].player_options);
if(_6f7&&_6fc.onBind!=null){
_6fc.onBind(_6f8,_6f9);
}
var _701=$MP.bindInfoMap[_6fa.id].player_options;
playerInitialization(_701,type,_6fc);
handleBindEvents(_701,$MP.bindInfoMap[_6fa.id]);
$MP.bindInfoMap[_6fa.id].player_options=$.extend(true,{},_700);
}}).trigger("click");
}else{
$("#"+_6f8).fancybox({content:_6fd,overlayShow:true,overlayOpacity:0.7,width:_6fa.width+$MP.fancyBoxLeftBorderOffset,height:_6fa.height+$MP.fancyBoxBottonBorderOffset,title:_6fe,autoDimensions:false,onComplete:function(){
var _702=$.extend(true,{},$MP.bindInfoMap[_6fa.id].player_options);
if(_6f7&&_6fc.onBind!=null){
_6fc.onBind(_6f8,_6f9);
}
var _703=$MP.bindInfoMap[_6fa.id].player_options;
playerInitialization(_703,type,_6fc);
handleBindEvents(_703,$MP.bindInfoMap[_6fa.id]);
$MP.bindInfoMap[_6fa.id].player_options=$.extend(true,{},_702);
}});
}
}
function handleBindEvents(_704,_705){
var _706=$MP.getPlayer(_704.id);
if(_705.mute!=null){
_706.muted=mute;
}
if(_705.volume!=null){
handleChangeVolume(_704.id,_705.volume);
}
if(_705.startPlay!=null){
_706.start();
}
if(_705.stopPlay!=null){
_706.pause();
}
}
function updateVideoType(_707){
var _708=_707.childNodes;
if(_708==null){
return;
}
var _709=_707.getElementsByTagName("source");
if(_709==null||_709.length===0){
return;
}
var _70a=_709[0].getAttribute("src");
if(_70a==null){
return;
}
var type=_709[0].getAttribute("type");
if(type!=null){
return;
}
if(_70a.lastIndexOf(".")==-1){
return;
}
var _70c=_70a.substring(_70a.lastIndexOf(".")+1);
_70c=_70c.toLowerCase();
if(_70c=="mp4"){
_709[0].setAttribute("type","video/mp4");
}else{
if(_70c=="ogv"){
_709[0].setAttribute("type","video/ogg");
}else{
if(_70c=="webm"){
_709[0].setAttribute("type","video/webm");
}
}
}
}
$MP.handleUserDefinedHTML5Element=function(_70d,_70e){
var _70f=document.getElementById(_70e);
var _710=_70f.childNodes;
var _711=false;
updateVideoType(_70d);
if(_710!=null){
var _712=null;
for(var k=0;k<_710.length;k++){
var _714=_710[k];
if(_714.tagName!=null&&_714.tagName.toLowerCase()=="video"){
_712=_714;
break;
}
}
if(_712==null){
return;
}
_710=_712.childNodes;
var _715=null;
var _716;
for(var i=0;i<_710.length;i++){
var _714=_710[i];
if(_714.tagName!=null&&_714.tagName.toLowerCase()=="track"){
_70d.appendChild(_714);
}else{
if(_714.tagName!=null&&_714.tagName.toLowerCase()=="source"){
if(!_711){
var _718=_70d.getAttribute("src");
if(_718==null){
var _719=_70d.childNodes;
if(_719!=null){
for(var l=0;l<_719.length;l++){
if(_719[l].tagName.toLowerCase()=="source"){
var src=_719[l].getAttribute("src");
if(src!=null&&src.trim()!=0&&isHTMLFileFormatSupported(src)){
_715=src;
break;
}
}
}
}
}
if(_718!=null&&_718!=""&&_718.lastIndexOf(".")!=-1){
var _71c=document.createElement("source");
_71c.setAttribute("src",_718);
var _71d=_718.substring(_718.lastIndexOf(".")+1);
if(_71d=="mp4"){
_71c.setAttribute("type","video/mp4");
}else{
if(_71d=="ogv"){
_71c.setAttribute("type","video/ogg");
}else{
if(_71d=="webm"){
_71c.setAttribute("type","video/webm");
}
}
}
_70d.appendChild(_71c);
}
if(_715==null&&isHTMLFileFormatSupported(_718)){
_715=_718;
}
_70d.removeAttribute("src");
}
var src=_714.getAttribute("src");
src=resolveSource(src);
_714.setAttribute("src",src);
_70d.appendChild(_714);
_711=true;
_716=_714;
if(_715==null&&isHTMLFileFormatSupported(src)){
_715=src;
}
}
}
}
if(_715!=null){
handleTitle(_70d.id,_715);
}
if(_716!=null){
_716.setAttribute("onerror","onError(event)");
}
}
_70d.load();
};
$MP.handleUserDefinedFlashParams=function(_71e,type){
var _720=document.getElementById(_71e.id+"_extendData");
if(_720==null||_720.childNodes==null||!isFlashSupported()){
return;
}
var _721=_720.childNodes;
var _722=false;
if(_721!=null){
var _723=null;
for(var k=0;k<_721.length;k++){
var _725=_721[k];
if(_725.tagName!=null&&(_725.tagName.toLowerCase()=="object"||_725.tagName.toLowerCase()=="video")){
_723=_725;
var _726=_723.childNodes;
for(var i=0;i<_726.length;i++){
var _725=_726[i];
if(_725.tagName!=null&&_725.tagName.toLowerCase()=="param"){
_722=true;
var _728=_725.getAttribute("name");
if(_728=="flashvars"){
var _729=_725.getAttribute("value");
var _72a=0;
var _72b=_729;
do{
var _72c=_72b.indexOf("&");
var _72d;
if(_72c>0){
_72d=_72b.substring(_72a,_72c);
}else{
_72d=_72b;
}
if(_72d.indexOf("=")>0){
var _72e=_72d.substring(0,_72d.indexOf("="));
var _72f=_72d.substring(_72d.indexOf("=")+1);
if(_72e!=""||_72f!=""){
_71e[_72e]=resolveSource(_72f);
}
}
_72a=_72c+1;
_72b=_72b.substring(_72a);
}while(_72c>0);
}
}
}
}
}
return _722;
}
};
function isFlashSupported(){
return swfobject.hasFlashPlayerVersion("1");
}
function isFlashFileFormatSupported(_730){
if(_730.indexOf("rtmp")==0){
return true;
}
var _731=["flv","f4v","f4m","m3u","mp4","swf","mpeg-4","m4v","f4f","3gpp","mp3","3gpp2","pbg","gif","jpg","jpeg","aac","speex","nellymoser","QuickTime"];
var _732=_730.lastIndexOf(".");
var _733=_730.substring(_732+1,_730.length);
_733=_733.toLowerCase();
for(var i=0;i<_731.length;i++){
if(_731[i]==_733){
return true;
}
}
return false;
}
function isHTMLFileFormatSupported(_735){
if(_735==null){
return false;
}
var _736=["webm","mp4","ogv"];
var _737=_735.lastIndexOf(".");
var _738=_735.substring(_737+1,_735.length);
_738=_738.toLowerCase();
var elem=document.createElement("video");
var ogg=elem.canPlayType("video/ogg; codecs=\"theora\"");
var h264="video/mp4; codecs=\"avc1.42E01E";
var mp4=elem.canPlayType(h264+"\"")||elem.canPlayType(h264+", mp4a.40.2\"");
var webm=elem.canPlayType("video/webm; codecs=\"vp8, vorbis\"");
for(var i=0;i<_736.length;i++){
if(_736[i]==_738){
if(_738=="ogv"){
return ogg;
}else{
if(_738=="webm"){
return webm;
}else{
if(_738=="mp4"){
return mp4;
}
}
}
}
}
return false;
}
function getWrapper(name){
var _740=$MP.playerWrapperMap[name];
if(_740==null||typeof (_740)=="undefined"){
return $MP.playerWrapperMap[name+"_strobemediaplayback-video"];
}
return _740;
}
function getFuncMap(name){
var _742=$MP.jsFunctionMap[name];
if(_742==null||typeof (_742)=="undefined"){
return $MP.jsFunctionMap[name+"_strobemediaplayback-video"];
}
return _742;
}
ColdFusion.MediaPlayer.setMute=function(name,mute){
if($MP.bindInfoMap[name]!=null){
var _745=getBindInfo(name);
if(_745==null){
return;
}
_745.mute=mute;
return;
}
var _746=$MP.getPlayer(name);
var _747=$MP.getType(name);
var _748=getWrapper(name);
if(_747=="html"){
_746.muted=mute;
if(mute){
_748.volumeHigh.css("background-position","0px -72px");
_748.volumeSlider.slider("value",0);
}else{
handleChangeVolume(name,_746.volume);
}
}else{
if(_747=="flash"){
_746.setMuted(mute);
}
}
};
function resolveSource(src){
if(src==null){
return null;
}
if(src.charAt(0)!="/"&&src.indexOf("://")<0){
var _74a="";
var _74b=document.location.href;
if(_74b||_74b.indexOf("/")>-1){
_74a=_74b.substring(0,_74b.lastIndexOf("/")+1);
}
var _74c=_74a+src;
var _74d=_74c.split("/");
var _74e=new Array();
var _74f=0;
for(var i=0;i<_74d.length;i++){
if(_74d[i]==".."){
_74e[--_74f]="";
}else{
_74e[_74f++]=_74d[i];
}
}
src=_74e[0];
for(var i=1;i<_74f;i++){
src=src+"/"+_74e[i];
}
}
if(src.indexOf("/")==0){
src=$MP.baseURI+src;
}
return src;
}
ColdFusion.MediaPlayer.getPlayer=function(name){
var _752=$MP.playerMap[name];
if(_752==null||typeof (_752)=="undefined"){
_752=$MP.playerMap[name+"_strobemediaplayback-video"];
if(_752==null||typeof (_752)=="undefined"){
ColdFusion.handleError(null,"mediaplayer.getplayer.notfound","widget",[name],null,null,true);
}
}
return _752;
};
ColdFusion.MediaPlayer.setTitle=function(name,_754){
if(_754==null){
ColdFusion.handleError(null,"mediaplayer.settitle.invalidtitle","widget",[name],null,null,true);
}
var _755=$MP.titleDataMap[name];
if(_755==null){
_755={};
$MP.titleDataMap[name]=_755;
}
var _756=document.getElementById(name+"_videoTitle");
if(_756==null){
var _757="<div id=\""+name+"_videoTitle\">";
$("#"+name+"_videoContainer").prepend(_757);
}
_755.hideTitle=false;
_755.title=_754;
handleTitle(name,_754,_755);
};
ColdFusion.MediaPlayer.setSource=function(name,src){
if(src==null||src=="undefined"){
ColdFusion.handleError(null,"mediaplayer.setsource.invalidsource","widget",[name],null,null,true);
}
if($MP.bindInfoMap[name]!=null){
var _75a=getBindInfo(name);
if(_75a==null){
return;
}
_75a.player_options.src=resolveSource(src);
if(isFlashFileFormatSupported(src)&&isFlashSupported()){
_75a.player_options.favorFlashOverHtml5Video=true;
}else{
_75a.player_options.favorFlashOverHtml5Video=false;
}
_75a.videoTitle=getVideoTitle(src);
return;
}
var _75b=$MP.getPlayer(name);
var _75c=$MP.getType(name);
src=resolveSource(src);
var _75d=getWrapper(name);
var _75e,jsFunctionMap;
if(_75d!=null&&_75d.errorwindow!=null){
_75d.errorwindow.html("");
_75d.errorwindow.hide();
_75e=$MP.playerOptionsMap[_75d.options.id];
}else{
_75e=$MP.playerOptionsMap[name+"_"+"strobemediaplayback-video"];
jsFunctionMap=$MP.jsFunctionMap[name+"_"+"strobemediaplayback-video"];
}
if(_75e==null){
_75e=$MP.defaultOptions;
}
var _75f={"tablet":{"name":_75e.id+"_"+"strobemediaplayback-video"},"smartphone":{"startSize":{"width":360,"height":200},"name":_75e.id+"_"+"strobemediaplayback-video"},"default":{"startSize":{"width":+_75e.width,"height":+_75e.height},"name":_75e.id+"_"+"strobemediaplayback-video"}};
if(_75c=="html"){
if(isHTMLFileFormatSupported(src)){
_75b.src=src;
_75b.load();
_75b.pause();
_75d.playOverlay.fadeIn(600);
_75d.playtoggle.removeClass("paused");
_75d.slider.css({"left":"0%"});
_75d.playedbar.css({"width":"0%"});
_75d.currenttime.html("0:00");
_75d.duration.html("0:00");
var css={"left":"0%","width":"0%"};
_75d.bufferbar.removeClass("done");
_75d.bufferbar.css(css);
var _761=$MP.titleDataMap[_75e.id];
handleTitle(name,src,_761);
}else{
if(isFlashFileFormatSupported(src)&&isFlashSupported()){
_75e.isHTML5=false;
_75e.favorFlashOverHtml5Video=true;
_75e.src=src;
var _761=$MP.titleDataMap[_75e.id];
if(_761.hideTitle!=null&&!_761.hideTitle){
_75e.wmode="opaque";
}
strobeMediaPlayback.draw(_75e.id+"_"+"strobemediaplayback-video",_75f,_75e);
var _762=$("#"+_75e.id+"_"+"strobemediaplayback-video");
var _763=_762.find("video");
var _764=_763.get(0);
var _765=$("#"+_75e.id+"_"+"strobemediaplayback-video  .html5player").strobemediaplaybackhtml5(_75e,_75d.jsCallbackFunctions);
$MP.playerMap[_75e.id]=_764;
$MP.playerWrapperMap[_75e.id]=_765;
handleTitle(_75e.id,_75e.src,_761);
}
}
}else{
if(_75c=="flash"){
if(isFlashFileFormatSupported(src)&&isFlashSupported()){
_75b.setMediaResourceURL(src);
handleTitle(name,src,$MP.titleDataMap[id]);
}else{
if(isHTMLFileFormatSupported(src)){
var id=_75e.id+"_strobemediaplayback-video";
$("#"+id).replaceWith("<div  id=\""+id+"\"></div>");
$("#"+id).css("visibility","visible");
_75e.isHTML5=true;
_75e.favorFlashOverHtml5Video=false;
_75e.src=src;
strobeMediaPlayback.draw(id,_75f,_75e);
var _762=$("#"+id);
var _763=_762.find("video");
var _764=_763.get(0);
if(_764==null){
return;
}
var _767=getFuncMap(id);
var _765=$("#"+id+"  .html5player").strobemediaplaybackhtml5(_75e,_767);
$MP.playerMap[_75e.id]=_764;
$MP.playerWrapperMap[_75e.id]=_765;
handlePlayoverlay(_75e.id,_75e.width,_75e.height);
handleErrorElement(_75e.id,_75e.width,_75e.height);
_765.playOverlay.css("display","block");
handleTitle(_75e.id,_75e.src,$MP.titleDataMap[id]);
_764.load();
if(_75e.autoPlay==false){
_764.pause();
}
}
}
}
}
};
function getBindInfo(name){
var _769=$MP.bindInfoMap[name];
if(_769!=null){
return _769;
}
return;
}
function handleBindElements(_76a){
if(_76a!=null){
if(_76a.bindEvent==null||_76a.bindEvent.toLowerCase()=="onclick"){
bindFancyBox(false,false,_76a.bindElement,_76a.player_options,_76a.type,_76a.jsFuncc,_76a.videoContent,_76a.videoTitle);
}else{
var _76b=document.getElementById(_76a.bindElement);
var _76c=_76a.bindEvent.substring(2);
$("#"+_76a.bindElement).live(_76c.toLowerCase(),function(e){
bindFancyBox(true,false,_76a.bindElement,_76a.player_options,_76a.type,_76a.jsFuncc,_76a.videoContent,_76a.videoTitle);
});
}
}
}
function handleChangeVolume(name,_76f){
var _770=$MP.getPlayer(name);
var _771=$MP.getType(name);
if(_771=="html"){
if(_770.muted){
_770.muted=false;
}
_770.volume=_76f;
var _772=getWrapper(name);
var _773=_772.volumeSlider;
_773.slider("value",_76f*100);
handleVolumeChangeUI(name,_76f);
}else{
if(_771=="flash"){
_770.setVolume(_76f);
}
}
}
ColdFusion.MediaPlayer.setVolume=function(name,_775){
if(_775<=0){
ColdFusion.handleError(null,"mediaplayer.setvolume.invalidvalue","widget",[name],null,null,true);
}
if($MP.bindInfoMap[name]!=null){
var _776=getBindInfo(name);
if(_776==null){
return;
}
_776.volume=_775;
return;
}
handleChangeVolume(name,_775);
};
ColdFusion.MediaPlayer.resize=function(name,_778,_779){
if(_778<=0||_779<=0){
ColdFusion.handleError(null,"mediaplayer.resize.invalidvalue","widget",[name],null,null,true);
}
if($MP.bindInfoMap[name]!=null){
var _77a=getBindInfo(name);
if(_77a==null){
return;
}
_77a.player_options.width=_778;
_77a.player_options.height=_779;
return;
}
var _77b=false;
var _77c=$MP.getPlayer(name);
var _77d=$MP.getType(name);
var _77e=getWrapper(name);
_77c.width=_778;
_77c.height=_779;
if(_77e!=null){
_77e.options.width=_778;
_77e.options.height=_779;
_77e.controlbar.css("width",_778-1.5);
if(_77e.options.width>180){
_77e.progressbar.css("width",_778-180);
_77e.trackswidth=_778-180;
}else{
_77e.progressbar.css("width","50%");
_77e.trackswidth="50%";
}
handlePlayoverlay(name,_778,_779);
handleErrorElement(name,_778,_779);
}
$("#"+name+"_"+"videoContainer").css("width",_778);
$("#"+name+"_"+"videoContainer").css("height",_779);
if(_77c.paused==false){
_77e.playOverlay.hide();
}
};
ColdFusion.MediaPlayer.getType=function(name){
var elem=document.getElementById(name);
if(elem==null||elem=="undefined"){
elem=document.getElementById(name+"_strobemediaplayback-video");
if(elem==null||typeof (elem)=="undefined"){
return "unknown";
}
}
var type=elem.nodeName;
if(type==null){
return "unknown";
}
type=type.toLowerCase();
if(type=="video"){
return "html";
}else{
if(type=="object"){
return "flash";
}else{
return "unknown";
}
}
};
ColdFusion.MediaPlayer.startPlay=function(name){
if($MP.bindInfoMap[name]!=null){
var _783=getBindInfo(name);
if(_783==null){
return;
}
_783.startPlay=true;
return;
}
var _784=$MP.getPlayer(name);
var _785=$MP.getType(name);
if(_785=="html"){
_784.play();
}else{
if(_785=="flash"){
_784.play2();
}
}
};
ColdFusion.MediaPlayer.stopPlay=function(name){
if($MP.bindInfoMap[name]!=null){
var _787=getBindInfo(name);
if(_787==null){
return;
}
_787.stopPlay=true;
return;
}
var _788=$MP.getPlayer(name);
_788.pause();
};
ColdFusion.MediaPlayer.logError=function(name,_78a){
if(name==null||_78a==null){
return;
}
var _78b=$MP.playerWrapperMap[name];
if(_78b==null){
_78b=$MP.playerWrapperMap[name+"_strobemediaplayback-video"];
if(_78b==null){
return;
}
}
_78b.errorwindow.html(_78a);
_78b.errorwindow.show();
_78b.playOverlay.hide();
};
function handlePlayoverlay(name,_78d,_78e){
if(!isDesktop){
return;
}
var _78f=getWrapper(name);
_78f.playOverlay.css("left","");
_78f.playOverlay.css("top","");
_78f.playOverlay.css("left",(_78d-116)/2+"px");
_78f.playOverlay.css("top",(_78e-107)/2+"px");
}
function handleErrorElement(name,_791,_792){
var _793=getWrapper(name);
_793.playOverlay.css("display","none");
_793.errorwindow.css("left","");
_793.errorwindow.css("top","");
_793.errorwindow.css("display","none");
var _794=_793.controlbar;
var _795=0;
if(_794!=null){
_795=_794.css("height");
if(_795!=null&&_795.indexOf("px")!=-1){
_795=_795.substring(0,_795.indexOf("px"));
}else{
_795=0;
}
}
_793.errorwindow.css("margin-top",_792/2-_795+"px");
}
function handleTitleResize(id,_797,_798){
$("#"+id+"_videoTitle").css("width","");
$("#"+id+"_videoTitle").css("width",_797+"px");
}
function handleTitle(_799,_79a,_79b){
var _79c=document.getElementById(_799+"_"+"videoTitle");
if(_79c==null){
_799=_799.substring(0,_799.indexOf("_strobemediaplayback-video"));
_79c=document.getElementById(_799+"_"+"videoTitle");
}
var _79d=document.getElementById("fancybox-title-float-main");
if(_79c!=null){
if(_79b==null){
_79b=$MP.titleDataMap[_799];
if(_79b==null||_79b.hideTitle){
var _79e=_79c.parentNode;
_79e.removeChild(_79c);
return;
}
}else{
if(_79b.hideTitle){
var _79e=_79c.parentNode;
_79e.removeChild(_79c);
return;
}
}
var _79f=_79b.title;
if(_79b==null||_79b.title==null||_79b.title.trim()==""){
_79f=getVideoTitle(_79a);
}
if(_79f!=""){
_79c.innerHTML=_79f;
}else{
return;
}
$("#"+_799+"_"+"videoTitle").css("position","absolute");
$("#"+_799+"_"+"videoTitle").css("z-index",2);
if(_79b==null||_79b.title_text_color==null){
$("#"+_799+"_"+"videoTitle").css("color","white");
}else{
$("#"+_799+"_"+"videoTitle").css("color",_79b.title_text_color);
}
if(_79b!=null&&_79b.title_bgcolor!=null){
$("#"+_799+"_"+"videoTitle").css("background-color",_79b.title_bgcolor);
}
$("#"+_799+"_"+"videoTitle").css("font-weight","bold");
$("#"+_799+"_"+"videoTitle").css("font-family","Arial,Helvetica,sans-serif");
$("#"+_799+"_"+"videoTitle").css("font-size","13px");
$("#"+_799+"_"+"videoTitle").css("word-wrap","break-word");
if(_79c.style.backgroundColor==null||_79c.style.backgroundColor==""){
$("#"+_799+"_"+"videoTitle").css("margin-left","5px");
}
$("#"+_799+"_"+"videoTitle").show();
$("#"+_799+"_"+"strobemediaplayback").css("z-index",1);
}else{
if(_79d!=null&&_79a!=null){
$("#fancybox-title-float-main").text(_79a);
}
}
}
function getVideoTitle(_7a0){
var _7a1=null;
if(_7a0!=null&&_7a0!=""){
var _7a2=_7a0.lastIndexOf("/");
if(_7a2==-1){
_7a2=_7a0.lastIndexOf("\\");
}
if(_7a2==-1){
_7a1=_7a0;
}
if(_7a1==null){
_7a1=_7a0.substring(_7a2+1,_7a0.length);
}
}
if(_7a1==null||_7a1.indexOf(".")<0){
return _7a0;
}else{
return _7a1;
}
}
function handlebackgroundColor(_7a3){
if(_7a3.backgroundColor==null){
return;
}
var _7a4=document.getElementById(_7a3.id);
if(_7a4==null){
return;
}
_7a4.setAttribute("style","background-color:"+_7a3.backgroundColor+";");
}
function handleBorderStyle(_7a5,_7a6){
if(_7a6.hideBorder){
return;
}
var _7a7="#fff";
if(_7a6.bgColor){
_7a7=_7a6.bgColor;
}
var _7a8=document.getElementById(_7a5+"_"+"videoContainer");
if(_7a8==null){
_7a5=_7a5.substring(0,_7a5.indexOf("_"));
}
if(_7a6.border_left!=null){
$("#"+_7a5+"_"+"videoContainer").css("border-left",_7a6.border_left+"px"+" solid "+_7a7);
}
if(_7a6.border_right!=null){
$("#"+_7a5+"_"+"videoContainer").css("border-right",_7a6.border_right+"px"+" solid "+_7a7);
}
if(_7a6.border_top!=null){
$("#"+_7a5+"_"+"videoContainer").css("border-top",_7a6.border_top+"px"+" solid "+_7a7);
}
if(_7a6.border_bottom!=null){
$("#"+_7a5+"_"+"videoContainer").css("border-bottom",_7a6.border_bottom+"px"+" solid "+_7a7);
}
}
function handleControlsStyle(_7a9,_7aa){
var _7ab=getWrapper(_7a9);
if(_7aa.controlbar_bgcolor!=null){
_7ab.controlbar.css("background-color",_7aa.controlbar_bgcolor);
}
if(_7aa.controls_color!=null){
_7ab.playtoggle.css("background-color",_7aa.controls_color);
_7ab.slider.css("background-color",_7aa.controls_color);
_7ab.fullview.css("background-color",_7aa.controls_color);
_7ab.currenttime.css("color",_7aa.controls_color);
_7ab.duration.css("color",_7aa.controls_color);
_7ab.seekbar.css("background-color",_7aa.controls_color);
_7ab.volumeHigh.css("background-color",_7aa.controls_color);
}
if(_7aa.progress_bgcolor!=null){
_7ab.bufferbar.css("background-color",_7aa.progress_bgcolor);
}
if(_7aa.progress_color!=null){
_7ab.playedbar.css("background-color",_7aa.progress_color);
}
}
function triggerHandler(id,_7ad,_7ae){
if(_7ad=="onJavaScriptBridgeCreated"){
return;
}else{
if(_7ad=="play"){
var _7af=getFuncMap(id);
var _7b0=$MP.videoMonitorMap[id];
if(_7af.onStartCallback!=null&&_7b0.paused){
_7af.onStartCallback(id);
_7b0.paused=false;
}
hideTitle(id);
}else{
if(_7ad=="pause"){
var _7af=getFuncMap(id);
var _7b0=$MP.videoMonitorMap[id];
if(_7af.onPauseCallback!=null&&!_7b0.paused){
_7af.onPauseCallback(id);
_7b0.paused=true;
}
showTitle(id);
}else{
if(_7ad=="complete"){
var _7af=getFuncMap(id);
if(_7af.onComplete!=null){
_7af.onComplete();
}
var _7b0=$MP.videoMonitorMap[id];
_7b0.paused=true;
showTitle(id);
}else{
if(_7ad=="loadedmetadata"){
var _7af=getFuncMap(id);
if(_7af.onLoad!=null){
_7af.onLoad();
}
}else{
if(_7ad=="error"){
var _7af=getFuncMap(id);
if(_7af.onError!=null){
_7af.onError();
}
}else{
if(_7ad=="volumechange"){
var _7b0=$MP.videoMonitorMap[id];
_7b0.muted=_7ae.muted;
}
}
}
}
}
}
}
}
function onError(_7b1){
var _7b2;
var _7b3;
var _7b4;
var _7b5;
if(_7b1.target!=null&&_7b1.target.tagName.toLowerCase()=="video"){
_7b4=getFuncMap(_7b1.target.id);
if(_7b1.target.error!=null){
_7b3=_7b1.target.error.code;
}
_7b5=getWrapper(_7b1.target.id);
}else{
if(_7b1.target!=null&&_7b1.target.tagName.toLowerCase()=="source"){
var _7b6=_7b1.target.getAttribute("src");
var _7b7=_7b1.target.getAttribute("onerror");
if(_7b6!=null&&_7b7!=null){
_7b3=4;
}else{
return;
}
}
var _7b8=_7b1.target.parentNode;
_7b4=getFuncMap(_7b8.id);
_7b5=getWrapper(_7b8.id);
}
if(_7b3==null){
return;
}
if(_7b4.onError!=null){
_7b4.onError(_7b3);
return;
}
switch(_7b3){
case 1:
_7b2="You aborted the video playback.";
break;
case 2:
_7b2="A network error caused the video download to fail part-way.";
break;
case 3:
_7b2="The video playback was aborted due to a corruption problem or because the video used features your browser did not support.";
break;
case 4:
_7b2="The video could not be loaded, either because the server or network failed or because the format is not supported.";
break;
default:
_7b2="An unknown error occurred.";
break;
}
_7b5.playOverlay.css("display","none");
_7b5.errorwindow.html(_7b2);
_7b5.errorwindow.show();
}
function onFlashEmbedComplete(_7b9){
var _7ba=$("#"+_7b9.id);
var _7bb=_7ba.get(0);
$MP.playerMap[_7b9.id]=_7bb;
}
function removejscssfile(_7bc,_7bd){
var _7be=(_7bd=="js")?"script":(_7bd=="css")?"link":"none";
var _7bf=(_7bd=="js")?"src":(_7bd=="css")?"href":"none";
var _7c0=document.getElementsByTagName(_7be);
for(var i=_7c0.length;i>=0;i--){
if(_7c0[i]&&_7c0[i].getAttribute(_7bf)!=null&&_7c0[i].getAttribute(_7bf).indexOf(_7bc)!=-1){
_7c0[i].parentNode.removeChild(_7c0[i]);
}
}
}
