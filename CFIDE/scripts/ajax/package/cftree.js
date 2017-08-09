/*ADOBE SYSTEMS INCORPORATED
Copyright 2007 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
if(!ColdFusion.Tree){
ColdFusion.Tree={};
}
ColdFusion.Tree.AttributesCollection=function(){
this.cache=true;
this.fontname=null;
this.bold=false;
this.italic=false;
this.completepath=false;
this.appendkey=false;
this.delimiter=null;
this.formname=null;
this.fontsize=null;
this.formparamname=null;
this.prevspanid=null;
this.prevspanbackground=null;
this.images={};
this.images.folder=_cf_ajaxscriptsrc+"/resources/cf/images/FolderClose.gif";
this.images.cd=_cf_ajaxscriptsrc+"/resources/cf/images/Cd.png";
this.images.computer=_cf_ajaxscriptsrc+"/resources/cf/images/Computer.png";
this.images.document=_cf_ajaxscriptsrc+"/resources/cf/images/Document.gif";
this.images.element=_cf_ajaxscriptsrc+"/resources/cf/images/Elements.png";
this.images.floppy=_cf_ajaxscriptsrc+"/resources/cf/images/Floppy.png";
this.images.fixed=_cf_ajaxscriptsrc+"/resources/cf/images/HardDrive.png";
this.images.remote=_cf_ajaxscriptsrc+"/resources/cf/images/NetworkDrive.png";
this.imagesopen={};
this.imagesopen.folder=_cf_ajaxscriptsrc+"/resources/cf/images/FolderOpen.gif";
this.imagesopen.cd=_cf_ajaxscriptsrc+"/resources/cf/images/Cd.png";
this.imagesopen.computer=_cf_ajaxscriptsrc+"/resources/cf/images/Computer.png";
this.imagesopen.document=_cf_ajaxscriptsrc+"/resources/cf/images/Document.gif";
this.imagesopen.element=_cf_ajaxscriptsrc+"/resources/cf/images/Elements.png";
this.imagesopen.floppy=_cf_ajaxscriptsrc+"/resources/cf/images/Floppy.png";
this.imagesopen.fixed=_cf_ajaxscriptsrc+"/resources/cf/images/HardDrive.png";
this.imagesopen.remote=_cf_ajaxscriptsrc+"/resources/cf/images/NetworkDrive.png";
this.eventcount=0;
this.eventHandlers=new Array();
this.nodeCounter=0;
};
ColdFusion.Tree.refresh=function(_7c2){
var tree=ColdFusion.objectCache[_7c2];
var _7c4=ColdFusion.objectCache[_7c2+"collection"];
if(!tree||YAHOO.widget.TreeView.prototype.isPrototypeOf(tree)==false){
ColdFusion.handleError(null,"tree.refresh.notfound","widget",[_7c2],null,null,true);
return;
}
if(!_7c4.dynLoadFunction){
ColdFusion.Log.info("tree.refresh.statictree","widget");
return;
}
_7c4.dynLoadFunction.call(null,tree.getRoot());
ColdFusion.Log.info("tree.refresh.success","widget",[_7c2]);
};
ColdFusion.Tree.getTreeObject=function(_7c5){
if(!_7c5){
ColdFusion.handleError(null,"tree.gettreeobject.emptyname","widget",null,null,null,true);
return;
}
var _7c6=ColdFusion.objectCache[_7c5];
if(_7c6==null||YAHOO.widget.TreeView.prototype.isPrototypeOf(_7c6)==false){
ColdFusion.handleError(null,"tree.gettreeobject.notfound","widget",[_7c5],null,null,true);
return;
}
return _7c6;
};
ColdFusion.Tree.loadNodes=function(_7c7,_7c8){
var i=0;
var _7ca=ColdFusion.objectCache[_7c8.treeid+"collection"];
var tree=ColdFusion.objectCache[_7c8.treeid];
var _7cc;
var _7cd=false;
if(_7c7&&typeof (_7c7.length)=="number"&&!_7c7.toUpperCase){
if(_7c7.length>0&&typeof (_7c7[0])!="object"){
_7cd=true;
}
}else{
_7cd=true;
}
if(_7cd){
ColdFusion.handleError(tree.onbinderror,"tree.loadnodes.invalidbindvalue","widget",[_7c8.treeid]);
return;
}
if(_7c8.parent&&!_7c8.parent.isRoot()){
tree.removeChildren(_7c8.parent);
}else{
if(_7c8.parent&&_7c8.parent.hasChildren()){
tree.removeChildren(_7c8.parent);
_7c8.parent=tree.getRoot();
}
}
if(!_7c8.parent.leafnode){
for(i=0;i<_7c7.length;i++){
var _7ce=_7ca.nodeCounter++;
var node={};
node.id=_7c7[i].VALUE;
if(typeof (_7c7[i].DISPLAY)==undefined||_7c7[i].DISPLAY==null){
node.label=_7c7[i].VALUE;
}else{
node.label=_7c7[i].DISPLAY;
}
node.expand=_7c7[i].EXPAND;
node.appendkey=_7c7[i].APPENDKEY;
node.href=_7c7[i].HREF;
node.img=_7c7[i].IMG;
node.imgOpen=_7c7[i].IMGOPEN;
node.imgid="_cf_image"+_7ce;
node.spanid="_cf_span"+_7ce;
node.target=_7c7[i].TARGET;
if(_7ca.appendkey&&_7ca.appendkey==true&&node.href){
var _7d0=new String(node.href);
_7d0=_7d0.toLowerCase();
if(_7d0.indexOf("javascript")<0){
if(_7d0.indexOf("?")>=0){
node.href=_7c7[i].HREF+"&";
}else{
node.href=_7c7[i].HREF+"?";
}
node.href=node.href+"CFTREEITEMKEY="+node.id;
}
}
var _7d1="";
if(node.img){
if(_7ca.images[node.img]){
_7d1="<img src='"+_7ca.images[node.img]+"' id='"+node.imgid+"' style='border:0'/>&nbsp;";
}else{
_7d1="<img src='"+node.img+"' id='"+node.imgid+"' style='border:0'/>&nbsp;";
}
}
if(_7ca.fontname||_7ca.italic==true||_7ca.bold==true||_7ca.fontsize){
_7d1=_7d1+"<span id='"+node.spanid+"' style='";
if(_7ca.fontname){
_7d1=_7d1+"font-family:"+_7ca.fontname+";";
}
if(_7ca.italic==true){
_7d1=_7d1+"font-style:italic;";
}
if(_7ca.bold==true){
_7d1=_7d1+"font-weight:bold;";
}
if(_7ca.fontsize){
_7d1=_7d1+"font-size:"+_7ca.fontsize+";";
}
_7d1=_7d1+"'>"+node.label+"</span>";
node.label=_7d1;
}else{
node.label=_7d1+"<span id='"+node.spanid+"'  >"+node.label+"</span>";
}
node.childrenFetched=false;
var _7d2=new YAHOO.widget.TextNode(node,_7c8.parent,false);
var _7d3=false;
if(_7c7[i].LEAFNODE&&_7c7[i].LEAFNODE==true){
_7d3=true;
_7d2.leafnode=true;
_7d2.iconMode=1;
}
if(_7d3==true||(node.expand&&node.expand==true)){
_7d2.expand();
}
}
}
if(!_7c8.parent.isRoot()){
_7c8.parent.data.childrenFetched=true;
}
if(_7c8.onCompleteCallBack){
_7c8.onCompleteCallBack.call();
}else{
_7c8.parent.tree.draw();
}
ColdFusion.Log.info("tree.loadnodes.success","widget",[_7c8.treeid]);
};
ColdFusion.Tree.onExpand=function(node){
if(node.isRoot()){
return;
}
var _7d5=ColdFusion.objectCache[node.tree.id+"collection"];
if(node.data.imgOpen&&typeof (node.leafnode)=="undefined"){
var _7d6=ColdFusion.DOM.getElement(node.data.imgid,node.tree.id);
var src;
if(_7d5.imagesopen[node.data.imgOpen]){
src=_7d5.imagesopen[node.data.imgOpen];
}else{
src=node.data.imgOpen;
}
_7d6.src=src;
}
if(_7d5.cache==false&&node.data.childrenFetched==false&&_7d5.dynLoadFunction){
node.tree.removeChildren(node);
}
};
ColdFusion.Tree.onCollapse=function(node){
if(node.isRoot()){
return;
}
var _7d9=ColdFusion.objectCache[node.tree.id+"collection"];
if(node.data.img){
var _7da=ColdFusion.DOM.getElement(node.data.imgid,node.tree.id);
var src;
if(_7d9.images[node.data.img]){
src=_7d9.images[node.data.img];
}else{
src=node.data.img;
}
_7da.src=src;
}
node.data.childrenFetched=false;
};
ColdFusion.Tree.formPath=function(node,_7dd){
var _7de=ColdFusion.objectCache[node.tree.id+"collection"];
if(_7de.completepath==true&&node.isRoot()){
return "";
}else{
if(_7de.completepath==false&&node.parent.isRoot()){
return "";
}
}
if(!_7dd){
_7dd=node;
}
var _7df=ColdFusion.Tree.formPath(node.parent,_7dd);
_7df=_7df+node.data.id;
if(_7dd.data.id!=node.data.id){
_7df=_7df+_7de.delimiter;
}
return _7df;
};
ColdFusion.Tree.onLabelClick=function(node){
var _7e1="";
var _7e2=ColdFusion.objectCache[node.tree.id+"collection"];
var _7e1=ColdFusion.Tree.formPath(node);
if(_7e2.prevspanid){
var _7e3=ColdFusion.DOM.getElement(_7e2.prevspanid,node.tree.id);
if(_7e3.style){
_7e3.style.backgroundColor=_7e2.prevspanbackground;
}
}
var _7e4=ColdFusion.DOM.getElement(node.data.spanid,node.tree.id);
if(_7e4&&_7e4.style){
_7e2.prevspanbackground=_7e4.style.backgroundColor;
}
_7e4.style.backgroundColor="lightblue";
_7e2.prevspanid=node.data.spanid;
node.tree._cf_path=_7e1;
node.tree._cf_node=node.data.id;
var val="PATH="+_7e1+"; NODE="+node.data.id;
updateHiddenValue(val,_7e2.formname,_7e2.formparamname);
ColdFusion.Tree.fireSelectionChangeEvent(node.tree.id,_7e2.formname);
};
ColdFusion.Tree.fireSelectionChangeEvent=function(id,_7e7){
ColdFusion.Log.info("tree.fireselectionchangeevent.fire","widget",[id]);
ColdFusion.Event.callBindHandlers(id,_7e7,"change");
};
ColdFusion.Tree.getObject=function(_7e8){
var _7e9={};
_7e9.id=_7e8.value;
if(_7e8.href&&_7e8.href!="null"){
_7e9.href=_7e8.href;
}
_7e9.target=_7e8.target;
_7e9.label=_7e8.label;
_7e9.display=_7e8.display;
_7e9.img=_7e8.img;
_7e9.imgOpen=_7e8.imgOpen;
_7e9.imgid=_7e8.imgid;
_7e9.spanid=_7e8.spanid;
_7e9.childrenfetched=_7e8.childrenfetched;
return _7e9;
};
ColdFusion.Tree.initializeTree=function(_7ea,_7eb,_7ec,bold,_7ee,_7ef,_7f0,_7f1,_7f2,_7f3,_7f4,_7f5){
var _7f6=new YAHOO.widget.TreeView(_7ea);
_7f6.subscribe("expand",ColdFusion.Tree.onExpand);
_7f6.subscribe("collapse",ColdFusion.Tree.onCollapse);
_7f6.subscribe("labelClick",ColdFusion.Tree.onLabelClick);
_7f6._cf_getAttribute=function(_7f7){
_7f7=_7f7.toUpperCase();
if(_7f7=="PATH"){
return _7f6._cf_path;
}else{
if(_7f7=="NODE"){
return _7f6._cf_node;
}else{
return null;
}
}
};
_7f6.onbinderror=_7f3;
ColdFusion.objectCache[_7ea]=_7f6;
var _7f8=new ColdFusion.Tree.AttributesCollection();
_7f8.cache=_7eb;
_7f8.italic=_7ec;
_7f8.bold=bold;
_7f8.completepath=_7ee;
_7f8.delimiter=_7f0;
_7f8.appendkey=_7ef;
_7f8.formname=_7f1;
_7f8.formparamname=_7f2;
_7f8.fontsize=_7f4;
_7f8.fontname=_7f5;
ColdFusion.objectCache[_7ea+"collection"]=_7f8;
ColdFusion.Log.info("tree.initializetree.success","widget",[_7ea]);
return _7f6;
};
