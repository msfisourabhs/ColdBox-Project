/*ADOBE SYSTEMS INCORPORATED
Copyright 2007 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.Button){
ColdFusion.Button={};
}
var $BT=ColdFusion.Button;
ColdFusion.Button.init=function(_ec,_ed,_ee,_ef,_f0,_f1,_f2,_f3,_f4){
var _f5={renderTo:_ec,enableToggle:_f4,text:_ed,onClick:_f0,onToggle:_f1,onMouseOver:_f2,onMouseout:_f3,tooltip:_ef,icon:_ee};
var _f6={renderTo:_ec,enableToggle:_f4,text:_ed};
if(_ef!=null&&typeof _ef!="undefined"){
_f6.tooltip=_ef;
Ext.QuickTips.init();
}
if(_ee!=null&&typeof _ee!="undefined"){
_f6.icon=_ee;
}
if(_ee&&_ed){
_f6.iconCls="x-btn-text-icon";
}else{
if(_ee&&!_ed){
_f6.iconCls="x-btn-icon";
}
}
var _f7=new Ext.Button(_f6);
if(_f0!=null&&typeof _f0=="function"){
_f7.on("click",_f0,_f5);
}
if(_f1!=null&&typeof _f1=="function"){
_f7.on("toggle",_f1,_f5);
}
if(_f2!=null&&typeof _f2=="function"){
_f7.on("mouseover",_f2,_f5);
}
if(_f3!=null&&typeof _f3=="function"){
_f7.on("mouseout",_f3,_f5);
}
_f5.buttonComp=_f7;
ColdFusion.objectCache[_ec]=_f5;
ColdFusion.Log.info("button.initialized","widget",[_ec]);
};
$BT.show=function(_f8){
var _f9=$BT.getButtonObject(_f8);
if(_f9!=null){
_f9.show();
}
ColdFusion.Log.info("button.show.shown","widget",[_f8]);
};
$BT.hide=function(_fa){
var _fb=$BT.getButtonObject(_fa);
if(_fb!=null){
_fb.hide();
}
ColdFusion.Log.info("button.hide.hidden","widget",[_fa]);
};
$BT.disable=function(_fc){
var _fd=$BT.getButtonObject(_fc);
if(_fd!=null){
_fd.disable();
}
ColdFusion.Log.info("button.disable.disabled","widget",[_fc]);
};
$BT.enable=function(_fe){
var _ff=$BT.getButtonObject(_fe);
if(_ff!=null){
_ff.enable();
}
ColdFusion.Log.info("button.enable.enabled","widget",[_fe]);
};
$BT.getButtonObject=function(_100){
var _101=$BT.getButtonConfigObj(_100);
if(_101!=null){
return _101.buttonComp;
}else{
ColdFusion.handleError(null,"button.component.notFound","widget",[_100],null,null,true);
}
};
$BT.setLabel=function(_102,_103){
var _104=$BT.getButtonObject(_102);
if(_104!=null){
_104.text=_103;
}
};
$BT.getButtonConfigObj=function(_105){
var _106=ColdFusion.objectCache[_105];
if(_106==null||typeof (_106)=="undefined"){
ColdFusion.handleError(null,"button.component.notFound","widget",[_105],null,null,true);
}
return _106;
};
$BT.toggle=function(_107){
var _108=$BT.getButtonObject(_107);
if(_108!=null){
_108.toggle();
}
};
