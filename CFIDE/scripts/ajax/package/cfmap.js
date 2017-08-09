/*ADOBE SYSTEMS INCORPORATED
Copyright 2007 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.Map){
ColdFusion.Map={};
}
var coldFusion_markerObjCache=new Array();
var $MAP=ColdFusion.Map;
$MAP.statusCodeObject={code200:"A directions request could not be successfully parsed. For example, the request may have been rejected if it contained more than the maximum number of waypoints allowed.",code400:"A directions request could not be successfully parsed. For example, the request may have been rejected if it contained more than the maximum number of waypoints allowed.",code500:"A geocoding or directions request could not be successfully processed, yet the exact reason for the failure is not known",code601:"The HTTP query parameter was either missing or had no value. For geocoding requests, this means that an empty address was specified as input. For directions requests, this means that no query was specified in the input",code602:"No corresponding geographic location could be found for the specified address. This may be due to the fact that the address is relatively new, or it may be incorrect",code603:"The geocode for the given address or the route for the given directions query cannot be returned due to legal or contractual reasons",code604:"The GDirections object could not compute directions between the points mentioned in the query. This is usually because there is no route available between the two points, or because we do not have data for routing in that region",code610:"The given key is either invalid or does not match the domain for which it was given",code620:"The given key has gone over the requests limit in the 24 hour period or has submitted too many requests in too short a period of time. If you are sending multiple requests in parallel or in a tight loop, use a timer or pause in your code to make sure you do not send the requests too quickly"};
ColdFusion.Map._init=function(_7f9,_7fa,_7fb,type,_7fd,_7fe,_7ff,_800,_801,_802,_803,_804,_805,_806,_807,_808,_809,_80a,_80b,_80c,_80d,_80e,_80f,_810,_811,_812,_813,_814,_815,_816,_817){
var _818=null;
if(navigator.geolocation){
navigator.geolocation.getCurrentPosition(function(_819){
if(_817<1){
_80c=_819.coords.latitude;
_80d=_819.coords.longitude;
_80b=null;
}
if(_817!==0){
if(_817<0){
_817=_817*-1;
}
_811[_817-1].latitude=_819.coords.latitude;
_811[_817-1].longitude=_819.coords.longitude;
}
_818=ColdFusion.Map.init(_7f9,_7fa,_7fb,type,_7fd,_7fe,_7ff,_800,_801,_802,_803,_804,_805,_806,_807,_808,_809,_80a,_80b,_80c,_80d,_80e,_80f,_810,_811,_812,_813,_814,_815,_816);
},function(_81a){
_818=ColdFusion.Map.init(_7f9,_7fa,_7fb,type,_7fd,_7fe,_7ff,_800,_801,_802,_803,_804,_805,_806,_807,_808,_809,_80a,_80b,_80c,_80d,_80e,_80f,_810,_811,_812,_813,_814,_815,_816);
});
}else{
_818=ColdFusion.Map.init(_7f9,_7fa,_7fb,type,_7fd,_7fe,_7ff,_800,_801,_802,_803,_804,_805,_806,_807,_808,_809,_80a,_80b,_80c,_80d,_80e,_80f,_810,_811,_812,_813,_814,_815,_816);
}
return _818;
};
ColdFusion.Map.init=function(_81b,_81c,_81d,type,_81f,_820,_821,_822,_823,_824,_825,_826,_827,_828,_829,_82a,_82b,_82c,_82d,_82e,_82f,_830,_831,_832,_833,_834,_835,_836,_837,_838){
var _839={divName:_81b,type:type,layout:"fit",renderTo:_81b,centerAddress:_82d,centerLatitude:_82e,centerLongitude:_82f,markerItems:_833,onLoad:_834,onError:_835,showCenterMarker:_828,showAllMarker:_829,markerColor:_831,markerIcon:_832,markerBindListener:_837,initShow:_822};
if(_81d!=null&&typeof (_81d)!="undefined"){
_839.width=_81d;
}else{
_839.width=400;
}
if(_81c!=null&&typeof (_81c)!="undefined"){
_839.height=_81c;
}else{
_839.height=400;
}
if(_81f!=null&&typeof (_81f)!="undefined"){
_839.zoomLevel=_81f;
}else{
_839.zoomLevel=3;
}
_839.hideBorders=_821;
if(!_821){
if(_820==null||typeof _820==="undefined"||_820.length==0){
_820=" ";
}
_839.title=_820;
_839.collapsible=_823;
}
if(_831==null&&_832==null){
_839.markerColor="#00FF00";
}
var _83a=new Ext.Panel(_839);
ColdFusion.objectCache[_81b]=_839;
_839.mapPanel=_83a;
var _83b=["enableDragging"];
if(_824){
_83b.push("enableScrollWheelZoom");
}else{
_83b.push("disableScrollWheelZoom");
}
if(_825){
_83b.push("enableDoubleClickZoom");
}else{
_83b.push("disableDoubleClickZoom");
}
if(_826){
_83b.push("enableContinuousZoom");
}else{
_83b.push("disableContinuousZoom");
}
var _83c=$MAP.parseControlProperties(_827,_82a,_82b,_82c);
var _83d=[];
for(i=0;i<_839.markerItems.length;i++){
var _83e=$MAP.parseMarker(_839.markerItems[i],_81b);
_83d.push(_83e);
}
if(_830==null||typeof _830==="undefined"){
_830="";
}
var _83f={marker:{title:_830}};
if(_839.markerColor!=null&&typeof _839.markerColor!="undefined"){
_83f.marker.markercolor=_839.markerColor;
}else{
if(_839.markerIcon!=null&&typeof _839.markerIcon!="undefined"){
_83f.marker.markericon=_839.markerIcon;
}
}
if(_836===true){
_83f.listeners={click:$MAP.markerOnClickHandler};
if(_838!=null){
_83f.marker.markerwindowcontent=_838;
}else{
_83f.marker.bindcallback=_837;
}
_83f.marker.name=_81b;
}
if(_839.centerAddress!=null&&typeof _839.centerAddress==="string"){
_83f.geoCodeAddr=_839.centerAddress;
_83f.marker.address=_839.centerAddress;
}else{
_83f.lat=_839.centerLatitude;
_83f.lng=_839.centerLongitude;
_83f.marker.address=_839.centerAddress;
}
var _840=false;
if(_82b!=null&&typeof _82b=="string"&&_82b.toUpperCase()=="ADVANCED"){
_840=true;
}
var _841=new Ext.ux.GMapPanel({xtype:"gmappanel",region:"center",zoomLevel:_839.zoomLevel,gmapType:_839.type,mapConfOpts:_83b,mapControls:_83c,setCenter:_83f,markers:_83d,border:!_839.hideBorders,onLoadhandler:$MAP.onLoadCompleteHandler,onErrorhandler:$MAP.onErrorHandler,name:_839.divName,noCenterMarker:!_828,showAllMarker:_829,advanceMapTypeControl:_840});
_83a.add(_841);
_839.mapPanelObject=_841;
if(_822===false){
_83a.hide();
}else{
_83a.doLayout();
}
ColdFusion.Log.info("map.initialized","widget",[_81b]);
return _83a;
};
$MAP.addMarker=function(name,_843){
var _844=$MAP.getMapPanelObject(name);
var _845=$MAP.parseMarker(_843,name);
var _846=[];
_846.push(_845);
_844.addMarkers(_846);
ColdFusion.Log.info("map.addmarker.markeradded","widget",[name,_846.length]);
};
$MAP.setCenter=function(name,_848){
var _849=$MAP.getMapPanelObject(name);
var lat;
var lng;
if(_848.latitude&&_848.longitude){
if(typeof _848.latitude!="number"||typeof _848.longitude!="number"){
ColdFusion.handleError(null,"map.setcenter.latlngnonnumeric","widget",[name,_848.latitude,_848.longitude],null,null,true);
}else{
lat=_848.latitude;
lng=_848.longitude;
}
var _84c=new GLatLng(lat,lng);
_849.getMap().setCenter(_84c,_849.zoomLevel,_849.parsedMapType);
}else{
if(_848.address){
if(typeof _848.address!="string"){
ColdFusion.handleError(null,"map.setcenter.addressnotstring","widget",[name,_848.address],null,null,true);
}else{
_849.geoCodeLookup(_848.address);
}
}else{
ColdFusion.handleError(null,"map.setcenter.invalidcenter","widget",[name],null,null,true);
}
}
ColdFusion.Log.info("map.setcenter.centerset","widget",[name]);
};
$MAP.getLatitudeLongitude=function(_84d,_84e){
geocoder=new GClientGeocoder();
if(_84e==null||!typeof _84e==="function"){
_84e=$MAP.LatitudeLongitudeHanlder;
}
geocoder.getLatLng(_84d,_84e);
};
$MAP.addEvent=function(name,_850,_851,_852){
var _853=$MAP.getMapPanelObject(name);
_853.addEventToMap(_850,_851,_852);
};
$MAP.setZoomLevel=function(name,_855){
var _856=$MAP.getMapPanelObject(name);
_856.zoomLevel=_855;
_856.getMap().setZoom(_855);
};
$MAP.getMapObject=function(name){
var _858=$MAP.getMapPanelObject(name);
if(_858!=null){
return _858.getMap();
}
};
$MAP.parseMarker=function(_859,_85a){
var _85b={};
if(_859.latitude&&_859.longitude){
if(typeof _859.latitude!="number"||typeof _859.longitude!="number"){
ColdFusion.handleError(null,"map.marker.latlngnonnumeric","widget",[_859.latitude,_859.longitude],null,null,true);
}else{
_85b.lat=_859.latitude;
_85b.lng=_859.longitude;
}
}else{
if(_859.address!=null){
if(typeof _859.address!="string"){
ColdFusion.handleError(null,"map.marker.addressnotstring","widget",[_859.address],null,null,true);
}else{
_85b.address=_859.address;
}
}
}
var _85c={};
if(_859.tip==null){
_85c.title="";
}else{
_85c.title=_859.tip;
}
if(_859.markercolor!=null&&typeof _859.markercolor!="undefined"){
_85c.markercolor=_859.markercolor;
}else{
if(_859.markericon!=null&&typeof _859.markericon!="undefined"){
_85c.markericon=_859.markericon;
}
}
if(_859.showmarkerwindow===true||_859.markerwindowcontent!=null){
var _85d=ColdFusion.objectCache[_85a];
var _85e;
if(_85d!=null||typeof (_85d)!="undefined"){
_85e=_85d.markerBindListener;
}
if(_85e!=null||_859.markerwindowcontent!=null){
_85b.listeners={click:$MAP.markerOnClickHandler};
if(_859.markerwindowcontent!=null){
_85c.markerwindowcontent=_859.markerwindowcontent;
}else{
_85c.bindcallback=_85e;
}
_85c.name=_859.name;
}
}
_85b.marker=_85c;
return _85b;
};
$MAP.parseControlProperties=function(_85f,_860,_861,_862){
var _863=["NonExistantControl"];
if(_85f){
_863.push("GScaleControl");
}
if(_861&&_861.toUpperCase()=="BASIC"){
_863.push("GMapTypeControl");
}else{
if(_861&&_861.toUpperCase()=="ADVANCED"){
_863.push("GMenuMapTypeControl");
}
}
if(_860){
_863.push("GOverviewMapControl");
}
if(_862!=null&&_862!="undefined"){
_862=_862.toUpperCase();
switch(_862){
case "SMALL":
_863.push("GSmallMapControl");
break;
case "SMALL3D":
_863.push("GSmallZoomControl3D");
break;
case "LARGE":
_863.push("GLargeMapControl");
break;
case "LARGE3D":
_863.push("GLargeMapControl3D");
break;
}
}
return _863;
};
$MAP.onErrorHandler=function(name,_865){
var _866=ColdFusion.objectCache[name];
var _867=$MAP.statusCodeObject;
var _868=$MAP.retrieveStatueMessage(_865);
var _869=_866.onError;
if(_869!=null&&typeof _869==="function"){
_869.call(null,_865,_868);
}else{
alert("Error: "+_868);
}
ColdFusion.handleError(null,"map.loadMap.error","map",[name,_865,_868],null,null,true);
};
$MAP.onLoadCompleteHandler=function(name){
var _86b=ColdFusion.objectCache[name];
var _86c=_86b.onLoad;
if(_86c!=null&&typeof _86c==="function"){
_86c.call();
}
};
$MAP.retrieveStatueMessage=function(code){
var _86e;
switch(code){
case 200:
_86e=$MAP.statusCodeObject.code200;
break;
case 400:
_86e=$MAP.statusCodeObject.code400;
break;
case 500:
_86e=$MAP.statusCodeObject.code500;
break;
case 601:
_86e=$MAP.statusCodeObject.code601;
break;
case 602:
_86e=$MAP.statusCodeObject.code602;
break;
case 603:
_86e=$MAP.statusCodeObject.code603;
break;
case 604:
_86e=$MAP.statusCodeObject.code604;
break;
case 610:
_86e=$MAP.statusCodeObject.code610;
break;
case 620:
_86e=$MAP.statusCodeObject.code620;
break;
}
return _86e;
};
$MAP.markerOnClickHandler=function(_86f){
coldFusion_markerObjCache[this.name]=this.marker;
if(this.bindcallback!=null&&typeof this.bindcallback=="function"){
var _870=this.address;
if(_870==null||typeof _870=="undefined"){
_870="";
}
this.bindcallback.call(null,this.name,_86f.lat(),_86f.lng(),_870);
}else{
if(this.statictext!=null&&typeof this.statictext!="undefined"){
this.marker.openInfoWindowHtml(this.statictext);
}
}
};
ColdFusion.Map.loadMarkerWindowInfo=function(data,_872){
var _873=coldFusion_markerObjCache[_872._cf_marker_name];
_873.openInfoWindowHtml(data+"");
};
ColdFusion.Map.bindOnErrorHandler=function(data,_875){
ColdFusion.handleError(null,"map.markerbind.binderror","widget",[data],null,null,true);
};
$MAP.getMapPanelObject=function(name){
var _877=ColdFusion.objectCache[name];
if(_877==null||typeof (_877)=="undefined"){
ColdFusion.handleError(null,"map.getmappanelobject.notfound","widget",[name],null,null,true);
}
return _877.mapPanelObject;
};
$MAP.refresh=function(name){
var _879=ColdFusion.objectCache[name];
if(_879==null||typeof (_879)=="undefined"){
ColdFusion.handleError(null,"map.refresh.notfound","widget",[name],null,null,true);
}
_879.mapPanel.doLayout();
};
$MAP.hide=function(name){
var _87b=ColdFusion.objectCache[name];
if(_87b==null||typeof (_87b)=="undefined"){
ColdFusion.handleError(null,"map.hide.notfound","widget",[name],null,null,true);
}
_87b.mapPanel.hide();
};
$MAP.show=function(name){
var _87d=ColdFusion.objectCache[name];
if(_87d==null||typeof (_87d)=="undefined"){
ColdFusion.handleError(null,"map.show.notfound","widget",[name],null,null,true);
}
_87d.mapPanel.show();
_87d.mapPanel.doLayout();
};
