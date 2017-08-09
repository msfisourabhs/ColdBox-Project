/*ADOBE SYSTEMS INCORPORATED
Copyright 2007 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.Slider){
ColdFusion.Slider={};
}
var $SL=ColdFusion.Slider;
ColdFusion.Slider.init=function(_87e,name,_880,_881,_882,_883,_884,_885,_886,_887,tip,_889,_88a){
var _88b={renderTo:_87e,id:name};
if(_886!=null&&typeof (_886)!="undefined"){
_88b.ClicktoChange=_886;
}else{
_88b.ClicktoChange=false;
}
if(_887!=null&&typeof (_887)!="undefined"){
_88b.increment=_887;
}else{
_88b.increment=1;
}
if(_884!=null&&typeof (_884)!=undefined){
_88b.minValue=_884;
}else{
_88b.minValue=0;
}
if(_883!=null&&typeof (_883)!=undefined){
_88b.value=_883;
}else{
_88b.value=_88b.minValue;
}
if(_881!=null&&typeof (_881)!=undefined){
_88b.width=_881;
}else{
_88b.width=200;
}
if(_882!=null&&typeof (_882)!="undefined"){
_88b.height=_882;
}else{
_88b.height=100;
}
if(_885!=null&&typeof (_885)!=undefined){
_88b.maxValue=_885;
}else{
_88b.maxValue=100;
}
if(_880!=null&&typeof (_880)!=undefined){
_88b.vertical=_880;
}else{
_88b.vertical=false;
}
if(_889!=null&&typeof (_889)=="function"){
_88b.onChange=_889;
}
if(_88a!=null&&typeof (_88a)!="undefined"){
_88b.onDrg=_88a;
}
Ext.ux.ST=Ext.extend(Ext.Tip,{minWidth:10,offsets:[0,-10],init:function(_88c){
_88c.on("dragstart",this.onSlide,this);
_88c.on("drag",this.onSlide,this);
_88c.on("dragend",this.hide,this);
_88c.on("destroy",this.destroy,this);
},onSlide:function(_88d){
this.show();
this.body.update(this.getText(_88d));
this.el.alignTo(_88d.thumb,"b-t?",this.offsets);
this.doAutoWidth();
},getText:function(_88e){
return _88e.getValue()==0?"0":_88e.getValue();
}});
if(tip!=null&&typeof (tip)!="undefined"){
if(tip){
_88b.plugins=new Ext.ux.ST();
}
}
var _88f=new Ext.Slider(_88b);
_88f.on("drag",$SL.onDragHandler,_88b);
_88f.on("changecomplete",$SL.onChangeHandler,_88b);
_88b.sliderComp=_88f;
ColdFusion.objectCache[name]=_88b;
ColdFusion.Log.info("slider.initialized","widget",[name]);
};
$SL.onDragHandler=function(_890,_891){
var _892=this.onDrg;
if(_892!=null&&typeof (_892)=="function"){
_892.call(this,_890,_891);
}
};
$SL.onChangeHandler=function(_893,_894){
var _895=this.onChange;
if(_895!=null&&typeof (_895)=="function"){
_895.call(this,_893,_894);
}
};
$SL.getValue=function(_896){
var _897=ColdFusion.objectCache[_896];
if(_897!=null||typeof (_897)!="undefined"){
var _898=_897.sliderComp;
if(_898){
return _898.getValue();
}
}else{
ColdFusion.handleError(null,"slider.getvalue.notfound","widget",[_896],null,null,true);
}
};
$SL.getSliderObject=function(_899){
var _89a=ColdFusion.objectCache[_899];
if(_89a!=null||typeof (_89a)!="undefined"){
return _89a.sliderComp;
}else{
return null;
}
};
$SL.setValue=function(_89b,_89c){
var _89d=ColdFusion.objectCache[_89b];
if(_89d!=null||typeof (_89d)!="undefined"){
var _89e=_89d.sliderComp;
if(_89e){
return _89e.setValue(_89c,true);
}
}else{
ColdFusion.handleError(null,"slider.setvalue.notfound","widget",[_89b],null,null,true);
}
};
$SL.show=function(_89f){
var _8a0=ColdFusion.objectCache[_89f];
if(_8a0!=null||typeof (_8a0)!="undefined"){
var _8a1=_8a0.sliderComp;
if(_8a1){
return _8a1.show();
}
}else{
ColdFusion.handleError(null,"slider.show.notfound","widget",[_89f],null,null,true);
}
ColdFusion.Log.info("slider.show.shown","widget",[_89f]);
};
$SL.hide=function(_8a2){
var _8a3=ColdFusion.objectCache[_8a2];
if(_8a3!=null||typeof (_8a3)!="undefined"){
var _8a4=_8a3.sliderComp;
if(_8a4){
return _8a4.hide();
}
}else{
ColdFusion.handleError(null,"slider.hide.notfound","widget",[_8a2],null,null,true);
}
ColdFusion.Log.info("slider.hide.hidden","widget",[_8a2]);
};
$SL.enable=function(_8a5){
var _8a6=ColdFusion.objectCache[_8a5];
if(_8a6!=null||typeof (_8a6)!="undefined"){
var _8a7=_8a6.sliderComp;
if(_8a7){
return _8a7.enable();
}
}else{
ColdFusion.handleError(null,"slider.enable.notfound","widget",[_8a5],null,null,true);
}
ColdFusion.Log.info("slider.enable.enabled","widget",[_8a5]);
};
$SL.disable=function(_8a8){
var _8a9=ColdFusion.objectCache[_8a8];
if(_8a9!=null||typeof (_8a9)!="undefined"){
var _8aa=_8a9.sliderComp;
if(_8aa){
return _8aa.disable();
}
}else{
ColdFusion.handleError(null,"slider.disable.notfound","widget",[_8a8],null,null,true);
}
ColdFusion.Log.info("slider.disable.disabled","widget",[_8a8]);
};
