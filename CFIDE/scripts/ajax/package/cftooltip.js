/*ADOBE SYSTEMS INCORPORATED
Copyright 2007 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.Tooltip){
ColdFusion.Tooltip={};
}
ColdFusion.Tooltip.setToolTipOut=function(_109,_10a){
var _10b=_10a.tooltip;
_10b.tooltipout=true;
};
ColdFusion.Tooltip.getToolTip=function(_10c,_10d){
var _10e=ColdFusion.objectCache[_10d.context];
if(!_10e){
if(_10d.style){
_10d.styleObj=ColdFusion.Tooltip.parseStyle(_10d.style);
}
_10e=new YAHOO.widget.Tooltip(_10d.context+"_cf_tooltip",_10d);
ColdFusion.objectCache[_10d.context]=_10e;
_10e.doShow(_10c,_10d.context);
if(_10d._cf_url){
var _10f=function(req,_111){
_111.tooltip.cfg.setProperty("text",req.responseText);
if(_111.tooltip.tooltipout==false){
_111.tooltip.doShow(_111.event,_111.id);
}
};
YAHOO.util.Event.addListener(_10d.context,"mouseout",ColdFusion.Tooltip.setToolTipOut,{"tooltip":_10e});
_10e.cfg.setProperty("text",_cf_loadingtexthtml);
_10e.doShow(_10c,_10d.context);
try{
ColdFusion.Log.info("tooltip.gettooltip.fetch","widget",[_10d.context]);
ColdFusion.Ajax.sendMessage(_10d._cf_url,"GET",_10d._cf_query,true,_10f,{tooltip:_10e,event:_10c,id:_10d.context});
}
catch(e){
tooltipdiv=ColdFusion.DOM.getElement(_10d.context);
tooltipdiv.innerHTML="";
ColdFusion.globalErrorHandler(null,e,tooltipdiv);
}
}
}
_10e.tooltipout=false;
};
ColdFusion.Tooltip.parseStyle=function(_112){
var _113={};
if(_112&&typeof _112==="string"){
var _114=_112.split(";");
for(var i=0;i<_114.length;i++){
var temp=_114[i];
tempArray=temp.split(":");
if(tempArray.length===2){
var key=tempArray[0];
key=key.toLowerCase();
var _118=tempArray[1];
switch(key){
case "width":
_113.width=_118;
break;
case "color":
_113.color=_118;
break;
case "background-color":
_113[key]=_118;
break;
case "padding":
_113.padding=_118;
break;
default:
_113[key]=_118;
}
}
}
}
return _113;
};
