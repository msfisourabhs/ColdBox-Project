/*ADOBE SYSTEMS INCORPORATED
Copyright 2007 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
cfinitgrid=function(){
if(!ColdFusion.Grid){
ColdFusion.Grid={};
}
var $G=ColdFusion.Grid;
var $L=ColdFusion.Log;
$G.init=function(id,name,_2e3,_2e4,edit,_2e6,_2e7,_2e8,_2e9,_2ea,_2eb,_2ec,_2ed,_2ee,_2ef,_2f0,_2f1,_2f2,_2f3,_2f4,_2f5,_2f6,_2f7,_2f8,_2f9,_2fa,_2fb,_2fc,_2fd){
var grid;
var _2ff;
var _300=false;
if(_2f2&&typeof (_2f2)!="undefined"){
_2ff=_2f2;
_300=true;
}else{
_2ff=new Ext.grid.RowSelectionModel({singleSelect:true});
}
var _301=new Ext.grid.ColumnModel(_2e9);
var _302={ds:_2ea,cm:_301,sm:_2ff,autoSizeColumns:_2e7,autoSizeHeaders:_2e7,stripeRows:_2ed,autoExpandColumnId:_2e8};
if(_2fc!=null&&typeof _2fc!="undefined"){
_302.plugins=_2fc;
}
if(!_2eb||typeof (_2eb)=="undefined"){
_2eb=100*(_2e9.length-1);
}
var _303=ColdFusion.objectCache[id];
var _304=document.getElementById(_303.gridId);
if(_304!=null){
var _305=_304.style.cssText;
if(typeof _305=="undefined"){
_305="";
}
_305="width:"+_2eb+"px;"+_305;
_304.style.cssText=_305;
}
_302.width=_2eb;
if(_2e7===true){
_302.viewConfig={forceFit:true};
}else{
if(_2f2&&typeof (_2f2)!="undefined"){
_302.autoExpandColumn=_2e8;
}else{
_302.autoExpandColumn=_2e8;
}
}
if(_2ec){
_302.height=_2ec;
}else{
_302.autoHeight=true;
var _306=".x-grid3-header {position: relative;}";
Ext.util.CSS.createStyleSheet(_306,"_cf_grid"+id);
}
if(_2f4&&typeof (_2f4)!="undefined"){
_302.view=new Ext.grid.GroupingView({forceFit:false,groupTextTpl:"{[values.text.indexOf(\"x-grid3-check-col\") > 0 ? (values.text.indexOf(\"x-grid3-check-col-on\") > 0 ? \"Yes\" : \"No\") : values.text]} ({[values.rs.length]} {[values.rs.length > 1 ? \"Items\" : \"Item\"]})"});
}
_302.title=_2f5;
_302.collapsible=_2f3;
if(_2f3&&_2f5==null){
_302.title="  ";
}
var _307=ColdFusion.objectCache[id];
_307.bindOnLoad=_2e6;
_307.dynamic=_2e4;
_307.styles=_2ee;
_307.grouping=_2f4;
_307.onLoadFunction=_2fb;
_307.multiRowSelection=_300;
_302.renderTo=_307.gridId;
_302.tbar=new Ext.Toolbar({hidden:true});
if(_2e4){
_302.bbar=new Ext.PagingToolbar({pageSize:_2ef,store:_2ea,emptyMsg:"No topics to display"});
if(_2f9&&(_2f6||_2f7)){
var _308=_302.bbar;
if(_2f6){
_308.addButton({text:_2f6,handler:$G.insertRow,scope:_307});
_308.addButton({text:" save ",handler:$G.saveNewRecord,scope:_307});
_308.addButton({text:" cancel ",handler:$G.cancelNewRecord,scope:_307});
}
if(_2f7){
_308.addButton({text:_2f7,handler:$G.deleteRow,scope:_307});
}
}
}
if(edit&&!_2e4){
if(_2f6||_2f7){
var bbar=new Ext.Toolbar();
if(_2f6){
bbar.addButton({text:_2f6,xtype:"button",handler:$G.insertRow,scope:_307});
}
if(_2f7){
bbar.addButton({text:_2f7,handler:$G.deleteRow,scope:_307});
}
}else{
var bbar=new Ext.Toolbar({hidden:true});
}
_302.bbar=bbar;
}
if(edit){
_302.clicksToEdit=1;
grid=new Ext.grid.EditorGridPanel(_302);
}else{
grid=new Ext.grid.GridPanel(_302);
}
$G.Ext_caseInsensitive_sorting();
_2ea.addListener("load",$G.Actions.onLoad,_307,{delay:50});
grid.view.colMenu.addListener("beforeshow",function(menu){
var _30b=_301.getColumnCount();
for(var i=0;i<_30b;i++){
if("CFGRIDROWINDEX"==_301.getDataIndex(i)){
menu.remove(menu.items["items"][i]);
break;
}
}
},this);
_307.grid=grid;
grid.render();
if(!_2e4){
_2ea.addListener("load",$G.Actions.onLoad,_307,{delay:50});
_2ea.load();
}
if(_2e4){
_2ea.addListener("load",$G.Actions.onLoad,_307,{delay:50});
_2ea._cf_errorHandler=_2fa;
_2ea.proxy._cf_actions=_307;
_2ea.load({params:{start:0,limit:_2ef}});
}else{
$G.applyStyles(_307);
}
if(_2fd){
ColdFusion.Bind.register(_2fd,{actions:_307},$G.bindHandler,false);
}
$L.info("grid.init.created","widget",[id]);
_307.init(id,name,_2e3,_2f8,_2e4,edit,_2f9,_2fa,_2f1,_2ef,_2f0,_2f4);
};
$G.applyStyles=function(_30d){
if(_30d.stylesApplied){
return;
}
Ext.util.CSS.createStyleSheet(_30d.styles);
_30d.stylesApplied=true;
};
$G.bindHandler=function(e,_30f){
$G.refresh(_30f.actions.id);
};
$G.bindHandler._cf_bindhandler=true;
$G.refresh=function(_310,_311){
var _312=ColdFusion.objectCache[_310];
if(_312&&$G.Actions.prototype.isPrototypeOf(_312)==true){
var _313=_312.grid.getStore();
if(_312.dynamic){
_312.editOldValue=null;
_312.selectedRow=-1;
if(_311){
_313.reload();
}else{
_313.reload({params:{start:0,limit:_312.pageSize}});
}
}
}else{
ColdFusion.handleError(null,"grid.refresh.notfound","widget",[_310],null,null,true);
return;
}
if(_312.multiRowSelection){
var _314=_312.grid.getView().getHeaderCell(0);
if(_314!=null){
var _315=Ext.Element.get(_314).first();
if(_315){
_315.replaceClass("x-grid3-hd-checker-on");
}
}
}
$L.info("grid.refresh.success","widget",[_310]);
};
$G.Ext_caseInsensitive_sorting=function(){
Ext.data.Store.prototype.sortData=function(f,_317){
_317=_317||"ASC";
var st=this.fields.get(f).sortType;
var fn=function(r1,r2){
var v1=st(r1.data[f]),v2=st(r2.data[f]);
if(v1.toLowerCase){
v1=v1.toLowerCase();
v2=v2.toLowerCase();
}
return v1>v2?1:(v1<v2?-1:0);
};
this.data.sort(_317,fn);
if(this.snapshot&&this.snapshot!=this.data){
this.snapshot.sort(_317,fn);
}
};
};
$G.getTopToolbar=function(_31d){
var _31e=ColdFusion.objectCache[_31d];
if(!_31e){
ColdFusion.handleError(null,"grid.getTopToolbar.notfound","widget",[_31d],null,null,true);
return;
}
return _31e.grid.getTopToolbar();
};
$G.showTopToolbar=function(_31f){
var _320=ColdFusion.objectCache[_31f];
if(!_320){
ColdFusion.handleError(null,"grid.showTopToolbar.notfound","widget",[_31f],null,null,true);
return;
}
var tbar=_320.grid.getTopToolbar();
if(!tbar){
ColdFusion.handleError(null,"grid.showTopToolbar.toolbarNotDefined","widget",[_31f],null,null,true);
return;
}
tbar.show();
};
$G.hideTopToolbar=function(_322){
var _323=ColdFusion.objectCache[_322];
if(!_323){
ColdFusion.handleError(null,"grid.hideTopToolbar.notfound","widget",[_322],null,null,true);
return;
}
var tbar=_323.grid.getTopToolbar();
if(!tbar){
ColdFusion.handleError(null,"grid.hideTopToolbar.toolbarNotDefined","widget",[_322],null,null,true);
return;
}
tbar.hide();
};
$G.refreshTopToolbar=function(_325){
var _326=ColdFusion.objectCache[_325];
if(!_326){
ColdFusion.handleError(null,"grid.refreshTopToolbar.notfound","widget",[_325],null,null,true);
return;
}
var tbar=_326.grid.getTopToolbar();
if(!tbar){
ColdFusion.handleError(null,"grid.refreshTopToolbar.toolbarNotDefined","widget",[_325],null,null,true);
return;
}
tbar.doLayout();
if(tbar.isVisible()==false){
tbar.show();
}
};
$G.getBottomToolbar=function(_328){
var _329=ColdFusion.objectCache[_328];
if(!_329){
ColdFusion.handleError(null,"grid.getBottomToolbar.notfound","widget",[_328],null,null,true);
return;
}
return _329.grid.getBottomToolbar();
};
$G.showBottomToolbar=function(_32a){
var _32b=ColdFusion.objectCache[_32a];
if(!_32b){
ColdFusion.handleError(null,"grid.showBottomToolbar.notfound","widget",[_32a],null,null,true);
return;
}
var tbar=_32b.grid.getBottomToolbar();
if(!tbar){
ColdFusion.handleError(null,"grid.showBottomToolbar.toolbarNotDefined","widget",[_32a],null,null,true);
return;
}
tbar.show();
};
$G.hideBottomToolbar=function(_32d){
var _32e=ColdFusion.objectCache[_32d];
if(!_32e){
ColdFusion.handleError(null,"grid.hideBottomToolbar.notfound","widget",[_32d],null,null,true);
return;
}
var tbar=_32e.grid.getBottomToolbar();
if(!tbar){
ColdFusion.handleError(null,"grid.hideBottomToolbar.toolbarNotDefined","widget",[_32d],null,null,true);
return;
}
tbar.hide();
};
$G.refreshBottomToolbar=function(_330){
var _331=ColdFusion.objectCache[_330];
if(!_331){
ColdFusion.handleError(null,"grid.refreshBottomToolbar.notfound","widget",[_330],null,null,true);
return;
}
var tbar=_331.grid.getBottomToolbar();
if(!tbar){
ColdFusion.handleError(null,"grid.refreshBottomToolbar.toolbarNotDefined","widget",[_330],null,null,true);
return;
}
tbar.doLayout();
if(tbar.isVisible()==false){
tbar.show();
}
};
$G.sort=function(_333,_334,_335){
var _336=ColdFusion.objectCache[_333];
if(!_336){
ColdFusion.handleError(null,"grid.sort.notfound","widget",[_333],null,null,true);
return;
}
_334=_334.toUpperCase();
var _337=-1;
var _338=_336.grid.getColumnModel().config;
for(var i=0;i<_338.length-1;i++){
if(_334==_338[i].colName){
_337=i;
break;
}
}
if(_337==-1){
ColdFusion.handleError(null,"grid.sort.colnotfound","widget",[_334,_333],null,null,true);
return;
}
if(!_335){
_335="ASC";
}
_335=_335.toUpperCase();
if(_335!="ASC"&&_335!="DESC"){
ColdFusion.handleError(null,"grid.sort.invalidsortdir","widget",[_335,_333],null,null,true);
return;
}
var _33a=_336.grid.getStore();
_33a.sort(_334,_335);
};
$G.getGridObject=function(_33b){
if(!_33b){
ColdFusion.handleError(null,"grid.getgridobject.missinggridname","widget",null,null,null,true);
return;
}
var _33c=ColdFusion.objectCache[_33b];
if(_33c==null||$G.Actions.prototype.isPrototypeOf(_33c)==false){
ColdFusion.handleError(null,"grid.getgridobject.notfound","widget",[_33b],null,null,true);
return;
}
return _33c.grid;
};
$G.getSelectedRows=function(_33d){
if(!_33d){
ColdFusion.handleError(null,"grid.getSelectedRowData.missinggridname","widget",null,null,null,true);
return;
}
var _33e=ColdFusion.objectCache[_33d];
var _33f=new Array();
var _340=_33e.grid.getSelectionModel();
var _341=_340.getSelections();
var _342=_33e.grid.getColumnModel();
var _343=0;
if(_33e.multiRowSelection===true&&_33e.dynamic===false){
_343++;
}
for(i=0;i<_341.length;i++){
var _344=_341[i].data;
var _345={};
for(var _346=_343;_346<_342.getColumnCount()-1;_346++){
var key=_342.getDataIndex(_346);
_345[key]=_344[key];
}
_33f[i]=_345;
}
return _33f;
};
$G.clearSelectedRows=function(_348){
if(!_348){
ColdFusion.handleError(null,"grid.getSelectedRowData.missinggridname","widget",null,null,null,true);
return;
}
var _349=ColdFusion.objectCache[_348];
var _34a=_349.grid.getSelectionModel();
_34a.clearSelections();
if(_349.multiRowSelection){
var _34b=_349.grid.getView().getHeaderCell(0);
if(_34b!=null){
var _34c=Ext.Element.get(_34b).first();
if(_34c){
_34c.replaceClass("x-grid3-hd-checker-on");
}
}
}
};
$G.Actions=function(_34d){
this.gridId=_34d;
this.init=$G.Actions.init;
this.onChangeHandler=$G.Actions.onChangeHandler;
this.onChangeHandler_MultiRowsDelete=$G.Actions.onChangeHandler_MultiRowsDelete;
this.selectionChangeEvent=new ColdFusion.Event.CustomEvent("cfGridSelectionChange",_34d);
this.fireSelectionChangeEvent=$G.fireSelectionChangeEvent;
this._cf_getAttribute=$G.Actions._cf_getAttribute;
this._cf_register=$G.Actions._cf_register;
};
$G.Actions.init=function(id,_34f,_350,_351,_352,edit,_354,_355,_356,_357,_358,_359){
this.id=id;
this.gridName=_34f;
this.formId=_350;
this.form=document.getElementById(_350);
this.cellClickInfo=_351;
this.edit=edit;
this.onChangeFunction=_354;
this.onErrorFunction=_355;
this.preservePageOnSort=_356;
this.pageSize=_357;
this.selectedRow=-1;
this.selectOnLoad=_358;
this.grouping=_359;
this.grid.addListener("cellclick",$G.cellClick,this,true);
this.editField=document.createElement("input");
this.editField.setAttribute("name",_34f);
this.editField.setAttribute("type","hidden");
this.form.appendChild(this.editField);
if(edit){
if(!_352){
var _35a=this.grid.getColumnModel().config;
this.editFieldPrefix="__CFGRID__EDIT__=";
var i=0;
var _35c=_35a.length-1;
if(this.multiRowSelection===true&&this.dynamic===false){
i++;
_35c--;
}
this.editFieldPrefix+=_35c+$G.Actions.fieldSep;
var _35d=true;
for(i;i<_35a.length-1;i++){
if(!_35d){
this.editFieldPrefix+=$G.Actions.fieldSep;
}
this.editFieldPrefix+=_35a[i].colName;
this.editFieldPrefix+=$G.Actions.valueSep;
if(_35a[i].editor){
this.editFieldPrefix+="Y";
}else{
this.editFieldPrefix+="N";
}
_35d=false;
}
this.editFieldPrefix+=$G.Actions.fieldSep;
}
this.editFieldState=[];
this.editFieldState.length=this.grid.getStore().getTotalCount();
$G.Actions.computeEditField(this);
this.insertInProgress=false;
this.insertEvent=null;
this.grid.addListener("beforeedit",$G.Actions.beforeEdit,this,true);
this.grid.addListener("afteredit",$G.Actions.afterEdit,this,true);
}
if(_352){
this.grid.getStore().addListener("beforeload",$G.Actions.beforeLoad,this,true);
}
this.grid.getSelectionModel().addListener("rowselect",$G.rowSelect,this,true);
this.grid.getSelectionModel().addListener("beforerowselect",$G.beforeRowSelect,this,true);
if(_358&&!_359){
this.grid.getSelectionModel().selectFirstRow();
}
};
$G.Actions.beforeLoad=function(_35e,_35f){
var _360=_35e.getSortState();
var _361=((typeof this.sortCol!="undefined"&&_360.field!=this.sortCol)||(typeof this.direction!="undefined"&&_360.direction!=this.sortDir));
if(_361&&!this.preservePageOnSort){
_35f.params.start=0;
}
this.sortCol=_360.field;
this.sortDir=_360.direction;
};
$G.Actions.onLoad=function(){
this.editOldValue=null;
this.selectedRow=-1;
this.insertInProgress=false;
var _362=0;
if((this.bindOnLoad||!this.dynamic)&&this.selectOnLoad&&!this.grouping){
this.grid.getSelectionModel().selectRow(_362,false);
}
if(!this.gridRendered&&this.onLoadFunction&&typeof this.onLoadFunction=="function"){
this.gridRendered=true;
this.onLoadFunction.call(null,this.grid);
}
};
$G.Actions._cf_getAttribute=function(_363){
_363=_363.toUpperCase();
var _364=this.selectedRow;
var _365=null;
if(_364!=0&&(!_364||_364==-1)){
return _365;
}
var ds=this.grid.getStore();
var _367=(this.dynamic)?ds.getAt(_364):ds.getById(_364);
_365=_367.get(_363);
return _365;
};
$G.Actions._cf_register=function(_368,_369,_36a){
this.selectionChangeEvent.subscribe(_369,_36a);
};
$G.rowSelect=function(_36b,row){
var _36d="";
var _36e=_36b.getSelected();
var _36f=_36e.get("CFGRIDROWINDEX")||row;
if(this.selectedRow!=_36f){
this.selectedRow=_36f;
var _370=true;
for(col in _36e.data){
if(col=="CFGRIDROWINDEX"){
continue;
}
if(typeof col=="undefined"||col=="undefined"){
continue;
}
if(!_370){
_36d+="; ";
}
_36d+="__CFGRID__COLUMN__="+col+"; ";
_36d+="__CFGRID__DATA__="+_36e.data[col];
_370=false;
}
this.fireSelectionChangeEvent();
this.insertInProgress=false;
}
};
$G.beforeRowSelect=function(_371,row){
var ds=this.grid.getStore();
var _374=ds.getAt(row);
return !$G.isNullRow(_374.data);
};
$G.isNullRow=function(data){
var _376=true;
for(col in data){
if(data[col]!=null){
_376=false;
break;
}
}
return _376;
};
$G.fireSelectionChangeEvent=function(){
$L.info("grid.fireselectionchangeevent.fire","widget",[this.id]);
this.selectionChangeEvent.fire();
};
$G.cellClick=function(grid,_378,_379){
var _37a=this.cellClickInfo.colInfo[_379];
if(_37a){
var _37b=grid.getSelectionModel().getSelected();
var url=_37b.get(_37a.href.toUpperCase());
if(!url){
url=_37a.href;
}
var _37d=_37a.hrefKey;
var _37e=_37a.target;
var _37f=this.appendKey;
if(this.cellClickInfo.appendKey){
var _380;
if(_37d||_37d==0){
var _381=grid.getStore().getAt(_378);
var _382=grid.getColumnModel().config[_37d].dataIndex;
_380=_381.get(_382);
}else{
var _383=this.grid.getColumnModel().config;
_380=_37b.get(_383[0].dataIndex);
for(var i=1;i<_383.length-1;i++){
_380+=","+_37b.get(_383[i].dataIndex);
}
}
if(url.indexOf("?")!=-1){
url+="&CFGRIDKEY="+_380;
}else{
url+="?CFGRIDKEY="+_380;
}
}
if(_37e){
_37e=_37e.toLowerCase();
if(_37e=="_top"){
_37e="top";
}else{
if(_37e=="_parent"){
_37e="parent";
}else{
if(_37e=="_self"){
_37e=window.name;
}else{
if(_37e=="_blank"){
window.open(encodeURI(url));
return;
}
}
}
}
if(!parent[_37e]){
ColdFusion.handleError(null,"grid.cellclick.targetnotfound","widget",[_37e]);
return;
}
parent[_37e].location=encodeURI(url);
}else{
window.location=encodeURI(url);
}
}
};
$G.insertRow=function(){
if(this.insertInProgress&&this.dynamic){
ColdFusion.handleError(null,"Multiple row insert is not supported","Grid",[this.gridId],null,null,true);
return;
}
var _385={action:"I",values:[]};
var _386=this.grid.getColumnModel();
var _387=this.grid.getStore();
var _388={};
for(var i=0;i<_386.getColumnCount()-1;i++){
var _38a="";
var _38b=_386.getCellEditor(i,0);
if(_38b&&Ext.form.Checkbox.prototype.isPrototypeOf(_38b.field)){
_38a=false;
}
_385.values[i]=[_38a,_38a];
_388[_386.getDataIndex(i)]=_38a;
}
_388["CFGRIDROWINDEX"]=_387.getCount()+1;
_387.add(new Ext.data.Record(_388));
if(this.dynamic==true){
this.selectedRow=_387.getCount();
}
this.editFieldState.push(_385);
this.grid.getSelectionModel().selectRow(_387.getCount()-1);
this.insertInProgress=true;
$G.Actions.computeEditField(this);
};
$G.saveNewRecord=function(){
if(!this.insertInProgress){
return;
}
var _38c=this.selectedRow;
var _38d=this.insertEvent;
if(_38c==-1){
return;
}
if(this.onChangeFunction){
this.onChangeHandler("I",_38c-1,_38d,$G.insertRowCallback);
}else{
if(this.dynamic==false){
var _38e=this.grid.getStore();
var _38f=_38d.record;
var _390=new Array(1);
_390[0]=_38f;
var _391=_38e.getAt(this.selectedRow-1);
_38e.remove(_391);
_38e.add(_390);
}
}
this.insertInProgress=false;
this.insertEvent=null;
};
$G.cancelNewRecord=function(){
if(!this.insertInProgress){
return;
}
this.editFieldState.pop();
var _392=this.grid.getStore();
var _393=_392.getAt(this.selectedRow-1);
_392.remove(_393);
this.insertInProgress=false;
this.insertEvent=null;
this.selectedRow=this.selectedrow-1;
};
$G.deleteRow=function(){
var _394=null;
var _395;
if(this.multiRowSelection===true){
var _396=this.grid.getSelectionModel();
_394=_396.getSelections();
}
if(_394==null){
_395=this.selectedRow;
}
if(_395==-1&&_394==null){
return;
}
if(this.onChangeFunction){
if(_394!=null){
this.onChangeHandler_MultiRowsDelete("D",_394,null,$G.deleteRowCallback);
}else{
this.onChangeHandler("D",_395,null,$G.deleteRowCallback);
}
}else{
if(!this.dynamic){
var _397=this.grid.getStore();
if(_394!=null){
for(i=0;i<_394.length;i++){
var _398=_397.indexOf(_394[i]);
var _399=this.editFieldState[_398];
if(_399){
_399.action="D";
}else{
_399=$G.Actions.initEditState(this,"D",_394[i],_398+1);
}
}
for(i=0;i<_394.length;i++){
_397.remove(_394[i]);
}
}else{
var _399=this.editFieldState[_395-1];
if(_399){
_399.action="D";
}else{
var _39a=this.grid.getStore().getById(_395);
_399=$G.Actions.initEditState(this,"D",_39a,_395);
}
_397.remove(this.grid.getSelectionModel().getSelected());
}
$G.Actions.computeEditField(this);
this.grid.stopEditing();
this.selectedRow=-1;
}
}
};
$G.deleteRowCallback=function(_39b,_39c){
var _39d=_39c._cf_grid.getStore();
var _39e=_39c._cf_grid_properties;
var _39c=_39d.lastOptions.params;
var key="start";
if(_39d.getCount()==1){
if(_39c.start>=_39c.limit){
_39c.start=_39c.start-_39c.limit;
}
_39d.reload(_39c);
}else{
_39d.reload();
}
if(_39e.multiRowSelection){
var _3a0=_39e.grid.getView().getHeaderCell(0);
if(_3a0!=null){
var _3a1=Ext.Element.get(_3a0).first();
if(_3a1){
_3a1.replaceClass("x-grid3-hd-checker-on");
}
}
}
};
$G.insertRowCallback=function(_3a2,_3a3){
var _3a4=_3a3._cf_grid.getStore();
var _3a5=_3a3._cf_grid.actions;
_3a4.reload();
};
$G.Actions.beforeEdit=function(_3a6){
if($G.isNullRow(_3a6.record.data)){
return false;
}
this.editColumn=_3a6.column;
this.editOldValue=_3a6.value;
};
$G.Actions.afterEdit=function(_3a7){
var _3a8=_3a7.value;
if(this.insertInProgress==false&&this.onChangeFunction){
this.onChangeHandler("U",this.selectedRow,_3a7);
}else{
if(!this.dynamic){
var _3a9=$G.computeActualRow_editField(this.editFieldState,this.selectedRow);
var _3aa=this.editFieldState[_3a9-1];
if(_3aa){
var _3ab=_3a7.column;
if(this.multiRowSelection===true&&this.insertInProgress==true){
_3ab=_3ab-1;
}
_3aa.values[_3ab][1]=_3a8;
}else{
var _3ac=this.grid.getStore().getById(this.selectedRow);
_3aa=$G.Actions.initEditState(this,"U",_3ac,_3a9);
var _3ad=this.editOldValue+"";
if(_3a8.getDayOfYear){
if(_3ad&&typeof _3ad=="string"){
_3ad=new Date(_3ad);
}
_3aa.values[_3a7.column][1]=_3a8.format("F, j Y H:i:s");
_3aa.values[_3a7.column][0]=_3ad?_3ad.format("F, j Y H:i:s"):_3ad;
}else{
_3aa.values[_3a7.column][0]=_3ad;
_3aa.values[_3a7.column][1]=_3a8;
}
}
$G.Actions.computeEditField(this);
}
}
this.editOldValue=null;
this.fireSelectionChangeEvent();
};
$G.computeActualRow_editField=function(_3ae,_3af){
if(_3ae.length==_3af){
return _3af;
}
var _3b0=0;
var _3b1=0;
for(;_3b1<_3ae.length&&_3b0<_3af;_3b1++){
var _3b2=_3ae[_3b1];
if(!_3b2||_3b2.action!="D"){
_3b0++;
}
}
return _3b1;
};
$G.Actions.onChangeHandler=function(_3b3,_3b4,_3b5,_3b6){
var _3b7={};
var _3b8={};
var data=_3b5?_3b5.record.data:this.grid.getStore().getAt(_3b4).data;
for(col in data){
_3b7[col]=data[col];
}
if(_3b3=="U"){
if((_3b5.value==null||_3b5.value=="")&&(_3b5.originalValue==null||_3b5.originalValue=="")){
return;
}
if(_3b5.value&&_3b5.value.getDayOfYear){
if(typeof _3b5.originalValue=="string"){
var _3ba=new Date(_3b5.originalValue);
}
if(_3ba!=null&&_3ba.getElapsed(_3b5.value)==0){
return;
}else{
_3b7[_3b5.field]=_3b5.originalValue;
_3b8[_3b5.field]=_3b5.value.format("F, j Y H:i:s");
}
}else{
_3b7[_3b5.field]=_3b5.originalValue;
_3b8[_3b5.field]=_3b5.value;
}
}
this.onChangeFunction(_3b3,_3b7,_3b8,_3b6,this.grid,this.onErrorFunction,this);
};
$G.Actions.onChangeHandler_MultiRowsDelete=function(_3bb,_3bc,_3bd,_3be){
var _3bf=new Array();
var _3c0={};
for(i=0;i<_3bc.length;i++){
_3bf[i]=_3bc[i].data;
}
this.onChangeFunction(_3bb,_3bf,_3c0,_3be,this.grid,this.onErrorFunction,this);
};
$G.Actions.initEditState=function(_3c1,_3c2,_3c3,_3c4){
var _3c5={action:_3c2,values:[]};
var _3c6=_3c1.grid.getColumnModel();
var _3c7=_3c6.getColumnCount()-1;
_3c5.values.length=_3c7;
var i=0;
if(_3c1.multiRowSelection===true&&_3c1.dynamic===false){
i=i++;
}
for(i;i<_3c7;i++){
var _3c9=_3c3.get(_3c6.getDataIndex(i));
_3c5.values[i]=[_3c9,_3c9];
}
_3c1.editFieldState[_3c4-1]=_3c5;
return _3c5;
};
$G.Actions.fieldSep=eval("'\\u0001'");
$G.Actions.valueSep=eval("'\\u0002'");
$G.Actions.nullValue=eval("'\\u0003'");
$G.Actions.computeEditField=function(_3ca){
if(_3ca.dynamic){
return;
}
var _3cb=_3ca.editFieldPrefix;
var _3cc=_3ca.editFieldState;
var _3cd=_3ca.grid.getColumnModel().config;
var _3ce=0;
var _3cf="";
for(var i=0;i<_3cc.length;i++){
var _3d1=_3cc[i];
if(_3d1){
_3ce++;
_3cf+=$G.Actions.fieldSep;
_3cf+=_3d1.action+$G.Actions.valueSep;
var _3d2=_3d1.values;
if(_3ca.multiRowSelection===true&&_3ca.dynamic===false&&_3d1.action!="I"){
_3d2=_3d2.slice(1,_3d2.length);
}
for(var j=0;j<_3d2.length;j++){
if(j>0){
_3cf+=$G.Actions.valueSep;
}
var _3d4=($G.Actions.isNull(_3d2[j][0]))?$G.Actions.nullValue:_3d2[j][0];
var _3d5=($G.Actions.isNull(_3d2[j][1]))?$G.Actions.nullValue:_3d2[j][1];
var _3d6=j;
if(_3ca.multiRowSelection===true){
_3d6++;
}
if(_3d1.action!="I"||(_3d1.action=="I"&&_3cd[_3d6].editor)){
if(_3cd[_3d6].type=="date"){
if(_3d5!=null&&_3d5!=$G.Actions.nullValue){
if(typeof _3d5=="string"){
_3d5=new Date(_3d5);
}
_3d5=_3d5.format("F, j Y H:i:s");
}
if(_3d4!=null&&_3d4!=$G.Actions.nullValue){
if(typeof _3d4=="string"){
_3d4=new Date(_3d4);
}
_3d4=_3d4.format("F, j Y H:i:s");
}
}
_3cf+=_3d5;
if(_3d1.action=="U"&&_3cd[_3d6].editor){
_3cf+=$G.Actions.valueSep+_3d4;
}
}
}
}
}
_3cb+=_3ce+_3cf;
_3ca.editField.setAttribute("value",_3cb);
};
$G.Actions.isNull=function(val){
var ret=(val==null||typeof (val)=="undefined"||val.length==0);
return ret;
};
$G.loadData=function(data,_3da){
_3da._cf_gridDataProxy.loadResponse(data,_3da);
var _3db=ColdFusion.objectCache[_3da._cf_gridname];
$G.applyStyles(_3db);
$L.info("grid.loaddata.loaded","widget",[_3da._cf_gridname]);
if($G.Actions.isNull(data.TOTALROWCOUNT)==false&&data.TOTALROWCOUNT==0){
_3db.fireSelectionChangeEvent();
}
};
$G.printObject=function(obj){
var str="";
for(key in obj){
str=str+"  "+key+"=";
value=obj[key];
str+=value;
}
return str;
};
$G.formatBoolean=function(v,p,_3e0){
return "<div class=\"x-grid3-check-col"+(v?"-on":"")+" x-grid3-cc-"+this.id+"\">&#160;</div>";
};
$G.formatDate=function(_3e1,p,_3e3){
if(_3e1&&!_3e1.dateFormat){
_3e1=new Date(_3e1);
}
var _3e4=this.dateFormat?this.dateFormat:"m/d/y";
return _3e1?_3e1.dateFormat(_3e4):"";
};
$G.convertDate=function(_3e5,p,_3e7){
if(_3e5&&!_3e5.dateFormat){
_3e5=new Date(_3e5);
}
var _3e8=this.dateFormat?this.dateFormat:"m/d/y";
return _3e5;
};
$G.ExtProxy=function(_3e9,_3ea){
this.api={load:true,create:undefined,save:undefined,destroy:undefined};
$G.ExtProxy.superclass.constructor.call(this);
this.bindHandler=_3e9;
this.errorHandler=_3ea;
};
Ext.extend($G.ExtProxy,Ext.data.DataProxy,{_cf_firstLoad:true,load:function(_3eb,_3ec,_3ed,_3ee,arg){
if(!this._cf_actions.bindOnLoad){
var _3f0={"_cf_reader":_3ec,"_cf_grid_errorhandler":this.errorHandler,"_cf_scope":_3ee,"_cf_gridDataProxy":this,"_cf_gridname":this._cf_gridName,"_cf_arg":arg,"_cf_callback":_3ed,"ignoreData":true};
var data=[];
for(i=0;i<_3eb.limit;i++){
data.push(new Ext.data.Record({}));
}
this.loadResponse(data,_3f0);
this._cf_actions.bindOnLoad=true;
}else{
var _3f2=(_3eb.start/_3eb.limit)+1;
if(!_3eb.sort){
_3eb.sort="";
}
if(!_3eb.dir){
_3eb.dir="";
}
this.bindHandler(this,_3f2,_3eb.limit,_3eb.sort,_3eb.dir,this.errorHandler,_3ed,_3ee,arg,_3ec);
}
},loadResponse:function(data,_3f4){
var _3f5=null;
if(_3f4.ignoreData){
_3f5={success:true,records:data,totalRecords:data.length};
}else{
var _3f6;
if(!data){
_3f6="grid.extproxy.loadresponse.emptyresponse";
}else{
if(!data.TOTALROWCOUNT&&data.TOTALROWCOUNT!=0){
_3f6="grid.extproxy.loadresponse.totalrowcountmissing";
}else{
if(!ColdFusion.Util.isInteger(data.TOTALROWCOUNT)){
_3f6="grid.extproxy.loadresponse.totalrowcountinvalid";
}else{
if(!data.QUERY){
_3f6="grid.extproxy.loadresponse.querymissing";
}else{
if(!data.QUERY.COLUMNS||!ColdFusion.Util.isArray(data.QUERY.COLUMNS)||!data.QUERY.DATA||!ColdFusion.Util.isArray(data.QUERY.DATA)||(data.QUERY.DATA.length>0&&!ColdFusion.Util.isArray(data.QUERY.DATA[0]))){
_3f6="grid.extproxy.loadresponse.queryinvalid";
}
}
}
}
}
if(_3f6){
ColdFusion.handleError(_3f4._cf_grid_errorHandler,_3f6,"widget");
this.fireEvent("loadexception",this,_3f4,data,e);
return;
}
_3f5=_3f4._cf_reader.readRecords(data);
}
this.fireEvent("load",this,_3f4,_3f4._cf_arg);
_3f4._cf_callback.call(_3f4._cf_scope,_3f5,_3f4._cf_arg,true);
},update:function(_3f7){
},updateResponse:function(_3f8){
}});
$G.ExtReader=function(_3f9){
this.recordType=Ext.data.Record.create(_3f9);
};
Ext.extend($G.ExtReader,Ext.data.DataReader,{readRecords:function(_3fa){
var _3fb=[];
var cols=_3fa.QUERY.COLUMNS;
var data=_3fa.QUERY.DATA;
for(var i=0;i<data.length;i++){
var _3ff={};
for(var j=0;j<cols.length;j++){
_3ff[cols[j]]=data[i][j];
}
_3fb.push(new Ext.data.Record(_3ff));
}
return {success:true,records:_3fb,totalRecords:_3fa.TOTALROWCOUNT};
}});
$G.CheckColumn=function(_401){
Ext.apply(this,_401);
if(!this.id){
this.id=Ext.id();
}
this.renderer=this.renderer.createDelegate(this);
};
$G.CheckColumn.prototype={init:function(grid){
this.grid=grid;
this.count=0;
this.columnIndex=this.grid.getColumnModel().findColumnIndex(this.dataIndex);
this.grid.on("render",function(){
var view=this.grid.getView();
if(this.editable==true){
view.mainBody.on("mousedown",this.onMouseDown,this);
}
},this);
},onMouseDown:function(e,t){
if(t.className&&t.className.indexOf("x-grid3-cc-"+this.id)!=-1){
e.stopEvent();
var _406=this.grid.getView().findRowIndex(t);
var _407=this.grid.store.getAt(_406);
var _408=ColdFusion.clone(_407);
_408.data=ColdFusion.clone(_407.data);
this.grid.getSelectionModel().selectRow(_406);
this.grid.getSelectionModel().fireEvent("rowselect",this.grid.getSelectionModel(),_406);
this.grid.fireEvent("beforeedit",{grid:this.grid,row:_406,record:_407,column:this.columnIndex,field:this.dataIndex,value:_407.data[this.dataIndex]});
_407.set(this.dataIndex,this.toggleBooleanValue(_407.data[this.dataIndex]));
this.grid.fireEvent("afteredit",{grid:this.grid,row:_406,record:_408,column:this.columnIndex,field:this.dataIndex,value:_407.data[this.dataIndex],originalValue:_408.data[this.dataIndex]});
}
},toggleBooleanValue:function(v){
v=typeof v=="undefined"?"N":(typeof v=="string"?v.toUpperCase():v);
if(v==="Y"){
return "N";
}
if(v==="N"){
return "Y";
}
if(v===true){
return false;
}
if(v===false){
return true;
}
if(v===0){
return 1;
}
if(v===1){
return 0;
}
if(v==="YES"){
return "NO";
}
if(v==="NO"){
return "YES";
}
if(v==="T"){
return "F";
}
if(v==="F"){
return "T";
}
return "Y";
},renderer:function(v,p,_40c){
p.css+=" x-grid3-check-col-td";
var _40d=false;
v=(typeof v=="string")?v.toUpperCase():v;
if(typeof v!="undefined"&&(v==1||v=="1"||v=="Y"||v=="YES"||v===true||v==="T")){
_40d=true;
}
return "<div class=\"x-grid3-check-col"+(_40d==true?"-on":"")+" x-grid3-cc-"+this.id+"\">&#160;</div>";
}};
};
cfinitgrid();
